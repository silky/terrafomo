-- This module is auto-generated.

{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE RankNTypes             #-}
{-# LANGUAGE UndecidableInstances   #-}

-- {-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Chef.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Chef.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasAutomaticAttributesJson (..)
    , HasContentJson (..)
    , HasCookbookConstraints (..)
    , HasDataBagName (..)
    , HasDefaultAttributesJson (..)
    , HasDescription (..)
    , HasEnvironmentName (..)
    , HasName (..)
    , HasNormalAttributesJson (..)
    , HasOverrideAttributesJson (..)
    , HasRunList (..)

    -- ** Computed Attributes
    , HasComputedApiUri (..)
    , HasComputedAutomaticAttributesJson (..)
    , HasComputedContentJson (..)
    , HasComputedCookbookConstraints (..)
    , HasComputedDataBagName (..)
    , HasComputedDefaultAttributesJson (..)
    , HasComputedDescription (..)
    , HasComputedEnvironmentName (..)
    , HasComputedId (..)
    , HasComputedName (..)
    , HasComputedNormalAttributesJson (..)
    , HasComputedOverrideAttributesJson (..)
    , HasComputedRunList (..)
    ) where

import GHC.Base ((.))

import Lens.Micro (Lens')

import qualified Terrafomo.Name   as TF
import qualified Terrafomo.Schema as TF

class HasAutomaticAttributesJson a b | a -> b where
    automaticAttributesJson :: Lens' a b

instance HasAutomaticAttributesJson a b => HasAutomaticAttributesJson (TF.Schema l p a) b where
    automaticAttributesJson = TF.configuration . automaticAttributesJson

class HasContentJson a b | a -> b where
    contentJson :: Lens' a b

instance HasContentJson a b => HasContentJson (TF.Schema l p a) b where
    contentJson = TF.configuration . contentJson

class HasCookbookConstraints a b | a -> b where
    cookbookConstraints :: Lens' a b

instance HasCookbookConstraints a b => HasCookbookConstraints (TF.Schema l p a) b where
    cookbookConstraints = TF.configuration . cookbookConstraints

class HasDataBagName a b | a -> b where
    dataBagName :: Lens' a b

instance HasDataBagName a b => HasDataBagName (TF.Schema l p a) b where
    dataBagName = TF.configuration . dataBagName

class HasDefaultAttributesJson a b | a -> b where
    defaultAttributesJson :: Lens' a b

instance HasDefaultAttributesJson a b => HasDefaultAttributesJson (TF.Schema l p a) b where
    defaultAttributesJson = TF.configuration . defaultAttributesJson

class HasDescription a b | a -> b where
    description :: Lens' a b

instance HasDescription a b => HasDescription (TF.Schema l p a) b where
    description = TF.configuration . description

class HasEnvironmentName a b | a -> b where
    environmentName :: Lens' a b

instance HasEnvironmentName a b => HasEnvironmentName (TF.Schema l p a) b where
    environmentName = TF.configuration . environmentName

class HasName a b | a -> b where
    name :: Lens' a b

instance HasName a b => HasName (TF.Schema l p a) b where
    name = TF.configuration . name

class HasNormalAttributesJson a b | a -> b where
    normalAttributesJson :: Lens' a b

instance HasNormalAttributesJson a b => HasNormalAttributesJson (TF.Schema l p a) b where
    normalAttributesJson = TF.configuration . normalAttributesJson

class HasOverrideAttributesJson a b | a -> b where
    overrideAttributesJson :: Lens' a b

instance HasOverrideAttributesJson a b => HasOverrideAttributesJson (TF.Schema l p a) b where
    overrideAttributesJson = TF.configuration . overrideAttributesJson

class HasRunList a b | a -> b where
    runList :: Lens' a b

instance HasRunList a b => HasRunList (TF.Schema l p a) b where
    runList = TF.configuration . runList

class HasComputedApiUri a b | a -> b where
    computedApiUri :: a -> b

class HasComputedAutomaticAttributesJson a b | a -> b where
    computedAutomaticAttributesJson :: a -> b

class HasComputedContentJson a b | a -> b where
    computedContentJson :: a -> b

class HasComputedCookbookConstraints a b | a -> b where
    computedCookbookConstraints :: a -> b

class HasComputedDataBagName a b | a -> b where
    computedDataBagName :: a -> b

class HasComputedDefaultAttributesJson a b | a -> b where
    computedDefaultAttributesJson :: a -> b

class HasComputedDescription a b | a -> b where
    computedDescription :: a -> b

class HasComputedEnvironmentName a b | a -> b where
    computedEnvironmentName :: a -> b

class HasComputedId a b | a -> b where
    computedId :: a -> b

class HasComputedName a b | a -> b where
    computedName :: a -> b

class HasComputedNormalAttributesJson a b | a -> b where
    computedNormalAttributesJson :: a -> b

class HasComputedOverrideAttributesJson a b | a -> b where
    computedOverrideAttributesJson :: a -> b

class HasComputedRunList a b | a -> b where
    computedRunList :: a -> b
