class TrueSoloHealingBase extends KFWeap_HealerBase; // Changes 1 variable, "StandAloneHealAmount" to a float value of 20 rather than 50. The rest of the default properties was pasted in because for some reason not doing this completely broke the Hemoclobber in-game.

	
	
defaultproperties
{

	UIUpdateInterval=1.f
	FireTweenTime=0.3f
	HealingRangeSQ=23000.f
	StandAloneHealAmount=20.0f
    ScreenUIClass=class'KFGFxWorld_HealerScreen'

	// Aim Assist
	AimCorrectionSize=0.f
	bTargetAdhesionEnabled=false

	// Heal Friendly
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponHealing
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_Custom
	FireInterval(DEFAULT_FIREMODE)=+0.2
	InstantHitDamage(DEFAULT_FIREMODE)=20.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Healing'
	AmmoCost(DEFAULT_FIREMODE)=100
	HealAttemptWeakZedGrabCooldown=1.0

	// Heal Self
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponHealing
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_Custom
	FireInterval(ALTFIRE_FIREMODE)=+2.0
	InstantHitDamage(ALTFIRE_FIREMODE)=20.0
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Healing'
	AmmoCost(ALTFIRE_FIREMODE)=100

	// Ammo
	MagazineCapacity[0]=100
	SpareAmmoCapacity[0]=0
	bCanBeReloaded=true
	bReloadFromMagazine=true
	bInfiniteSpareAmmo=true
	HealSelfRechargeSeconds=15
	HealOtherRechargeSeconds=7.5
	bAllowClientAmmoTracking=false

    // Inventory
	GroupPriority=6
	InventoryGroup=IG_Equipment

	// Fire Effects
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_Syringe.Play_WEP_SA_Syringe_3P_Fire_Single', FirstPersonCue=AkEvent'WW_WEP_SA_Syringe.Play_WEP_SA_Syringe_1P_Fire_Single')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_Syringe.Play_WEP_SA_Syringe_3P_Fire_Single', FirstPersonCue=AkEvent'WW_WEP_SA_Syringe.Play_WEP_SA_Syringe_1P_Fire_Single')

	RechargeCompleteSound=AkEvent'WW_WEP_SA_Syringe.Play_WEP_SA_Syringe_Charged'

	AssociatedPerkClasses(0)=none

}

