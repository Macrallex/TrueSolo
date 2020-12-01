class TrueSoloHealingSyringe extends TrueSoloHealingBase; // I'm pretty sure this entire file is identical to the KFWeap_Healer_Syringe file located in C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGameContent\Classes. The purpose of this file is to create a syringe that uses "TrueSoloHealingBase" as its base behavior rather than KFWeap_HealerBase located in C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes

/**
 * Initializes ammo counts, when weapon is spawned.
 * Overwriting to stop perks changing the magazine size
 * Probably have to add functionality when we add the medic perk
 */
function InitializeAmmo()
{
	// Set ammo amounts based on perk.  MagazineCapacity must be replicated, but
	// only the server needs to know the InitialSpareMags value
	MagazineCapacity[0] = default.MagazineCapacity[0];
	InitialSpareMags[0] = default.InitialSpareMags[0];

	AmmoCount[0] = MagazineCapacity[0];
	AddAmmo(InitialSpareMags[0] * MagazineCapacity[0]);
}

defaultproperties
{
	PlayerViewOffset=(X=20.0,Y=10,Z=-8)

	// Content
	PackageKey="Healer"
	FirstPersonMeshName="WEP_1P_Healer_MESH.Wep_1stP_Healer_Rig"
	FirstPersonAnimSetNames(0)="WEP_1P_Healer_ANIM.Wep_1st_Healer_Anim"
	AttachmentArchetypeName="WEP_Healer_ARCH.Wep_Healer_3P"

	Begin Object Name=FirstPersonMesh
		Animations=AnimTree'CHR_1P_Arms_ARCH.WEP_1stP_Animtree_Healer'
	End Object

	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_MedicDart'
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_MedicDart'
	
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Healer'
	
	//Grouping
	GroupPriority=6
	WeaponSelectTexture=Texture2D'ui_weaponselect_tex.UI_WeaponSelect_Healer'

	bCanThrow=false
	bDropOnDeath=false
	bStorePreviouslyEquipped=false
}