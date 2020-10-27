class TrueSoloMutator extends KFMutator 
		config(TrueSolo); // This file changes damage scaling, replaces the original syringe, and boosts boss speeds by 30%. The "//"s in the file signify comments I left throughout for explanatory purposes. 

	var private const class<KFWeapon> TrueSoloHealingSyringe; // Creates a variable for my solo syringe to be used in replacing the original syringe.
	
// ZED DAMAGE SCALING VARIABLES, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This class enables configuration of damage and boss movespeed scaling.  

	var config float BloatDamageScale;
	var config float AbominationDamageScale;
	var config float TrapperDamageScale;
	var config float BlasterDamageScale;
	var config float BomberDamageScale;
	var config float FleshpoundDamageScale;
	var config float KingFleshpoundDamageScale;
	var config float QuarterpoundDamageScale;
	var config float GorefastDamageScale;
	var config float GorefiendDamageScale;
	var config float HansDamageScale;
	var config float HuskDamageScale;
	var config float MatriarchDamageScale;
	var config float PatriarchDamageScale;
	var config float ScrakeDamageScale;
	var config float SirenDamageScale;
	var config float StalkerDamageScale;
	var config float RioterDamageScale;
	var config float SlasherDamageScale;
	var config float CystDamageScale;
	var config float ClotDamageScale;
	var config float GasCrawlerDamageScale;
	var config float CrawlerDamageScale;
	var config float AbominationSpawnDamageScale;
	
// ZED MOVESPEED SCALING VARIABLES

	var config float BloatMoveSpeedScale;
	var config float AbominationMoveSpeedScale;
	var config float TrapperMoveSpeedScale;
	var config float BlasterMoveSpeedScale;
	var config float BomberMoveSpeedScale;
	var config float FleshpoundMoveSpeedScale;
	var config float KingFleshpoundMoveSpeedScale;
	var config float QuarterpoundMoveSpeedScale;
	var config float GorefastMoveSpeedScale;
	var config float GorefiendMoveSpeedScale;
	var config float HansMoveSpeedScale;
	var config float HuskMoveSpeedScale;
	var config float MatriarchMoveSpeedScale;
	var config float PatriarchMoveSpeedScale;
	var config float ScrakeMoveSpeedScale;
	var config float SirenMoveSpeedScale;
	var config float StalkerMoveSpeedScale;
	var config float RioterMoveSpeedScale;
	var config float SlasherMoveSpeedScale;
	var config float CystMoveSpeedScale;
	var config float ClotMoveSpeedScale;
	var config float GasCrawlerMoveSpeedScale;
	var config float CrawlerMoveSpeedScale;
	var config float AbominationSpawnMoveSpeedScale;


	
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
			KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScale; 						// BLOAT DAMAGE SCALING 
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = BloatMoveSpeedScale; 			// BLOAT MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedBloatKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScale; 				// ABOMINATION DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = AbominationMoveSpeedScale; 		// ABOMINATION MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedDAR_EMP(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScale;					// EDAR TRAPPER DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = TrapperMoveSpeedScale; 			// EDAR TRAPPER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedDAR_Laser(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScale; 					// EDAR BLASTER DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = BlasterMoveSpeedScale; 			// EDAR BLASTER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedDAR_Rocket(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScale; 					// EDAR BOMBER DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = BomberMoveSpeedScale; 			// EDAR BOMBER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedFleshpound(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScale; 				// FLESHPOUND DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = FleshpoundMoveSpeedScale; 		// FLESHPOUND MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedFleshpoundKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScale; 			// KING FLESHPOUND DAMAGE SCALING   
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = KingFleshpoundMoveSpeedScale; 	// KING FLESHPOUND MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedFleshpoundMini(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScale; 				// QUARTER POUND DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = QuarterpoundMoveSpeedScale; 	// QUARTER POUND MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedGorefast(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScale; 					// GOREFAST DAMAGE SCALING <--- No Default DamageMod value for Hell on Earth found,  based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = GorefastMoveSpeedScale;			// GOREFAST MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedGorefastDualBlade(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScale;  				// GOREFIEND DAMAGE SCALING <--- No Default DamageMod value for Hell on Earth found,  based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = GorefiendMoveSpeedScale; 		// GOREFIEND MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedHans(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScale; 						// HANS VOLTER DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = HansMoveSpeedScale; 			// HANS VOLTER MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
			
		}
		
		if(KFPawn_ZedHusk(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScale; 						// HUSK DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = HuskMoveSpeedScale;				// HUSK MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedMatriarch(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScale;     				// MATRIARCH DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = MatriarchMoveSpeedScale; 		// MATRIARCH MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedPatriarch(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScale; 					// PATRIARCH DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = PatriarchMoveSpeedScale;        // PATRIARCH MOVESPEED SCALING <--- Modifies the "InitialGroundSpeedModifier" variable located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes
		}
		
		if(KFPawn_ZedScrake(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScale; 					// SCRAKE DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = ScrakeMoveSpeedScale; 			// SCRAKE MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedSiren(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScale; 						// SIREN DAMAGE SCALING
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = SirenMoveSpeedScale; 			// SIREN MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedStalker(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScale; 					// STALKER DAMAGE SCALING <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = StalkerMoveSpeedScale; 			// STALKER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedClot_Slasher(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScale; 					// SLASHER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = SlasherMoveSpeedScale; 			// SLASHER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedClot_AlphaKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScale; 					// RIOTER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = RioterMoveSpeedScale; 			// RIOTER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedClot_Cyst(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScale; 						// CYST DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = CystMoveSpeedScale; 			// CYST MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedClot_Alpha(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScale; 						// CLOT DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = ClotMoveSpeedScale; 			// CLOT MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedCrawlerKing(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScale; 				// ELITE CRAWLER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = GasCrawlerMoveSpeedScale;	    // ELITE MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedCrawler(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScale; 					// CRAWLER DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = CrawlerMoveSpeedScale; 			// CRAWLER MOVESPEED SCALING 
		}
		
		if(KFPawn_ZedBloatKingSubspawn(AIPawn)!=None) 
		{
			KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScale; 			// ABOMINATION SPAWN DAMAGE SCALE <--- No Default DamageMod value for Hell on Earth found, based off KFMonsterDifficultyInfo's "default properties" section
			KFPawn_Monster(AIPawn).InitialGroundSpeedModifier = AbominationMoveSpeedScale; 		// ABOMINATION SPAWN MOVESPEED SCALING 
		}
	}
	
// END OF DAMAGE SCALING SECTION
	
	
	
	defaultproperties
	{
		TrueSoloHealingSyringe=class'TrueSolo.TrueSoloHealingSyringe' // Assigns class path for my syringe set in the TrueSoloHealingSyringeDef file's "default properties" section
		
		
	}

	


