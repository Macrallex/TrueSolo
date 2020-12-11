class TrueSoloMutator extends KFMutator 
		config(TrueSolo); // This file changes damage scaling, replaces the original syringe, and boosts Hans', Patty's, and Matty's speeds by 30%. The "//"s in the file signify comments I left throughout for explanatory purposes. 


	var private const class<KFWeapon> TrueSoloHealingSyringe; // Creates a variable for my solo syringe to be used in replacing the original syringe.
	
	
// I - ZED DAMAGE SCALING VARIABLES - HELL ON EARTH, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
	
	// II - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		var config float HansDamageScaleHel;				// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
		var config float MatriarchDamageScaleHel;			// 2
		var config float PatriarchDamageScaleHel;			// 3
		var config float AbominationDamageScaleHel;			// 4
		var config float KingFleshpoundDamageScaleHel;		// 5

	
	// II - Large Zeds - 3 - 8/24
	
		var config float FleshpoundDamageScaleHel;			// 1
		var config float ScrakeDamageScaleHel;				// 2
		var config float QuarterpoundDamageScaleHel;		// 3

	
	// II - Medium Zeds - 6 - 14/24
	
		var config float BloatDamageScaleHel;				// 1
		var config float TrapperDamageScaleHel;				// 2
		var config float BlasterDamageScaleHel;				// 3
		var config float BomberDamageScaleHel;				// 4
		var config float HuskDamageScaleHel;				// 5
		var config float SirenDamageScaleHel;				// 6

	
	// II - Elite Trash Zeds - 3 - 17/24
	
		var config float GorefiendDamageScaleHel; 			// 1
		var config float GasCrawlerDamageScaleHel;			// 2
		var config float RioterDamageScaleHel;				// 3

	
	// II - Weak Trash Zeds - 7 -  24/24 
	
		var config float GorefastDamageScaleHel; 			// 1
		var config float StalkerDamageScaleHel;				// 2
		var config float SlasherDamageScaleHel;				// 3
		var config float CystDamageScaleHel;				// 4
		var config float ClotDamageScaleHel;				// 5
		var config float CrawlerDamageScaleHel;				// 6
		var config float AbominationSpawnDamageScaleHel;	// 7
	
	
// I - ZED DAMAGE SCALING VARIABLES - SUICIDAL, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
	
	// II - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		var config float HansDamageScaleSui;				// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
		var config float MatriarchDamageScaleSui;			// 2
		var config float PatriarchDamageScaleSui;			// 3
		var config float AbominationDamageScaleSui;			// 4
		var config float KingFleshpoundDamageScaleSui;		// 5

	
	// II - Large Zeds - 3 - 8/24
	
		var config float FleshpoundDamageScaleSui;			// 1
		var config float ScrakeDamageScaleSui;				// 2
		var config float QuarterpoundDamageScaleSui;		// 3

	
	// II - Medium Zeds - 6 - 14/24
	
		var config float BloatDamageScaleSui;				// 1
		var config float TrapperDamageScaleSui;				// 2
		var config float BlasterDamageScaleSui;				// 3
		var config float BomberDamageScaleSui;				// 4
		var config float HuskDamageScaleSui;				// 5
		var config float SirenDamageScaleSui;				// 6

	
	// II - Elite Trash Zeds - 3 - 17/24
	
		var config float GorefiendDamageScaleSui; 			// 1
		var config float GasCrawlerDamageScaleSui;			// 2
		var config float RioterDamageScaleSui;				// 3

	
	// II - Weak Trash Zeds - 7 -  24/24 
	
		var config float GorefastDamageScaleSui; 			// 1
		var config float StalkerDamageScaleSui;				// 2
		var config float SlasherDamageScaleSui;				// 3
		var config float CystDamageScaleSui;				// 4
		var config float ClotDamageScaleSui;				// 5
		var config float CrawlerDamageScaleSui;				// 6
		var config float AbominationSpawnDamageScaleSui;	// 7
	
	
// I - ZED DAMAGE SCALING VARIABLES - HARD, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
	
	// II - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		var config float HansDamageScaleHar;				// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
		var config float MatriarchDamageScaleHar;			// 2
		var config float PatriarchDamageScaleHar;			// 3
		var config float AbominationDamageScaleHar;			// 4
		var config float KingFleshpoundDamageScaleHar;		// 5

	
	// II - Large Zeds - 3 - 8/24
	
		var config float FleshpoundDamageScaleHar;			// 1
		var config float ScrakeDamageScaleHar;				// 2
		var config float QuarterpoundDamageScaleHar;		// 3

	
	// II - Medium Zeds - 6 - 14/24
	
		var config float BloatDamageScaleHar;				// 1
		var config float TrapperDamageScaleHar;				// 2
		var config float BlasterDamageScaleHar;				// 3
		var config float BomberDamageScaleHar;				// 4
		var config float HuskDamageScaleHar;				// 5
		var config float SirenDamageScaleHar;				// 6

	
	// II - Elite Trash Zeds - 3 - 17/24
	
		var config float GorefiendDamageScaleHar; 			// 1
		var config float GasCrawlerDamageScaleHar;			// 2
		var config float RioterDamageScaleHar;				// 3

	
	// II - Weak Trash Zeds - 7 -  24/24 
	
		var config float GorefastDamageScaleHar; 			// 1
		var config float StalkerDamageScaleHar;				// 2
		var config float SlasherDamageScaleHar;				// 3
		var config float CystDamageScaleHar;				// 4
		var config float ClotDamageScaleHar;				// 5
		var config float CrawlerDamageScaleHar;				// 6
		var config float AbominationSpawnDamageScaleHar;	// 7


// I - ZED DAMAGE SCALING VARIABLES - NORMAL, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
	
	// II - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		var config float HansDamageScaleNor;				// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
		var config float MatriarchDamageScaleNor;			// 2
		var config float PatriarchDamageScaleNor;			// 3
		var config float AbominationDamageScaleNor;			// 4
		var config float KingFleshpoundDamageScaleNor;		// 5

	
	// II - Large Zeds - 3 - 8/24
	
		var config float FleshpoundDamageScaleNor;			// 1
		var config float ScrakeDamageScaleNor;				// 2
		var config float QuarterpoundDamageScaleNor;		// 3

	
	// II - Medium Zeds - 6 - 14/24
	
		var config float BloatDamageScaleNor;				// 1
		var config float TrapperDamageScaleNor;				// 2
		var config float BlasterDamageScaleNor;				// 3
		var config float BomberDamageScaleNor;				// 4
		var config float HuskDamageScaleNor;				// 5
		var config float SirenDamageScaleNor;				// 6

	
	// II - Elite Trash Zeds - 3 - 17/24
	
		var config float GorefiendDamageScaleNor; 			// 1
		var config float GasCrawlerDamageScaleNor;			// 2
		var config float RioterDamageScaleNor;				// 3

	
	// II - Weak Trash Zeds - 7 -  24/24 
	
		var config float GorefastDamageScaleNor; 			// 1
		var config float StalkerDamageScaleNor;				// 2
		var config float SlasherDamageScaleNor;				// 3
		var config float CystDamageScaleNor;				// 4
		var config float ClotDamageScaleNor;				// 5
		var config float CrawlerDamageScaleNor;				// 6
		var config float AbominationSpawnDamageScaleNor;	// 7


// I - ZED MOVESPEED SCALING VARIABLES - ALL DIFFICULTIES - Only 1 set of variables for all difficulties since there isn't a difference between solo and co-op except for Hans', Patty's, and Matty's Last Man Standing speed boosts which are already applied over difficulty-assigned speed anyway.
	
	// II - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		var config float HansMoveSpeedScale;				// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
		var config float MatriarchMoveSpeedScale;			// 2
		var config float PatriarchMoveSpeedScale;			// 3
		var config float AbominationMoveSpeedScale;			// 4
		var config float KingFleshpoundMoveSpeedScale;		// 5

	
	// II - Large Zeds - 3 - 8/24
	
		var config float FleshpoundMoveSpeedScale;			// 1
		var config float ScrakeMoveSpeedScale;				// 2
		var config float QuarterpoundMoveSpeedScale;		// 3

	
	// II - Medium Zeds - 6 - 14/24
	
		var config float BloatMoveSpeedScale;				// 1
		var config float TrapperMoveSpeedScale;				// 2
		var config float BlasterMoveSpeedScale;				// 3
		var config float BomberMoveSpeedScale;				// 4
		var config float HuskMoveSpeedScale;				// 5
		var config float SirenMoveSpeedScale;				// 6

	
	// II - Elite Trash Zeds - 3 - 17/24
	
		var config float GorefiendMoveSpeedScale; 			// 1
		var config float GasCrawlerMoveSpeedScale;			// 2
		var config float RioterMoveSpeedScale;				// 3

	
	// II - Weak Trash Zeds - 7 -  24/24 
	
		var config float GorefastMoveSpeedScale; 			// 1
		var config float StalkerMoveSpeedScale;				// 2
		var config float SlasherMoveSpeedScale;				// 3
		var config float CystMoveSpeedScale;				// 4
		var config float ClotMoveSpeedScale;				// 5
		var config float CrawlerMoveSpeedScale;				// 6
		var config float AbominationSpawnMoveSpeedScale;	// 7


// END OF VARIABLE DECLARATIONS

	
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
	
// SYRINGE REPLACEMENT FUNCTION
	
	private final function ReplaceSyringe(Pawn P)
	{
		local KFInventoryManager KFIM; 															// Inventory manager I think
		local KFWeapon BabySyringe; 															// The easy mode syringe
		
		KFIM = KFInventoryManager(KFPawn(P).InvManager);
		
		if (KFIM != none)
		{
				KFIM.GetWeaponFromClass(BabySyringe, 'KFWeap_Healer_Syringe'); 					// Assigns the "BabySyringe" name to the original syringe.

				if (TrueSoloHealingSyringe != none) 
				{
					KFIM.CreateInventory(TrueSoloHealingSyringe /*, false*/);
					LogInternal("=== TrueSoloHealingSyringe === Added the real syringe");
				} 																				// If the real solo syringe doesn't exist, then create it

				if (BabySyringe != none)
				{
					KFIM.ServerRemoveFromInventory(BabySyringe);
					LogInternal("=== TrueSoloHealingSyringe === Removed baby syringe");
				} 																				// If the original cheesy syringe still exists, remove it

		}
	}
	

// APPLY SYRINGE REPLACEMENT FUNCTION TO PLAYER

	function ModifyPlayer(Pawn P) 															 	// Function to modify the player
	{
		Super.ModifyPlayer(P);
		
		if (P != none)
			ReplaceSyringe(P); 																	// This calls the ReplaceSyringe function defined just above if a player exists.
	}
	
	
// I - DAMAGE AND MOVEMENT SCALING FOR ZEDS | Multiple references used for damage and movespeed scale values. More info in the INI file.

	function ModifyAI(Pawn AIPawn) 																// Parent function to modify AI Pawns
	{
	
	// II - Boss Zeds - 5 - 5/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
	
		// III - Abomination - 1
		
			if(KFPawn_ZedBloatKing(AIPawn)!=None) 													// If an Abomination exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScale; 				// ABOMINATION MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Abomination's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleNor; 		// ABOMINATION NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Abomination's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleHar; 		// ABOMINATION HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Abomination's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleSui; 		// ABOMINATION SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Abomination's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleHel; 			// ABOMINATION HELL ON EARTH DAMAGE SCALING
				}
			}																						
		
		// III - King Fleshpound - 2
		
			if(KFPawn_ZedFleshpoundKing(AIPawn)!=None) 												// If a King Fleshpound exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScale; 	 		// KING FLESHPOUND MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the King Fleshpound's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleNor; 		// KING FLESHPOUND NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the King Fleshpound's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleHar; 		// KING FLESHPOUND HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the King Fleshpound's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleSui; 		// KING FLESHPOUND SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the King Fleshpound's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleHel; 		// KING FLESHPOUND HELL ON EARTH DAMAGE SCALING
				}
			}																						
		
		// III - Matriarch - 3
		
			if(KFPawn_ZedMatriarch(AIPawn)!=None) 													// If the Matriarch exists, apply the appopriate following scales to her.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScale; 				// MATRIARCH MOVESPEED SCALING - Due to source code differences with other Zeds, I had to use KFPawn_Monster's "PursuitSpeed" variables to modify the Matriarch's speed. I eventually extended this to every Zed as CD didn't respond properly to the original variable "InitialGroundSpeedModifier". Also, the new variable is more convenient when it comes to scaling since it already considers difficulty-assigned speed.
				
				
				KFPawn_Monster(AIPawn).bSprintOverride = True;										// A patching variable for Controlled Difficulty Eternal Edition v4.1. This version of CD independently broke the Matriarch's sprinting behavior and rendered her movement scaling useless. However, this variable overrides whatever CD broke and now the Matriarch behaves and is affected by her movement scaling normally. Default is "false", it you find it relevant.
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Matriarch's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleNor; 			// MATRIARCH NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Matriarch's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleHar; 			// MATRIARCH HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Matriarch's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleSui; 			// MATRIARCH SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Matriarch's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleHel; 			// MATRIARCH HELL ON EARTH DAMAGE SCALING
				}
			}																						
		
		// III - Hans - 4
		
			if(KFPawn_ZedHans(AIPawn)!=None) 														// If Hans exists, apply the appopriate following scales to him.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScale; 						// HANS VOLTER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use Hans' damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleNor; 				// HANS NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use Hans' damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleHar; 				// HANS HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use Hans' damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleSui; 				// HANS SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use Hans' damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleHel; 				// HANS HELL ON EARTH DAMAGE SCALING
				}
			}	
			
		// III - Patriarch - 5
		
			if(KFPawn_ZedPatriarch(AIPawn)!=None) 													// If the Patriarch exists, apply the appopriate following scales to him.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScale;        			// PATRIARCH MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Patriarch's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleNor; 			// PATRIARCH NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Patriarch's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleHar; 			// PATRIARCH HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Patriarch's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleSui; 			// PATRIARCH SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Patriarch's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleHel; 			// PATRIARCH HELL ON EARTH DAMAGE SCALING
				}
			}
		
		
	// II - Large Zeds - 3 - 8/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		// III - Fleshpound - 1
		
			if(KFPawn_ZedFleshpound(AIPawn)!=None) 													// If a Fleshpound exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScale; 				// FLESHPOUND MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Fleshpound's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleNor; 			// FLESHPOUND NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Fleshpound's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleHar; 			// FLESHPOUND HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Fleshpound's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleSui; 			// FLESHPOUND SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Fleshpound's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleHel; 			// FLESHPOUND HELL ON EARTH DAMAGE SCALING
				}
			}																						
		
		// III - Quarter Pound - 2
		
			if(KFPawn_ZedFleshpoundMini(AIPawn)!=None) 												// If a Quarter Pound exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScale; 				// QUARTER POUND MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Quarter Pound's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleNor; 		// QUARTER POUND NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Quarter Pound's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleHar; 		// QUARTER POUND HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Quarter Pound's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleSui; 		// QUARTER POUND SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Quarter Pound's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleHel; 		// QUARTER POUND HELL ON EARTH DAMAGE SCALING
				}
			}																						
		
		// III - Scrake - 3
		
			if(KFPawn_ZedScrake(AIPawn)!=None) 														// If a Scrake exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScale; 					// SCRAKE MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Scrake's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleNor; 				// SCRAKE NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Scrake's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleHar; 				// SCRAKE HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Scrake's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleSui; 				// SCRAKE SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Scrake's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleHel; 				// SCRAKE HELL ON EARTH DAMAGE SCALING
				}
			}
		
	
	// II - Medium Zeds - 6 - 14/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		// III - EDAR TRAPPER - 1
		
			if(KFPawn_ZedDAR_EMP(AIPawn)!=None) 													// If an EDAR Trapper exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScale; 					// EDAR TRAPPER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Trapper's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleNor; 			// EDAR TRAPPER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Trapper's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleHar; 			// EDAR TRAPPER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Trapper's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleSui; 			// EDAR TRAPPER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Trapper's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleHel; 				// EDAR TRAPPER HELL ON EARTH DAMAGE SCALING
				}
			
			}																						
		
		// III - EDAR BLASTER - 2
		
			if(KFPawn_ZedDAR_Laser(AIPawn)!=None) 													// If an EDAR Blaster exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScale; 					// EDAR BLASTER MOVESPEED SCALING 
				
				
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )							// If the difficulty is Normal, use the Blaster's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleNor; 			// EDAR BLASTER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Blaster's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleHar; 			// EDAR BLASTER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Blaster's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleSui; 			// EDAR BLASTER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Blaster's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleHel; 				// EDAR BLASTER HELL ON EARTH DAMAGE SCALING
				}
			
			}																						
		
		// III - EDAR BOMBER - 3 
		
			if(KFPawn_ZedDAR_Rocket(AIPawn)!=None) 													// If an EDAR Bomber exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScale; 					// EDAR BOMBER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Bomber's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleNor; 				// EDAR BOMBER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Bomber's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleHar; 				// EDAR BOMBER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Bomber's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleSui; 				// EDAR BOMBER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Bomber's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleHel; 				// EDAR BOMBER HELL ON EARTH DAMAGE SCALING
				}
			}																						
		
		// III - Husk - 4
		
			if(KFPawn_ZedHusk(AIPawn)!=None) 														// If a Husk exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScale;						// HUSK MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Husk's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleNor; 				// HUSK NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Husk's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleHar; 				// HUSK HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Husk's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleSui; 				// HUSK SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Husk's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleHel; 				// HUSK HELL ON EARTH DAMAGE SCALING
				}
			}

		// III - Siren - 5
		
			if(KFPawn_ZedSiren(AIPawn)!=None) 														// If a Siren exists, apply the appopriate following scales to it.
					{
					
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScale; 					// SIREN MOVESPEED SCALING 
						
						
						if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Siren's damage scale for Normal.
						{
							KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleNor; 				// SIREN NORMAL DAMAGE SCALING
						}
						else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Siren's damage scale for Hard.
						{
							KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleHar; 				// SIREN HARD DAMAGE SCALING
						}
						else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Siren's damage scale for Suicidal.
						{
							KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleSui; 				// SIREN SUICIDAL DAMAGE SCALING
						}
						else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Siren's damage scale for Hell on Earth.
						{
						   KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleHel; 				// SIREN HELL ON EARTH DAMAGE SCALING
						}
					}
					
		// III - Bloat - 6

			if(KFPawn_ZedBloat(AIPawn)!=None) 														// If a Bloat exists, apply the appopriate following scales to it.
					{
					
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScale; 					// BLOAT MOVESPEED SCALING <--- Modifies the "PursuitSpeedScale" variable for particular Zed located in KFPawn_Monster within C:\Program Files (x86)\Steam\steamapps\common\killingfloor2\Development\Src\KFGame\Classes. Note, if you use "InitialGroundSpeedModifier" instead, you won't be able to scale values via INI when Controlled Difficulty is loaded. Regardless of the former, you will need to manually add Zed movement speed difficulty modifiers instead of just using "1.0" for the default scales. For example if I use "InitialGroundSpeedModifier" for Crawlers, you need to make their scale "1.4" but when using the pursuit variable, you can just use 1.0 and their speed will the same because it already takes into account difficulty modifiers.
						
						
						if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Bloat's damage scale for Normal. Difficulty numeric IDs are 0 for Normal, 1 for Hard, 2 for Suicidal, and 3 for Hell on Earth. These numeric IDs can be used to load maps in-game via the console using the "difficulty='0, 1, 2, or 3'" command statement.
						{
							KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleNor; 				// BLOAT NORMAL DAMAGE SCALING
						}
						else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Bloat's damage scale for Hard.
						{
							KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleHar; 				// BLOAT HARD DAMAGE SCALING
						}
						else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Bloat's damage scale for Suicidal.
						{
							KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleSui; 				// BLOAT SUICIDAL DAMAGE SCALING
						}
						else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Bloat's damage scale for Hell on Earth.
						{
						   KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleHel; 				// BLOAT HELL ON EARTH DAMAGE SCALING
						}
					
					} 								
					
	// II - Elite Trash Zeds - 3 - 17/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		// III - Gorefiend - 1
		
			if(KFPawn_ZedGorefastDualBlade(AIPawn)!=None) 											// If a Gorefiend exists, apply the appopriate following scales to it.
				{
				
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScale; 			// GOREFIEND MOVESPEED SCALING 
					
					
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )							// If the difficulty is Normal, use the Gorefiend's damage scale for Normal.
					{
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleNor; 		// GOREFIEND NORMAL DAMAGE SCALING
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )						// If the difficulty is Hard, use the Gorefiend's damage scale for Hard.
					{
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleHar; 		// GOREFIEND HARD DAMAGE SCALING
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )						// If the difficulty is Suicidal, use the Gorefiend's damage scale for Suicidal.
					{
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleSui; 		// GOREFIEND SUICIDAL DAMAGE SCALING
					}
					else																			// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Gorefiend's damage scale for Hell on Earth.
					{
					   KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleHel; 		// GOREFIEND HELL ON EARTH DAMAGE SCALING
					}
				}
			
		// III - Elite Crawler - 2
		
			if(KFPawn_ZedCrawlerKing(AIPawn)!=None) 												// If an Elite Crawler exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScale;	    		// ELITE CRAWLER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Elite Crawler's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleNor; 			// ELITE CRAWLER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Elite Crawler's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleHar; 			// ELITE CRAWLER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Elite Crawler's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleSui; 			// ELITE CRAWLER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Elite Crawler's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleHel; 			// ELITE CRAWLER HELL ON EARTH DAMAGE SCALING
				}
			}
			
		// III - Rioter - 3
		
			if(KFPawn_ZedClot_AlphaKing(AIPawn)!=None) 												// If a Rioter exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScale; 					// RIOTER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Rioter's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleNor; 				// RIOTER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Rioter's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleHar; 				// RIOTER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Rioter's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleSui; 				// RIOTER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Rioter's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleHel; 				// RIOTER HELL ON EARTH DAMAGE SCALING
				}
			}
	
	// II - Weak Trash Zeds - 7 - 24/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
	
		// III - Gorefast - 1
		
			if(KFPawn_ZedGorefast(AIPawn)!=None) 													// If a Gorefast exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScale;					// GOREFAST MOVESPEED SCALING  
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Gorefast's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleNor; 			// GOREFAST NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Gorefast's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleHar; 			// GOREFAST HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Gorefast's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleSui; 			// GOREFAST SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Gorefast's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleHel; 			// GOREFAST HELL ON EARTH DAMAGE SCALING
				}
			}
		
		// III - Stalker - 2
		
			if(KFPawn_ZedStalker(AIPawn)!=None) 													// If a Stalker exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScale; 					// STALKER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Stalker's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleNor; 			// STALKER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Stalker's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleHar; 			// STALKER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Stalker's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleSui; 			// STALKER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Stalker's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleHel; 				// STALKER HELL ON EARTH DAMAGE SCALING
				}
			}
		
		// III - Slasher - 3
		
			if(KFPawn_ZedClot_Slasher(AIPawn)!=None) 												// If a Slasher exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScale; 					// SLASHER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Slasher's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleNor; 			// SLASHER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Slasher's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleHar; 			// SLASHER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Slasher's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleSui; 			// SLASHER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Slasher's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleHel; 				// SLASHER HELL ON EARTH DAMAGE SCALING
				}
			}
		
		// III - Cyst - 4
		
			if(KFPawn_ZedClot_Cyst(AIPawn)!=None) 													// If a Cyst exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScale; 						// CYST MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Cyst's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleNor; 				// CYST NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Cyst's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleHar; 				// CYST HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Cyst's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleSui; 				// CYST SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Cyst's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleHel; 				// CYST HELL ON EARTH DAMAGE SCALING
				}
			}
		
		// III - Clot - 5
		
			if(KFPawn_ZedClot_Alpha(AIPawn)!=None) 													// If a Clot exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScale; 						// CLOT MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Clot's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleNor; 				// CLOT NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Clot's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleHar; 				// CLOT HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Clot's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleSui; 				// CLOT SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Clot's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleHel; 				// CLOT HELL ON EARTH DAMAGE SCALING
				}
			}
		
		// III - Crawler - 6 
		
			if(KFPawn_ZedCrawler(AIPawn)!=None) 													// If a Crawler exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScale; 					// CRAWLER MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Crawler's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleNor; 			// CRAWLER NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Crawler's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleHar; 			// CRAWLER HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Crawler's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleSui; 			// CRAWLER SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Crawler's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleHel; 				// CRAWLER HELL ON EARTH DAMAGE SCALING
				}
			}
		
		// III - Abomination Spawn - 7 - Damage variables are useless
		
			if(KFPawn_ZedBloatKingSubspawn(AIPawn)!=None) 											// If an Abomination Spawn exists, apply the appopriate following scales to it.
			{
			
				KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScale; 			// ABOMINATION SPAWN MOVESPEED SCALING 
				
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )								// If the difficulty is Normal, use the Abomination Spawn's damage scale for Normal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleNor; 	// ABOMINATION SPAWN NORMAL DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )							// If the difficulty is Hard, use the Abomination Spawn's damage scale for Hard.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleHar; 	// ABOMINATION SPAWN HARD DAMAGE SCALING
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )							// If the difficulty is Suicidal, use the Abomination Spawn's damage scale for Suicidal.
				{
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleSui; 	// ABOMINATION SPAWN SUICIDAL DAMAGE SCALING
				}
				else																				// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Abomination Spawn's damage scale for Hell on Earth.
				{
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleHel; 	// ABOMINATION SPAWN HELL ON EARTH DAMAGE SCALING
				}
			}
	}
	
// END OF DAMAGE AND MOVEMENT SCALING SECTION
	
	
	
	defaultproperties
	{
		TrueSoloHealingSyringe=class'TrueSolo.TrueSoloHealingSyringe' 							// Assigns class path for my syringe set in the TrueSoloHealingSyringeDef file's "default properties" section
		
		
	}

	


