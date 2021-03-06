{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE NamedFieldPuns             #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE ScopedTypeVariables        #-}

module Terrafomo.Gen.Namespace where

import Data.Aeson         (ToJSON, ToJSONKey)
import Data.List.NonEmpty (NonEmpty ((:|)))
import Data.Semigroup     (Semigroup ((<>)))
import Data.String        (IsString (fromString))
import Data.Text          (Text)

import Terrafomo.Gen.Provider
import Terrafomo.Gen.Schema

import Text.Printf (printf)

import qualified Data.Aeson       as JSON
import qualified Data.Aeson.Types as JSON
import qualified Data.Foldable    as Fold
import qualified Data.List.Split  as Split
import qualified Data.Text        as Text

-- Haskell Namespace

newtype NS = NS (NonEmpty Text)
    deriving (Show, Eq, Ord, Semigroup)

instance IsString NS where
    fromString x =
        case filter (not . Text.null) $ Text.split (== '.') (Text.pack x) of
            []   -> error "NS.fromString: invalid empty namespace."
            y:ys -> NS (y :| ys)

instance ToJSON NS where
    toJSON = JSON.toJSON . fromNS '.'

instance ToJSONKey NS where
    toJSONKey = JSON.toJSONKeyText (Text.pack . fromNS '.')

fromNS :: Char -> NS -> String
fromNS c (NS xs) =
    Text.unpack $ Text.intercalate (Text.singleton c) (Fold.toList xs)

toPath :: NS -> String
toPath = fromNS '/'

-- Package Namespaces

provider :: Provider a -> NS
provider p = "Terrafomo" <> NS (pure (providerName p))

types :: Provider a -> NS
types p = provider p <> "Types"

lenses :: Provider a -> NS
lenses p = provider p <> "Lens"

partitionSchemas :: Provider a -> SchemaType -> [b] -> [(NS, [b])]
partitionSchemas p typ = partition p (show typ)

partition :: Provider a -> String -> [b] -> [(NS, [b])]
partition p@Provider{providerMaxPartition} root xs
    | null   xs                         = []
    | length xs <= providerMaxPartition = [single]
    | otherwise                         =
          zipWith multiple [1..]
        . filter (not . null)
        $ Split.chunksOf providerMaxPartition xs
  where
    single =
        (provider p <> fromString root, xs)

    multiple (n :: Int) ys =
        (provider p <> fromString (root ++ printf "%02d" n), ys)
