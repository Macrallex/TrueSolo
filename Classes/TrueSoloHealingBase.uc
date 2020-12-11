class TrueSoloHealingBase extends KFWeap_HealerBase 
		config(TrueSolo); // The class enables the configuration of base healing and base syringe recharge time in KFTrueSolo.ini. See file location commented in TrueSoloMutator.
		

// I - SYRINGE VARIABLES

	// II - Healing for yourself and after healing others
	
		var config float TrueSoloStandAloneHealAmount;    													 	// Creates a new configurable variable for the solo base healing amount for KFTrueSolo.ini
		var config float TrueSoloOthersHealAmount;																// Creates a new configurable variable for the base healing amount when healing others for KFTrueSolo.ini
		
		
	// II - Healing reacharge time for yourself and after healing others
	
		var config float TrueSoloHealSelfRechargeSeconds;  														// Creates a new configurable variable for the syringe base recharge time for yourself in KFTrueSolo.ini
		var config float TrueSoloHealOthersRechardSeconds;														// Creates a new configurable variable for the syringe base recharge time after healing others in KFTrueSolo.ini
		


simulated function CustomFire() // Redeclared parent function to replace variables
{
	local float HealAmount;

	if( Role == ROLE_Authority )
	{
		// Healing a teammate
		if( CurrentFireMode == DEFAULT_FIREMODE )
		{
			HealAmount = TrueSoloOthersHealAmount;															 
			HealTarget.HealDamage( HealAmount, Instigator.Controller, InstantHitDamageTypes[CurrentFireMode]);
			HealRechargeTime = TrueSoloHealOthersRechardSeconds;
		}
		// Healing Self
		else if( CurrentFireMode == ALTFIRE_FIREMODE )
		{
			if ( GetActivePlayerCount() < 2 )
			{
				HealAmount = TrueSoloStandAloneHealAmount; 														// Replaced "StandAloneHealAmount" for solo with my own variable
			}
			else
			{
				HealAmount = TrueSoloStandAloneHealAmount; 														// Replaced "StandAloneHealAmount" for solo with my own variable
			}
			Instigator.HealDamage(HealAmount, Instigator.Controller, InstantHitDamageTypes[CurrentFireMode]);
			HealRechargeTime = TrueSoloHealSelfRechargeSeconds; 												// Replaced "HealSelfRechargeSeconds"
		}
	}
}


// Pasted in the entire default properties because for some reason not doing this completely broke the Hemoclobber in-game
defaultproperties
{

	UIUpdateInterval=1.f
	FireTweenTime=0.3f
	HealingRangeSQ=23000.f
	StandAloneHealAmount=50
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

