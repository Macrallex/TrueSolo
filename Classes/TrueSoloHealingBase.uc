class TrueSoloHealingBase extends KFWeap_HealerBase 
		config(TrueSolo); // The class enables the configuration of base healing and base syringe recharge time in KFTrueSolo.ini. See file location commented in TrueSoloMutator.
		

// I - SYRINGE VARIABLES

	// II - TOGGLING BOOLEANS
	
		var config bool UseUniversalSyringe;
		var config bool ScaleSyringeHealByPlayers;
		var config bool ScaleSyringeRechargeByPlayers;
		var config bool UseDefaultSyringe;
		
	// II - PLACEHOLDER VARIABLES - Meant to be overwritten only
	
		// III - BASE AMOUNT TO YOURSELF AND OTHERS
		
			var config float TrueSoloHealAmount;
			var config float TrueSoloOthersHealAmount;
		
		
		// III - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS
			
			var config float TrueSoloRecharge;
			var config float TrueSoloOthersRecharge;
		
	
	
	// II - CONVENIENCE VARIABLES
	
		// III - BLANKET SCALES
		
			// IV - BASE HEALING AND RECHARGE 
			
				// V - BASE AMOUNT TO YOURSELF AND OTHERS
				
					var config float SyringeHealScaleNor;
					var config float SyringeHealScaleHar;
					var config float SyringeHealScaleSui;
					var config float SyringeHealScaleHel;
				
				
				// V - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS
				
					var config float SyringeRechargeScaleNor;
					var config float SyringeRechargeScaleHar;
					var config float SyringeRechargeScaleSui;
					var config float SyringeRechargeScaleHel;
				
				

		// III - PLAYERCOUNT SCALES
		
			// IV - ONE PLAYER
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelOneP;
					var config float SyringeRechargeScaleHelOneP;
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiOneP;
					var config float SyringeRechargeScaleSuiOneP;
					
					
				// V - HARD
				
					var config float SyringeHealScaleHarOneP;
					var config float SyringeRechargeScaleHarOneP;
					
					
				// V - NORMAL
				
					var config float SyringeHealScaleNorOneP;
					var config float SyringeRechargeScaleNorOneP;
					
				

			// IV - TWO PLAYERS
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelTwoP;
					var config float SyringeRechargeScaleHelTwoP;
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiTwoP;
					var config float SyringeRechargeScaleSuiTwoP;
					
					
				// V - HARD
				
					var config float SyringeHealScaleHarTwoP;
					var config float SyringeRechargeScaleHarTwoP;
					
					
				// V - NORMAL
				
					var config float SyringeHealScaleNorTwoP;
					var config float SyringeRechargeScaleNorTwoP;
				
				
				
			// IV - THREE PLAYERS
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelThreeP;
					var config float SyringeRechargeScaleHelThreeP;
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiThreeP;
					var config float SyringeRechargeScaleSuiThreeP;
					
					
				// V - HARD
				
					var config float SyringeHealScaleHarThreeP;
					var config float SyringeRechargeScaleHarThreeP;
					
					
				// V - NORMAL
				
					var config float SyringeHealScaleNorThreeP;
					var config float SyringeRechargeScaleNorThreeP;
				
				
				
			// IV - FOUR PLAYERS
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelFourP;
					var config float SyringeRechargeScaleHelFourP;
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiFourP;
					var config float SyringeRechargeScaleSuiFourP;
					
					
				// V - HARD
				
					var config float SyringeHealScaleHarFourP;
					var config float SyringeRechargeScaleHarFourP;
					
					
				// V - NORMAL
				
					var config float SyringeHealScaleNorFourP;
					var config float SyringeRechargeScaleNorFourP;
					
					
				
			// IV - FIVE PLAYERS
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelFiveP;
					var config float SyringeRechargeScaleHelFiveP;
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiFiveP;
					var config float SyringeRechargeScaleSuiFiveP;
					
					
				// V - HARD
				
					var config float SyringeHealScaleHarFiveP;
					var config float SyringeRechargeScaleHarFiveP;
					
					
				// V - NORMAL
				
					var config float SyringeHealScaleNorFiveP;
					var config float SyringeRechargeScaleNorFiveP;
					
					
					
			// IV - SIX OR MORE PLAYERS
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelSixPlusP;
					var config float SyringeRechargeScaleHelSixPlusP;
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiSixPlusP;
					var config float SyringeRechargeScaleSuiSixPlusP;
					
					
				// V - HARD
				
					var config float SyringeHealScaleHarSixPlusP;
					var config float SyringeRechargeScaleHarSixPlusP;
					
					
				// V - NORMAL
				
					var config float SyringeHealScaleNorSixPlusP;
					var config float SyringeRechargeScaleNorSixPlusP;
			
		
		
		// III - DEFAULT SCALES
		
			// IV - BLANKETS 
			
				// V - HELL ON EARTH
				
					var config float SyringeHealScaleHelDef;
					var config float SyringeRechargeScaleHelDef;	
				
				
				// V - SUICIDAL
				
					var config float SyringeHealScaleSuiDef;
					var config float SyringeRechargeScaleSuiDef;	
						
				
				// V - HARD
				
					var config float SyringeHealScaleHarDef;	
					var config float SyringeRechargeScaleHarDef;
					
				
				// V - NORMAL
					
					var config float SyringeHealScaleNorDef;	
					var config float SyringeRechargeScaleNorDef;
					
			
			
			// IV - DIFFICULTY-SPECIFIC 
			
				// V - HEALING FOR YOURSELF AND OTHERS
						
					// VI - HELL ON EARTH SYRINGE
					
					var config float SyringeHealAmountHelDef;    					// Hell on Earth base healing amount
					var config float SyringeOthersHealAmountHelDef;					// Hell on Earth base healing amount when healing others
						
						
					// VI - SUICIDAL SYRINGE
					
					var config float SyringeHealAmountSuiDef;    					// Suicidal base healing amount
					var config float SyringeOthersHealAmountSuiDef;					// Suicidal base healing amount when healing others
						
						
					// VI - HARD SYRINGE
					
					var config float SyringeHealAmountHarDef;    					// Hard base healing amount
					var config float SyringeOthersHealAmountHarDef;					// Hard base healing amount when healing others
						
						
					// VI - NORMAL SYRINGE
					
					var config float SyringeHealAmountNorDef;    					// Normal base healing amount
					var config float SyringeOthersHealAmountNorDef;					// Normal base healing amount when healing others
								
						
						
				// V - RECHARGE AFTER HEALING YOURSELF AND OTHERS
						
					// VI - HELL ON EARTH SYRINGE
					
					var config float SyringeRechargeHelDef;    						// Hell on Earth base healing amount
					var config float SyringeOthersRechargeHelDef;					// Hell on Earth base healing amount when healing others
						
						
					// VI - SUICIDAL SYRINGE
					
					var config float SyringeRechargeSuiDef;    						// Suicidal base healing amount
					var config float SyringeOthersRechargeSuiDef;					// Suicidal base healing amount when healing others
						
						
					// VI - HARD SYRINGE
					
					var config float SyringeRechargeHarDef;    						// Hard base healing amount
					var config float SyringeOthersRechargeHarDef;					// Hard base healing amount when healing others
						
						
					// VI - NORMAL SYRINGE
					
					var config float SyringeRechargeNorDef;    						// Normal base healing amount
					var config float SyringeOthersRechargeNorDef;					// Normal base healing amount when healing others
			
			
			
		// III - UNIVERSAL SCALES
		
			// IV - BLANKETS
			
				var config float SyringeHealScaleUni;
				var config float SyringeRechargeScaleUni;
				
				
			// IV - HEALING FOR YOURSELF AND OTHERS
			
				var config float SyringeHealAmountUni;
				var config float SyringeOthersHealAmountUni;
			
			
			// IV - RECHARGE AFTER HEALING YOURSELF AND OTHERS
			
				var config float SyringeRechargeUni;
				var config float SyringeOthersRechargeUni;
		
			
			
	// II - DIFFICULTY-SPECIFIC DECLARATION
		
		// III - HEALING FOR YOURSELF AND OTHERS
		
			// IV - HELL ON EARTH SYRINGE
			
				var config float SyringeHealAmountHel;    				// Hell on Earth base healing amount
				var config float SyringeOthersHealAmountHel;			// Hell on Earth base healing amount when healing others
				
				
			// IV - SUICIDAL SYRINGE
			
				var config float SyringeHealAmountSui;    				// Suicidal base healing amount
				var config float SyringeOthersHealAmountSui;			// Suicidal base healing amount when healing others
				
				
			// IV - HARD SYRINGE
			
				var config float SyringeHealAmountHar;    				// Hard base healing amount
				var config float SyringeOthersHealAmountHar;			// Hard base healing amount when healing others
				
				
			// IV - NORMAL SYRINGE
			
				var config float SyringeHealAmountNor;    				// Normal base healing amount
				var config float SyringeOthersHealAmountNor;			// Normal base healing amount when healing others
				
			
			
		// III - RECHARGE AFTER HEALING YOURSELF AND OTHERS
		
			// IV - HELL ON EARTH SYRINGE
		
				var config float SyringeRechargeHel;    				// Hell on Earth base healing amount
				var config float SyringeOthersRechargeHel;				// Hell on Earth base healing amount when healing others
				
				
			// IV - SUICIDAL SYRINGE
			
				var config float SyringeRechargeSui;    				// Suicidal base healing amount
				var config float SyringeOthersRechargeSui;				// Suicidal base healing amount when healing others
				
				
			// IV - HARD SYRINGE
			
				var config float SyringeRechargeHar;    				// Hard base healing amount
				var config float SyringeOthersRechargeHar;				// Hard base healing amount when healing others
				
				
			// IV - NORMAL SYRINGE
			
				var config float SyringeRechargeNor;    				// Normal base healing amount
				var config float SyringeOthersRechargeNor;				// Normal base healing amount when healing others



// I - SYRINGE FUNCTIONALITY

	simulated function CustomFire() // Redeclared parent function to replace variables
	{
		local float HealAmount;
		
		
	// II - VARIABLE REPLACEMENT CHECK - Check booleans and replace variables appropriately
	
		// III - UNIVERSAL REPLACEMENT
		
			if(UseUniversalSyringe == true)
			{
			
			
			// IV - CONTRADICTING BOOLEAN OVERRIDES
			
				if(ScaleSyringeHealByPlayers == true)
				{
					ScaleSyringeHealByPlayers = false;
				}
				
				if(ScaleSyringeRechargeByPlayers == true)
				{
					ScaleSyringeRechargeByPlayers = false;
				}
				
				if(UseDefaultSyringe == true)
				{
					UseDefaultSyringe = false;
				}
				
			
			
			// IV - BLANKETS
			
				// V - BASE AMOUNT TO YOURSELF AND OTHERS
				
					SyringeHealScaleNor = SyringeHealScaleUni;
					SyringeHealScaleHar = SyringeHealScaleUni;
					SyringeHealScaleSui = SyringeHealScaleUni;
					SyringeHealScaleHel = SyringeHealScaleUni;
				
				
				// V - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS
				
					SyringeRechargeScaleNor = SyringeRechargeScaleUni;
					SyringeRechargeScaleHar = SyringeRechargeScaleUni;
					SyringeRechargeScaleSui = SyringeRechargeScaleUni;
					SyringeRechargeScaleHel = SyringeRechargeScaleUni;
			
			
			// IV - BY DIFFICULTY
			
				// V - HEALING FOR YOURSELF AND OTHERS
				
					// VI - HELL ON EARTH SYRINGE
					
						SyringeHealAmountHel = SyringeHealAmountUni;    				// Hell on Earth base heal amount for yourself
						SyringeOthersHealAmountHel = SyringeOthersHealAmountUni;		// Hell on Earth base heal amount for others
						                                                                
						                                                                
					// VI - SUICIDAL SYRINGE                                            
					                                                                    
						SyringeHealAmountSui = SyringeHealAmountUni;    				// Suicidal base heal amount for yourself
						SyringeOthersHealAmountSui = SyringeOthersHealAmountUni;		// Suicidal base heal amount for others
						                                                                
						                                                                
					// VI - HARD SYRINGE                                                
					                                                                    
						SyringeHealAmountHar = SyringeHealAmountUni;  					// Hard base heal amount for yourself
						SyringeOthersHealAmountHar = SyringeOthersHealAmountUni;		// Hard base heal amount for others
						                                                                
						                                                                
					// VI - NORMAL SYRINGE                                              
					
						SyringeHealAmountNor = SyringeHealAmountUni;    				// Normal base heal amount for yourself
						SyringeOthersHealAmountNor = SyringeOthersHealAmountUni;		// Normal base heal amount for others
						
					
					
				// V - RECHARGE AFTER HEALING YOURSELF AND OTHERS
				
					// VI - HELL ON EARTH SYRINGE
					
						SyringeRechargeHel = SyringeRechargeUni;     				// Hell on Earth recharge after healing yourself
						SyringeOthersRechargeHel = SyringeOthersRechargeUni;		// Hell on Earth after healing others
						
					// VI - SUICIDAL SYRINGE
					
						SyringeRechargeSui = SyringeRechargeUni;    				// Suicidal recharge after healing yourself
						SyringeOthersRechargeSui = SyringeOthersRechargeUni;		// Suicidal recharge after healing others
						
					// VI - HARD SYRINGE
					
						SyringeRechargeHar = SyringeRechargeUni;   					// Hard recharge after healing yourself
						SyringeOthersRechargeHar = SyringeOthersRechargeUni;		// Hard recharge after healing others
						
					// VI - NORMAL SYRINGE
					
						SyringeRechargeNor = SyringeRechargeUni;     				// Normal recharge after healing yourself
						SyringeOthersRechargeNor = SyringeOthersRechargeUni;		// Normal recharge after healing others
			}
		
		
		
		// III - PLAYER SCALED HEALING REPLACEMENT
		
			// IV - HEALING AMOUNT BLANKETS
			
				if(ScaleSyringeHealByPlayers == true)
				{
					if(WorldInfo.Game.NumPlayers == 1)
					{
						SyringeHealScaleNor = SyringeHealScaleNorOneP;
						SyringeHealScaleHar = SyringeHealScaleHarOneP;
						SyringeHealScaleSui = SyringeHealScaleSuiOneP;
						SyringeHealScaleHel = SyringeHealScaleHelOneP;
					}
					else if(WorldInfo.Game.NumPlayers == 2)
					{
						SyringeHealScaleNor = SyringeHealScaleNorTwoP;
						SyringeHealScaleHar = SyringeHealScaleHarTwoP;
						SyringeHealScaleSui = SyringeHealScaleSuiTwoP;
						SyringeHealScaleHel = SyringeHealScaleHelTwoP;
					}
					else if(WorldInfo.Game.NumPlayers == 3)
					{
						SyringeHealScaleNor = SyringeHealScaleNorThreeP;
						SyringeHealScaleHar = SyringeHealScaleHarThreeP;
						SyringeHealScaleSui = SyringeHealScaleSuiThreeP;
						SyringeHealScaleHel = SyringeHealScaleHelThreeP;
					}
					else if(WorldInfo.Game.NumPlayers == 4)
					{
						SyringeHealScaleNor = SyringeHealScaleNorFourP;
						SyringeHealScaleHar = SyringeHealScaleHarFourP;
						SyringeHealScaleSui = SyringeHealScaleSuiFourP;
						SyringeHealScaleHel = SyringeHealScaleHelFourP;
					}
					else if(WorldInfo.Game.NumPlayers == 5)
					{
						SyringeHealScaleNor = SyringeHealScaleNorFiveP;
						SyringeHealScaleHar = SyringeHealScaleHarFiveP;
						SyringeHealScaleSui = SyringeHealScaleSuiFiveP;
						SyringeHealScaleHel = SyringeHealScaleHelFiveP;
					}
					else if(WorldInfo.Game.NumPlayers >= 6)
					{
						SyringeHealScaleNor = SyringeHealScaleNorSixPlusP;
						SyringeHealScaleHar = SyringeHealScaleHarSixPlusP;
						SyringeHealScaleSui = SyringeHealScaleSuiSixPlusP;
						SyringeHealScaleHel = SyringeHealScaleHelSixPlusP;
					}
				}
		
		
		
			// IV - HEALING RECHARGE BLANKETS
			
				if(ScaleSyringeRechargeByPlayers == true)
				{
					if(WorldInfo.Game.NumPlayers == 1)
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorOneP;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarOneP;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiOneP;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelOneP;
					}
					else if(WorldInfo.Game.NumPlayers == 2)
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorTwoP;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarTwoP;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiTwoP;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelTwoP;
					}
					else if(WorldInfo.Game.NumPlayers == 3)
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorThreeP;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarThreeP;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiThreeP;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelThreeP;
					}
					else if(WorldInfo.Game.NumPlayers == 4)
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorFourP;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarFourP;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiFourP;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelFourP;
					}
					else if(WorldInfo.Game.NumPlayers == 5)
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorFiveP;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarFiveP;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiFiveP;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelFiveP;
					}
					else if(WorldInfo.Game.NumPlayers >= 6)
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorSixPlusP;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarSixPlusP;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiSixPlusP;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelSixPlusP;
					}
				}
		
		
		
		// III - DEFAULT REPLACEMENT
		
			if(UseDefaultSyringe == true)
			{
			
			// IV - CONTRADICTORY BOOLEAN OVERRIDE
			
				if(ScaleSyringeHealByPlayers == true)
				{
					ScaleSyringeHealByPlayers = false;
				}
			
				if(ScaleSyringeRechargeByPlayers == true)
				{
					ScaleSyringeRechargeByPlayers = false;
				}
			
			
			// IV - VARIABLE REPLACEMENT
			
				// V - BLANKETS
			
					// VI - BASE AMOUNT TO YOURSELF AND OTHERS
					
						SyringeHealScaleNor = SyringeHealScaleNorDef;
						SyringeHealScaleHar = SyringeHealScaleHarDef;
						SyringeHealScaleSui = SyringeHealScaleSuiDef;
						SyringeHealScaleHel = SyringeHealScaleHelDef;
					
					
					// VI - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS
					
						SyringeRechargeScaleNor = SyringeRechargeScaleNorDef;
						SyringeRechargeScaleHar = SyringeRechargeScaleHarDef;
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiDef;
						SyringeRechargeScaleHel = SyringeRechargeScaleHelDef;
			
			
			
				// V - BY DIFFICULTY
				
					// VI - HEALING FOR YOURSELF AND OTHERS
					
						// VII - HELL ON EARTH SYRINGE
						
							SyringeHealAmountHel = SyringeHealAmountHelDef;    				// Hell on Earth base healing amount
							SyringeOthersHealAmountHel = SyringeOthersHealAmountHelDef;		// Hell on Earth base healing amount when healing others
							
						// VII - SUICIDAL SYRINGE
						
							SyringeHealAmountSui = SyringeHealAmountSuiDef;    				// Hell on Earth base healing amount
							SyringeOthersHealAmountSui = SyringeOthersHealAmountSuiDef;		// Hell on Earth base healing amount when healing others
							
						// VII - HARD SYRINGE
						
							SyringeHealAmountHar = SyringeHealAmountHarDef;  				// Hell on Earth base healing amount
							SyringeOthersHealAmountHar = SyringeOthersHealAmountHarDef;		// Hell on Earth base healing amount when healing others
							
						// VII - NORMAL SYRINGE
						
							SyringeHealAmountNor = SyringeHealAmountNorDef;    				// Hell on Earth base healing amount
							SyringeOthersHealAmountNor = SyringeOthersHealAmountNorDef;		// Hell on Earth base healing amount when healing others
							
						
					// VI - RECHARGE AFTER HEALING YOURSELF AND OTHERS
					
						// VII - HELL ON EARTH SYRINGE
						
							SyringeRechargeHel = SyringeHealAmountHelDef;     				// Hell on Earth base healing amount
							SyringeOthersRechargeHel = SyringeOthersHealAmountHelDef;		// Hell on Earth base healing amount when healing others
							
						// VII - SUICIDAL SYRINGE
						
							SyringeRechargeSui = SyringeHealAmountSuiDef;    				// Hell on Earth base healing amount
							SyringeOthersRechargeSui = SyringeOthersHealAmountSuiDef;		// Hell on Earth base healing amount when healing others
							
						// VII - HARD SYRINGE
					
							SyringeRechargeHar = SyringeHealAmountHarDef;   				// Hell on Earth base healing amount
							SyringeOthersRechargeHar = SyringeOthersHealAmountHarDef;		// Hell on Earth base healing amount when healing others
							
						// VII - NORMAL SYRINGE
						
							SyringeRechargeNor = SyringeHealAmountNorDef;     				// Hell on Earth base healing amount
							SyringeOthersRechargeNor = SyringeOthersHealAmountNorDef;		// Hell on Earth base healing amount when healing others
			}
			
			
			
			// IV - DIFFICULTY REPLACMENT
			
				// V - HEALING YOURSELF
				
					if(WorldInfo.Game.GetModifiedGameDifficulty() == 0)
					{
						TrueSoloHealAmount = SyringeHealAmountNor * SyringeHealScaleNor;
						TrueSoloRecharge = SyringeRechargeNor * SyringeRechargeScaleNor;
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 1)
					{
						TrueSoloHealAmount = SyringeHealAmountHar * SyringeHealScaleHar;
						TrueSoloRecharge = SyringeRechargeHar * SyringeRechargeScaleHar;
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 2)
					{
						TrueSoloHealAmount = SyringeHealAmountSui * SyringeHealScaleSui;
						TrueSoloRecharge = SyringeRechargeSui * SyringeRechargeScaleSui;
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 3)
					{
						TrueSoloHealAmount = SyringeHealAmountHel * SyringeHealScaleHel;
						TrueSoloRecharge = SyringeRechargeHel * SyringeRechargeScaleHel;
					}
					
			
				// V - HEALING OTHERS
				
					if(WorldInfo.Game.GetModifiedGameDifficulty() == 0)
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountNor * SyringeHealScaleNor;
						TrueSoloOthersRecharge = SyringeOthersRechargeNor * SyringeRechargeScaleNor;
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 1)
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountHar * SyringeHealScaleHar;
						TrueSoloOthersRecharge = SyringeOthersRechargeHar * SyringeRechargeScaleHar;
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 2)
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountSui * SyringeHealScaleSui;
						TrueSoloOthersRecharge = SyringeOthersRechargeSui * SyringeRechargeScaleSui;
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 3)
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountHel * SyringeHealScaleHel;
						TrueSoloOthersRecharge = SyringeOthersRechargeHel * SyringeRechargeScaleHel;
					}



	// II - APPLYING PLACEHOLDER VARIABLES
	
		if( Role == ROLE_Authority )
		{
				if( CurrentFireMode == DEFAULT_FIREMODE )
				{
					HealAmount = TrueSoloOthersHealAmount;															 
					HealTarget.HealDamage( HealAmount, Instigator.Controller, InstantHitDamageTypes[CurrentFireMode]);
					HealRechargeTime = TrueSoloOthersRecharge;
				}
				else if( CurrentFireMode == ALTFIRE_FIREMODE )
				{
					
					HealAmount = TrueSoloHealAmount; 																	// Replaced "StandAloneHealAmount" for solo with my own variable
					Instigator.HealDamage(HealAmount, Instigator.Controller, InstantHitDamageTypes[CurrentFireMode]);
					HealRechargeTime = TrueSoloRecharge; 																// Replaced "HealSelfRechargeSeconds" with my own own variable
				}
		}
		
		SaveConfig();
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

