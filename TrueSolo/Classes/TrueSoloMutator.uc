class TrueSoloMutator extends KFMutator; // This file changes damage scaling, replaces the original syringe, and boosts boss speeds by 30%. The "//"s in the file signify comments I left throughout for explanatory purposes.

	var private const class<KFWeapon> TrueSoloHealingSyringe; // Creates a variable for my solo syringe to be used in replacing the original syringe.
	
// The 3 functions below add the mutator to the game or something, I don't recommend touching them

		function InitMutator(string Options, out string ErrorMessage)
		{
			super.InitMutator( Options, ErrorMessage );
			`log("Dummy mutator initialized");
		
		}
	
		function PostBeginPlay()
		{
				Super.PostBeginPlay();
				
				if (WorldInfo.Game.BaseMutator == None)
					WorldInfo.Game.BaseMutator = Self;
				else
					WorldInfo.Game.BaseMutator.AddMutator(Self);

		}
		
		function AddMutator(Mutator M)
		{
			if (M != Self)
			{
				if (M.Class == Class)
					M.Destroy();
				else
					Super.AddMutator(M);
			}
		} 
	
	
	private final function ReplaceSyringe(Pawn P)
	{
		local KFInventoryManager KFIM; // Inventory manager I think
		local KFWeapon BabySyringe; // The easy mode syringe
		
		KFIM = KFInventoryManager(KFPawn(P).InvManager);
		
		if (KFIM != none)
		{
				KFIM.GetWeaponFromClass(BabySyringe, 'KFWeap_Healer_Syringe'); // Assigns the "BabySyringe" name to the original syringe.

				if (TrueSoloHealingSyringe != none) 
				{
					KFIM.CreateInventory(TrueSoloHealingSyringe /*, false*/);
					LogInternal("=== TrueSoloHealingSyringe === Added the real syringe");
				} // If the real solo syringe doesn't exist, then create it

				if (BabySyringe != none)
				{
					KFIM.ServerRemoveFromInventory(BabySyringe);
					LogInternal("=== TrueSoloHealingSyringe === Removed baby syringe");
				} // If the original cheesy syringe still exists, remove it

		}
	}
	

	function ModifyPlayer(Pawn P) // This calls the ReplaceSyringe function defined just above
	{
		Super.ModifyPlayer(P);
		
		if (P != none)
			ReplaceSyringe(P);
	}
	
	
// DAMAGE SCALING FOR ZEDS BELOW | All damage scales unless labelled otherwise are based off the "DamageMod" values in Zeds' corresponding "KFDifficulty" files. These are located in C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGameContent\Classes.

	function ModifyAI(Pawn AIPawn) 
	{
		if(KFPawn_ZedBloat(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.5; // BLOAT DAMAGE SCALING
		}
		
		if(KFPawn_ZedBloatKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.2; // ABOMINATION DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = 1.3; // ABOMINATION MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedDAR_EMP(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.5; // TRAPPER EDAR DAMAGE SCALING
		}
		
		if(KFPawn_ZedDAR_Laser(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.5; // BLASTER EDAR DAMAGE SCALING
		}
		
		if(KFPawn_ZedDAR_Rocket(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.5; // EDAR BOMBER DAMAGE SCALING
		}
		
		if(KFPawn_ZedFleshpound(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.25; // Fleshpound DAMAGE SCALING
		}
		
		if(KFPawn_ZedFleshpoundKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.2; // KING FLESHPOUND DAMAGE SCALING   
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = 1.3; // KING FLESHPOUND MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedFleshpoundMini(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.05; // QUARTER POUND DAMAGE SCALING
		}
		
		if(KFPawn_ZedGorefast(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // GOREFAST DAMAGE SCALING <--- No Default DamageMod value for Hell on Earth found,  based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedGorefastDualBlade(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75;  // GOREFIEND DAMAGE SCALING <--- No Default DamageMod value for Hell on Earth found,  based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedHans(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.18; // HANS VOLTER DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = 1.3; // HANS VOLTER MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		
		}
		
		if(KFPawn_ZedHusk(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.5; // HUSK DAMAGE SCALING
		}
		
		if(KFPawn_ZedMatriarch(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.45; // MATRIARCH DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = 1.3; // MATRIARCH MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedPatriarch(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.45; // PATRIARCH DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = 1.3; // PATRIARCH MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedScrake(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.25; // SCAKE DAMAGE SCALING
		}
		
		if(KFPawn_ZedSiren(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.0; // SIREN DAMAGE SCALING
		}
		
		if(KFPawn_ZedStalker(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // STALKER DAMAGE SCALING <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedClot_Slasher(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // SLASHER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedClot_AlphaKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // RIOTER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedClot_Cyst(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // CYST DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedClot_Alpha(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // CLOT DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedCrawlerKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // ELITE CRAWLER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedCrawler(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // CRAWLER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
		
		if(KFPawn_ZedBloatKingSubspawn(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = 1.75; // ABOMINATION SPAWN DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
		}
	}
	
// END OF DAMAGE SCALING SECTION
	
	
	
	defaultproperties
	{
		TrueSoloHealingSyringe=class'TrueSolo.TrueSoloHealingSyringe' // Assigns class path for my syringe set in the TrueSoloHealingSyringeDef file's "default properties" section
	}

	


