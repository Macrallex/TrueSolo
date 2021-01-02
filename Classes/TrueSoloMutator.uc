class TrueSoloMutator extends KFMutator 
		config(TrueSolo); // This file changes damage scaling, replaces the original syringe, and boosts Hans', Patty's, and Matty's speeds by 30%. The "//"s in the file signify comments I left throughout for explanatory purposes. 


// I - CODE IS ORGANIZED ACCORDING TO ROMAN NUMERALS - https://www.unrv.com/culture/roman-numerals.php


// I - VARIABLE DECLARATIONS - Creating variable names and their types for usage

	// II - SYRINGE 
	
		var private const class<KFWeapon> TrueSoloHealingSyringe; 			// Creates a variable for my solo syringe to be used in replacing the original syringe.
	
	
	// II - CONVENIENCE VARIABLES - These variables make customization easier by allowing sweeping scale changes with minimal INI tweaking.
	
		// III - BLANKET SCALING VARIABLES - every "config" variable can be tailored in KFTrueSolo.ini to your personal tastes. Just go to Program Files (x86) > Steam > steamapps > workshop > content > 232090 > 2263399756 > Config.  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match! 
				
			// IV - BLANKET ZED DAMAGE SCALING VARIABLES - Scales that are applied over all of the Zed damage scales per difficulty. Useful for easily making blanket changes with one value change. 
		
				var config float DamageScaleUni;                     // UNIVERSAL BLANKET ZED MOVE SPEED SCALE
				var config float DamageScaleHel;                     // HELL ON EARTH BLANKET ZED DAMAGE SCALE
				var config float DamageScaleSui;					 // SUICDAL BLANKET ZED DAMAGE SCALE
				var config float DamageScaleHar;					 // HARD BLANKET ZED DAMAGE SCALE
				var config float DamageScaleNor;					 // NORMAL BLANKET ZED DAMAGE SCALE
				
				
				
				// V - PLAYER COUNT CUSTOMISATION VARIABLES - The above damage scales will equal these depending on playercount
				
					// VI - BOOLEAN TO ALLOW BLANKET ZED DAMAGE SCALING BY PLAYER COUNT
					
						var config bool ScaleDamageBlanketsByPlayerCount; 	// Boolean that determines whether Zed damage blanket scales should scale according to playercount or not.
				
				
					// VI - 1 PLAYER
					
						var config float DamageScaleHelOneP; 				// HELL ON EARTH BLANKET ZED DAMAGE SCALE FOR ONE PLAYER
						var config float DamageScaleSuiOneP;				// SUICIDAL BLANKET ZED DAMAGE SCALE FOR ONE PLAYER
						var config float DamageScaleHarOneP; 				// HARD BLANKET ZED DAMAGE SCALE FOR ONE PLAYER
						var config float DamageScaleNorOneP; 				// NORMAL BLANKET ZED DAMAGE SCALE FOR ONE PLAYER
						
					
					// VI - 2 PLAYERS
					
						var config float DamageScaleHelTwoP; 				// HELL ON EARTH BLANKET ZED DAMAGE SCALE FOR TWO PLAYERS
						var config float DamageScaleSuiTwoP;				// SUICIDAL BLANKET ZED DAMAGE SCALE FOR TWO PLAYERS
						var config float DamageScaleHarTwoP; 				// HARD BLANKET ZED DAMAGE SCALE FOR TWO PLAYERS
						var config float DamageScaleNorTwoP; 				// NORMAL BLANKET ZED DAMAGE SCALE FOR TWO PLAYERS
					
					
					// VI - 3 PLAYERS
					
						var config float DamageScaleHelThreeP; 				// HELL ON EARTH BLANKET ZED DAMAGE SCALE FOR THREE PLAYERS
						var config float DamageScaleSuiThreeP;				// SUICIDAL BLANKET ZED DAMAGE SCALE FOR THREE PLAYERS
						var config float DamageScaleHarThreeP; 				// HARD BLANKET ZED DAMAGE SCALE FOR THREE PLAYERS
						var config float DamageScaleNorThreeP; 				// NORMAL BLANKET ZED DAMAGE SCALE FOR THREE PLAYERS
					
					
					// VI - 4 PLAYERS
					
						var config float DamageScaleHelFourP; 				// HELL ON EARTH BLANKET ZED DAMAGE SCALE FOR FOUR PLAYERS
						var config float DamageScaleSuiFourP;				// SUICIDAL BLANKET ZED DAMAGE SCALE FOR FOUR PLAYERS
						var config float DamageScaleHarFourP; 				// HARD BLANKET ZED DAMAGE SCALE FOR FOUR PLAYERS
						var config float DamageScaleNorFourP; 				// NORMAL BLANKET ZED DAMAGE SCALE FOR FOUR PLAYERS
					
					
					// VI - 5 PLAYERS
					
						var config float DamageScaleHelFiveP; 				// HELL ON EARTH BLANKET ZED DAMAGE SCALE FOR FIVE PLAYERS
						var config float DamageScaleSuiFiveP;				// SUICIDAL BLANKET ZED DAMAGE SCALE FOR FIVE PLAYERS
						var config float DamageScaleHarFiveP; 				// HARD BLANKET ZED DAMAGE SCALE FOR FIVE PLAYERS
						var config float DamageScaleNorFiveP; 				// NORMAL BLANKET ZED DAMAGE SCALE FOR FIVE PLAYERS
					
					
					// VI - 6 PLAYERS AND UP
					
						var config float DamageScaleHelSixPlusP; 			// HELL ON EARTH BLANKET ZED DAMAGE SCALE FOR SIX OR MORE PLAYERS
						var config float DamageScaleSuiSixPlusP;			// SUICIDAL BLANKET ZED DAMAGE SCALE FOR SIX OR MORE PLAYERS
						var config float DamageScaleHarSixPlusP; 			// HARD BLANKET ZED DAMAGE SCALE FOR SIX OR MORE PLAYERS
						var config float DamageScaleNorSixPlusP; 			// NORMAL BLANKET ZED DAMAGE SCALE FOR SIX OR MORE PLAYERS
					
				
				
			// IV - BLANKET ZED MOVESPEED SCALING VARIABLES - Scales that are applied over all of the Zed movespeed scales for every difficulty. Useful for easily making blanket changes with one value change.
			
				var config float MoveSpeedScaleUni;                    	    // UNIVERSAL BLANKET ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleHel;							// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleSui;							// SUICIDAL BLANKET ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleHar;							// HARD BLANKET ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleNor;							// NORMAL BLANKET ZED MOVE SPEED SCALE
				
				
				
				// V - PLAYER COUNT CUSTOMISATION VARIABLES - The above move speed scales will equal these depending on playercount
				
					// VI - TOGGLE BOOLEAN
					
						var config bool ScaleMoveSpeedBlanketsByPlayerCount;	// Boolean that determines whether movement blanket scales should scale according to player count or not.
				
			
					// VI - 1 PLAYER
					
						var config float MoveSpeedScaleHelOneP; 				// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE FOR ONE PLAYER
						var config float MoveSpeedScaleSuiOneP;					// SUICIDAL BLANKET ZED MOVE SPEED SCALE FOR ONE PLAYER
						var config float MoveSpeedScaleHarOneP; 				// HARD BLANKET ZED MOVE SPEED SCALE FOR ONE PLAYER
						var config float MoveSpeedScaleNorOneP; 				// NORMAL BLANKET ZED MOVE SPEED SCALE FOR ONE PLAYER
						
					
					// VI - 2 PLAYERS
					
						var config float MoveSpeedScaleHelTwoP; 				// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE FOR TWO PLAYERS
						var config float MoveSpeedScaleSuiTwoP;					// SUICIDAL BLANKET ZED MOVE SPEED SCALE FOR TWO PLAYERS
						var config float MoveSpeedScaleHarTwoP; 				// HARD BLANKET ZED MOVE SPEED SCALE FOR TWO PLAYERS
						var config float MoveSpeedScaleNorTwoP; 				// NORMAL BLANKET ZED MOVE SPEED SCALE FOR TWO PLAYERS
					
					
					// VI - 3 PLAYERS
					
						var config float MoveSpeedScaleHelThreeP; 				// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE FOR THREE PLAYERS
						var config float MoveSpeedScaleSuiThreeP;				// SUICIDAL BLANKET ZED MOVE SPEED SCALE FOR THREE PLAYERS
						var config float MoveSpeedScaleHarThreeP; 				// HARD BLANKET ZED MOVE SPEED SCALE FOR THREE PLAYERS
						var config float MoveSpeedScaleNorThreeP; 				// NORMAL BLANKET ZED MOVE SPEED SCALE FOR THREE PLAYERS
					
					
					// VI - 4 PLAYERS
					
						var config float MoveSpeedScaleHelFourP; 				// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE FOR FOUR PLAYERS
						var config float MoveSpeedScaleSuiFourP;				// SUICIDAL BLANKET ZED MOVE SPEED SCALE FOR FOUR PLAYERS
						var config float MoveSpeedScaleHarFourP; 				// HARD BLANKET ZED MOVE SPEED SCALE FOR FOUR PLAYERS
						var config float MoveSpeedScaleNorFourP; 				// NORMAL BLANKET ZED MOVE SPEED SCALE FOR FOUR PLAYERS
					
					
					// VI - 5 PLAYERS
					
						var config float MoveSpeedScaleHelFiveP; 				// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE FOR FIVE PLAYERS
						var config float MoveSpeedScaleSuiFiveP;				// SUICIDAL BLANKET ZED MOVE SPEED SCALE FOR FIVE PLAYERS
						var config float MoveSpeedScaleHarFiveP; 				// HARD BLANKET ZED MOVE SPEED SCALE FOR FIVE PLAYERS
						var config float MoveSpeedScaleNorFiveP; 				// NORMAL BLANKET ZED MOVE SPEED SCALE FOR FIVE PLAYERS
					
					
					// VI - 6 PLAYERS AND UP
					
						var config float MoveSpeedScaleHelSixPlusP; 			// HELL ON EARTH BLANKET ZED MOVE SPEED SCALE FOR SIX PLAYERS OR MORE
						var config float MoveSpeedScaleSuiSixPlusP;				// SUICIDAL BLANKET ZED MOVE SPEED SCALE FOR SIX PLAYERS OR MORE
						var config float MoveSpeedScaleHarSixPlusP; 			// HARD BLANKET ZED MOVE SPEED SCALE FOR SIX PLAYERS OR MORE
						var config float MoveSpeedScaleNorSixPlusP; 			// NORMAL BLANKET ZED MOVE SPEED SCALE FOR SIX PLAYERS OR MORE
						
							
							
		// III - UNIVERSAL VARIABLES - every "config" variable can be tailored in KFTrueSolo.ini to your personal tastes. Just go to Program Files (x86) > Steam > steamapps > workshop > content > 232090 > 2263399756 > Config.  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match! 	
		
			// IV - TOGGLE BOOLEAN
			
				var config bool UseUniversalSet;							// Boolean that determines if only one set of variables should be used for move speed and damage scaling for all difficulties and player counts 
				
				
				
				// V - ZED DAMAGE SCALING VARIABLES - UNIVERSAL
				
					// VI - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
						var config float HansDamageScaleUni;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
						var config float MatriarchDamageScaleUni;				// 2
						var config float PatriarchDamageScaleUni;				// 3
						var config float AbominationDamageScaleUni;				// 4
						var config float KingFleshpoundDamageScaleUni;			// 5

					
					// VI - LARGE ZEDS - 3 - 8/24 - UNIVERSAL
					
						var config float FleshpoundDamageScaleUni;				// 1
						var config float ScrakeDamageScaleUni;					// 2
						var config float QuarterpoundDamageScaleUni;			// 3

					
					// VI - MEDIUM ZEDS - 6 - 14/24 - UNIVERSAL
					
						var config float BloatDamageScaleUni;					// 1
						var config float TrapperDamageScaleUni;					// 2
						var config float BlasterDamageScaleUni;					// 3
						var config float BomberDamageScaleUni;					// 4
						var config float HuskDamageScaleUni;					// 5
						var config float SirenDamageScaleUni;					// 6

					
					// VI - ELITE TRASH ZEDS - 3 - 17/24 - UNIVERSAL
					
						var config float GorefiendDamageScaleUni; 				// 1
						var config float GasCrawlerDamageScaleUni;				// 2
						var config float RioterDamageScaleUni;					// 3

					
					// VI - WEAK TRASH ZEDS - 7 -  24/24 - UNIVERSAL
					
						var config float GorefastDamageScaleUni; 				// 1
						var config float StalkerDamageScaleUni;					// 2
						var config float SlasherDamageScaleUni;					// 3
						var config float CystDamageScaleUni;					// 4
						var config float ClotDamageScaleUni;					// 5
						var config float CrawlerDamageScaleUni;					// 6
						var config float AbominationSpawnDamageScaleUni;		// 7
				
				
				// V - ZED MOVE SPEED SCALING VARIABLES
				
					// VI - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
						var config float HansMoveSpeedScaleUni;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
						var config float MatriarchMoveSpeedScaleUni;			// 2
						var config float PatriarchMoveSpeedScaleUni;			// 3
						var config float AbominationMoveSpeedScaleUni;			// 4
						var config float KingFleshpoundMoveSpeedScaleUni;		// 5

					
					// VI - LARGE ZEDS - 3 - 8/24
					
						var config float FleshpoundMoveSpeedScaleUni;			// 1
						var config float ScrakeMoveSpeedScaleUni;				// 2
						var config float QuarterpoundMoveSpeedScaleUni;			// 3

					
					// VI - MEDIUM ZEDS - 6 - 14/24
					
						var config float BloatMoveSpeedScaleUni;				// 1
						var config float TrapperMoveSpeedScaleUni;				// 2
						var config float BlasterMoveSpeedScaleUni;				// 3
						var config float BomberMoveSpeedScaleUni;				// 4
						var config float HuskMoveSpeedScaleUni;					// 5
						var config float SirenMoveSpeedScaleUni;				// 6

					
					// VI - ELITE TRASH ZEDS - 3 - 17/24
					
						var config float GorefiendMoveSpeedScaleUni; 			// 1
						var config float GasCrawlerMoveSpeedScaleUni;			// 2
						var config float RioterMoveSpeedScaleUni;				// 3

					
					// VI - WEAK TRASH ZEDS - 7 -  24/24 
					
						var config float GorefastMoveSpeedScaleUni; 			// 1
						var config float StalkerMoveSpeedScaleUni;				// 2
						var config float SlasherMoveSpeedScaleUni;				// 3
						var config float CystMoveSpeedScaleUni;					// 4
						var config float ClotMoveSpeedScaleUni;					// 5
						var config float CrawlerMoveSpeedScaleUni;				// 6
						var config float AbominationSpawnMoveSpeedScaleUni;		// 7


		
		// III - DEFAULT VARIABLES - Toggleable in the INI - every "config" variable can be tailored in KFTrueSolo.ini to your personal tastes. Just go to Program Files (x86) > Steam > steamapps > workshop > content > 232090 > 2263399756 > Config.  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match! 
		
			// IV - BOOLEAN
			
				var config bool UseDefault;
				
				
			// IV - BLANKETS
			
				// V - ZED DAMAGE
				
					var config float DamageScaleNorDef;
					var config float DamageScaleHarDef;
					var config float DamageScaleSuiDef;
					var config float DamageScaleHelDef;
				
				// V - ZED MOVE SPEED
				
					var config float MoveSpeedScaleNorDef;
					var config float MoveSpeedScaleHarDef;
					var config float MoveSpeedScaleSuiDef;
					var config float MoveSpeedScaleHelDef;
				
		
			// IV - ZED DAMAGE
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansDamageScaleHelDef;						// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchDamageScaleHelDef;				// 2
					var config float PatriarchDamageScaleHelDef;				// 3
					var config float AbominationDamageScaleHelDef;				// 4
					var config float KingFleshpoundDamageScaleHelDef;			// 5

					
				// V - LARGE ZEDS - 3 - 8/24 - UNIVERSAL
				
					var config float FleshpoundDamageScaleHelDef;				// 1
					var config float ScrakeDamageScaleHelDef;					// 2
					var config float QuarterpoundDamageScaleHelDef;				// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24 - UNIVERSAL
				
					var config float BloatDamageScaleHelDef;					// 1
					var config float TrapperDamageScaleHelDef;					// 2
					var config float BlasterDamageScaleHelDef;					// 3
					var config float BomberDamageScaleHelDef;					// 4
					var config float HuskDamageScaleHelDef;						// 5
					var config float SirenDamageScaleHelDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24 - UNIVERSAL
				
					var config float GorefiendDamageScaleHelDef; 				// 1
					var config float GasCrawlerDamageScaleHelDef;				// 2
					var config float RioterDamageScaleHelDef;					// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 - UNIVERSAL
				
					var config float GorefastDamageScaleHelDef; 				// 1
					var config float StalkerDamageScaleHelDef;					// 2
					var config float SlasherDamageScaleHelDef;					// 3
					var config float CystDamageScaleHelDef;						// 4
					var config float ClotDamageScaleHelDef;						// 5
					var config float CrawlerDamageScaleHelDef;					// 6
					var config float AbominationSpawnDamageScaleHelDef;			// 7
			
				
			
			// IV - ZED MOVE SPEED
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansMoveSpeedScaleHelDef;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchMoveSpeedScaleHelDef;				// 2
					var config float PatriarchMoveSpeedScaleHelDef;				// 3
					var config float AbominationMoveSpeedScaleHelDef;			// 4
					var config float KingFleshpoundMoveSpeedScaleHelDef;		// 5

					
				// V - LARGE ZEDS - 3 - 8/24
				
					var config float FleshpoundMoveSpeedScaleHelDef;			// 1
					var config float ScrakeMoveSpeedScaleHelDef;				// 2
					var config float QuarterpoundMoveSpeedScaleHelDef;			// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24
				
					var config float BloatMoveSpeedScaleHelDef;					// 1
					var config float TrapperMoveSpeedScaleHelDef;				// 2
					var config float BlasterMoveSpeedScaleHelDef;				// 3
					var config float BomberMoveSpeedScaleHelDef;				// 4
					var config float HuskMoveSpeedScaleHelDef;					// 5
					var config float SirenMoveSpeedScaleHelDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24
				
					var config float GorefiendMoveSpeedScaleHelDef; 			// 1
					var config float GasCrawlerMoveSpeedScaleHelDef;			// 2
					var config float RioterMoveSpeedScaleHelDef;				// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 
				
					var config float GorefastMoveSpeedScaleHelDef; 				// 1
					var config float StalkerMoveSpeedScaleHelDef;				// 2
					var config float SlasherMoveSpeedScaleHelDef;				// 3
					var config float CystMoveSpeedScaleHelDef;					// 4
					var config float ClotMoveSpeedScaleHelDef;					// 5
					var config float CrawlerMoveSpeedScaleHelDef;				// 6
					var config float AbominationSpawnMoveSpeedScaleHelDef;		// 7
						
			
			
			// IV - ZED DAMAGE
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansDamageScaleSuiDef;						// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchDamageScaleSuiDef;				// 2
					var config float PatriarchDamageScaleSuiDef;				// 3
					var config float AbominationDamageScaleSuiDef;				// 4
					var config float KingFleshpoundDamageScaleSuiDef;			// 5

					
				// V - LARGE ZEDS - 3 - 8/24 - UNIVERSAL
				
					var config float FleshpoundDamageScaleSuiDef;				// 1
					var config float ScrakeDamageScaleSuiDef;					// 2
					var config float QuarterpoundDamageScaleSuiDef;				// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24 - UNIVERSAL
				
					var config float BloatDamageScaleSuiDef;					// 1
					var config float TrapperDamageScaleSuiDef;					// 2
					var config float BlasterDamageScaleSuiDef;					// 3
					var config float BomberDamageScaleSuiDef;					// 4
					var config float HuskDamageScaleSuiDef;						// 5
					var config float SirenDamageScaleSuiDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24 - UNIVERSAL
				
					var config float GorefiendDamageScaleSuiDef; 				// 1
					var config float GasCrawlerDamageScaleSuiDef;				// 2
					var config float RioterDamageScaleSuiDef;					// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 - UNIVERSAL
				
					var config float GorefastDamageScaleSuiDef; 				// 1
					var config float StalkerDamageScaleSuiDef;					// 2
					var config float SlasherDamageScaleSuiDef;					// 3
					var config float CystDamageScaleSuiDef;						// 4
					var config float ClotDamageScaleSuiDef;						// 5
					var config float CrawlerDamageScaleSuiDef;					// 6
					var config float AbominationSpawnDamageScaleSuiDef;			// 7
			
				
			
			// IV - ZED MOVE SPEED
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansMoveSpeedScaleSuiDef;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchMoveSpeedScaleSuiDef;				// 2
					var config float PatriarchMoveSpeedScaleSuiDef;				// 3
					var config float AbominationMoveSpeedScaleSuiDef;			// 4
					var config float KingFleshpoundMoveSpeedScaleSuiDef;		// 5

					
				// V - LARGE ZEDS - 3 - 8/24
				
					var config float FleshpoundMoveSpeedScaleSuiDef;			// 1
					var config float ScrakeMoveSpeedScaleSuiDef;				// 2
					var config float QuarterpoundMoveSpeedScaleSuiDef;			// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24
				
					var config float BloatMoveSpeedScaleSuiDef;					// 1
					var config float TrapperMoveSpeedScaleSuiDef;				// 2
					var config float BlasterMoveSpeedScaleSuiDef;				// 3
					var config float BomberMoveSpeedScaleSuiDef;				// 4
					var config float HuskMoveSpeedScaleSuiDef;					// 5
					var config float SirenMoveSpeedScaleSuiDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24
				
					var config float GorefiendMoveSpeedScaleSuiDef; 			// 1
					var config float GasCrawlerMoveSpeedScaleSuiDef;			// 2
					var config float RioterMoveSpeedScaleSuiDef;				// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 
				
					var config float GorefastMoveSpeedScaleSuiDef; 				// 1
					var config float StalkerMoveSpeedScaleSuiDef;				// 2
					var config float SlasherMoveSpeedScaleSuiDef;				// 3
					var config float CystMoveSpeedScaleSuiDef;					// 4
					var config float ClotMoveSpeedScaleSuiDef;					// 5
					var config float CrawlerMoveSpeedScaleSuiDef;				// 6
					var config float AbominationSpawnMoveSpeedScaleSuiDef;		// 7
						
						
						
			// IV - ZED DAMAGE
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansDamageScaleHarDef;						// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchDamageScaleHarDef;				// 2
					var config float PatriarchDamageScaleHarDef;				// 3
					var config float AbominationDamageScaleHarDef;				// 4
					var config float KingFleshpoundDamageScaleHarDef;			// 5

					
				// V - LARGE ZEDS - 3 - 8/24 - UNIVERSAL
				
					var config float FleshpoundDamageScaleHarDef;				// 1
					var config float ScrakeDamageScaleHarDef;					// 2
					var config float QuarterpoundDamageScaleHarDef;				// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24 - UNIVERSAL
				
					var config float BloatDamageScaleHarDef;					// 1
					var config float TrapperDamageScaleHarDef;					// 2
					var config float BlasterDamageScaleHarDef;					// 3
					var config float BomberDamageScaleHarDef;					// 4
					var config float HuskDamageScaleHarDef;						// 5
					var config float SirenDamageScaleHarDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24 - UNIVERSAL
				
					var config float GorefiendDamageScaleHarDef; 				// 1
					var config float GasCrawlerDamageScaleHarDef;				// 2
					var config float RioterDamageScaleHarDef;					// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 - UNIVERSAL
				
					var config float GorefastDamageScaleHarDef; 				// 1
					var config float StalkerDamageScaleHarDef;					// 2
					var config float SlasherDamageScaleHarDef;					// 3
					var config float CystDamageScaleHarDef;						// 4
					var config float ClotDamageScaleHarDef;						// 5
					var config float CrawlerDamageScaleHarDef;					// 6
					var config float AbominationSpawnDamageScaleHarDef;			// 7
			
				
			
			// IV - ZED MOVE SPEED
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansMoveSpeedScaleHarDef;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchMoveSpeedScaleHarDef;				// 2
					var config float PatriarchMoveSpeedScaleHarDef;				// 3
					var config float AbominationMoveSpeedScaleHarDef;			// 4
					var config float KingFleshpoundMoveSpeedScaleHarDef;		// 5

					
				// V - LARGE ZEDS - 3 - 8/24
				
					var config float FleshpoundMoveSpeedScaleHarDef;			// 1
					var config float ScrakeMoveSpeedScaleHarDef;				// 2
					var config float QuarterpoundMoveSpeedScaleHarDef;			// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24
				
					var config float BloatMoveSpeedScaleHarDef;					// 1
					var config float TrapperMoveSpeedScaleHarDef;				// 2
					var config float BlasterMoveSpeedScaleHarDef;				// 3
					var config float BomberMoveSpeedScaleHarDef;				// 4
					var config float HuskMoveSpeedScaleHarDef;					// 5
					var config float SirenMoveSpeedScaleHarDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24
				
					var config float GorefiendMoveSpeedScaleHarDef; 			// 1
					var config float GasCrawlerMoveSpeedScaleHarDef;			// 2
					var config float RioterMoveSpeedScaleHarDef;				// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 
				
					var config float GorefastMoveSpeedScaleHarDef; 				// 1
					var config float StalkerMoveSpeedScaleHarDef;				// 2
					var config float SlasherMoveSpeedScaleHarDef;				// 3
					var config float CystMoveSpeedScaleHarDef;					// 4
					var config float ClotMoveSpeedScaleHarDef;					// 5
					var config float CrawlerMoveSpeedScaleHarDef;				// 6
					var config float AbominationSpawnMoveSpeedScaleHarDef;		// 7
						
			// IV - ZED DAMAGE
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansDamageScaleNorDef;						// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchDamageScaleNorDef;				// 2
					var config float PatriarchDamageScaleNorDef;				// 3
					var config float AbominationDamageScaleNorDef;				// 4
					var config float KingFleshpoundDamageScaleNorDef;			// 5

					
				// V - LARGE ZEDS - 3 - 8/24 - UNIVERSAL
				
					var config float FleshpoundDamageScaleNorDef;				// 1
					var config float ScrakeDamageScaleNorDef;					// 2
					var config float QuarterpoundDamageScaleNorDef;				// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24 - UNIVERSAL
				
					var config float BloatDamageScaleNorDef;					// 1
					var config float TrapperDamageScaleNorDef;					// 2
					var config float BlasterDamageScaleNorDef;					// 3
					var config float BomberDamageScaleNorDef;					// 4
					var config float HuskDamageScaleNorDef;						// 5
					var config float SirenDamageScaleNorDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24 - UNIVERSAL
				
					var config float GorefiendDamageScaleNorDef; 				// 1
					var config float GasCrawlerDamageScaleNorDef;				// 2
					var config float RioterDamageScaleNorDef;					// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 - UNIVERSAL
				
					var config float GorefastDamageScaleNorDef; 				// 1
					var config float StalkerDamageScaleNorDef;					// 2
					var config float SlasherDamageScaleNorDef;					// 3
					var config float CystDamageScaleNorDef;						// 4
					var config float ClotDamageScaleNorDef;						// 5
					var config float CrawlerDamageScaleNorDef;					// 6
					var config float AbominationSpawnDamageScaleNorDef;			// 7
			
				
			
			// IV - ZED MOVE SPEED
			
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
					
					var config float HansMoveSpeedScaleNorDef;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
					var config float MatriarchMoveSpeedScaleNorDef;				// 2
					var config float PatriarchMoveSpeedScaleNorDef;				// 3
					var config float AbominationMoveSpeedScaleNorDef;			// 4
					var config float KingFleshpoundMoveSpeedScaleNorDef;		// 5

					
				// V - LARGE ZEDS - 3 - 8/24
				
					var config float FleshpoundMoveSpeedScaleNorDef;			// 1
					var config float ScrakeMoveSpeedScaleNorDef;				// 2
					var config float QuarterpoundMoveSpeedScaleNorDef;			// 3

				
				// V - MEDIUM ZEDS - 6 - 14/24
				
					var config float BloatMoveSpeedScaleNorDef;					// 1
					var config float TrapperMoveSpeedScaleNorDef;				// 2
					var config float BlasterMoveSpeedScaleNorDef;				// 3
					var config float BomberMoveSpeedScaleNorDef;				// 4
					var config float HuskMoveSpeedScaleNorDef;					// 5
					var config float SirenMoveSpeedScaleNorDef;					// 6

				
				// V - ELITE TRASH ZEDS - 3 - 17/24
				
					var config float GorefiendMoveSpeedScaleNorDef; 			// 1
					var config float GasCrawlerMoveSpeedScaleNorDef;			// 2
					var config float RioterMoveSpeedScaleNorDef;				// 3

				
				// V - WEAK TRASH ZEDS - 7 -  24/24 
				
					var config float GorefastMoveSpeedScaleNorDef; 				// 1
					var config float StalkerMoveSpeedScaleNorDef;				// 2
					var config float SlasherMoveSpeedScaleNorDef;				// 3
					var config float CystMoveSpeedScaleNorDef;					// 4
					var config float ClotMoveSpeedScaleNorDef;					// 5
					var config float CrawlerMoveSpeedScaleNorDef;				// 6
					var config float AbominationSpawnMoveSpeedScaleNorDef;		// 7
						
						
						
						
						
	// II - DIFFICULTY SPECIFIC DAMAGE SCALING VARIABLES - every "config" variable can be tailored in KFTrueSolo.ini to your personal tastes. Just go to Program Files (x86) > Steam > steamapps > workshop > content > 232090 > 2263399756 > Config.  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match! 
	
		// III - ZED DAMAGE SCALING VARIABLES - HELL ON EARTH - every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
			
			// IV - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansDamageScaleHel;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal naming format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchDamageScaleHel;				// 2
				var config float PatriarchDamageScaleHel;				// 3
				var config float AbominationDamageScaleHel;				// 4
				var config float KingFleshpoundDamageScaleHel;			// 5

			
			// IV - LARGE ZEDS - 3 - 8/24
			
				var config float FleshpoundDamageScaleHel;				// 1
				var config float ScrakeDamageScaleHel;					// 2
				var config float QuarterpoundDamageScaleHel;			// 3

			
			// IV - MEDIUM ZEDS - 6 - 14/24
			
				var config float BloatDamageScaleHel;					// 1
				var config float TrapperDamageScaleHel;					// 2
				var config float BlasterDamageScaleHel;					// 3
				var config float BomberDamageScaleHel;					// 4
				var config float HuskDamageScaleHel;					// 5
				var config float SirenDamageScaleHel;					// 6

			
			// IV - ELITE TRASH ZEDS - 3 - 17/24
			
				var config float GorefiendDamageScaleHel; 				// 1
				var config float GasCrawlerDamageScaleHel;				// 2
				var config float RioterDamageScaleHel;					// 3

			
			// IV - WEAK TRASH ZEDS - 7 -  24/24 
			
				var config float GorefastDamageScaleHel; 				// 1
				var config float StalkerDamageScaleHel;					// 2
				var config float SlasherDamageScaleHel;					// 3
				var config float CystDamageScaleHel;					// 4
				var config float ClotDamageScaleHel;					// 5
				var config float CrawlerDamageScaleHel;					// 6
				var config float AbominationSpawnDamageScaleHel;		// 7
			
			
			
		// III - ZED DAMAGE SCALING VARIABLES - SUICIDAL - every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
			
			// IV - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansDamageScaleSui;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchDamageScaleSui;				// 2
				var config float PatriarchDamageScaleSui;				// 3
				var config float AbominationDamageScaleSui;				// 4
				var config float KingFleshpoundDamageScaleSui;			// 5

			
			// IV - LARGE ZEDS - 3 - 8/24
			
				var config float FleshpoundDamageScaleSui;				// 1
				var config float ScrakeDamageScaleSui;					// 2
				var config float QuarterpoundDamageScaleSui;			// 3

			
			// IV - MEDIUM ZEDS - 6 - 14/24
			
				var config float BloatDamageScaleSui;					// 1
				var config float TrapperDamageScaleSui;					// 2
				var config float BlasterDamageScaleSui;					// 3
				var config float BomberDamageScaleSui;					// 4
				var config float HuskDamageScaleSui;					// 5
				var config float SirenDamageScaleSui;					// 6

			
			// IV - ELITE TRASH ZEDS - 3 - 17/24
			
				var config float GorefiendDamageScaleSui; 				// 1
				var config float GasCrawlerDamageScaleSui;				// 2
				var config float RioterDamageScaleSui;					// 3

			
			// IV - WEAK TRASH ZEDS - 7 -  24/24 
			
				var config float GorefastDamageScaleSui; 				// 1
				var config float StalkerDamageScaleSui;					// 2
				var config float SlasherDamageScaleSui;					// 3
				var config float CystDamageScaleSui;					// 4
				var config float ClotDamageScaleSui;					// 5
				var config float CrawlerDamageScaleSui;					// 6
				var config float AbominationSpawnDamageScaleSui;		// 7
			
			
			
		// III - ZED DAMAGE SCALING VARIABLES - HARD, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
			
			// IV - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansDamageScaleHar;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchDamageScaleHar;				// 2
				var config float PatriarchDamageScaleHar;				// 3
				var config float AbominationDamageScaleHar;				// 4
				var config float KingFleshpoundDamageScaleHar;			// 5

			
			// IV - LARGE ZEDS - 3 - 8/24
			
				var config float FleshpoundDamageScaleHar;				// 1
				var config float ScrakeDamageScaleHar;					// 2
				var config float QuarterpoundDamageScaleHar;			// 3

			
			// IV - MEDIUM ZEDS - 6 - 14/24
			
				var config float BloatDamageScaleHar;					// 1
				var config float TrapperDamageScaleHar;					// 2
				var config float BlasterDamageScaleHar;					// 3
				var config float BomberDamageScaleHar;					// 4
				var config float HuskDamageScaleHar;					// 5
				var config float SirenDamageScaleHar;					// 6

			
			// IV - ELITE TRASH ZEDS - 3 - 17/24
			
				var config float GorefiendDamageScaleHar; 				// 1
				var config float GasCrawlerDamageScaleHar;				// 2
				var config float RioterDamageScaleHar;					// 3

			
			// IV - WEAK TRASH ZEDS - 7 -  24/24 
			
				var config float GorefastDamageScaleHar; 				// 1
				var config float StalkerDamageScaleHar;					// 2
				var config float SlasherDamageScaleHar;					// 3
				var config float CystDamageScaleHar;					// 4
				var config float ClotDamageScaleHar;					// 5
				var config float CrawlerDamageScaleHar;					// 6
				var config float AbominationSpawnDamageScaleHar;		// 7



		// III - ZED DAMAGE SCALING VARIABLES - NORMAL, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
			
			// IV - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansDamageScaleNor;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchDamageScaleNor;				// 2
				var config float PatriarchDamageScaleNor;				// 3
				var config float AbominationDamageScaleNor;				// 4
				var config float KingFleshpoundDamageScaleNor;			// 5

			
			// IV - LARGE ZEDS - 3 - 8/24
			
				var config float FleshpoundDamageScaleNor;				// 1
				var config float ScrakeDamageScaleNor;					// 2
				var config float QuarterpoundDamageScaleNor;			// 3

			
			// IV - Medium Zeds - 6 - 14/24
			
				var config float BloatDamageScaleNor;					// 1
				var config float TrapperDamageScaleNor;					// 2
				var config float BlasterDamageScaleNor;					// 3
				var config float BomberDamageScaleNor;					// 4
				var config float HuskDamageScaleNor;					// 5
				var config float SirenDamageScaleNor;					// 6

			
			// IV - Elite Trash Zeds - 3 - 17/24
			
				var config float GorefiendDamageScaleNor; 				// 1
				var config float GasCrawlerDamageScaleNor;				// 2
				var config float RioterDamageScaleNor;					// 3

			
			// IV - Weak Trash Zeds - 7 -  24/24 
			
				var config float GorefastDamageScaleNor; 				// 1
				var config float StalkerDamageScaleNor;					// 2
				var config float SlasherDamageScaleNor;					// 3
				var config float CystDamageScaleNor;					// 4
				var config float ClotDamageScaleNor;					// 5
				var config float CrawlerDamageScaleNor;					// 6
				var config float AbominationSpawnDamageScaleNor;		// 7



	// II - DIFFICULTY SPECIFIC ZED MOVESPEED SCALING VARIABLES
		
		// III - ZED MOVE SPEED SCALING VARIABLES - HELL ON EARTH, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
		
			// IV - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansMoveSpeedScaleHel;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchMoveSpeedScaleHel;			// 2
				var config float PatriarchMoveSpeedScaleHel;			// 3
				var config float AbominationMoveSpeedScaleHel;			// 4
				var config float KingFleshpoundMoveSpeedScaleHel;		// 5

			
			// IV - LARGE ZEDS - 3 - 8/24
			
				var config float FleshpoundMoveSpeedScaleHel;			// 1
				var config float ScrakeMoveSpeedScaleHel;				// 2
				var config float QuarterpoundMoveSpeedScaleHel;			// 3

			
			// IV - MEDIUM ZEDS - 6 - 14/24
			
				var config float BloatMoveSpeedScaleHel;				// 1
				var config float TrapperMoveSpeedScaleHel;				// 2
				var config float BlasterMoveSpeedScaleHel;				// 3
				var config float BomberMoveSpeedScaleHel;				// 4
				var config float HuskMoveSpeedScaleHel;					// 5
				var config float SirenMoveSpeedScaleHel;				// 6

			
			// IV - ELITE TRASH ZEDS - 3 - 17/24
			
				var config float GorefiendMoveSpeedScaleHel; 			// 1
				var config float GasCrawlerMoveSpeedScaleHel;			// 2
				var config float RioterMoveSpeedScaleHel;				// 3

			
			// IV - WEAK TRASH ZEDS - 7 -  24/24 
			
				var config float GorefastMoveSpeedScaleHel; 			// 1
				var config float StalkerMoveSpeedScaleHel;				// 2
				var config float SlasherMoveSpeedScaleHel;				// 3
				var config float CystMoveSpeedScaleHel;					// 4
				var config float ClotMoveSpeedScaleHel;					// 5
				var config float CrawlerMoveSpeedScaleHel;				// 6
				var config float AbominationSpawnMoveSpeedScaleHel;		// 7
				
				
				
		// III - ZED MOVESPEED SCALING VARIABLES - SUICIDAL, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
		
			// IV - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansMoveSpeedScaleSui;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchMoveSpeedScaleSui;			// 2
				var config float PatriarchMoveSpeedScaleSui;			// 3
				var config float AbominationMoveSpeedScaleSui;			// 4
				var config float KingFleshpoundMoveSpeedScaleSui;		// 5

			
			// IV - Large Zeds - 3 - 8/24
			
				var config float FleshpoundMoveSpeedScaleSui;			// 1
				var config float ScrakeMoveSpeedScaleSui;				// 2
				var config float QuarterpoundMoveSpeedScaleSui;			// 3

			
			// IV - Medium Zeds - 6 - 14/24
			
				var config float BloatMoveSpeedScaleSui;				// 1
				var config float TrapperMoveSpeedScaleSui;				// 2
				var config float BlasterMoveSpeedScaleSui;				// 3
				var config float BomberMoveSpeedScaleSui;				// 4
				var config float HuskMoveSpeedScaleSui;					// 5
				var config float SirenMoveSpeedScaleSui;				// 6

			
			// IV - Elite Trash Zeds - 3 - 17/24
			
				var config float GorefiendMoveSpeedScaleSui; 			// 1
				var config float GasCrawlerMoveSpeedScaleSui;			// 2
				var config float RioterMoveSpeedScaleSui;				// 3

			
			// IV - Weak Trash Zeds - 7 -  24/24 
			
				var config float GorefastMoveSpeedScaleSui; 			// 1
				var config float StalkerMoveSpeedScaleSui;				// 2
				var config float SlasherMoveSpeedScaleSui;				// 3
				var config float CystMoveSpeedScaleSui;					// 4
				var config float ClotMoveSpeedScaleSui;					// 5
				var config float CrawlerMoveSpeedScaleSui;				// 6
				var config float AbominationSpawnMoveSpeedScaleSui;		// 7
				
				
				
		// III - ZED MOVESPEED SCALING VARIABLES - HARD, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
		
			// IV - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansMoveSpeedScaleHar;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchMoveSpeedScaleHar;			// 2
				var config float PatriarchMoveSpeedScaleHar;			// 3
				var config float AbominationMoveSpeedScaleHar;			// 4
				var config float KingFleshpoundMoveSpeedScaleHar;		// 5

			
			// IV - Large Zeds - 3 - 8/24
			
				var config float FleshpoundMoveSpeedScaleHar;			// 1
				var config float ScrakeMoveSpeedScaleHar;				// 2
				var config float QuarterpoundMoveSpeedScaleHar;			// 3

			
			// IV - Medium Zeds - 6 - 14/24
			
				var config float BloatMoveSpeedScaleHar;				// 1
				var config float TrapperMoveSpeedScaleHar;				// 2
				var config float BlasterMoveSpeedScaleHar;				// 3
				var config float BomberMoveSpeedScaleHar;				// 4
				var config float HuskMoveSpeedScaleHar;					// 5
				var config float SirenMoveSpeedScaleHar;				// 6

			
			// IV - Elite Trash Zeds - 3 - 17/24
			
				var config float GorefiendMoveSpeedScaleHar; 			// 1
				var config float GasCrawlerMoveSpeedScaleHar;			// 2
				var config float RioterMoveSpeedScaleHar;				// 3

			
			// IV - Weak Trash Zeds - 7 -  24/24 
			
				var config float GorefastMoveSpeedScaleHar; 			// 1
				var config float StalkerMoveSpeedScaleHar;				// 2
				var config float SlasherMoveSpeedScaleHar;				// 3
				var config float CystMoveSpeedScaleHar;					// 4
				var config float ClotMoveSpeedScaleHar;					// 5
				var config float CrawlerMoveSpeedScaleHar;				// 6
				var config float AbominationSpawnMoveSpeedScaleHar;		// 7
					
				
				
		// III - ZED MOVESPEED SCALING VARIABLES - NORMAL, every "config" variable can be tailored to your personal tastes in KFTrueSolo.ini in MyGames > KillingFloor2 > KFGame > Config  This file enables configuration of individual Zed damage and speed scales along with healing base HP and recharge time. INI assignments and variable names here must match!
		
			// IV - Boss Zeds - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
			
				var config float HansMoveSpeedScaleNor;					// 1 - Creates a scale for an attribute of the relevant Zed. My personal format goes as such: " 'Zed name' + 'Damage or MovementSpeed' + 'Scale' + 'Nor, Har, Sui, Hel, or nothing if MovementSpeed is the attribute' ".
				var config float MatriarchMoveSpeedScaleNor;			// 2
				var config float PatriarchMoveSpeedScaleNor;			// 3
				var config float AbominationMoveSpeedScaleNor;			// 4
				var config float KingFleshpoundMoveSpeedScaleNor;		// 5

			
			// IV - Large Zeds - 3 - 8/24
			
				var config float FleshpoundMoveSpeedScaleNor;			// 1
				var config float ScrakeMoveSpeedScaleNor;				// 2
				var config float QuarterpoundMoveSpeedScaleNor;			// 3

			
			// IV - Medium Zeds - 6 - 14/24
			
				var config float BloatMoveSpeedScaleNor;				// 1
				var config float TrapperMoveSpeedScaleNor;				// 2
				var config float BlasterMoveSpeedScaleNor;				// 3
				var config float BomberMoveSpeedScaleNor;				// 4
				var config float HuskMoveSpeedScaleNor;					// 5
				var config float SirenMoveSpeedScaleNor;				// 6

			
			// IV - Elite Trash Zeds - 3 - 17/24
			
				var config float GorefiendMoveSpeedScaleNor; 			// 1
				var config float GasCrawlerMoveSpeedScaleNor;			// 2
				var config float RioterMoveSpeedScaleNor;				// 3

			
			// IV - Weak Trash Zeds - 7 -  24/24 
			
				var config float GorefastMoveSpeedScaleNor; 			// 1
				var config float StalkerMoveSpeedScaleNor;				// 2
				var config float SlasherMoveSpeedScaleNor;				// 3
				var config float CystMoveSpeedScaleNor;					// 4
				var config float ClotMoveSpeedScaleNor;					// 5
				var config float CrawlerMoveSpeedScaleNor;				// 6
				var config float AbominationSpawnMoveSpeedScaleNor;		// 7


// END OF VARIABLE DECLARATIONS

	
// I - MAKE SURE THE MUTATOR IS RUNNING OR SOMETHING - The 3 functions below add the mutator to the game or something I think. It works so just leave it.
 
	// II - IMPORTANT STUFF
	
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
	
	
	
// I - REPLACING THE SYRINGE

	// II - SYRINGE REPLACEMENT FUNCTION - What is the process of replacing the Syringe?
		
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
	

	// II - APPLY SYRINGE REPLACEMENT FUNCTION TO PLAYER

		function ModifyPlayer(Pawn P) 															 	// Parent function to modify the player
		{
			Super.ModifyPlayer(P);
			
			if (P != none)
				ReplaceSyringe(P); 																	// This calls the ReplaceSyringe function defined just above if a player exists.
		}
	
	
	
// I - DAMAGE AND MOVEMENT SCALING FOR ZEDS - Multiple references used for damage and movespeed scale values. More info in the INI file.

	function ModifyAI(Pawn AIPawn) 						// Parent function to modify AI Pawns
	{
	
	// II - Blanket Scale Player Count Booleans - Should blanket scales automatically scale with player count?
	
		// III - Damage Scales Boolean - Should damage blanket scales automatically scale with player count?
		
			if(ScaleDamageBlanketsByPlayerCount == true) 			// If "true" is selected...
			{
				if(WorldInfo.Game.NumPlayers == 1)						// If the player count is 1, apply these blanket scales
				{
					DamageScaleNor = DamageScaleNorOneP;					// Use the one-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarOneP;					// Use the one-player blanket scale for Zed damage on Hard
					DamageScaleSui = DamageScaleSuiOneP;					// Use the one-player blanket scale for Zed damage on Suicidal
					DamageScaleHel = DamageScaleHelOneP;					// Use the one-player blanket scale for Zed damage on Hell on Earth	
				}
				else if(WorldInfo.Game.NumPlayers == 2)					// If the player count is 2, apply these blanket scales
				{
					DamageScaleNor = DamageScaleNorTwoP;					// Use the two-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarTwoP;					// Use the two-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiTwoP;					// Use the two-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelTwoP;					// Use the two-player blanket scale for Zed damage on Hell on Earth 		
				}
				else if(WorldInfo.Game.NumPlayers == 3)					// If the player count is 3, apply these blanket scales
				{
					DamageScaleNor = DamageScaleNorThreeP;					// Use the three-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarThreeP;					// Use the three-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiThreeP;					// Use the three-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelThreeP;					// Use the three-player blanket scale for Zed damage on Hell on Earth 
				}
				else if(WorldInfo.Game.NumPlayers == 4)					// If the player count is 4, apply these blanket scales
				{
					DamageScaleNor = DamageScaleNorFourP;					// Use the four-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarFourP;					// Use the four-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiFourP;					// Use the four-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelFourP;					// Use the four-player blanket scale for Zed damage on Hell on Earth 
				}
				else if(WorldInfo.Game.NumPlayers == 5)					// If the player count is 5, apply these blanket scales
				{
					DamageScaleNor = DamageScaleNorFiveP;					// Use the five-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarFiveP;					// Use the five-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiFiveP;					// Use the five-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelFiveP;					// Use the five-player blanket scale for Zed damage on Hell on Earth 
				}
				else if(WorldInfo.Game.NumPlayers >= 6)					// If the player count is 6 or more, apply these blanket scales
				{
					DamageScaleNor = DamageScaleNorSixPlusP;				// Use the six-player and up blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarSixPlusP;				// Use the six-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiSixPlusP;				// Use the six-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelSixPlusP;				// Use the six-player blanket scale for Zed damage on Hell on Earth 
				}
				
			}
			
		
		
		// III - Move Speed Scales Boolean - Should damage blanket scales automatically scale with player count?
		
			if(ScaleMoveSpeedBlanketsByPlayerCount == true)			// If "true" is selected...
			{
				if(WorldInfo.Game.NumPlayers == 1)						// If the player count is 1, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorOneP;			// Use the one-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarOneP;			// Use the one-player blanket scale for Zed move speed on Hard
						MoveSpeedScaleSui = MoveSpeedScaleSuiOneP;			// Use the one-player blanket scale for Zed move speed on Suicidal
						MoveSpeedScaleHel = MoveSpeedScaleHelOneP;			// Use the one-player blanket scale for Zed move speed on Hell on Earth	
					}
					else if(WorldInfo.Game.NumPlayers == 2)				// If the player count is 2, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorTwoP;			// Use the two-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarTwoP;			// Use the two-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiTwoP;			// Use the two-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelTwoP;			// Use the two-player blanket scale for Zed move speed on Hell on Earth 		
					}
					else if(WorldInfo.Game.NumPlayers == 3)				// If the player count is 3, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorThreeP;		// Use the three-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarThreeP;		// Use the three-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiThreeP;		// Use the three-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelThreeP;		// Use the three-player blanket scale for Zed move speed on Hell on Earth 	
					}
					else if(WorldInfo.Game.NumPlayers == 4)				// If the player count is 4, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorFourP;			// Use the four-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarFourP;			// Use the four-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiFourP;			// Use the four-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelFourP;			// Use the four-player blanket scale for Zed move speed on Hell on Earth 	
					}
					else if(WorldInfo.Game.NumPlayers == 5)				// If the player count is 5, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorFiveP;			// Use the five-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarFiveP;			// Use the five-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiFiveP;			// Use the five-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelFiveP;			// Use the five-player blanket scale for Zed move speed on Hell on Earth 	
					}
					else if(WorldInfo.Game.NumPlayers >= 6)				// If the player count is 6 or more, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorSixPlusP;		// Use the six-player and up blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarSixPlusP;		// Use the six-player and up blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiSixPlusP;		// Use the six-player and up blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelSixPlusP;		// Use the six-player and up blanket scale for Zed move speed on Hell on Earth 	
					}
			}
			
			
			
			
	// II - UNIVERSAL SCALES BOOLEAN - Should one set of variables be used for all difficulties and player counts?
	
		// III - UNIVERSAL DAMAGE SCALES
		
			if(UseUniversalSet == true) 								// If "true" is selected...
			{
				
			// IV - PLAYER COUNT SCALING BOOLEAN OVERRIDES - If the booleans for scaling damage and move speed blankets by player count are contradictorily marked "true", set them to false if universal variables are toggled.
					
				// V - ZED DAMAGE BLANKETS 
			
					if(ScaleDamageBlanketsByPlayerCount == true)
					{
						ScaleDamageBlanketsByPlayerCount = false;
					}
				
				
				// V - ZED MOVE SPEED BLANKETS
					
					if(ScaleMoveSpeedBlanketsByPlayerCount == true)
					{
						ScaleMoveSpeedBlanketsByPlayerCount = false;
					}
						
						
								
			// IV - BLANKET SCALE REPLACEMENT - Assign all blanket scales the values of their universal versions
			
				// V - ZED DAMAGE BLANKETS
				
					DamageScaleNor = DamageScaleUni;						// Use the one-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleUni;						// Use the one-player blanket scale for Zed damage on Hard
					DamageScaleSui = DamageScaleUni;						// Use the one-player blanket scale for Zed damage on Suicidal
					DamageScaleHel = DamageScaleUni;						// Use the one-player blanket scale for Zed damage on Hell on Earth	
				
				
				// V - ZED MOVE SPEED BLANKETS
				
					MoveSpeedScaleNor = MoveSpeedScaleUni;					// Use the one-player blanket scale for Zed damage on Normal
					MoveSpeedScaleHar = MoveSpeedScaleUni;					// Use the one-player blanket scale for Zed damage on Hard
					MoveSpeedScaleSui = MoveSpeedScaleUni;					// Use the one-player blanket scale for Zed damage on Suicidal
					MoveSpeedScaleHel = MoveSpeedScaleUni;					// Use the one-player blanket scale for Zed damage on Hell on Earth	
					
			
			
			// IV - INDIVIDUAL ZED DAMAGE SCALE REPLACEMENT - Assign all individual damage scales the values of their universal versions
				
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
				
					// VI - HANS VOLTER - 1
					
						HansDamageScaleNor = HansDamageScaleUni; 								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						HansDamageScaleHar = HansDamageScaleUni;            				    // HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						HansDamageScaleSui = HansDamageScaleUni;            				    // SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						HansDamageScaleHel = HansDamageScaleUni;            				    // HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
									
									
					// VI - MATRIARCH - 2				
				
						MatriarchDamageScaleNor = MatriarchDamageScaleUni;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						MatriarchDamageScaleHar = MatriarchDamageScaleUni;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						MatriarchDamageScaleSui = MatriarchDamageScaleUni;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						MatriarchDamageScaleHel = MatriarchDamageScaleUni;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
										
					// VI - PATRIARCH - 3				
										
						PatriarchDamageScaleNor = PatriarchDamageScaleUni;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						PatriarchDamageScaleHar = PatriarchDamageScaleUni;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						PatriarchDamageScaleSui = PatriarchDamageScaleUni;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						PatriarchDamageScaleHel = PatriarchDamageScaleUni;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
										
					// VI - ABOMINATION - 4				
										
						AbominationDamageScaleNor = AbominationDamageScaleUni;					// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						AbominationDamageScaleHar = AbominationDamageScaleUni;					// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						AbominationDamageScaleSui = AbominationDamageScaleUni;					// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						AbominationDamageScaleHel = AbominationDamageScaleUni;					// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
										
					// VI - KING FLESHPOUND - 5				
										
						KingFleshpoundDamageScaleNor = KingFleshpoundDamageScaleUni;			// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						KingFleshpoundDamageScaleHar = KingFleshpoundDamageScaleUni;			// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						KingFleshpoundDamageScaleSui = KingFleshpoundDamageScaleUni;			// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						KingFleshpoundDamageScaleHel = KingFleshpoundDamageScaleUni;			// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
				
										
										
				// V - LARGE ZEDS - LARGE ZEDS - 3 - 8/24				
										
					// VI - FLESHPOUND				
									
						FleshpoundDamageScaleNor = FleshpoundDamageScaleUni;					// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						FleshpoundDamageScaleHar = FleshpoundDamageScaleUni;					// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						FleshpoundDamageScaleSui = FleshpoundDamageScaleUni;					// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						FleshpoundDamageScaleHel = FleshpoundDamageScaleUni;					// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
										
					// VI - SCRAKE				
										
						ScrakeDamageScaleNor = ScrakeDamageScaleUni;		    			    // NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						ScrakeDamageScaleHar = ScrakeDamageScaleUni;		    			    // HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						ScrakeDamageScaleSui = ScrakeDamageScaleUni;		    			    // SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						ScrakeDamageScaleHel = ScrakeDamageScaleUni;		    			    // HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
								
					// VI - QUARTER POUND	
						
						QuarterpoundDamageScaleNor = QuarterpoundDamageScaleUni;				// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						QuarterpoundDamageScaleHar = QuarterpoundDamageScaleUni;				// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						QuarterpoundDamageScaleSui = QuarterpoundDamageScaleUni;				// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						QuarterpoundDamageScaleHel = QuarterpoundDamageScaleUni;				// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
				
										
				// V - MEDIUM ZEDS - 6 - 14/24	
					
					// VI - BLOAT - 1	
										
						BloatDamageScaleNor = BloatDamageScaleUni;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						BloatDamageScaleHar = BloatDamageScaleUni;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						BloatDamageScaleSui = BloatDamageScaleUni;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						BloatDamageScaleHel = BloatDamageScaleUni;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
									
	
					// VI - EDAR TRAPPER - 2	
										
						TrapperDamageScaleNor = TrapperDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						TrapperDamageScaleHar = TrapperDamageScaleUni;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						TrapperDamageScaleSui = TrapperDamageScaleUni;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						TrapperDamageScaleHel = TrapperDamageScaleUni;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
								
	
					// VI - EDAR BLASTER - 3	
						
						BlasterDamageScaleNor = BlasterDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						BlasterDamageScaleHar = BlasterDamageScaleUni; 							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						BlasterDamageScaleSui = BlasterDamageScaleUni; 							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						BlasterDamageScaleHel = BlasterDamageScaleUni; 							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
						
					// VI - EDAR BOMBER - 4	
						
						BomberDamageScaleNor = BomberDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						BomberDamageScaleHar = BomberDamageScaleUni;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						BomberDamageScaleSui = BomberDamageScaleUni;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						BomberDamageScaleHel = BomberDamageScaleUni;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
									
						
					// VI - HUSK - 5	
						
						HuskDamageScaleNor = HuskDamageScaleUni;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						HuskDamageScaleHar = HuskDamageScaleUni;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						HuskDamageScaleSui = HuskDamageScaleUni;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						HuskDamageScaleHel = HuskDamageScaleUni;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
								
	
					// VI - SIREN - 6	
						
						SirenDamageScaleNor = SirenDamageScaleUni;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						SirenDamageScaleHar = SirenDamageScaleUni;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						SirenDamageScaleSui = SirenDamageScaleUni;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						SirenDamageScaleHel = SirenDamageScaleUni;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
				
								
								
				// V - ELITE TRASH ZEDS - 3 - 17/24	
					
					// VI - GOREFIEND - 1	
					
						GorefiendDamageScaleNor = GorefiendDamageScaleUni;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						GorefiendDamageScaleHar = GorefiendDamageScaleUni;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						GorefiendDamageScaleSui = GorefiendDamageScaleUni;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						GorefiendDamageScaleHel = GorefiendDamageScaleUni;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
										
					// VI - ELITE CRAWLER - 2	
						
						GasCrawlerDamageScaleNor = GasCrawlerDamageScaleUni;					// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						GasCrawlerDamageScaleHar = GasCrawlerDamageScaleUni;					// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						GasCrawlerDamageScaleSui = GasCrawlerDamageScaleUni;					// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						GasCrawlerDamageScaleHel = GasCrawlerDamageScaleUni;					// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
											
					// VI - RIOTER - 3	
						
						RioterDamageScaleNor = RioterDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						RioterDamageScaleHar = RioterDamageScaleUni;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						RioterDamageScaleSui = RioterDamageScaleUni;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						RioterDamageScaleHel = RioterDamageScaleUni;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
				
											
				// V - WEAK TRASH ZEDS - 7 - 24/24	
						
					// VI - GOREFAST - 1	
					
						GorefastDamageScaleNor = GorefastDamageScaleUni;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						GorefastDamageScaleHar = GorefastDamageScaleUni;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						GorefastDamageScaleSui = GorefastDamageScaleUni;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						GorefastDamageScaleHel = GorefastDamageScaleUni;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
					// VI - STALKER - 2	
						
						StalkerDamageScaleNor = StalkerDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						StalkerDamageScaleHar = StalkerDamageScaleUni;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						StalkerDamageScaleSui = StalkerDamageScaleUni;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						StalkerDamageScaleHel = StalkerDamageScaleUni;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
							
								
					// VI - SLASHER - 3							
												
						SlasherDamageScaleNor = SlasherDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						SlasherDamageScaleHar = SlasherDamageScaleUni;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						SlasherDamageScaleSui = SlasherDamageScaleUni;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						SlasherDamageScaleHel = SlasherDamageScaleUni;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
						
	
					// VI - CYST - 4	
						
						CystDamageScaleNor = CystDamageScaleUni;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.	
						CystDamageScaleHar = CystDamageScaleUni;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						CystDamageScaleSui = CystDamageScaleUni;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						CystDamageScaleHel = CystDamageScaleUni;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
						
	
					// VI - CLOT - 5	
						
						ClotDamageScaleNor = ClotDamageScaleUni;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.	
						ClotDamageScaleHar = ClotDamageScaleUni;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						ClotDamageScaleSui = ClotDamageScaleUni;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						ClotDamageScaleHel = ClotDamageScaleUni;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
										
											
					// VI - CRAWLER - 6	
						
						CrawlerDamageScaleNor = CrawlerDamageScaleUni;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						CrawlerDamageScaleHar = CrawlerDamageScaleUni;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						CrawlerDamageScaleSui = CrawlerDamageScaleUni;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						CrawlerDamageScaleHel = CrawlerDamageScaleUni;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.
							
							
					// VI - ABOMINATION SPAWN - 7	
						
						AbominationSpawnDamageScaleNor = AbominationSpawnDamageScaleUni;		// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its universal scale.
						AbominationSpawnDamageScaleHar = AbominationSpawnDamageScaleUni;		// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its universal scale.
						AbominationSpawnDamageScaleSui = AbominationSpawnDamageScaleUni;		// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its universal scale.
						AbominationSpawnDamageScaleHel = AbominationSpawnDamageScaleUni;		// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its universal scale.			
			
	
	
			// IV - INDIVIDUAL ZED MOVE SPEED SCALE REPLACEMENT
	
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
				
					// VI - HANS VOLTER - 1
					
						HansMoveSpeedScaleNor = HansMoveSpeedScaleUni; 							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.
						HansMoveSpeedScaleHar = HansMoveSpeedScaleUni;            			    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.
						HansMoveSpeedScaleSui = HansMoveSpeedScaleUni;            			    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.
						HansMoveSpeedScaleHel = HansMoveSpeedScaleUni;            			    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.
									
									
					// VI - MATRIARCH - 2				
				
						MatriarchMoveSpeedScaleNor = MatriarchMoveSpeedScaleUni;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.
						MatriarchMoveSpeedScaleHar = MatriarchMoveSpeedScaleUni;				// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.
						MatriarchMoveSpeedScaleSui = MatriarchMoveSpeedScaleUni;				// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.
						MatriarchMoveSpeedScaleHel = MatriarchMoveSpeedScaleUni;				// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.
										
										
					// VI - PATRIARCH - 3				
										
						PatriarchMoveSpeedScaleNor = PatriarchMoveSpeedScaleUni;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.
						PatriarchMoveSpeedScaleHar = PatriarchMoveSpeedScaleUni;				// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.
						PatriarchMoveSpeedScaleSui = PatriarchMoveSpeedScaleUni;				// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.
						PatriarchMoveSpeedScaleHel = PatriarchMoveSpeedScaleUni;				// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.
																								
																								
					// VI - ABOMINATION - 4			                                	    
																								
						AbominationMoveSpeedScaleNor = AbominationMoveSpeedScaleUni;			// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.
						AbominationMoveSpeedScaleHar = AbominationMoveSpeedScaleUni;			// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.
						AbominationMoveSpeedScaleSui = AbominationMoveSpeedScaleUni;			// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.
						AbominationMoveSpeedScaleHel = AbominationMoveSpeedScaleUni;			// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.
									
									
					// VI - KING FLESHPOUND - 5			
									
						KingFleshpoundMoveSpeedScaleNor = KingFleshpoundMoveSpeedScaleUni;		// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.
						KingFleshpoundMoveSpeedScaleHar = KingFleshpoundMoveSpeedScaleUni;		// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.
						KingFleshpoundMoveSpeedScaleSui = KingFleshpoundMoveSpeedScaleUni;		// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.
						KingFleshpoundMoveSpeedScaleHel = KingFleshpoundMoveSpeedScaleUni;		// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.
			
									
									
				// V - LARGE ZEDS - LARGE ZEDS - 3 - 8/24			
									
					// VI - FLESHPOUND			
								
						FleshpoundMoveSpeedScaleNor = FleshpoundMoveSpeedScaleUni;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						FleshpoundMoveSpeedScaleHar = FleshpoundMoveSpeedScaleUni;				// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						FleshpoundMoveSpeedScaleSui = FleshpoundMoveSpeedScaleUni;				// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						FleshpoundMoveSpeedScaleHel = FleshpoundMoveSpeedScaleUni;				// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
																								
																								
					// VI - SCRAKE			                                            	    
																								
						ScrakeMoveSpeedScaleNor = ScrakeMoveSpeedScaleUni;		    			// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.    
						ScrakeMoveSpeedScaleHar = ScrakeMoveSpeedScaleUni;		    			// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.    
						ScrakeMoveSpeedScaleSui = ScrakeMoveSpeedScaleUni;		    			// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.    
						ScrakeMoveSpeedScaleHel = ScrakeMoveSpeedScaleUni;		    			// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.    
																								
																								
					// VI - QUARTER POUND                                              	    
																								
						QuarterpoundMoveSpeedScaleNor = QuarterpoundMoveSpeedScaleUni;			// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						QuarterpoundMoveSpeedScaleHar = QuarterpoundMoveSpeedScaleUni;			// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						QuarterpoundMoveSpeedScaleSui = QuarterpoundMoveSpeedScaleUni;			// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						QuarterpoundMoveSpeedScaleHel = QuarterpoundMoveSpeedScaleUni;			// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
			                                                                                
									                                                        
				// V - MEDIUM ZEDS - 6 - 14/24                                            
				                                                                            
					// VI - BLOAT - 1                                                     
									                                                       
						BloatMoveSpeedScaleNor = BloatMoveSpeedScaleUni;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						BloatMoveSpeedScaleHar = BloatMoveSpeedScaleUni;						// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.		
						BloatMoveSpeedScaleSui = BloatMoveSpeedScaleUni;						// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						BloatMoveSpeedScaleHel = BloatMoveSpeedScaleUni;						// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
								                                                           
                                                                                           
					// VI - EDAR TRAPPER - 2                                              
									                                                       
						TrapperMoveSpeedScaleNor = TrapperMoveSpeedScaleUni;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						TrapperMoveSpeedScaleHar = TrapperMoveSpeedScaleUni;					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.		
						TrapperMoveSpeedScaleSui = TrapperMoveSpeedScaleUni;					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.			
						TrapperMoveSpeedScaleHel = TrapperMoveSpeedScaleUni;					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.			
							

					// VI - EDAR BLASTER - 3
					
						BlasterMoveSpeedScaleNor = BlasterMoveSpeedScaleUni;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.		
						BlasterMoveSpeedScaleHar = BlasterMoveSpeedScaleUni; 					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.		
						BlasterMoveSpeedScaleSui = BlasterMoveSpeedScaleUni; 					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.		
						BlasterMoveSpeedScaleHel = BlasterMoveSpeedScaleUni; 					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.		
									
					
					// VI - EDAR BOMBER - 4
					
						BomberMoveSpeedScaleNor = BomberMoveSpeedScaleUni;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						BomberMoveSpeedScaleHar = BomberMoveSpeedScaleUni;						// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						BomberMoveSpeedScaleSui = BomberMoveSpeedScaleUni;						// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						BomberMoveSpeedScaleHel = BomberMoveSpeedScaleUni;						// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
								
					
					// VI - HUSK - 5
					
						HuskMoveSpeedScaleNor = HuskMoveSpeedScaleUni;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						HuskMoveSpeedScaleHar = HuskMoveSpeedScaleUni;						    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						HuskMoveSpeedScaleSui = HuskMoveSpeedScaleUni;						    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						HuskMoveSpeedScaleHel = HuskMoveSpeedScaleUni;						    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
							

					// VI - SIREN - 6
					
						SirenMoveSpeedScaleNor = SirenMoveSpeedScaleUni;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						SirenMoveSpeedScaleHar = SirenMoveSpeedScaleUni;					    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						SirenMoveSpeedScaleSui = SirenMoveSpeedScaleUni;					    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						SirenMoveSpeedScaleHel = SirenMoveSpeedScaleUni;					    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
			
							
							
				// V - ELITE TRASH ZEDS - 3 - 17/24
				
					// VI - GOREFIEND - 1
				
						GorefiendMoveSpeedScaleNor = GorefiendMoveSpeedScaleUni;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						GorefiendMoveSpeedScaleHar = GorefiendMoveSpeedScaleUni;		        // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						GorefiendMoveSpeedScaleSui = GorefiendMoveSpeedScaleUni;		        // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						GorefiendMoveSpeedScaleHel = GorefiendMoveSpeedScaleUni;		        // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
									
									
					// VI - ELITE CRAWLER - 2
					
						GasCrawlerMoveSpeedScaleNor = GasCrawlerMoveSpeedScaleUni;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						GasCrawlerMoveSpeedScaleHar = GasCrawlerMoveSpeedScaleUni;		        // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						GasCrawlerMoveSpeedScaleSui = GasCrawlerMoveSpeedScaleUni;		        // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						GasCrawlerMoveSpeedScaleHel = GasCrawlerMoveSpeedScaleUni;		        // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
									
										
					// VI - RIOTER - 3
					
						RioterMoveSpeedScaleNor = RioterMoveSpeedScaleUni;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						RioterMoveSpeedScaleHar = RioterMoveSpeedScaleUni;				        // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						RioterMoveSpeedScaleSui = RioterMoveSpeedScaleUni;				        // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						RioterMoveSpeedScaleHel = RioterMoveSpeedScaleUni;				        // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
			
										
				// V - WEAK TRASH ZEDS - 7 - 24/24
					
					// VI - GOREFAST - 1
				
						GorefastMoveSpeedScaleNor = GorefastMoveSpeedScaleUni;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						GorefastMoveSpeedScaleHar = GorefastMoveSpeedScaleUni;				    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						GorefastMoveSpeedScaleSui = GorefastMoveSpeedScaleUni;				    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						GorefastMoveSpeedScaleHel = GorefastMoveSpeedScaleUni;				    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
									
					// VI - STALKER - 2
					
						StalkerMoveSpeedScaleNor = StalkerMoveSpeedScaleUni;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						StalkerMoveSpeedScaleHar = StalkerMoveSpeedScaleUni;				    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						StalkerMoveSpeedScaleSui = StalkerMoveSpeedScaleUni;				    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						StalkerMoveSpeedScaleHel = StalkerMoveSpeedScaleUni;				    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
						
							
					// VI - SLASHER - 3						
											
						SlasherMoveSpeedScaleNor = SlasherMoveSpeedScaleUni;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						SlasherMoveSpeedScaleHar = SlasherMoveSpeedScaleUni;				    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						SlasherMoveSpeedScaleSui = SlasherMoveSpeedScaleUni;				    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						SlasherMoveSpeedScaleHel = SlasherMoveSpeedScaleUni;				    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
					

					// VI - CYST - 4
					
						CystMoveSpeedScaleNor = CystMoveSpeedScaleUni;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						CystMoveSpeedScaleHar = CystMoveSpeedScaleUni;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						CystMoveSpeedScaleSui = CystMoveSpeedScaleUni;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						CystMoveSpeedScaleHel = CystMoveSpeedScaleUni;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
					

					// VI - CLOT - 5
					
						ClotMoveSpeedScaleNor = ClotMoveSpeedScaleUni;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						ClotMoveSpeedScaleHar = ClotMoveSpeedScaleUni;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						ClotMoveSpeedScaleSui = ClotMoveSpeedScaleUni;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						ClotMoveSpeedScaleHel = ClotMoveSpeedScaleUni;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
									
										
					// VI - CRAWLER - 6
					
						CrawlerMoveSpeedScaleNor = CrawlerMoveSpeedScaleUni;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.		
						CrawlerMoveSpeedScaleHar = CrawlerMoveSpeedScaleUni;					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						CrawlerMoveSpeedScaleSui = CrawlerMoveSpeedScaleUni;					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						CrawlerMoveSpeedScaleHel = CrawlerMoveSpeedScaleUni;					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.	
						
						
					// VI - ABOMINATION SPAWN - 7
					
						AbominationSpawnMoveSpeedScaleNor = AbominationSpawnMoveSpeedScaleUni;	// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its universal scale.	
						AbominationSpawnMoveSpeedScaleHar = AbominationSpawnMoveSpeedScaleUni;	// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its universal scale.	
						AbominationSpawnMoveSpeedScaleSui = AbominationSpawnMoveSpeedScaleUni;	// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its universal scale.	
						AbominationSpawnMoveSpeedScaleHel = AbominationSpawnMoveSpeedScaleUni;	// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its universal scale.		
			}
	
	
	
	// II - DEFAULT VARIABLES BOOLEAN
	
		// III - UNIVERSAL DAMAGE SCALES
		
			if(UseDefault == true) 								// If "true" is selected...
			{
				
			// IV - PLAYER COUNT SCALING BOOLEAN OVERRIDES - If the booleans for scaling damage and move speed blankets by player count are contradictorily marked "true", set them to false if default variables are toggled.
					
				// V - ZED DAMAGE BLANKETS 
			
					if(ScaleDamageBlanketsByPlayerCount == true)
					{
						ScaleDamageBlanketsByPlayerCount = false;
					}
				
				
				// V - ZED MOVE SPEED BLANKETS
					
					if(ScaleMoveSpeedBlanketsByPlayerCount == true)
					{
						ScaleMoveSpeedBlanketsByPlayerCount = false;
					}
					
			
				// V - UNIVERSAL BOOLEAN OVERRIDE - If the boolean for using universal scaling is contradictorily marked "true", set is to false if default variables are toggled.
						
					if(UseUniversalSet == true)
					{
						UseUniversalSet = false;
					}
					
								
			// IV - BLANKET SCALE REPLACEMENT - Assign all blanket scales the values of their default versions
			
				// V - ZED DAMAGE BLANKETS
				
					DamageScaleNor = DamageScaleNorDef;						// Use the one-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarDef;						// Use the one-player blanket scale for Zed damage on Hard
					DamageScaleSui = DamageScaleSuiDef;						// Use the one-player blanket scale for Zed damage on Suicidal
					DamageScaleHel = DamageScaleHelDef;						// Use the one-player blanket scale for Zed damage on Hell on Earth	
				
				
				// V - ZED MOVE SPEED BLANKETS
				
					MoveSpeedScaleNor = MoveSpeedScaleNorDef;				// Use the one-player blanket scale for Zed damage on Normal
					MoveSpeedScaleHar = MoveSpeedScaleHarDef;				// Use the one-player blanket scale for Zed damage on Hard
					MoveSpeedScaleSui = MoveSpeedScaleSuiDef;				// Use the one-player blanket scale for Zed damage on Suicidal
					MoveSpeedScaleHel = MoveSpeedScaleHelDef;				// Use the one-player blanket scale for Zed damage on Hell on Earth	
					
			
			
			// IV - INDIVIDUAL ZED DAMAGE SCALE REPLACEMENT - Assign all individual damage scales the values of their default versions
				
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
				
					// VI - HANS VOLTER - 1
					
						HansDamageScaleNor = HansDamageScaleNorDef; 								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						HansDamageScaleHar = HansDamageScaleHarDef;            					    // HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						HansDamageScaleSui = HansDamageScaleSuiDef;            					    // SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						HansDamageScaleHel = HansDamageScaleHelDef;            					    // HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
										
										
					// VI - MATRIARCH - 2					
					
						MatriarchDamageScaleNor = MatriarchDamageScaleNorDef;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						MatriarchDamageScaleHar = MatriarchDamageScaleHarDef;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						MatriarchDamageScaleSui = MatriarchDamageScaleSuiDef;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						MatriarchDamageScaleHel = MatriarchDamageScaleHelDef;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
											
					// VI - PATRIARCH - 3					
											
						PatriarchDamageScaleNor = PatriarchDamageScaleNorDef;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						PatriarchDamageScaleHar = PatriarchDamageScaleHarDef;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						PatriarchDamageScaleSui = PatriarchDamageScaleSuiDef;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						PatriarchDamageScaleHel = PatriarchDamageScaleHelDef;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
											
					// VI - ABOMINATION - 4					
											
						AbominationDamageScaleNor = AbominationDamageScaleNorDef;					// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						AbominationDamageScaleHar = AbominationDamageScaleHarDef;					// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						AbominationDamageScaleSui = AbominationDamageScaleSuiDef;					// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						AbominationDamageScaleHel = AbominationDamageScaleHelDef;					// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
											
					// VI - KING FLESHPOUND - 5					
											
						KingFleshpoundDamageScaleNor = KingFleshpoundDamageScaleNorDef;				// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						KingFleshpoundDamageScaleHar = KingFleshpoundDamageScaleHarDef;				// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						KingFleshpoundDamageScaleSui = KingFleshpoundDamageScaleSuiDef;				// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						KingFleshpoundDamageScaleHel = KingFleshpoundDamageScaleHelDef;				// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
					
											
											
				// V - LARGE ZEDS - LARGE ZEDS - 3 - 8/24					
											
					// VI - FLESHPOUND					
										
						FleshpoundDamageScaleNor = FleshpoundDamageScaleNorDef;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						FleshpoundDamageScaleHar = FleshpoundDamageScaleHarDef;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						FleshpoundDamageScaleSui = FleshpoundDamageScaleSuiDef;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						FleshpoundDamageScaleHel = FleshpoundDamageScaleHelDef;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
											
					// VI - SCRAKE					
											
						ScrakeDamageScaleNor = ScrakeDamageScaleNorDef;		    				    // NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						ScrakeDamageScaleHar = ScrakeDamageScaleHarDef;		    				    // HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						ScrakeDamageScaleSui = ScrakeDamageScaleSuiDef;		    				    // SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						ScrakeDamageScaleHel = ScrakeDamageScaleHelDef;		    				    // HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
									
					// VI - QUARTER POUND		
							
						QuarterpoundDamageScaleNor = QuarterpoundDamageScaleNorDef;					// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						QuarterpoundDamageScaleHar = QuarterpoundDamageScaleHarDef;					// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						QuarterpoundDamageScaleSui = QuarterpoundDamageScaleSuiDef;					// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						QuarterpoundDamageScaleHel = QuarterpoundDamageScaleHelDef;					// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
					
											
				// V - MEDIUM ZEDS - 6 - 14/24		
						
					// VI - BLOAT - 1		
											
						BloatDamageScaleNor = BloatDamageScaleNorDef;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						BloatDamageScaleHar = BloatDamageScaleHarDef;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						BloatDamageScaleSui = BloatDamageScaleSuiDef;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						BloatDamageScaleHel = BloatDamageScaleHelDef;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
										
		
					// VI - EDAR TRAPPER - 2		
											
						TrapperDamageScaleNor = TrapperDamageScaleNorDef;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						TrapperDamageScaleHar = TrapperDamageScaleHarDef;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						TrapperDamageScaleSui = TrapperDamageScaleSuiDef;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						TrapperDamageScaleHel = TrapperDamageScaleHelDef;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
									
		
					// VI - EDAR BLASTER - 3		
							
						BlasterDamageScaleNor = BlasterDamageScaleNorDef;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						BlasterDamageScaleHar = BlasterDamageScaleHarDef; 							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						BlasterDamageScaleSui = BlasterDamageScaleSuiDef; 							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						BlasterDamageScaleHel = BlasterDamageScaleHelDef; 							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
							
					// VI - EDAR BOMBER - 4		
							
						BomberDamageScaleNor = BomberDamageScaleNorDef;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						BomberDamageScaleHar = BomberDamageScaleHarDef;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						BomberDamageScaleSui = BomberDamageScaleSuiDef;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						BomberDamageScaleHel = BomberDamageScaleHelDef;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
										
							
					// VI - HUSK - 5		
							
						HuskDamageScaleNor = HuskDamageScaleNorDef;									// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						HuskDamageScaleHar = HuskDamageScaleHarDef;									// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						HuskDamageScaleSui = HuskDamageScaleSuiDef;									// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						HuskDamageScaleHel = HuskDamageScaleHelDef;									// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
									
		
					// VI - SIREN - 6		
							
						SirenDamageScaleNor = SirenDamageScaleNorDef;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						SirenDamageScaleHar = SirenDamageScaleHarDef;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						SirenDamageScaleSui = SirenDamageScaleSuiDef;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						SirenDamageScaleHel = SirenDamageScaleHelDef;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
					
									
									
				// V - ELITE TRASH ZEDS - 3 - 17/24		
						
					// VI - GOREFIEND - 1		
						
						GorefiendDamageScaleNor = GorefiendDamageScaleNorDef;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						GorefiendDamageScaleHar = GorefiendDamageScaleHarDef;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						GorefiendDamageScaleSui = GorefiendDamageScaleSuiDef;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						GorefiendDamageScaleHel = GorefiendDamageScaleHelDef;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
											
					// VI - ELITE CRAWLER - 2		
							
						GasCrawlerDamageScaleNor = GasCrawlerDamageScaleNorDef;						// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						GasCrawlerDamageScaleHar = GasCrawlerDamageScaleHarDef;						// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						GasCrawlerDamageScaleSui = GasCrawlerDamageScaleSuiDef;						// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						GasCrawlerDamageScaleHel = GasCrawlerDamageScaleHelDef;						// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
												
					// VI - RIOTER - 3		
							
						RioterDamageScaleNor = RioterDamageScaleNorDef;								// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						RioterDamageScaleHar = RioterDamageScaleHarDef;								// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						RioterDamageScaleSui = RioterDamageScaleSuiDef;								// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						RioterDamageScaleHel = RioterDamageScaleHelDef;								// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
					
												
				// V - WEAK TRASH ZEDS - 7 - 24/24		
							
					// VI - GOREFAST - 1		
						
						GorefastDamageScaleNor = GorefastDamageScaleNorDef;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						GorefastDamageScaleHar = GorefastDamageScaleHarDef;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						GorefastDamageScaleSui = GorefastDamageScaleSuiDef;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						GorefastDamageScaleHel = GorefastDamageScaleHelDef;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
					// VI - STALKER - 2		
							
						StalkerDamageScaleNor = StalkerDamageScaleNorDef;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						StalkerDamageScaleHar = StalkerDamageScaleHarDef;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						StalkerDamageScaleSui = StalkerDamageScaleSuiDef;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						StalkerDamageScaleHel = StalkerDamageScaleHelDef;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
								
									
					// VI - SLASHER - 3								
													
						SlasherDamageScaleNor = SlasherDamageScaleNorDef;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						SlasherDamageScaleHar = SlasherDamageScaleHarDef;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						SlasherDamageScaleSui = SlasherDamageScaleSuiDef;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						SlasherDamageScaleHel = SlasherDamageScaleHelDef;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
							
		
					// VI - CYST - 4		
							
						CystDamageScaleNor = CystDamageScaleNorDef;									// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						CystDamageScaleHar = CystDamageScaleHarDef;									// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						CystDamageScaleSui = CystDamageScaleSuiDef;									// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						CystDamageScaleHel = CystDamageScaleHelDef;									// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
							
		
					// VI - CLOT - 5		
							
						ClotDamageScaleNor = ClotDamageScaleNorDef;									// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						ClotDamageScaleHar = ClotDamageScaleHarDef;									// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						ClotDamageScaleSui = ClotDamageScaleSuiDef;									// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						ClotDamageScaleHel = ClotDamageScaleHelDef;									// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
											
												
					// VI - CRAWLER - 6		
							
						CrawlerDamageScaleNor = CrawlerDamageScaleNorDef;							// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						CrawlerDamageScaleHar = CrawlerDamageScaleHarDef;							// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						CrawlerDamageScaleSui = CrawlerDamageScaleSuiDef;							// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						CrawlerDamageScaleHel = CrawlerDamageScaleHelDef;							// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.
							
							
					// VI - ABOMINATION SPAWN - 7	
						
						AbominationSpawnDamageScaleNor = AbominationSpawnDamageScaleNorDef;			// NORMAL DAMAGE SCALE REPLACEMENT - Replaces the Normal damage scale's value for this Zed with that of its default scale.
						AbominationSpawnDamageScaleHar = AbominationSpawnDamageScaleHarDef;			// HARD DAMAGE SCALE REPLACEMENT - Replaces the Hard damage scale's value for this Zed with that of its default scale.
						AbominationSpawnDamageScaleSui = AbominationSpawnDamageScaleSuiDef;			// SUICIDAL DAMAGE SCALE REPLACEMENT - Replaces the Suicidal damage scale's value for this Zed with that of its default scale.
						AbominationSpawnDamageScaleHel = AbominationSpawnDamageScaleHelDef;			// HELL ON EARTH DAMAGE SCALE REPLACEMENT - Replaces the Hell on Earth damage scale's value for this Zed with that of its default scale.			
			
	
	
			// IV - INDIVIDUAL ZED MOVE SPEED SCALE REPLACEMENT
	
				// V - BOSS ZEDS - 5 - 5/24 - for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
				
					// VI - HANS VOLTER - 1
					
						HansMoveSpeedScaleNor = HansMoveSpeedScaleNorDef; 							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						HansMoveSpeedScaleHar = HansMoveSpeedScaleHarDef;            				// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						HansMoveSpeedScaleSui = HansMoveSpeedScaleSuiDef;            				// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						HansMoveSpeedScaleHel = HansMoveSpeedScaleHelDef;            				// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
										
										
					// VI - MATRIARCH - 2					
					
						MatriarchMoveSpeedScaleNor = MatriarchMoveSpeedScaleNorDef;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						MatriarchMoveSpeedScaleHar = MatriarchMoveSpeedScaleHarDef;					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						MatriarchMoveSpeedScaleSui = MatriarchMoveSpeedScaleSuiDef;					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						MatriarchMoveSpeedScaleHel = MatriarchMoveSpeedScaleHelDef;					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
											
											
					// VI - PATRIARCH - 3					
											
						PatriarchMoveSpeedScaleNor = PatriarchMoveSpeedScaleNorDef;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						PatriarchMoveSpeedScaleHar = PatriarchMoveSpeedScaleHarDef;					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						PatriarchMoveSpeedScaleSui = PatriarchMoveSpeedScaleSuiDef;					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						PatriarchMoveSpeedScaleHel = PatriarchMoveSpeedScaleHelDef;					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
																									
																									
					// VI - ABOMINATION - 4			                                		    
																									
						AbominationMoveSpeedScaleNor = AbominationMoveSpeedScaleNorDef;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						AbominationMoveSpeedScaleHar = AbominationMoveSpeedScaleHarDef;				// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						AbominationMoveSpeedScaleSui = AbominationMoveSpeedScaleSuiDef;				// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						AbominationMoveSpeedScaleHel = AbominationMoveSpeedScaleHelDef;				// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
										
										
					// VI - KING FLESHPOUND - 5				
										
						KingFleshpoundMoveSpeedScaleNor = KingFleshpoundMoveSpeedScaleNorDef	;	// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						KingFleshpoundMoveSpeedScaleHar = KingFleshpoundMoveSpeedScaleHarDef	;	// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						KingFleshpoundMoveSpeedScaleSui = KingFleshpoundMoveSpeedScaleSuiDef	;	// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						KingFleshpoundMoveSpeedScaleHel = KingFleshpoundMoveSpeedScaleHelDef	;	// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
				
										
										
				// V - LARGE ZEDS - LARGE ZEDS - 3 - 8/24				
										
					// VI - FLESHPOUND				
									
						FleshpoundMoveSpeedScaleNor = FleshpoundMoveSpeedScaleNorDef;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						FleshpoundMoveSpeedScaleHar = FleshpoundMoveSpeedScaleHarDef;				// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						FleshpoundMoveSpeedScaleSui = FleshpoundMoveSpeedScaleSuiDef;				// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						FleshpoundMoveSpeedScaleHel = FleshpoundMoveSpeedScaleHelDef;				// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
																									
																									
					// VI - SCRAKE			                                            		    
																									
						ScrakeMoveSpeedScaleNor = ScrakeMoveSpeedScaleNorDef;		    			// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						ScrakeMoveSpeedScaleHar = ScrakeMoveSpeedScaleHarDef;		    			// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						ScrakeMoveSpeedScaleSui = ScrakeMoveSpeedScaleSuiDef;		    			// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						ScrakeMoveSpeedScaleHel = ScrakeMoveSpeedScaleHelDef;		    			// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.   
																									
																									
					// VI - QUARTER POUND                                              		    
																									
						QuarterpoundMoveSpeedScaleNor = QuarterpoundMoveSpeedScaleNorDef;			// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						QuarterpoundMoveSpeedScaleHar = QuarterpoundMoveSpeedScaleHarDef;			// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						QuarterpoundMoveSpeedScaleSui = QuarterpoundMoveSpeedScaleSuiDef;			// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						QuarterpoundMoveSpeedScaleHel = QuarterpoundMoveSpeedScaleHelDef;			// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
																								
																								
				// V - MEDIUM ZEDS - 6 - 14/24                                            	
																								
					// VI - BLOAT - 1                                                     	
																							
						BloatMoveSpeedScaleNor = BloatMoveSpeedScaleNorDef;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						BloatMoveSpeedScaleHar = BloatMoveSpeedScaleHarDef;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						BloatMoveSpeedScaleSui = BloatMoveSpeedScaleSuiDef;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						BloatMoveSpeedScaleHel = BloatMoveSpeedScaleHelDef;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
																							
																							
					// VI - EDAR TRAPPER - 2                                              	
																							
						TrapperMoveSpeedScaleNor = TrapperMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						TrapperMoveSpeedScaleHar = TrapperMoveSpeedScaleHarDef;						// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						TrapperMoveSpeedScaleSui = TrapperMoveSpeedScaleSuiDef;						// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						TrapperMoveSpeedScaleHel = TrapperMoveSpeedScaleHelDef;						// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.			
								
	
					// VI - EDAR BLASTER - 3	
						
						BlasterMoveSpeedScaleNor = BlasterMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						BlasterMoveSpeedScaleHar = BlasterMoveSpeedScaleHarDef; 					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						BlasterMoveSpeedScaleSui = BlasterMoveSpeedScaleSuiDef; 					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						BlasterMoveSpeedScaleHel = BlasterMoveSpeedScaleHelDef; 					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.		
										
						
					// VI - EDAR BOMBER - 4	
						
						BomberMoveSpeedScaleNor = BomberMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						BomberMoveSpeedScaleHar = BomberMoveSpeedScaleHarDef;						// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						BomberMoveSpeedScaleSui = BomberMoveSpeedScaleSuiDef;						// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						BomberMoveSpeedScaleHel = BomberMoveSpeedScaleHelDef;						// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
									
						
					// VI - HUSK - 5	
						
						HuskMoveSpeedScaleNor = HuskMoveSpeedScaleNorDef;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						HuskMoveSpeedScaleHar = HuskMoveSpeedScaleHarDef;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						HuskMoveSpeedScaleSui = HuskMoveSpeedScaleSuiDef;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						HuskMoveSpeedScaleHel = HuskMoveSpeedScaleHelDef;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
								
	
					// VI - SIREN - 6	
						
						SirenMoveSpeedScaleNor = SirenMoveSpeedScaleNorDef;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						SirenMoveSpeedScaleHar = SirenMoveSpeedScaleHarDef;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						SirenMoveSpeedScaleSui = SirenMoveSpeedScaleSuiDef;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						SirenMoveSpeedScaleHel = SirenMoveSpeedScaleHelDef;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
				
								
								
				// V - ELITE TRASH ZEDS - 3 - 17/24	
					
					// VI - GOREFIEND - 1	
					
						GorefiendMoveSpeedScaleNor = GorefiendMoveSpeedScaleNorDef;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						GorefiendMoveSpeedScaleHar = GorefiendMoveSpeedScaleHarDef;		    	    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						GorefiendMoveSpeedScaleSui = GorefiendMoveSpeedScaleSuiDef;		    	    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						GorefiendMoveSpeedScaleHel = GorefiendMoveSpeedScaleHelDef;		    	    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
										
										
					// VI - ELITE CRAWLER - 2	
						
						GasCrawlerMoveSpeedScaleNor = GasCrawlerMoveSpeedScaleNorDef;				// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						GasCrawlerMoveSpeedScaleHar = GasCrawlerMoveSpeedScaleHarDef;			    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						GasCrawlerMoveSpeedScaleSui = GasCrawlerMoveSpeedScaleSuiDef;			    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						GasCrawlerMoveSpeedScaleHel = GasCrawlerMoveSpeedScaleHelDef;			    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
										
											
					// VI - RIOTER - 3	
						
						RioterMoveSpeedScaleNor = RioterMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						RioterMoveSpeedScaleHar = RioterMoveSpeedScaleHarDef;					    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						RioterMoveSpeedScaleSui = RioterMoveSpeedScaleSuiDef;					    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						RioterMoveSpeedScaleHel = RioterMoveSpeedScaleHelDef;					    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
				
											
				// V - WEAK TRASH ZEDS - 7 - 24/24	
						
					// VI - GOREFAST - 1	
					
						GorefastMoveSpeedScaleNor = GorefastMoveSpeedScaleNorDef;					// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						GorefastMoveSpeedScaleHar = GorefastMoveSpeedScaleHarDef;					// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						GorefastMoveSpeedScaleSui = GorefastMoveSpeedScaleSuiDef;					// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						GorefastMoveSpeedScaleHel = GorefastMoveSpeedScaleHelDef;					// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
										
					// VI - STALKER - 2	
						
						StalkerMoveSpeedScaleNor = StalkerMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						StalkerMoveSpeedScaleHar = StalkerMoveSpeedScaleHarDef;					    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						StalkerMoveSpeedScaleSui = StalkerMoveSpeedScaleSuiDef;					    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						StalkerMoveSpeedScaleHel = StalkerMoveSpeedScaleHelDef;					    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
							
								
					// VI - SLASHER - 3							
												
						SlasherMoveSpeedScaleNor = SlasherMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						SlasherMoveSpeedScaleHar = SlasherMoveSpeedScaleHarDef;					    // HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						SlasherMoveSpeedScaleSui = SlasherMoveSpeedScaleSuiDef;					    // SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						SlasherMoveSpeedScaleHel = SlasherMoveSpeedScaleHelDef;					    // HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
						
	
					// VI - CYST - 4	
						
						CystMoveSpeedScaleNor = CystMoveSpeedScaleNorDef;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						CystMoveSpeedScaleHar = CystMoveSpeedScaleHarDef;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						CystMoveSpeedScaleSui = CystMoveSpeedScaleSuiDef;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						CystMoveSpeedScaleHel = CystMoveSpeedScaleHelDef;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
						
	
					// VI - CLOT - 5	
						
						ClotMoveSpeedScaleNor = ClotMoveSpeedScaleNorDef;							// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						ClotMoveSpeedScaleHar = ClotMoveSpeedScaleHarDef;							// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						ClotMoveSpeedScaleSui = ClotMoveSpeedScaleSuiDef;							// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						ClotMoveSpeedScaleHel = ClotMoveSpeedScaleHelDef;							// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
										
											
					// VI - CRAWLER - 6	
						
						CrawlerMoveSpeedScaleNor = CrawlerMoveSpeedScaleNorDef;						// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						CrawlerMoveSpeedScaleHar = CrawlerMoveSpeedScaleHarDef;						// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						CrawlerMoveSpeedScaleSui = CrawlerMoveSpeedScaleSuiDef;						// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						CrawlerMoveSpeedScaleHel = CrawlerMoveSpeedScaleHelDef;						// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.
						
						
					// VI - ABOMINATION SPAWN - 7
					
						AbominationSpawnMoveSpeedScaleNor = AbominationSpawnMoveSpeedScaleNorDef;	// NORMAL MOVE SPEED SCALE REPLACEMENT - Replaces the Normal move speed scale's value for this Zed with that of its default scale.
						AbominationSpawnMoveSpeedScaleHar = AbominationSpawnMoveSpeedScaleHarDef;	// HARD MOVE SPEED SCALE REPLACEMENT - Replaces the Hard move speed scale's value for this Zed with that of its default scale.
						AbominationSpawnMoveSpeedScaleSui = AbominationSpawnMoveSpeedScaleSuiDef;	// SUICIDAL MOVE SPEED SCALE REPLACEMENT - Replaces the Suicidal move speed scale's value for this Zed with that of its default scale.
						AbominationSpawnMoveSpeedScaleHel = AbominationSpawnMoveSpeedScaleHelDef;	// HELL ON EARTH MOVE SPEED SCALE REPLACEMENT - Replaces the Hell on Earth move speed scale's value for this Zed with that of its default scale.	
				
			
			}
	
	
	
	// II - ZED SCALE ASSIGNMENTS
	
		// III - BOSS ZEDS - 5 - 5/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
		
			// IV - ABOMINATION - 1
			
				if(KFPawn_ZedBloatKing(AIPawn)!=None) 																	// If an Abomination exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Abomination's damage and movement scales for Normal.  Difficulty numeric IDs are 0 for Normal, 1 for Hard, 2 for Suicidal, and 3 for Hell on Earth. These numeric IDs can be used to load maps via string commands using the "difficulty='0, 1, 2, or 3'" command statement.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleNor * MoveSpeedScaleNor; 			// ABOMINATION NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleNor * DamageScaleNor; 				// ABOMINATION NORMAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Abomination's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleHar * MoveSpeedScaleHar; 			// ABOMINATION HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleHar * DamageScaleHar; 				// ABOMINATION HARD DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Abomination's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleSui * MoveSpeedScaleSui;			// ABOMINATION SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleSui * DamageScaleSui; 				// ABOMINATION SUICIDAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Abomination's damage and movement scales for Hell on Earth.
					{
					   KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleHel * MoveSpeedScaleHel; 			// ABOMINATION HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
					   KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleHel * DamageScaleHel; 				// ABOMINATION HELL ON EARTH DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
				}
				
			
			// IV - King Fleshpound - 2
			
				if(KFPawn_ZedFleshpoundKing(AIPawn)!=None) 																// If a King Fleshpound exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the King Fleshpound's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleNor * MoveSpeedScaleNor; 	 	// KING FLESHPOUND NORMAL MOVE SPEED SCALING - Individual damage scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleNor * DamageScaleNor; 			// KING FLESHPOUND NORMAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the King Fleshpound's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleHar * MoveSpeedScaleHar; 	 	// KING FLESHPOUND HARD MOVE SPEED SCALING - Individual damage scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleHar * DamageScaleHar; 	 		// KING FLESHPOUND HARD DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the King Fleshpound's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleSui * MoveSpeedScaleSui; 	 	// KING FLESHPOUND SUICIDAL MOVE SPEED SCALING - Individual damage scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleSui * DamageScaleSui; 	 		// KING FLESHPOUND SUICIDAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else																								// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the King Fleshpound's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleHel * MoveSpeedScaleHel; 	 	// KING FLESHPOUND HELL ON EARTH MOVE SPEED SCALING - Individual damage scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleHel * DamageScaleHel; 	 		// KING FLESHPOUND HELL ON EARTH DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
				}	
				
			
			// IV - Matriarch - 3
			
				if(KFPawn_ZedMatriarch(AIPawn)!=None) 																	// If the Matriarch exists, apply the appopriate following scales to her.
				{
					KFPawn_Monster(AIPawn).bSprintOverride = True;											// A patching variable for Controlled Difficulty. CD independently breaks the Matriarch's sprinting behavior and rendered her movement scaling useless. However, this variable overrides whatever CD broke and now the Matriarch's sprinting behaves and is affected by her movement scaling normally. Default is "false", it you find it relevant.
					
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Matriarch's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleNor * MoveSpeedScaleNor; 				// MATRIARCH NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale. Due to source code differences with other Zeds, I had to use KFPawn_Monster's "PursuitSpeed" variables to modify the Matriarch's speed. I eventually extended this to every Zed as CD didn't respond properly to the original variable "InitialGroundSpeedModifier". Also, the new variable is more convenient when it comes to scaling since it already considers difficulty-assigned speed.
						KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleNor * DamageScaleNor; 					// MATRIARCH NORMAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Matriarch's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleHar * MoveSpeedScaleHar; 				// MATRIARCH HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleHar * DamageScaleHar; 					// MATRIARCH HARD DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Matriarch's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleSui * MoveSpeedScaleSui; 				// MATRIARCH SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleSui * DamageScaleSui; 					// MATRIARCH SUICIDAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Matriarch's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleHel * MoveSpeedScaleHel; 				// MATRIARCH HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleHel * DamageScaleHel; 					// MATRIARCH HELL ON EARTH DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
				}	
				
			
			// IV - Hans - 4
			
				if(KFPawn_ZedHans(AIPawn)!=None) 																		// If Hans exists, apply the appopriate following scales to him.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use Hans' damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleNor * MoveSpeedScaleNor; 					// HANS NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleNor * DamageScaleNor; 						// HANS NORMAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use Hans' damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleHar * MoveSpeedScaleHar; 					// HANS HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleHar * DamageScaleHar; 						// HANS HARD DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use Hans' damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleSui * MoveSpeedScaleSui; 					// HANS SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleSui * DamageScaleSui; 						// HANS SUICIDAL DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use Hans' damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleHel * MoveSpeedScaleHel; 					// HANS HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleHel * DamageScaleHel; 						// HANS HELL ON EARTH DAMAGE SCALING - Individual damage scale multiplied by blanket damage scale
					}
				}	
				
				
			// IV - Patriarch - 5
			
				if(KFPawn_ZedPatriarch(AIPawn)!=None) 																	// If the Patriarch exists, apply the appopriate following scales to him.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Patriarch's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleNor * MoveSpeedScaleNor; 				// PATRIARCH NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleNor * DamageScaleNor; 					// PATRIARCH NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Patriarch's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleHar *	MoveSpeedScaleHar; 				// PATRIARCH HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleHar * DamageScaleHar; 					// PATRIARCH HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Patriarch's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleSui * MoveSpeedScaleSui; 				// PATRIARCH SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleSui * DamageScaleSui; 					// PATRIARCH SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Patriarch's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleHel * MoveSpeedScaleHel; 				// PATRIARCH HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleHel * DamageScaleHel; 					// PATRIARCH HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
		// III - Large Zeds - 3 - 8/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
		
			// IV - Fleshpound - 1
			
				if(KFPawn_ZedFleshpound(AIPawn)!=None) 													// If a Fleshpound exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Fleshpound's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleNor * MoveSpeedScaleNor; 			// FLESHPOUND NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleNor * DamageScaleNor; 				// FLESHPOUND NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Fleshpound's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleHar * MoveSpeedScaleHar; 			// FLESHPOUND HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleHar * DamageScaleHar; 				// FLESHPOUND HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Fleshpound's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleSui * MoveSpeedScaleSui; 			// FLESHPOUND SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleSui * DamageScaleSui; 				// FLESHPOUND SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Fleshpound's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleHel * MoveSpeedScaleHel; 			// FLESHPOUND HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleHel * DamageScaleHel; 				// FLESHPOUND HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}																						
			
			// IV - Quarter Pound - 2
			
				if(KFPawn_ZedFleshpoundMini(AIPawn)!=None) 												// If a Quarter Pound exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Quarter Pound's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleNor * MoveSpeedScaleNor; 			// QUARTER POUND NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleNor * DamageScaleNor; 				// QUARTER POUND NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Quarter Pound's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleHar * MoveSpeedScaleHar; 			// QUARTER POUND HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleHar * DamageScaleHar; 				// QUARTER POUND HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Quarter Pound's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleSui * MoveSpeedScaleSui; 			// QUARTER POUND SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleSui * DamageScaleSui; 				// QUARTER POUND SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Quarter Pound's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleHel * MoveSpeedScaleHel; 			// QUARTER POUND HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleHel * DamageScaleHel; 				// QUARTER POUND HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}																						
			
			
			// IV - Scrake - 3
			
				if(KFPawn_ZedScrake(AIPawn)!=None) 														// If a Scrake exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Scrake's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleNor * MoveSpeedScaleNor; 				// SCRAKE NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleNor * DamageScaleNor; 					// SCRAKE NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Scrake's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleHar * MoveSpeedScaleHar; 				// SCRAKE HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleHar * DamageScaleHar; 					// SCRAKE HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Scrake's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleSui * MoveSpeedScaleSui; 				// SCRAKE SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleSui * DamageScaleSui; 					// SCRAKE SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Scrake's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleHel * MoveSpeedScaleHel; 				// SCRAKE HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleHel * DamageScaleHel; 					// SCRAKE HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
		
		
		// III - Medium Zeds - 6 - 14/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
		
			// IV - EDAR TRAPPER - 1
			
				if(KFPawn_ZedDAR_EMP(AIPawn)!=None) 													// If an EDAR Trapper exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Trapper's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleNor * MoveSpeedScaleNor; 				// TRAPPER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleNor * DamageScaleNor; 					// TRAPPER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Trapper's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleHar * MoveSpeedScaleHar; 				// TRAPPER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleHar * DamageScaleHar; 					// TRAPPER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Trapper's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleSui * MoveSpeedScaleSui; 				// TRAPPER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleSui * DamageScaleSui; 					// TRAPPER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Trapper's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleHel * MoveSpeedScaleHel; 				// TRAPPER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleHel * DamageScaleHel; 					// TRAPPER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}																						
			
			
			// IV - EDAR BLASTER - 2
			
				if(KFPawn_ZedDAR_Laser(AIPawn)!=None) 													// If an EDAR Blaster exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Blaster's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleNor * MoveSpeedScaleNor; 				// BLASTER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleNor * DamageScaleNor; 					// BLASTER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Blaster's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleHar * MoveSpeedScaleHar; 				// BLASTER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleHar * DamageScaleHar; 					// BLASTER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Blaster's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleSui * MoveSpeedScaleSui; 				// BLASTER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleSui * DamageScaleSui; 					// BLASTER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Blaster's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleHel * MoveSpeedScaleHel; 				// BLASTER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleHel * DamageScaleHel; 					// BLASTER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}																						
			
			
			// IV - EDAR BOMBER - 3 
			
				if(KFPawn_ZedDAR_Rocket(AIPawn)!=None) 													// If an EDAR Bomber exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Bomber's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleNor * MoveSpeedScaleNor; 				// BOMBER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleNor * DamageScaleNor; 					// BOMBER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Bomber's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleHar * MoveSpeedScaleHar; 				// BOMBER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleHar * DamageScaleHar; 					// BOMBER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Bomber's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleSui * MoveSpeedScaleSui; 				// BOMBER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleSui * DamageScaleSui; 					// BOMBER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Bomber's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleHel * MoveSpeedScaleHel; 				// BOMBER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleHel * DamageScaleHel; 					// BOMBER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}																						
			
			
			// IV - Husk - 4
			
				if(KFPawn_ZedHusk(AIPawn)!=None) 														// If a Husk exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Husk's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleNor * MoveSpeedScaleNor; 					// HUSK NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleNor * DamageScaleNor; 						// HUSK NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Husk's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleHar * MoveSpeedScaleHar; 					// HUSK HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleHar * DamageScaleHar; 						// HUSK HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Husk's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleSui * MoveSpeedScaleSui; 					// HUSK SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleSui * DamageScaleSui; 						// HUSK SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Husk's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleHel * MoveSpeedScaleHel; 					// HUSK HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleHel * DamageScaleHel; 						// HUSK HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}


			// IV - Siren - 5
			
				if(KFPawn_ZedSiren(AIPawn)!=None) 														// If a Siren exists, apply the appopriate following scales to it.
				{	
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Siren's damage and movement scales for Normal.
					{ 
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleNor * MoveSpeedScaleNor; 					// SIREN NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleNor * DamageScaleNor; 						// SIREN NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Siren's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleHar * MoveSpeedScaleHar; 					// SIREN HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleHar * DamageScaleHar; 						// SIREN HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Siren's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleSui * MoveSpeedScaleSui; 					// SIREN SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleSui * DamageScaleSui; 						// SIREN SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Siren's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleHel * MoveSpeedScaleHel; 					// SIREN HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleHel * DamageScaleHel; 						// SIREN HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
					
					
			// IV - Bloat - 6

				if(KFPawn_ZedBloat(AIPawn)!=None) 														// If a Bloat exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Bloat's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleNor * MoveSpeedScaleNor; 					// BLOAT NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleNor * DamageScaleNor; 						// BLOAT NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Bloat's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleHar * MoveSpeedScaleHar; 					// BLOAT HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleHar * DamageScaleHar; 						// BLOAT HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Bloat's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleSui * MoveSpeedScaleSui; 					// BLOAT SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleSui * DamageScaleSui; 						// BLOAT SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Bloat's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleHel * MoveSpeedScaleHel; 					// BLOAT HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleHel * DamageScaleHel; 						// BLOAT HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				} 								
				


				
		// III - Elite Trash Zeds - 3 - 17/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
		
			// IV - Gorefiend - 1
			
				if(KFPawn_ZedGorefastDualBlade(AIPawn)!=None) 											// If a Gorefiend exists, apply the appopriate following scales to it.
				{	
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Gorefiend's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleNor * MoveSpeedScaleNor; 				// GOREFIEND NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleNor * DamageScaleNor; 					// GOREFIEND NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Gorefiend's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleHar * MoveSpeedScaleHar; 				// GOREFIEND HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleHar * DamageScaleHar; 					// GOREFIEND HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Gorefiend's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleSui * MoveSpeedScaleSui; 				// GOREFIEND SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleSui * DamageScaleSui; 					// GOREFIEND SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Gorefiend's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleHel * MoveSpeedScaleHel; 				// GOREFIEND HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleHel * DamageScaleHel; 					// GOREFIEND HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
				
				
			// IV - Elite Crawler - 2
			
				if(KFPawn_ZedCrawlerKing(AIPawn)!=None) 												// If an Elite Crawler exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Elite Crawler's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleNor * MoveSpeedScaleNor; 			// ELITE CRAWLER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleNor * DamageScaleNor; 				// ELITE CRAWLER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Elite Crawler's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleHar * MoveSpeedScaleHar; 			// ELITE CRAWLER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleHar * DamageScaleHar; 				// ELITE CRAWLER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Elite Crawler's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleSui * MoveSpeedScaleSui; 			// ELITE CRAWLER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleSui * DamageScaleSui; 				// ELITE CRAWLER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Elite Crawler's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleHel * MoveSpeedScaleHel; 			// ELITE CRAWLER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleHel * DamageScaleHel; 				// ELITE CRAWLER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
				
				
			// IV - Rioter - 3
			
				if(KFPawn_ZedClot_AlphaKing(AIPawn)!=None) 												// If a Rioter exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Rioter's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleNor * MoveSpeedScaleNor; 				// RIOTER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleNor * DamageScaleNor; 					// RIOTER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Rioter's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleHar * MoveSpeedScaleHar; 				// RIOTER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleHar * DamageScaleHar; 					// RIOTER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Rioter's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleSui * MoveSpeedScaleSui; 				// RIOTER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleSui * DamageScaleSui; 					// RIOTER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Rioter's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleHel * MoveSpeedScaleHel; 				// RIOTER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleHel * DamageScaleHel; 					// RIOTER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
		
		
		
		
		// III - Weak Trash Zeds - 7 - 24/24 - Numbers are for quality of life to check if we are missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to the previous category(ies) compared to the overall.
		
			// IV - Gorefast - 1 
			
				if(KFPawn_ZedGorefast(AIPawn)!=None) 													// If a Gorefast exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Gorefast's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleNor * MoveSpeedScaleNor; 				// GOREFAST NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleNor * DamageScaleNor; 					// GOREFAST NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Gorefast's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleHar * MoveSpeedScaleHar; 				// GOREFAST HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleHar * DamageScaleHar; 					// GOREFAST HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Gorefast's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleSui * MoveSpeedScaleSui; 				// GOREFAST SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleSui * DamageScaleSui; 					// GOREFAST SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Gorefast's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleHel * MoveSpeedScaleHel; 				// GOREFAST HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleHel * DamageScaleHel; 					// GOREFAST HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
			// IV - Stalker - 2
			
				if(KFPawn_ZedStalker(AIPawn)!=None) 													// If a Stalker exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Stalker's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleNor * MoveSpeedScaleNor; 				// STALKER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleNor * DamageScaleNor; 					// STALKER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Stalker's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleHar * MoveSpeedScaleHar; 				// STALKER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleHar * DamageScaleHar; 					// STALKER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Stalker's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleSui * MoveSpeedScaleSui; 				// STALKER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleSui * DamageScaleSui; 					// STALKER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Stalker's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleHel * MoveSpeedScaleHel; 				// STALKER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleHel * DamageScaleHel; 					// STALKER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
			// IV - Slasher - 3
			
				if(KFPawn_ZedClot_Slasher(AIPawn)!=None) 												// If a Slasher exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Slasher's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleNor * MoveSpeedScaleNor; 				// SLASHER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleNor * DamageScaleNor; 					// SLASHER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Slasher's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleHar * MoveSpeedScaleHar; 				// SLASHER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleHar * DamageScaleHar; 					// SLASHER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Slasher's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleSui * MoveSpeedScaleSui; 				// SLASHER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleSui * DamageScaleSui; 					// SLASHER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Slasher's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleHel * MoveSpeedScaleHel; 				// SLASHER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleHel * DamageScaleHel; 					// SLASHER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
			// IV - Cyst - 4
			
				if(KFPawn_ZedClot_Cyst(AIPawn)!=None) 													// If a Cyst exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Cyst's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleNor * MoveSpeedScaleNor; 					// CYST NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleNor * DamageScaleNor; 						// CYST NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Cyst's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleHar * MoveSpeedScaleHar; 					// CYST HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleHar * DamageScaleHar; 						// CYST HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Cyst's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleSui * MoveSpeedScaleSui; 					// CYST SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleSui * DamageScaleSui; 						// CYST SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Cyst's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleHel * MoveSpeedScaleHel; 					// CYST HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleHel * DamageScaleHel; 						// CYST HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
			// IV - Clot - 5
			
				if(KFPawn_ZedClot_Alpha(AIPawn)!=None) 													// If a Clot exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Clot's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleNor * MoveSpeedScaleNor; 					// CLOT NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleNor * DamageScaleNor; 						// CLOT NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Clot's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleHar * MoveSpeedScaleHar; 					// CLOT HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleHar * DamageScaleHar; 						// CLOT HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Clot's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleSui * MoveSpeedScaleSui; 					// CLOT SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleSui * DamageScaleSui; 						// CLOT SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Clot's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleHel * MoveSpeedScaleHel; 					// CLOT HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleHel *=DamageScaleHel; 						// CLOT HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
			// IV - Crawler - 6 
			
				if(KFPawn_ZedCrawler(AIPawn)!=None) 													// If a Crawler exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )														// If the difficulty is Normal, use the Crawler's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleNor * MoveSpeedScaleNor; 					// CRAWLER NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleNor * DamageScaleNor; 						// CRAWLER NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )													// If the difficulty is Hard, use the Crawler's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleHar * MoveSpeedScaleHar; 					// CRAWLER HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleHar * DamageScaleHar; 						// CRAWLER HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )													// If the difficulty is Suicidal, use the Crawler's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleSui * MoveSpeedScaleSui; 					// CRAWLER SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleSui * DamageScaleSui; 						// CRAWLER SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																										// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Crawler's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleHel * MoveSpeedScaleHel; 					// CRAWLER HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleHel * DamageScaleHel; 						// CRAWLER HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}
			
			
			// IV - Abomination Spawn - 7 - Damage variables are useless
			
				if(KFPawn_ZedBloatKingSubspawn(AIPawn)!=None) 											// If an Abomination Spawn exists, apply the appopriate following scales to it.
				{
					if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Abomination Spawn's damage and movement scales for Normal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleNor * MoveSpeedScaleNor; 			// ABOMINATION SPAWN NORMAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleNor * DamageScaleNor; 				// ABOMINATION SPAWN NORMAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Abomination Spawn's damage and movement scales for Hard.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleHar * MoveSpeedScaleHar; 			// ABOMINATION SPAWN HARD MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleHar * DamageScaleHar; 				// ABOMINATION SPAWN HARD DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Abomination Spawn's damage and movement scales for Suicidal.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleSui * MoveSpeedScaleSui; 			// ABOMINATION SPAWN SUICIDAL MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale 
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleSui * DamageScaleSui; 				// ABOMINATION SPAWN SUICIDAL DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
					else																									// If none of the above damage scales meet the requirement to be called, the difficulty is obviously Hell on Earth so use the Abomination Spawn's damage and movement scales for Hell on Earth.
					{
						KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleHel * MoveSpeedScaleHel; 			// ABOMINATION SPAWN HELL ON EARTH MOVE SPEED SCALING - Individual move speed scale multiplied by blanket move speed scale  
						KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleHel * DamageScaleHel; 				// ABOMINATION SPAWN HELL ON EARTH DAMAGE SCALING - Individual move speed scale multiplied by blanket move speed scale
					}
				}	
	}
	
// END OF DAMAGE AND MOVEMENT SCALING SECTION
	
	
	
	defaultproperties
	{
		TrueSoloHealingSyringe=class'TrueSolo.TrueSoloHealingSyringe' 							// Assigns class path for my syringe set in the TrueSoloHealingSyringeDef file's "default properties" section
	}

	


