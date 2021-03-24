import qbs 1.0

DynamicLibrary {
    Depends { name: 'cpp' }
    cpp.cxxLanguageVersion: "c++17"
    cpp.enableRtti: false
    cpp.discardUnusedData: true
    cpp.defines: [
        "CRY_PLATFORM_LINUX"
    ]
    cpp.includePaths: [
        ".",
    ]
    cpp.systemIncludePaths: [
        "../../SDKs/boost",
        "../CryAction",
        "../CryCommon",
        "../CryCommon/3rdParty",
        "../CryCommon/CryLobby",
        "../CryLobby/Interface",
        "../CryPerceptionSystem/Module/../Interface",
        "../CrySchematyc/Core/Interface",
    ]
    cpp.cxxFlags: [
        "-Wunused-parameter",
        "-Wno-everything",
    ]
    Group {
        name: "PCH"
        files: ["StdAfx.h"]
        fileTags: ["cpp_pch_src"]
    }
    Group {
        name: "AI"
        prefix: "AI/"
        files: [
            "AIAwarenessToPlayerHelper.cpp",
            "AIAwarenessToPlayerHelper.h",
            "AIBattleFront.cpp",
            "AIBattleFront.h",
            "AICounters.cpp",
            "AICounters.h",
            "AISquadManager.cpp",
            "AISquadManager.h",
            "AdvantagePointOccupancyControl.cpp",
            "AdvantagePointOccupancyControl.h",
            "Agent.h",
            "Agent.inl",
            "Assignment.h",
            "DeathManager.cpp",
            "DeathManager.h",
            "EnvironmentDisturbanceManager.cpp",
            "EnvironmentDisturbanceManager.h",
            "GameAIEnv.cpp",
            "GameAIEnv.h",
            "GameAIHelpers.cpp",
            "GameAIHelpers.h",
            "GameAIRecorder.cpp",
            "GameAIRecorder.h",
            "GameAISystem.cpp",
            "GameAISystem.h",
            "ScriptBind_GameAI.cpp",
            "ScriptBind_GameAI.h",
            "TacticalPointLanguageExtender.cpp",
            "TacticalPointLanguageExtender.h",
            "TargetTrackThreatModifier.cpp",
            "TargetTrackThreatModifier.h",
            "VisibleObjectsHelper.cpp",
            "VisibleObjectsHelper.h",
        ]
    }
    Group {
        name: "AI / Behavior Tree"
        prefix: "AI/BehaviorTree/"
        files: [
            "BehaviorTreeNodes_Game.cpp",
            "BehaviorTreeNodes_Game.h",
        ]
    }
    Group {
        name: "AI / Corpses"
        prefix: "AI/"
        files: [
            "AICorpse.cpp",
            "AICorpse.h",
        ]
    }
    Group {
        name: "AI / HazardModule/"
        prefix: "AI/HazardModule/"
        files: [
            "Hazard.cpp",
            "Hazard.h",
            "HazardModule.cpp",
            "HazardModule.h",
            "HazardProjectile.cpp",
            "HazardProjectile.h",
            "HazardRayCast.cpp",
            "HazardRayCast.h",
            "HazardShared.cpp",
            "HazardShared.h",
            "HazardSphere.cpp",
            "HazardSphere.h",
        ]
    }
    Group {
        name: "AI / Modules"
        prefix: "AI/"
        files: [
            "AloneDetectorModule.cpp",
            "AloneDetectorModule.h",
            "IGameAIModule.h",
            "RangeModule.cpp",
            "RangeModule.h",
            "SearchModule.cpp",
            "SearchModule.h",
            "StalkerModule.cpp",
            "StalkerModule.h",
        ]
    }
    Group {
        name: "AI / RadioChatter"
        prefix: "AI/RadioChatter/"
        files: [
            "RadioChatterFlowNode.cpp",
            "RadioChatterModule.cpp",
            "RadioChatterModule.h",
        ]
    }
    Group {
        name: "AI / RateOfDeath"
        prefix: "AI/RateOfDeath/"
        files: [
            "RateOfDeathHelper.cpp",
            "RateOfDeathHelper.h",
            "RateOfDeathSimple.cpp",
            "RateOfDeathSimple.h",
        ]
    }
    Group {
        name: "AI / Action"
        prefix: "AI/Action/"
        files: [
            "AIFaceManager.cpp",
            "AIFaceManager.h",
            "AIGroupProxy.cpp",
            "AIGroupProxy.h",
            "AIHandler.cpp",
            "AIHandler.h",
            "AIProxy.cpp",
            "AIProxy.h",
            "AIProxyManager.cpp",
            "AIProxyManager.h",
            "CommunicationHandler.cpp",
            "CommunicationHandler.h",
            "ScriptBind_AIAction.cpp",
            "ScriptBind_AIAction.h",
        ]
    }
    Group {
        name: "AI / Action / Range Signaling"
        prefix: "AI/Action/RangeSignalingSystem/"
        files: [
            "AngleAlert.cpp",
            "AngleAlert.h",
            "PersonalRangeSignaling.cpp",
            "PersonalRangeSignaling.h",
            "Range.cpp",
            "Range.h",
            "RangeSignaling.cpp",
            "RangeSignaling.h",
        ]
    }
    Group {
        name: "AI / Action / Signal Timers"
        prefix: "AI/Action/SignalTimers/"
        files: [
            "PersonalSignalTimer.cpp",
            "PersonalSignalTimer.h",
            "SignalTimers.cpp",
            "SignalTimers.h",
        ]
    }
    Group {
        name: "AI / Action / Mannequin"
        prefix: "AI/Action/Mannequin/"
        files: [
            "AnimActionTriStateSDK.cpp",
            "AnimActionTriStateSDK.h",
        ]
    }
    Group {
        name: "Actor Files"
        files: [
            "AIDemoInput.cpp",
            "AIDemoInput.h",
            "Actor.cpp",
            "Actor.h",
            "ActorDamageEffectController.cpp",
            "ActorDamageEffectController.h",
            "ActorDefinitions.h",
            "ActorImpulseHandler.cpp",
            "ActorImpulseHandler.h",
            "ActorLuaCache.cpp",
            "ActorLuaCache.h",
            "ActorManager.cpp",
            "ActorManager.h",
            "ActorTelemetry.cpp",
            "ActorTelemetry.h",
            "Health.h",
            "ScriptBind_Actor.cpp",
            "ScriptBind_Actor.h",
        ]
    }
    Group {
        name: "Actor Files / Animation"
        files: [
            "ActionCoopAnim.cpp",
            "ActionCoopAnim.h",
            "ActionMultiCoopAnim.cpp",
            "ActionMultiCoopAnim.h",
            "AnimActionAIAimPose.cpp",
            "AnimActionAIAimPose.h",
            "AnimActionAIAiming.cpp",
            "AnimActionAIAiming.h",
            "AnimActionAICoverAction.cpp",
            "AnimActionAICoverAction.h",
            "AnimActionAILookPose.cpp",
            "AnimActionAILookPose.h",
            "AnimActionAILooking.cpp",
            "AnimActionAILooking.h",
            "AnimActionAIMovement.cpp",
            "AnimActionAIMovement.h",
            "AnimActionAIStance.cpp",
            "AnimActionAIStance.h",
            "AnimActionBlendFromRagdoll.cpp",
            "AnimActionBlendFromRagdoll.h",
            "AnimEventPlayer.cpp",
            "AnimEventPlayer.h",
            "FragmentVariationHelper.cpp",
            "FragmentVariationHelper.h",
            "MovementAction.cpp",
            "MovementAction.h",
            "PlayerAnimation.cpp",
            "PlayerAnimation.h",
            "ProceduralClipAimSmoothing.cpp",
            "ProceduralClipAiming.cpp",
            "ProceduralClipColliderMode.cpp",
            "ProceduralClipCompromiseCover.cpp",
            "ProceduralClipCopyNormalizedTime.cpp",
            "ProceduralClipFacialSequence.cpp",
            "ProceduralClipLooking.cpp",
            "ProceduralClipMovementControlMethod.cpp",
            "ProceduralClipRagdoll.cpp",
            "ProceduralClipSetStance.cpp",
            "ProceduralContextAim.cpp",
            "ProceduralContextAim.h",
            "ProceduralContextColliderMode.cpp",
            "ProceduralContextColliderMode.h",
            "ProceduralContextHelpers.h",
            "ProceduralContextLook.cpp",
            "ProceduralContextLook.h",
            "ProceduralContextMovementControlMethod.cpp",
            "ProceduralContextMovementControlMethod.h",
            "ProceduralContextRagdoll.cpp",
            "ProceduralContextRagdoll.h",
        ]
    }
    Group {
        name: "GameRules"
        files: [
            "Effects/GameEffects/PlayerMindGameBeamEffect.cpp",
            "Effects/GameEffects/PlayerMindGameBeamEffect.h",
            "GameRules.cpp",
            "GameRules.h",
            "GameRulesClientServer.cpp",
            "GameRulesModules/GameRulesObjective_PowerStruggle.cpp",
            "GameRulesModules/GameRulesObjective_PowerStruggle.h",
            "GameRulesModules/GameRulesSPDamageHandling.cpp",
            "GameRulesModules/GameRulesSPDamageHandling.h",
            "ScriptBind_GameRules.cpp",
            "ScriptBind_GameRules.h",
            "TeamVisualizationManager.cpp",
            "TeamVisualizationManager.h",
            "Voting.cpp",
            "Voting.h",
        ]
    }
    Group {
        name: "Item Files / Items"
        files: [
            "Accessory.cpp",
            "Accessory.h",
            "DoubleMagazine.cpp",
            "DoubleMagazine.h",
            "FlowItemAnimation.cpp",
            "FlowItemAnimation.h",
            "Item.cpp",
            "Item.h",
            "ItemAccessory.cpp",
            "ItemAnimation.cpp",
            "ItemAnimation.h",
            "ItemClientServer.cpp",
            "ItemDefinitions.h",
            "ItemEffect.cpp",
            "ItemEvents.cpp",
            "ItemPackages.cpp",
            "ItemPackages.h",
            "ItemParams.cpp",
            "ItemParamsRegistration.h",
            "ItemParamsRegistrationOperators.h",
            "ItemResource.cpp",
            "ItemResourceCache.cpp",
            "ItemResourceCache.h",
            "ItemScheduler.cpp",
            "ItemScheduler.h",
            "ItemString.h",
            "ItemView.cpp",
            "Laser.cpp",
            "Laser.h",
            "ScopeReticule.cpp",
            "ScopeReticule.h",
            "ScriptBind_Item.cpp",
            "ScriptBind_Item.h",
            "flashlight.cpp",
            "flashlight.h",
        ]
    }
    Group {
        name: "Item Files / Weapon Files"
        files: [
            "AmmoParams.cpp",
            "AmmoParams.h",
            "MuzzleEffect.cpp",
            "MuzzleEffect.h",
            "QuatTBlender.cpp",
            "QuatTBlender.h",
            "Recoil.cpp",
            "Recoil.h",
            "ScriptBind_Weapon.cpp",
            "ScriptBind_Weapon.h",
            "TracerManager.cpp",
            "TracerManager.h",
            "Weapon.cpp",
            "Weapon.h",
            "WeaponAlias.cpp",
            "WeaponAlias.h",
            "WeaponClientServer.cpp",
            "WeaponEvent.cpp",
            "WeaponInput.cpp",
            "WeaponStats.cpp",
            "WeaponStats.h",
            "WeaponSystem.cpp",
            "WeaponSystem.h",
        ]
    }
    Group {
        name: "Item Files / Weapon Files / Fire Modes"
        files: [
            "Automatic.cpp",
            "Automatic.h",
            "AutomaticShotgun.cpp",
            "AutomaticShotgun.h",
            "Burst.cpp",
            "Burst.h",
            "Charge.cpp",
            "Charge.h",
            "Detonate.cpp",
            "Detonate.h",
            "FireMode.cpp",
            "FireMode.h",
            "FireModeParams.cpp",
            "FireModeParams.h",
            "FireModePlugin.cpp",
            "FireModePlugin.h",
            "FireModePluginParams.cpp",
            "FireModePluginParams.h",
            "LTagSingle.cpp",
            "LTagSingle.h",
            "Melee.cpp",
            "Melee.h",
            "MeleeCollisionHelper.cpp",
            "MeleeCollisionHelper.h",
            "MikeBullet.cpp",
            "MikeBullet.h",
            "Plant.cpp",
            "Plant.h",
            "Rapid.cpp",
            "Rapid.h",
            "Shotgun.cpp",
            "Shotgun.h",
            "Single.cpp",
            "Single.h",
            "Spammer.cpp",
            "Spammer.h",
            "Throw.cpp",
            "Throw.h",
        ]
    }
    Group {
        name: "Item Files / Weapon Files / Projectiles"
        files: [
            "Bullet.cpp",
            "Bullet.h",
            "C4Projectile.cpp",
            "C4Projectile.h",
            "Grenade.cpp",
            "Grenade.h",
            "HandGrenades.h",
            "HomingMissile.cpp",
            "HomingMissile.h",
            "HommingSwarmProjectile.cpp",
            "HommingSwarmProjectile.h",
            "LTAGGrenade.cpp",
            "LTAGGrenade.h",
            "LightningBolt.cpp",
            "LightningBolt.h",
            "Projectile.cpp",
            "Projectile.h",
            "Rocket.cpp",
            "Rocket.h",
            "StickyProjectile.cpp",
            "StickyProjectile.h",
        ]
    }
    Group {
        name: "Item Files / Weapon Files / Weapons"
        files: [
            "AIGrenade.cpp",
            "AIGrenade.h",
            "Binocular.cpp",
            "Binocular.h",
            "C4.cpp",
            "C4.h",
            "CinematicWeapon.cpp",
            "CinematicWeapon.h",
            "DebugGun.cpp",
            "DebugGun.h",
            "EMPGrenade.cpp",
            "EMPGrenade.h",
            "EnvironmentalWeapon.cpp",
            "EnvironmentalWeapon.h",
            "GunTurret.cpp",
            "GunTurret.h",
            "HandGrenades.cpp",
            "HeavyMountedWeapon.cpp",
            "HeavyMountedWeapon.h",
            "HeavyWeapon.cpp",
            "HeavyWeapon.h",
            "JAW.cpp",
            "JAW.h",
            "LTAG.cpp",
            "LTAG.h",
            "NoWeapon.cpp",
            "NoWeapon.h",
            "UseableTurret.cpp",
            "UseableTurret.h",
            "VehicleMountedWeapon.cpp",
            "VehicleMountedWeapon.h",
            "VehicleWeapon.cpp",
            "VehicleWeapon.h",
            "VehicleWeaponControlled.cpp",
            "VehicleWeaponControlled.h",
            "VehicleWeaponGuided.cpp",
            "VehicleWeaponGuided.h",
            "WeaponMelee.cpp",
            "WeaponMelee.h",
        ]
    }
    Group {
        name: "Item Files/Weapon Files / Weapons / PickAndThrow"
        files: [
            "PickAndThrowProxy.cpp",
            "PickAndThrowProxy.h",
            "PickAndThrowUtilities.cpp",
            "PickAndThrowUtilities.h",
            "PickAndThrowWeapon.cpp",
            "PickAndThrowWeapon.h",
        ]
    }
    Group {
        name: "Item Files / Weapon Files / Zoom Modes"
        files: [
            "IronSight.cpp",
            "IronSight.h",
            "Scope.cpp",
            "Scope.h",
            "ThrowIndicator.cpp",
            "ThrowIndicator.h",
        ]
    }
    Group {
        name: "Localization"
        files: [
            "GameLocalizationManager.cpp",
            "GameLocalizationManager.h",
        ]
    }
    Group {
        name: "MovingPlatforms"
        prefix: "MovingPlatforms/"
        files: [
            "MovingPlatformMgr.cpp",
            "MovingPlatformMgr.h",
        ]
    }
    Group {
        name: "Multiplayer / Actor Files / player"
        files: [
            "AfterMatchAwards.cpp",
            "AfterMatchAwards.h",
            "ClientHitEffectsMP.cpp",
            "ClientHitEffectsMP.h",
            "CorpseManager.cpp",
            "CorpseManager.h",
            "DummyPlayer.cpp",
            "DummyPlayer.h",
            "PersistantStats.cpp",
            "PersistantStats.h",
            "PlayerModifiableValues.cpp",
            "PlayerModifiableValues.h",
            "PlayerPlugin.cpp",
            "PlayerPlugin.h",
            "PlayerPluginEventDistributor.h",
            "PlayerPlugin_CurrentlyTargetting.cpp",
            "PlayerPlugin_CurrentlyTargetting.h",
            "PlayerPlugin_Interaction.cpp",
            "PlayerPlugin_Interaction.h",
            "PlayerPlugin_InteractiveEntityMonitor.cpp",
            "PlayerPlugin_InteractiveEntityMonitor.h",
            "PlayerProgression.cpp",
            "PlayerProgression.h",
            "PlayerProgressionTypes.h",
            "ProgressionUnlocks.cpp",
            "ProgressionUnlocks.h",
            "SkillKill.cpp",
            "SkillKill.h",
            "SkillRanking.cpp",
            "SkillRanking.h",
            "StatsEntityIdRegistry.cpp",
            "StatsEntityIdRegistry.h",
            "StatsStructures.cpp",
            "StatsStructures.h",
        ]
    }
    Group {
        name: "Multiplayer/Actor Files / player / animation"
        files: [
            "DualCharacterProxy.cpp",
            "DualCharacterProxy.h",
            "IKTorsoAim_Helper.cpp",
            "IKTorsoAim_Helper.h",
            "ITransformationPinning.h",
            "LookAim_Helper.cpp",
            "LookAim_Helper.h",
            "TransformationPinning.cpp",
            "TransformationPinning.h",
            "WeaponFPAiming.cpp",
            "WeaponFPAiming.h",
        ]
    }
    Group {
        name: "Multiplayer / Audio Files"
        prefix: "Audio/"
        files: [
            "Announcer.cpp",
            "Announcer.h",
            "AreaAnnouncer.cpp",
            "AreaAnnouncer.h",
            "MiscAnnouncer.cpp",
            "MiscAnnouncer.h",
        ]
    }
    Group {
        name: "Multiplayer / Effects"
        prefix: "Effects/"
        files: [
            "GameEffectsSystem.cpp",
            "GameEffectsSystem.h",
            "GameEffectsSystemDefines.h",
        ]
    }
    Group {
        name: "Multiplayer / Effects / GameEffects"
        files: [
            "Effects/GameEffects/ExplosionGameEffect.cpp",
            "Effects/GameEffects/ExplosionGameEffect.h",
            "Effects/GameEffects/GameEffect.cpp",
            "Effects/GameEffects/GameEffect.h",
            "Effects/GameEffects/HitRecoilGameEffect.cpp",
            "Effects/GameEffects/HitRecoilGameEffect.h",
            "Effects/GameEffects/HudInterferenceGameEffect.cpp",
            "Effects/GameEffects/HudInterferenceGameEffect.h",
            "Effects/GameEffects/KillCamGameEffect.cpp",
            "Effects/GameEffects/KillCamGameEffect.h",
            "Effects/GameEffects/LightningGameEffect.cpp",
            "Effects/GameEffects/LightningGameEffect.h",
            "Effects/GameEffects/ParameterGameEffect.cpp",
            "Effects/GameEffects/ParameterGameEffect.h",
            "Effects/GameEffects/PlayerHealthEffect.cpp",
            "Effects/GameEffects/PlayerHealthEffect.h",
            "Effects/GameEffects/SceneBlurGameEffect.cpp",
            "Effects/GameEffects/SceneBlurGameEffect.h",
            "Effects/GameEffects/WaterEffects.cpp",
            "Effects/GameEffects/WaterEffects.h",
            "Effects/RenderNodes/IGameRenderNode.h",
        ]
    }
    Group {
        name: "Multiplayer / Effects / HUDEventListeners"
        prefix: "Effects/HUDEventListeners/"
        files: [
            "LetterBoxHudEventListener.cpp",
            "LetterBoxHudEventListener.h",
        ]
    }
    Group {
        name: "Multiplayer / Effects / RenderElements"
        prefix: "Effects/RenderElements/"
        files: [
            "GameRenderElement.cpp",
        ]
    }
    Group {
        name: "Multiplayer / Effects / RenderNodes"
        prefix: "Effects/RenderNodes/"
        files: [
            "LightningNode.cpp",
            "LightningNode.h",
        ]
    }
    Group {
        name: "Multiplayer / Effects / Tools"
        prefix: "Effects/Tools/"
        files: [
            "CVarActivationSystem.cpp",
            "CVarActivationSystem.h",
            "LerpParam.h",
            "PostEffectActivationSystem.cpp",
            "PostEffectActivationSystem.h",
        ]
    }
    Group {
        name: "Multiplayer / Entities"
        prefix: "MultiplayerEntities/"
        files: [
            "CarryEntity.cpp",
            "CarryEntity.h",
            "NetworkedPhysicsEntity.cpp",
            "NetworkedPhysicsEntity.h",
        ]
    }
    Group {
        name: "Multiplayer / GameCodeCoverage"
        prefix: "GameCodeCoverage/"
        files: [
            "GameCodeCoverageEnabled.h",
            "GameCodeCoverageGUI.cpp",
            "GameCodeCoverageGUI.h",
            "GameCodeCoverageManager.cpp",
            "GameCodeCoverageManager.h",
            "GameCodeCoverageTracker.cpp",
            "GameCodeCoverageTracker.h",
            "IGameCodeCoverageListener.cpp",
            "IGameCodeCoverageListener.h",
        ]
    }
    Group {
        name: "Multiplayer / GameRules"
        files: [
            "Battlechatter.cpp",
            "Battlechatter.h",
            "EquipmentLoadout.cpp",
            "EquipmentLoadout.h",
            "GameRulesModules/IGameRulesPrematchListener.h",
            "GameRulesTypes.h",
        ]
    }
    Group {
        name: "Multiplayer / GameRules / Events"
        prefix: "GameRulesModules/"
        files: [
            "IGameRulesActorActionListener.h",
            "IGameRulesClientConnectionListener.h",
            "IGameRulesClientScoreListener.h",
            "IGameRulesKillListener.h",
            "IGameRulesPickupListener.h",
            "IGameRulesPlayerStatsListener.h",
            "IGameRulesRevivedListener.h",
            "IGameRulesRoundsListener.h",
            "IGameRulesStatsRecording.h",
            "IGameRulesSurvivorCountListener.h",
            "IGameRulesTeamChangedListener.h",
        ]
    }
    Group {
        name: "Multiplayer / GameRules / Modules"
        prefix: "GameRulesModules/"
        files: [
            "GameRulesAssistScoring.cpp",
            "GameRulesAssistScoring.h",
            "GameRulesCommonDamageHandling.cpp",
            "GameRulesCommonDamageHandling.h",
            "GameRulesExtractionVictoryConditions.cpp",
            "GameRulesExtractionVictoryConditions.h",
            "GameRulesGladiatorTeams.h",
            "GameRulesMPActorAction.cpp",
            "GameRulesMPActorAction.h",
            "GameRulesMPDamageHandling.cpp",
            "GameRulesMPDamageHandling.h",
            "GameRulesMPSimpleSpawning.cpp",
            "GameRulesMPSimpleSpawning.h",
            "GameRulesMPSpawning.cpp",
            "GameRulesMPSpawning.h",
            "GameRulesMPSpawningWithLives.cpp",
            "GameRulesMPSpawningWithLives.h",
            "GameRulesMPSpectator.cpp",
            "GameRulesMPSpectator.h",
            "GameRulesMPWaveSpawning.cpp",
            "GameRulesMPWaveSpawning.h",
            "GameRulesModulesManager.cpp",
            "GameRulesModulesManager.h",
            "GameRulesModulesRegistration.h",
            "GameRulesObjectiveVictoryConditionsIndividualScore.cpp",
            "GameRulesObjectiveVictoryConditionsIndividualScore.h",
            "GameRulesObjectiveVictoryConditionsTeam.cpp",
            "GameRulesObjectiveVictoryConditionsTeam.h",
            "GameRulesSpawningBase.cpp",
            "GameRulesSpawningBase.h",
            "GameRulesStandardPlayerStats.cpp",
            "GameRulesStandardPlayerStats.h",
            "GameRulesStandardRounds.cpp",
            "GameRulesStandardRounds.h",
            "GameRulesStandardScoring.cpp",
            "GameRulesStandardScoring.h",
            "GameRulesStandardSetup.cpp",
            "GameRulesStandardSetup.h",
            "GameRulesStandardState.cpp",
            "GameRulesStandardState.h",
            "GameRulesStandardTwoTeams.cpp",
            "GameRulesStandardTwoTeams.h",
            "GameRulesStandardVictoryConditionsPlayer.cpp",
            "GameRulesStandardVictoryConditionsPlayer.h",
            "GameRulesStandardVictoryConditionsTeam.cpp",
            "GameRulesStandardVictoryConditionsTeam.h",
            "GameRulesStatsRecording.cpp",
            "GameRulesStatsRecording.h",
            "GameRulesSurvivorOneVictoryConditions.cpp",
            "GameRulesSurvivorOneVictoryConditions.h",
            "IGameRulesActorActionModule.h",
            "IGameRulesAssistScoringModule.h",
            "IGameRulesDamageHandlingModule.h",
            "IGameRulesModuleRMIListener.h",
            "IGameRulesModulesManager.h",
            "IGameRulesObjectivesModule.h",
            "IGameRulesPlayerSetupModule.h",
            "IGameRulesPlayerStatsModule.h",
            "IGameRulesRoundsModule.h",
            "IGameRulesScoringModule.h",
            "IGameRulesSpawningModule.h",
            "IGameRulesSpectatorModule.h",
            "IGameRulesStateModule.h",
            "IGameRulesTeamsModule.h",
            "IGameRulesVictoryConditionsModule.h",
        ]
    }
    Group {
        name: "Multiplayer / GameRules / Objectives"
        prefix: "GameRulesModules/"
        files: [
            "GameRulesCombiCaptureObjective.cpp",
            "GameRulesCombiCaptureObjective.h",
            "GameRulesHoldObjectiveBase.cpp",
            "GameRulesHoldObjectiveBase.h",
            "GameRulesKingOfTheHillObjective.cpp",
            "GameRulesKingOfTheHillObjective.h",
            "GameRulesObjective_CTF.cpp",
            "GameRulesObjective_CTF.h",
            "GameRulesObjective_Extraction.cpp",
            "GameRulesObjective_Extraction.h",
            "GameRulesObjective_Predator.cpp",
            "GameRulesObjective_Predator.h",
            "GameRulesSimpleEntityBasedObjective.cpp",
            "GameRulesSimpleEntityBasedObjective.h",
            "IGameRulesEntityObjective.h",
            "IGameRulesObjective.h",
        ]
    }
    Group {
        name: "Multiplayer / Graphics"
        prefix: "Graphics/"
        files: [
            "2DRenderUtils.cpp",
            "2DRenderUtils.h",
        ]
    }
    Group {
        name: "Multiplayer/Item Files / Weapon Files / Projectiles"
        files: [
            "Chaff.cpp",
            "Chaff.h",
            "KVoltBullet.cpp",
            "KVoltBullet.h",
        ]
    }
    Group {
        name: "Multiplayer / Network"
        prefix: "Network/"
        files: [
            "GameNetworkDefines.h",
            "GameNetworkUtils.cpp",
            "GameNetworkUtils.h",
            "LobbyTaskQueue.h",
        ]
    }
    Group {
        name: "Multiplayer / Network / DownloadMgr"
        files: [
            "DownloadMgr.cpp",
            "DownloadMgr.h",
        ]
    }
    Group {
        name: "Multiplayer / Network / Lobby"
        files: [
            "Network/Lobby/AutoLockData.h",
            "Network/Lobby/CryLobbySessionHandler.cpp",
            "Network/Lobby/CryLobbySessionHandler.h",
            "Network/Lobby/GameAchievements.cpp",
            "Network/Lobby/GameAchievements.h",
            "Network/Lobby/GameBrowser.cpp",
            "Network/Lobby/GameBrowser.h",
            "Network/Lobby/GameLobby.cpp",
            "Network/Lobby/GameLobby.h",
            "Network/Lobby/GameLobbyCVars.cpp",
            "Network/Lobby/GameLobbyCVars.h",
            "Network/Lobby/GameLobbyData.cpp",
            "Network/Lobby/GameLobbyData.h",
            "Network/Lobby/GameLobbyManager.cpp",
            "Network/Lobby/GameLobbyManager.h",
            "Network/Lobby/GameServerLists.cpp",
            "Network/Lobby/GameServerLists.h",
            "Network/Lobby/GameUserPackets.h",
            "Network/Lobby/IGameLobbyEventListener.h",
            "Network/Lobby/MatchMakingEvents.h",
            "Network/Lobby/MatchMakingHandler.h",
            "Network/Lobby/MatchMakingTelemetry.h",
            "Network/Lobby/MatchmakingEvents.cpp",
            "Network/Lobby/MatchmakingHandler.cpp",
            "Network/Lobby/MatchmakingTelemetry.cpp",
            "Network/Lobby/PlaylistActivityTracker.cpp",
            "Network/Lobby/PlaylistActivityTracker.h",
            "Network/Lobby/ScriptBind_MatchMaking.cpp",
            "Network/Lobby/ScriptBind_MatchMaking.h",
            "Network/Lobby/SessionNames.cpp",
            "Network/Lobby/SessionNames.h",
            "Network/Lobby/SessionSearchSimulator.cpp",
            "Network/Lobby/SessionSearchSimulator.h",
            "Network/Lobby/TeamBalancing.cpp",
            "Network/Lobby/TeamBalancing.h",
            "RichPresence.cpp",
            "RichPresence.h",
        ]
    }
    Group {
        name: "Multiplayer / Network / Squad"
        prefix: "Network/Squad/"
        files: [
            "ISquadEventListener.h",
            "SquadManager.cpp",
            "SquadManager.h",
        ]
    }
    Group {
        name: "Multiplayer / Statistics"
        files: [
            "CircularStatsStorage.cpp",
            "CircularStatsStorage.h",
            "ITelemetryCollector.h",
            "LagOMeter.cpp",
            "LagOMeter.h",
            "StatHelpers.cpp",
            "StatHelpers.h",
            "StatsRecordingMgr.cpp",
            "StatsRecordingMgr.h",
            "TelemetryCollector.cpp",
            "TelemetryCollector.h",
            "XMLStatsSerializer.cpp",
            "XMLStatsSerializer.h",
        ]
    }
    Group {
        name: "Multiplayer / Testing"
        files: [
            "CodeCheckpointDebugMgr.cpp",
            "CodeCheckpointDebugMgr.h",
            "Testing/AutoTester.cpp",
            "Testing/AutoTester.h",
            "Testing/FeatureTestMgr.cpp",
            "Testing/FeatureTestMgr.h",
            "Testing/FeatureTester.cpp",
            "Testing/FeatureTester.h",
        ]
    }
    Group {
        name: "Multiplayer / Utility"
        files: [
            "AutoEnum.cpp",
            "AutoEnum.h",
            "SShootHelper.cpp",
            "SShootHelper.h",
            "Utility/BufferUtil.h",
            "Utility/CryDebugLog.h",
            "Utility/CryHash.cpp",
            "Utility/CryHash.h",
            "Utility/CryWatch.cpp",
            "Utility/CryWatch.h",
            "Utility/DesignerWarning.cpp",
            "Utility/DesignerWarning.h",
            "Utility/DoubleLinkedList.h",
            "Utility/MaskedVar.h",
            "Utility/SingleAllocTextBlock.cpp",
            "Utility/SingleAllocTextBlock.h",
            "Utility/StringUtils.cpp",
            "Utility/StringUtils.h",
        ]
    }
    Group {
        name: "Nodes"
        files: [
            "FlowVehicleNodes.cpp",
            "FlowWeaponCustomizationNodes.cpp",
            "FlowWeaponCustomizationNodes.h",
            "Nodes/AIAssignmentNodes.cpp",
            "Nodes/AIAssignmentNodes.h",
            "Nodes/AINodes.cpp",
            "Nodes/AINodes.h",
            "Nodes/AchievementNode.cpp",
            "Nodes/FeatureTestNode.cpp",
            "Nodes/FeatureTestNode.h",
            "Nodes/FlowActorNodes.cpp",
            "Nodes/FlowActorSensor.cpp",
            "Nodes/FlowCheckAreaNode.cpp",
            "Nodes/FlowFadeNode.cpp",
            "Nodes/FlowFadeNode.h",
            "Nodes/FlowGameSDKBaseNode.h",
            "Nodes/FlowHitInfoNode.cpp",
            "Nodes/FlowHudEventsNodes.cpp",
            "Nodes/FlowLockPlayerNode.cpp",
            "Nodes/FlowMinimapNodes.cpp",
            "Nodes/FlowNodesAIActionSequence.cpp",
            "Nodes/FlowNodesInput.cpp",
            "Nodes/FlowPlayerStagingNode.cpp",
            "Nodes/FlowPlayerStumble.cpp",
            "Nodes/FlowPostFXNodes.cpp",
            "Nodes/FlowVideoPlayerNodes.cpp",
            "Nodes/G2FlowEntityElectricConnector.cpp",
            "Nodes/G2FlowEntityVelocity.cpp",
            "Nodes/GameNodes.cpp",
            "Nodes/MPNodes.cpp",
            "Nodes/ModelToHudFlowNodes.cpp",
            "Nodes/ModelToHudFlowNodes.h",
            "Nodes/PressureWaveNode.cpp",
            "Nodes/TacticalScanNode.cpp",
            "Nodes/WeaponNodes.cpp",
        ]
    }
    Group {
        name: "Actor Files / Animation"
        files: [
            "AnimActionAIDetail.cpp",
            "AnimActionAIDetail.h",
        ]
    }
    Group {
        name: "Actor Files / Audio Files"
        prefix: "Audio/"
        files: [
            "AudioSignalPlayer.cpp",
            "AudioSignalPlayer.h",
            "AudioTypes.h",
            "GameAudio.cpp",
            "GameAudio.h",
            "GameAudioUtils.cpp",
            "GameAudioUtils.h",
            "Scriptbind_GameAudio.cpp",
            "Scriptbind_GameAudio.h",
        ]
    }
    Group {
        name: "Actor Files / Player"
        files: [
            "BodyDamage.cpp",
            "BodyDamage.h",
            "BodyDefinitions.cpp",
            "BodyDefinitions.h",
            "BodyDestruction.cpp",
            "BodyDestruction.h",
            "BodyManager.cpp",
            "BodyManager.h",
            "BodyManagerCVars.cpp",
            "BodyManagerCVars.h",
            "ExactPositioning.cpp",
            "ExactPositioning.h",
            "ExactPositioningTrigger.cpp",
            "ExactPositioningTrigger.h",
            "GodMode.cpp",
            "GodMode.h",
            "IPlayerEventListener.h",
            "IPlayerInput.h",
            "IPlayerUpdateListener.h",
            "LocalPlayerComponent.cpp",
            "LocalPlayerComponent.h",
            "NetPlayerInput.cpp",
            "NetPlayerInput.h",
            "Player.cpp",
            "Player.h",
            "PlayerAI.cpp",
            "PlayerAI.h",
            "PlayerControl/PlayerEnslavement.cpp",
            "PlayerControl/PlayerEnslavement.h",
            "PlayerEntityInteraction.cpp",
            "PlayerEntityInteraction.h",
            "PlayerInput.cpp",
            "PlayerInput.h",
            "PlayerMovementController.cpp",
            "PlayerMovementController.h",
            "PlayerMovementDebug.cpp",
            "PlayerMovementDebug.h",
            "PlayerRotation.cpp",
            "PlayerRotation.h",
            "PlayerStumble.cpp",
            "PlayerStumble.h",
            "PlayerVisTable.cpp",
            "PlayerVisTable.h",
            "SpectacularKill.cpp",
            "SpectacularKill.h",
            "SprintStamina.cpp",
            "SprintStamina.h",
        ]
    }
    Group {
        name: "Realtime Remote Update System"
        prefix: "Editor/"
        files: [
            "GameRealtimeRemoteUpdate.cpp",
            "GameRealtimeRemoteUpdate.h",
        ]
    }
    Group {
        name: "RecordingSystem"
        files: [
            "AdaptiveCompressor.cpp",
            "AdaptiveCompressor.h",
            "RecordingBuffer.cpp",
            "RecordingBuffer.h",
            "RecordingSystem.cpp",
            "RecordingSystem.h",
            "RecordingSystemCircularBuffer.h",
            "RecordingSystemClientSender.cpp",
            "RecordingSystemClientSender.h",
            "RecordingSystemCompressor.cpp",
            "RecordingSystemCompressor.h",
            "RecordingSystemDebug.cpp",
            "RecordingSystemDebug.h",
            "RecordingSystemDefines.h",
            "RecordingSystemPackets.cpp",
            "RecordingSystemPackets.h",
            "RecordingSystemServerForwarder.cpp",
            "RecordingSystemServerForwarder.h",
            "RecordingSystemStreamer.cpp",
        ]
    }
    Group {
        name: "RecordingSystem / ReplayObjects"
        files: [
            "ReplayActor.cpp",
            "ReplayActor.h",
            "ReplayObject.cpp",
            "ReplayObject.h",
        ]
    }
    Group {
        name: "Startup Files"
        files: [
            "GameDll.cpp",
            "GameStartup.cpp",
            "GameStartup.h",
        ]
    }
    Group {
        name: "Stereo3D"
        prefix: "Stereo3D/"
        files: [
            "StereoFramework.cpp",
            "StereoFramework.h",
            "StereoZoom.cpp",
            "StereoZoom.h",
        ]
    }
    Group {
        name: "Turret / Turret"
        prefix: "Turret/Turret/"
        files: [
            "AnimationActionTurret.h",
            "FlowNodesTurret.cpp",
            "ProceduralClipTurretAimPose.cpp",
            "ProceduralContextTurretAimPose.cpp",
            "ProceduralContextTurretAimPose.h",
            "ScriptBind_Turret.cpp",
            "ScriptBind_Turret.h",
            "Turret.cpp",
            "Turret.h",
            "TurretBehavior.cpp",
            "TurretBehaviorEvents.h",
            "TurretBehaviorParams.cpp",
            "TurretBehaviorParams.h",
            "TurretHelpers.h",
            "TurretSoundManager.h",
        ]
    }
    Group {
        name: "UI"
        prefix: "UI/"
        files: [
            "UICVars.cpp",
            "UICVars.h",
            "UIManager.cpp",
            "UIManager.h",
            "UITypes.h",
            "WarningsManager.cpp",
            "WarningsManager.h",
        ]
    }
    Group {
        name: "UI / EventSystems"
        prefix: "UI/"
        files: [
            "IUIGameEventSystem.h",
            "UIDialogs.cpp",
            "UIDialogs.h",
            "UIEntityDynTexTag.cpp",
            "UIEntityDynTexTag.h",
            "UIEntityTag.cpp",
            "UIEntityTag.h",
            "UIGameEvents.cpp",
            "UIGameEvents.h",
            "UIHUD3D.cpp",
            "UIHUD3D.h",
            "UIInput.cpp",
            "UIInput.h",
            "UILobbyMP.cpp",
            "UILobbyMP.h",
            "UIMenuEvents.cpp",
            "UIMenuEvents.h",
            "UIMultiPlayer.cpp",
            "UIMultiPlayer.h",
            "UISettings.cpp",
            "UISettings.h",
        ]
    }
    Group {
        name: "UI / HUD"
        prefix: "UI/HUD/"
        files: [
            "ErrorHandling.cpp",
            "ErrorHandling.h",
            "HUDControllerInputIcons.cpp",
            "HUDControllerInputIcons.h",
            "HUDEventDispatcher.cpp",
            "HUDEventDispatcher.h",
            "HUDEventTranslator.cpp",
            "HUDEventTranslator.h",
            "HUDEventWrapper.cpp",
            "HUDEventWrapper.h",
            "HUDMissionObjectiveSystem.cpp",
            "HUDMissionObjectiveSystem.h",
            "HUDOnScreenMessageDef.cpp",
            "HUDOnScreenMessageDef.h",
            "HUDSilhouettes.cpp",
            "HUDSilhouettes.h",
            "HUDUtils.cpp",
            "HUDUtils.h",
            "ScriptBind_HUD.cpp",
            "ScriptBind_HUD.h",
            "TacticalOverrideEntity.cpp",
            "TacticalOverrideEntity.h",
        ]
    }
    Group {
        name: "UI / Menu3dModels"
        prefix: "UI/Menu3dModels/"
        files: [
            "FrontEndModelCache.cpp",
            "FrontEndModelCache.h",
            "MenuRender3DModelMgr.cpp",
            "MenuRender3DModelMgr.h",
        ]
    }
    Group {
        name: "UI / ProfileOptions"
        prefix: "UI/"
        files: [
            "Option.cpp",
            "Option.h",
            "ProfileOptions.cpp",
            "ProfileOptions.h",
        ]
    }
    Group {
        name: "UI / Utils"
        prefix: "UI/Utils/"
        files: [
            "ILoadingMessageProvider.cpp",
            "ILoadingMessageProvider.h",
            "LocalizedStringManager.cpp",
            "LocalizedStringManager.h",
            "ScreenLayoutManager.cpp",
            "ScreenLayoutManager.h",
            "ScreenLayoutUtils.cpp",
            "ScreenLayoutUtils.h",
        ]
    }
    Group {
        name: "Utility"
        files: [
            "CryMacros.h",
            "EventDistributor.h",
            "IntersectionAssistanceUnit.cpp",
            "IntersectionAssistanceUnit.h",
            "NetInputChainDebug.cpp",
            "NetInputChainDebug.h",
            "ProgressBar.cpp",
            "ProgressBar.h",
            "ProgressBar3D.cpp",
            "ProgressBar3D.h",
            "RandomDeck.cpp",
            "RandomDeck.h",
            "ScreenResolution.cpp",
            "ScreenResolution.h",
            "ShotDebug.cpp",
            "ShotDebug.h",
            "Utility/AttachmentUtils.cpp",
            "Utility/AttachmentUtils.h",
            "Utility/Hermite.h",
            "Utility/Wiggle.cpp",
            "Utility/Wiggle.h",
        ]
    }
    Group {
        name: "VTOLVehicleManager"
        files: [
            "MPPath.cpp",
            "MPPath.h",
            "MPPathFollowingManager.cpp",
            "MPPathFollowingManager.h",
            "MPTrackViewManager.cpp",
            "MPTrackViewManager.h",
            "VTOLVehicleManager/VTOLVehicleManager.cpp",
            "VTOLVehicleManager/VTOLVehicleManager.h",
            "VehicleMovementMPVTOL.cpp",
            "VehicleMovementMPVTOL.h",
            "WaypointPath.cpp",
            "WaypointPath.h",
        ]
    }
    Group {
        name: "Vehicle Files"
        files: [
            "Vehicle/VehicleUtils.h",
            "VehicleClient.cpp",
            "VehicleClient.h",
        ]
    }
    Group {
        name: "Vehicle Files / Action Files"
        files: [
            "VehicleActionAutoTarget.cpp",
            "VehicleActionAutoTarget.h",
            "VehicleActionAutomaticDoor.cpp",
            "VehicleActionAutomaticDoor.h",
            "VehicleActionDeployRope.cpp",
            "VehicleActionDeployRope.h",
            "VehicleActionEntityAttachment.cpp",
            "VehicleActionEntityAttachment.h",
            "VehicleActionLandingGears.cpp",
            "VehicleActionLandingGears.h",
            "VehicleSeatActionSound.cpp",
            "VehicleSeatActionSound.h",
        ]
    }
    Group {
        name: "DynamicResponseSystem"
        prefix: "DynamicResponseSystem/"
        files: [
            "ActionExecuteAudioTrigger.cpp",
            "ActionExecuteAudioTrigger.h",
            "ConditionDistanceToEntity.cpp",
            "ConditionDistanceToEntity.h",
            "GameTokenToDrsTranslator.cpp",
            "GameTokenToDrsTranslator.h",
        ]
    }
    Group {
        name: "Vehicle Files / Damage Files"
        files: [
            "VehicleDamageBehaviorAudioFeedback.cpp",
            "VehicleDamageBehaviorAudioFeedback.h",
            "VehicleDamageBehaviorBurn.cpp",
            "VehicleDamageBehaviorBurn.h",
            "VehicleDamageBehaviorCameraShake.cpp",
            "VehicleDamageBehaviorCameraShake.h",
            "VehicleDamageBehaviorExplosion.cpp",
            "VehicleDamageBehaviorExplosion.h",
            "VehicleDamageBehaviorTire.cpp",
            "VehicleDamageBehaviorTire.h",
        ]
    }
    Group {
        name: "Vehicle Files / Movement Files"
        files: [
            "Vehicle/VehicleMovementDummy.cpp",
            "Vehicle/VehicleMovementDummy.h",
            "Vehicle/VehiclePhysicsHelicopter.cpp",
            "Vehicle/VehiclePhysicsHelicopter.h",
            "VehicleMovementArcadeWheeled.cpp",
            "VehicleMovementArcadeWheeled.h",
            "VehicleMovementBase.cpp",
            "VehicleMovementBase.h",
            "VehicleMovementHelicopter.cpp",
            "VehicleMovementHelicopter.h",
            "VehicleMovementHelicopterArcade.cpp",
            "VehicleMovementHelicopterArcade.h",
            "VehicleMovementStdBoat.cpp",
            "VehicleMovementStdBoat.h",
            "VehicleMovementStdTank.cpp",
            "VehicleMovementStdTank.h",
            "VehicleMovementStdWheeled.cpp",
            "VehicleMovementStdWheeled.h",
            "VehicleMovementTank.cpp",
            "VehicleMovementTank.h",
        ]
    }
    Group {
        name: "Dialog System"
        files: [
            "DialogSystem/DialogActorContext.cpp",
            "DialogSystem/DialogActorContext.h",
            "DialogSystem/DialogCommon.h",
            "DialogSystem/DialogLoader.cpp",
            "DialogSystem/DialogLoader.h",
            "DialogSystem/DialogLoaderMK2.cpp",
            "DialogSystem/DialogLoaderMK2.h",
            "DialogSystem/DialogQueuesManager.cpp",
            "DialogSystem/DialogQueuesManager.h",
            "DialogSystem/DialogScript.cpp",
            "DialogSystem/DialogScript.h",
            "DialogSystem/DialogSession.cpp",
            "DialogSystem/DialogSession.h",
            "DialogSystem/DialogSystem.cpp",
            "DialogSystem/DialogSystem.h",
            "DialogSystem/FlowDialogNode.cpp",
            "DialogSystem/ScriptBind_DialogSystem.cpp",
            "DialogSystem/ScriptBind_DialogSystem.h",
            "SubtitleManager.cpp",
            "SubtitleManager.h",
        ]
    }
    Group {
        name: "Actor Files / Player / ActionControllers / InteractiveAction"
        files: [
            "InteractiveActionController.cpp",
            "InteractiveActionController.h",
        ]
    }
    Group {
        name: "Actor Files / Player / ActionControllers / LargeObjectInteraction"
        files: [
            "LargeObjectInteraction.cpp",
            "LargeObjectInteraction.h",
        ]
    }
    Group {
        name: "Actor Files / Player / ActionControllers / MountedGun"
        files: [
            "MountedGunController.cpp",
            "MountedGunController.h",
        ]
    }
    Group {
        name: "Actor Files / Player / ActionControllers / Slide"
        files: [
            "SlideController.cpp",
            "SlideController.h",
        ]
    }
    Group {
        name: "Actor Files / Player / ActionControllers / StealthKill"
        files: [
            "StealthKill.cpp",
            "StealthKill.h",
        ]
    }
    Group {
        name: "Actor Files / Player / AimAssistance"
        files: [
            "AutoAimManager.cpp",
            "AutoAimManager.h",
            "ProjectileAutoAimHelper.cpp",
            "ProjectileAutoAimHelper.h",
        ]
    }
    Group {
        name: "Actor Files / Player / Camera"
        files: [
            "CameraModes.cpp",
            "CameraModes.h",
            "ICameraMode.cpp",
            "ICameraMode.h",
            "PlayerCamera.cpp",
            "PlayerCamera.h",
        ]
    }
    Group {
        name: "Actor Files / Player / HitDeathReactions"
        files: [
            "CustomReactionFunctions.cpp",
            "CustomReactionFunctions.h",
            "HitDeathReactions.cpp",
            "HitDeathReactions.h",
            "HitDeathReactionsDefs.cpp",
            "HitDeathReactionsDefs.h",
            "HitDeathReactionsSystem.cpp",
            "HitDeathReactionsSystem.h",
            "ScriptBind_HitDeathReactions.cpp",
            "ScriptBind_HitDeathReactions.h",
        ]
    }
    Group {
        name: "Actor Files / Player / MovementTransitions"
        files: [
            "CornerSmoother.cpp",
            "CornerSmoother.h",
            "MovementTransitions.cpp",
            "MovementTransitions.h",
            "MovementTransitionsController.cpp",
            "MovementTransitionsController.h",
            "MovementTransitionsSystem.cpp",
            "MovementTransitionsSystem.h",
            "MovementTransitionsUtil.h",
        ]
    }
    Group {
        name: "Actor Files / Player / PlayerStates"
        files: [
            "PlayerStateAnimationControlled.cpp",
            "PlayerStateDead.cpp",
            "PlayerStateDead.h",
        ]
    }
    Group {
        name: "Actor Files / Player / PlayerStates / Linked"
        files: [
            "PlayerStateLinked.cpp",
        ]
    }
    Group {
        name: "Actor Files / Player / PlayerStates / Movement"
        files: [
            "PlayerStateAIMovement.cpp",
            "PlayerStateFly.cpp",
            "PlayerStateFly.h",
            "PlayerStateGround.cpp",
            "PlayerStateGround.h",
            "PlayerStateJump.cpp",
            "PlayerStateJump.h",
            "PlayerStateLadder.cpp",
            "PlayerStateLadder.h",
            "PlayerStateLedge.cpp",
            "PlayerStateLedge.h",
            "PlayerStateMovement.cpp",
            "PlayerStateSwim.cpp",
            "PlayerStateSwim.h",
            "PlayerStateSwim_WaterTestProxy.cpp",
            "PlayerStateSwim_WaterTestProxy.h",
        ]
    }
    Group {
        name: "Actor Files / Player / PlayerStates / Util"
        files: [
            "PlayerStateEntry.cpp",
            "PlayerStateEvents.cpp",
            "PlayerStateEvents.h",
            "PlayerStateUtil.cpp",
            "PlayerStateUtil.h",
            "State.h",
        ]
    }
    Group {
        name: "Actor Files / Player / ProceduralWeaponAnimation"
        files: [
            "ProceduralWeaponAnimation.cpp",
            "ProceduralWeaponAnimation.h",
            "ProceduralWeaponClip.cpp",
            "ProceduralWeaponContext.cpp",
            "ProceduralWeaponContext.h",
            "WeaponBumpOffset.cpp",
            "WeaponBumpOffset.h",
            "WeaponLookOffset.cpp",
            "WeaponLookOffset.h",
            "WeaponOffset.cpp",
            "WeaponOffset.h",
            "WeaponOffsetInput.cpp",
            "WeaponOffsetInput.h",
            "WeaponRecoilOffset.cpp",
            "WeaponRecoilOffset.h",
            "WeaponStrafeOffset.cpp",
            "WeaponStrafeOffset.h",
            "WeaponZoomOffset.cpp",
            "WeaponZoomOffset.h",
        ]
    }
    Group {
        name: "Checkpoints"
        files: [
            "CheckpointGame.cpp",
            "CheckpointGame.h",
        ]
    }
    Group {
        name: "EditorGame Files"
        files: [
            "EditorGame.cpp",
            "EditorGame.h",
            "EquipmentSystemInterface.cpp",
            "EquipmentSystemInterface.h",
        ]
    }
    Group {
        name: "EntityUtility"
        prefix: "EntityUtility/"
        files: [
            "EntityEffects.cpp",
            "EntityEffects.h",
            "EntityEffectsCloak.cpp",
            "EntityEffectsCloak.h",
            "EntityEffectsHeat.cpp",
            "EntityEffectsHeat.h",
            "EntityScriptCalls.cpp",
            "EntityScriptCalls.h",
        ]
    }
    Group {
        name: "Game Files"
        files: [
            "CinematicInput.cpp",
            "CinematicInput.h",
            "DLCManager.cpp",
            "DLCManager.h",
            "DataPatchDownloader.cpp",
            "DataPatchDownloader.h",
            "Effects/RenderElements/GameRenderElement.h",
            "Environment/MineField.cpp",
            "Environment/MineField.h",
            "Environment/SmartMine.cpp",
            "Environment/SmartMine.h",
            "Environment/SmartMineBehavior.cpp",
            "Game.cpp",
            "Game.h",
            "GameActions.actions",
            "GameActions.cpp",
            "GameActions.h",
            "GameCVars.cpp",
            "GameCVars.h",
            "GameCache.cpp",
            "GameCache.h",
            "GameConstantCVars.cpp",
            "GameConstantCVars.h",
            "GameFactory.cpp",
            "GameFactory.h",
            "GameInputActionHandlers.h",
            "GameJobSystem.cpp",
            "GamePhysicsSettings.cpp",
            "GamePhysicsSettings.h",
            "GameRulesModules/SpawningVisTable.cpp",
            "GameRulesModules/SpawningVisTable.h",
            "GameStateRecorder.cpp",
            "GameStateRecorder.h",
            "GameTypeInfo.cpp",
            "GameTypeInfo.h",
            "IPatchPakManagerListener.h",
            "PatchPakManager.cpp",
            "PatchPakManager.h",
            "PlaylistManager.cpp",
            "PlaylistManager.h",
            "Radio.cpp",
            "Radio.h",
            "RevertibleConfigLoader.cpp",
            "RevertibleConfigLoader.h",
            "ScriptBind_Game.cpp",
            "ScriptBind_Game.h",
            "ScriptBind_ProtectedBinds.cpp",
            "ScriptBind_ProtectedBinds.h",
            "ScriptControlledPhysics.cpp",
            "ScriptControlledPhysics.h",
            "SmokeManager.cpp",
            "SmokeManager.h",
            "TacticalManager.cpp",
            "TacticalManager.h",
        ]
    }
    Group {
        name: "Game Files / Environment"
        prefix: "Environment/"
        files: [
            "DeflectorShield.cpp",
            "DeflectorShield.h",
            "DoorPanel.cpp",
            "DoorPanel.h",
            "DoorPanelBehavior.cpp",
            "Ledge.cpp",
            "Ledge.h",
            "LedgeManager.cpp",
            "LedgeManager.h",
            "LightningArc.cpp",
            "LightningArc.h",
            "Rain.cpp",
            "Rain.h",
            "ScriptBind_LightningArc.cpp",
            "ScriptBind_LightningArc.h",
            "Shake.cpp",
            "Shake.h",
            "Snow.cpp",
            "Snow.h",
            "VicinityDependentObjectMover.cpp",
            "VicinityDependentObjectMover.h",
            "WaterPuddle.cpp",
            "WaterPuddle.h",
            "WaterRipplesGenerator.cpp",
            "WaterRipplesGenerator.h",
        ]
    }
    Group {
        name: "Game Files / Environment / InteractiveObjects"
        prefix: "Environment/"
        files: [
            "DangerousRigidBody.cpp",
            "DangerousRigidBody.h",
            "InteractiveObject.cpp",
            "InteractiveObject.h",
            "InteractiveObjectEnums.h",
            "InteractiveObjectRegistry.cpp",
            "InteractiveObjectRegistry.h",
            "ScriptBind_InteractiveObject.cpp",
            "ScriptBind_InteractiveObject.h",
        ]
    }
    Group {
        name: "Game Files / Environment / Tornado"
        prefix: "Environment/"
        files: [
            "Tornado.cpp",
            "Tornado.h",
        ]
    }
    Group {
        name: "Game Files / GameObject Parameters"
        files: [
            "GameParameters.cpp",
            "GameParameters.h",
            "ItemSharedParams.cpp",
            "ItemSharedParams.h",
            "WeaponSharedParams.cpp",
            "WeaponSharedParams.h",
        ]
    }
    Group {
        name: "Game Files / RuntimePrefabs"
        files: [
            "PrefabManager.cpp",
            "PrefabManager.h",
            "RuntimePrefab.cpp",
            "RuntimePrefab.h",
            "WorldBuilder.cpp",
            "WorldBuilder.h",
        ]
    }
    Group {
        name: "Game Files / ScreenFX"
        files: [
            "BlendNode.cpp",
            "BlendNode.h",
            "BlendTypes.h",
            "BlendedEffect.cpp",
            "BlendedEffect.h",
            "ScreenEffects.cpp",
            "ScreenEffects.h",
            "ScreenEffects_Game.cpp",
        ]
    }
    Group {
        name: "GameMechanismManager"
        prefix: "GameMechanismManager/"
        files: [
            "GameMechanismBase.cpp",
            "GameMechanismBase.h",
            "GameMechanismEvents.h",
            "GameMechanismManager.cpp",
            "GameMechanismManager.h",
        ]
    }
    Group {
        name: "Boids"
        prefix: "Boids/"
        files: [
            "BirdEnum.h",
            "BirdsFlock.cpp",
            "BirdsFlock.h",
            "BoidBird.cpp",
            "BoidBird.h",
            "BoidCollision.cpp",
            "BoidCollision.h",
            "BoidFish.cpp",
            "BoidFish.h",
            "BoidObject.cpp",
            "BoidObject.h",
            "BoidsProxy.cpp",
            "BoidsProxy.h",
            "BugsFlock.cpp",
            "BugsFlock.h",
            "ChickenBoids.cpp",
            "ChickenBoids.h",
            "FishFlock.cpp",
            "FishFlock.h",
            "Flock.cpp",
            "Flock.h",
            "FrogBoids.cpp",
            "FrogBoids.h",
            "ScriptBind_Boids.cpp",
            "ScriptBind_Boids.h",
        ]
    }
}
