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
-- Module      : Terrafomo.PagerDuty.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.PagerDuty.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasAcknowledgementTimeout (..)
    , HasAddress (..)
    , HasAlertCreation (..)
    , HasAutoResolveTimeout (..)
    , HasColor (..)
    , HasCountryCode (..)
    , HasDescription (..)
    , HasEmail (..)
    , HasEndTime (..)
    , HasEscalationPolicy (..)
    , HasIntegrationEmail (..)
    , HasIntegrationKey (..)
    , HasJobTitle (..)
    , HasLabel (..)
    , HasLayer (..)
    , HasName (..)
    , HasNumLoops (..)
    , HasOverflow (..)
    , HasRole (..)
    , HasRule (..)
    , HasSendShortEmail (..)
    , HasService (..)
    , HasServices (..)
    , HasSrc (..)
    , HasStartTime (..)
    , HasTeamId (..)
    , HasTeams (..)
    , HasTimeZone (..)
    , HasType' (..)
    , HasUserId (..)
    , HasVendor (..)

    -- ** Computed Attributes
    , HasComputedAcknowledgementTimeout (..)
    , HasComputedAddress (..)
    , HasComputedAlertCreation (..)
    , HasComputedAutoResolveTimeout (..)
    , HasComputedAvatarUrl (..)
    , HasComputedBlacklisted (..)
    , HasComputedColor (..)
    , HasComputedCountryCode (..)
    , HasComputedCreatedAt (..)
    , HasComputedDescription (..)
    , HasComputedEmail (..)
    , HasComputedEnabled (..)
    , HasComputedEndTime (..)
    , HasComputedEscalationPolicy (..)
    , HasComputedHtmlUrl (..)
    , HasComputedId (..)
    , HasComputedIntegrationEmail (..)
    , HasComputedIntegrationKey (..)
    , HasComputedInvitationSent (..)
    , HasComputedJobTitle (..)
    , HasComputedLabel (..)
    , HasComputedLastIncidentTimestamp (..)
    , HasComputedLayer (..)
    , HasComputedName (..)
    , HasComputedNumLoops (..)
    , HasComputedOverflow (..)
    , HasComputedRole (..)
    , HasComputedRule (..)
    , HasComputedSendShortEmail (..)
    , HasComputedService (..)
    , HasComputedServices (..)
    , HasComputedSrc (..)
    , HasComputedStartTime (..)
    , HasComputedStatus (..)
    , HasComputedTeamId (..)
    , HasComputedTeams (..)
    , HasComputedTimeZone (..)
    , HasComputedType' (..)
    , HasComputedUserId (..)
    , HasComputedVendor (..)
    ) where

import GHC.Base ((.))

import Lens.Micro (Lens')

import qualified Terrafomo.Name   as TF
import qualified Terrafomo.Schema as TF

class HasAcknowledgementTimeout a b | a -> b where
    acknowledgementTimeout :: Lens' a b

instance HasAcknowledgementTimeout a b => HasAcknowledgementTimeout (TF.Schema l p a) b where
    acknowledgementTimeout = TF.configuration . acknowledgementTimeout

class HasAddress a b | a -> b where
    address :: Lens' a b

instance HasAddress a b => HasAddress (TF.Schema l p a) b where
    address = TF.configuration . address

class HasAlertCreation a b | a -> b where
    alertCreation :: Lens' a b

instance HasAlertCreation a b => HasAlertCreation (TF.Schema l p a) b where
    alertCreation = TF.configuration . alertCreation

class HasAutoResolveTimeout a b | a -> b where
    autoResolveTimeout :: Lens' a b

instance HasAutoResolveTimeout a b => HasAutoResolveTimeout (TF.Schema l p a) b where
    autoResolveTimeout = TF.configuration . autoResolveTimeout

class HasColor a b | a -> b where
    color :: Lens' a b

instance HasColor a b => HasColor (TF.Schema l p a) b where
    color = TF.configuration . color

class HasCountryCode a b | a -> b where
    countryCode :: Lens' a b

instance HasCountryCode a b => HasCountryCode (TF.Schema l p a) b where
    countryCode = TF.configuration . countryCode

class HasDescription a b | a -> b where
    description :: Lens' a b

instance HasDescription a b => HasDescription (TF.Schema l p a) b where
    description = TF.configuration . description

class HasEmail a b | a -> b where
    email :: Lens' a b

instance HasEmail a b => HasEmail (TF.Schema l p a) b where
    email = TF.configuration . email

class HasEndTime a b | a -> b where
    endTime :: Lens' a b

instance HasEndTime a b => HasEndTime (TF.Schema l p a) b where
    endTime = TF.configuration . endTime

class HasEscalationPolicy a b | a -> b where
    escalationPolicy :: Lens' a b

instance HasEscalationPolicy a b => HasEscalationPolicy (TF.Schema l p a) b where
    escalationPolicy = TF.configuration . escalationPolicy

class HasIntegrationEmail a b | a -> b where
    integrationEmail :: Lens' a b

instance HasIntegrationEmail a b => HasIntegrationEmail (TF.Schema l p a) b where
    integrationEmail = TF.configuration . integrationEmail

class HasIntegrationKey a b | a -> b where
    integrationKey :: Lens' a b

instance HasIntegrationKey a b => HasIntegrationKey (TF.Schema l p a) b where
    integrationKey = TF.configuration . integrationKey

class HasJobTitle a b | a -> b where
    jobTitle :: Lens' a b

instance HasJobTitle a b => HasJobTitle (TF.Schema l p a) b where
    jobTitle = TF.configuration . jobTitle

class HasLabel a b | a -> b where
    label :: Lens' a b

instance HasLabel a b => HasLabel (TF.Schema l p a) b where
    label = TF.configuration . label

class HasLayer a b | a -> b where
    layer :: Lens' a b

instance HasLayer a b => HasLayer (TF.Schema l p a) b where
    layer = TF.configuration . layer

class HasName a b | a -> b where
    name :: Lens' a b

instance HasName a b => HasName (TF.Schema l p a) b where
    name = TF.configuration . name

class HasNumLoops a b | a -> b where
    numLoops :: Lens' a b

instance HasNumLoops a b => HasNumLoops (TF.Schema l p a) b where
    numLoops = TF.configuration . numLoops

class HasOverflow a b | a -> b where
    overflow :: Lens' a b

instance HasOverflow a b => HasOverflow (TF.Schema l p a) b where
    overflow = TF.configuration . overflow

class HasRole a b | a -> b where
    role :: Lens' a b

instance HasRole a b => HasRole (TF.Schema l p a) b where
    role = TF.configuration . role

class HasRule a b | a -> b where
    rule :: Lens' a b

instance HasRule a b => HasRule (TF.Schema l p a) b where
    rule = TF.configuration . rule

class HasSendShortEmail a b | a -> b where
    sendShortEmail :: Lens' a b

instance HasSendShortEmail a b => HasSendShortEmail (TF.Schema l p a) b where
    sendShortEmail = TF.configuration . sendShortEmail

class HasService a b | a -> b where
    service :: Lens' a b

instance HasService a b => HasService (TF.Schema l p a) b where
    service = TF.configuration . service

class HasServices a b | a -> b where
    services :: Lens' a b

instance HasServices a b => HasServices (TF.Schema l p a) b where
    services = TF.configuration . services

class HasSrc a b | a -> b where
    src :: Lens' a b

instance HasSrc a b => HasSrc (TF.Schema l p a) b where
    src = TF.configuration . src

class HasStartTime a b | a -> b where
    startTime :: Lens' a b

instance HasStartTime a b => HasStartTime (TF.Schema l p a) b where
    startTime = TF.configuration . startTime

class HasTeamId a b | a -> b where
    teamId :: Lens' a b

instance HasTeamId a b => HasTeamId (TF.Schema l p a) b where
    teamId = TF.configuration . teamId

class HasTeams a b | a -> b where
    teams :: Lens' a b

instance HasTeams a b => HasTeams (TF.Schema l p a) b where
    teams = TF.configuration . teams

class HasTimeZone a b | a -> b where
    timeZone :: Lens' a b

instance HasTimeZone a b => HasTimeZone (TF.Schema l p a) b where
    timeZone = TF.configuration . timeZone

class HasType' a b | a -> b where
    type' :: Lens' a b

instance HasType' a b => HasType' (TF.Schema l p a) b where
    type' = TF.configuration . type'

class HasUserId a b | a -> b where
    userId :: Lens' a b

instance HasUserId a b => HasUserId (TF.Schema l p a) b where
    userId = TF.configuration . userId

class HasVendor a b | a -> b where
    vendor :: Lens' a b

instance HasVendor a b => HasVendor (TF.Schema l p a) b where
    vendor = TF.configuration . vendor

class HasComputedAcknowledgementTimeout a s b | a -> s b where
    computedAcknowledgementTimeout :: TF.Ref s a -> b

class HasComputedAddress a s b | a -> s b where
    computedAddress :: TF.Ref s a -> b

class HasComputedAlertCreation a s b | a -> s b where
    computedAlertCreation :: TF.Ref s a -> b

class HasComputedAutoResolveTimeout a s b | a -> s b where
    computedAutoResolveTimeout :: TF.Ref s a -> b

class HasComputedAvatarUrl a s b | a -> s b where
    computedAvatarUrl :: TF.Ref s a -> b

class HasComputedBlacklisted a s b | a -> s b where
    computedBlacklisted :: TF.Ref s a -> b

class HasComputedColor a s b | a -> s b where
    computedColor :: TF.Ref s a -> b

class HasComputedCountryCode a s b | a -> s b where
    computedCountryCode :: TF.Ref s a -> b

class HasComputedCreatedAt a s b | a -> s b where
    computedCreatedAt :: TF.Ref s a -> b

class HasComputedDescription a s b | a -> s b where
    computedDescription :: TF.Ref s a -> b

class HasComputedEmail a s b | a -> s b where
    computedEmail :: TF.Ref s a -> b

class HasComputedEnabled a s b | a -> s b where
    computedEnabled :: TF.Ref s a -> b

class HasComputedEndTime a s b | a -> s b where
    computedEndTime :: TF.Ref s a -> b

class HasComputedEscalationPolicy a s b | a -> s b where
    computedEscalationPolicy :: TF.Ref s a -> b

class HasComputedHtmlUrl a s b | a -> s b where
    computedHtmlUrl :: TF.Ref s a -> b

class HasComputedId a s b | a -> s b where
    computedId :: TF.Ref s a -> b

class HasComputedIntegrationEmail a s b | a -> s b where
    computedIntegrationEmail :: TF.Ref s a -> b

class HasComputedIntegrationKey a s b | a -> s b where
    computedIntegrationKey :: TF.Ref s a -> b

class HasComputedInvitationSent a s b | a -> s b where
    computedInvitationSent :: TF.Ref s a -> b

class HasComputedJobTitle a s b | a -> s b where
    computedJobTitle :: TF.Ref s a -> b

class HasComputedLabel a s b | a -> s b where
    computedLabel :: TF.Ref s a -> b

class HasComputedLastIncidentTimestamp a s b | a -> s b where
    computedLastIncidentTimestamp :: TF.Ref s a -> b

class HasComputedLayer a s b | a -> s b where
    computedLayer :: TF.Ref s a -> b

class HasComputedName a s b | a -> s b where
    computedName :: TF.Ref s a -> b

class HasComputedNumLoops a s b | a -> s b where
    computedNumLoops :: TF.Ref s a -> b

class HasComputedOverflow a s b | a -> s b where
    computedOverflow :: TF.Ref s a -> b

class HasComputedRole a s b | a -> s b where
    computedRole :: TF.Ref s a -> b

class HasComputedRule a s b | a -> s b where
    computedRule :: TF.Ref s a -> b

class HasComputedSendShortEmail a s b | a -> s b where
    computedSendShortEmail :: TF.Ref s a -> b

class HasComputedService a s b | a -> s b where
    computedService :: TF.Ref s a -> b

class HasComputedServices a s b | a -> s b where
    computedServices :: TF.Ref s a -> b

class HasComputedSrc a s b | a -> s b where
    computedSrc :: TF.Ref s a -> b

class HasComputedStartTime a s b | a -> s b where
    computedStartTime :: TF.Ref s a -> b

class HasComputedStatus a s b | a -> s b where
    computedStatus :: TF.Ref s a -> b

class HasComputedTeamId a s b | a -> s b where
    computedTeamId :: TF.Ref s a -> b

class HasComputedTeams a s b | a -> s b where
    computedTeams :: TF.Ref s a -> b

class HasComputedTimeZone a s b | a -> s b where
    computedTimeZone :: TF.Ref s a -> b

class HasComputedType' a s b | a -> s b where
    computedType' :: TF.Ref s a -> b

class HasComputedUserId a s b | a -> s b where
    computedUserId :: TF.Ref s a -> b

class HasComputedVendor a s b | a -> s b where
    computedVendor :: TF.Ref s a -> b
