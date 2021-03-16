class TrueSoloHealingBase extends KFWeap_HealerBase 
		config(TrueSolo); // The class enables the configuration of base healing and base syringe recharge time in KFTrueSolo.ini. See file location commented in TrueSoloMutator's guide.
		
		
		
// I - GUIDE TO THE FILE - A basic explanatory and navigational guide to this UC file. If you were looking for a more expansive guide over this mutator's source code as a whole, please look at the main mutator file instead.

	// II - WHAT IS THIS? - What is this guide and why is it here?
	
		// Although this file is pretty small in comparison to the INI and main mutator file, having a basic explanatory and navigational guide for it certainly helps for improving overall mutator usability, 
		// debugging, and understanding.
		
	
	// II - ORGANIZATIONAL SHCEME - What format do I use to organize things here?
	
		// III - CODE IS ORGANIZED ACCORDING TO ROMAN NUMERALS - See the link if you don't know what these are: https://www.unrv.com/culture/roman-numerals.php 
		
			// The overwhelming majority of my code across all files is separated into their own categories and subcategories. The relevance said categories have to each other can be deduced through indentation, numeral count, and 
			// category name followed by a brief explanation of said category. Subcategories with the same indentation and numeral count are part of the same category subject-wise. An empty category and the start of its 			 
			// subcategories are separated by one space. Two subcategories of the same category are separated by two spaces. If a different level subcategory follows another filled subcategory, then there is instead a three-space 
			// separation. If you are unsure of where you are in the file, pay attention to the category names and numeral counts to trace them back to their parent categories.
			
	
	// II - TABLE OF CONTENTS - Navigational aid to the contents of this file along with their summaries.

		// III - GUIDE TO THE FILE  	Lines 6 - 58
		
			// An explanatory guide to this file as a whole. Serves a variety of purposes both for users and developers, me included. Intended to improve the experience surrounding the understanding, usage, and debugging of the 
			// mutator.
			
			
		// III - SYRINGE VARIABLES		Lines 59 - 431
		
			// Where all the the variables that the Syringe can call values from depending on the user's desires are created and neatly organized. All of these values can be customized by the user in the INI that's downloaded with 
			// the mutator. I'd also like to note here about how blanket variables work for the Syringe specifically. Let's say you have these values in the INI within the Syringe's Primary Customization Section for Hell on Earth:
			// 
			//
			// Healing Amount for Yourself: 20.0
			// Healing Amount for Others: 30.0
			// 
			//
			// Let's say that you want to change both of these values for Hell on Earth but by the same amount proportionally, for example you want the Syringe's healing amount in general to be twice as much. You look for the 
			// Syringe's base healing blanket for Hell on Earth and assign to it "2.0". Now let's look at how that affects the two values above:
			//
			//
			// Healing Amount for Yourself: 40.0
			// Healing Amount for Others: 60.0
			//
			//
			// The Syringe now effectively heals twice the amount at base for yourself in addition to when healing others with one value change. This same process can be applied if users wish to modify the Syringe's base recharge 
			// time instead.
			
			
		// III - SYRINGE FUNCTIONALITY	Lines 433 - 799
		
			// The variables created in the previous section are logically assigned here to the Syringe according to the user's preferences. 
			//
			// At the end of the document is a paste of the "defaultproperties" section from the parent "KFWeap_HealerBase" UC file. The reason for this is because the Hemoclobber did not function properly without it.



// I - SYRINGE VARIABLES - Where all the Syringe's used variables are created to be assigned later.

	// II - TOGGLING BOOLEANS - These booleans control whether special value sets are put into play or not. 
	
		var config bool UseUniversalSyringe;				// Universal Syringe variable set toggle. 
		var config bool ScaleSyringeHealByPlayers;			// Syringe player scaling base healing amount variable set toggle.
		var config bool ScaleSyringeRechargeByPlayers;		// Syringe player scaling base recharge time variable set toggle.
		var config bool UseDefaultSyringe;					// Default Syringe variable set toggle.
		
		
	// II - PLACEHOLDER VARIABLES - Meant to be overwritten only. Included in the INI for debugging purposes although user edits to their values there shouldn't have any effect.
	
		// III - BASE AMOUNT TO YOURSELF AND OTHERS - Placeholder variables for base healing amount for yourself and when healing others.
		
			var config float TrueSoloHealAmount;			// The base healing amount when the Syringe is applied to yourself.
			var config float TrueSoloOthersHealAmount;		// The base healing amount when the Syringe is applied to others.
		
		
		// III - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS - Placeholder variables for base recharge time after healing yourself and after healing others.
			
			var config float TrueSoloRecharge;				// The base recharge time after the Syringe is applied to yourself.
			var config float TrueSoloOthersRecharge;		// The base recharge time after the Syringe is applied to others.
		
	
	
	// II - CONVENIENCE VARIABLES - The variables for the Default, Universal, Player Scaling Base Healing Amount, and Player Scaling Base Recharge Time toggleable special variable sets. The primary and active by default blanket 
								 // variables are included too.
	
		// III - BLANKET SCALES - These blanket variables apply a multiplier on both the variables responsible for the base healing amount and recharge time when applying the Syringe to yourself and others per difficulty.
		
			// IV - BASE HEALING AMOUNT TO YOURSELF AND OTHERS - Blanket variables for the general base healing amount for each difficulty.
			
				var config float SyringeHealScaleNor;			// The multiplier applied over both the values for the base healing amount when healing yourself and others on Normal.
				var config float SyringeHealScaleHar;			// The multiplier applied over both the values for the base healing amount when healing yourself and others on Hard.
				var config float SyringeHealScaleSui;			// The multiplier applied over both the values for the base healing amount when healing yourself and others on Suicidal.
				var config float SyringeHealScaleHel;			// The multiplier applied over both the values for the base healing amount when healing yourself and others on Hell on Earth.
			
			
			// IV - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS - Blanket variables for the general base recharge time for each difficulty.
				
				var config float SyringeRechargeScaleNor;		// The multiplier applied over both the values for the base recharge time after healing yourself and others on Normal.
				var config float SyringeRechargeScaleHar;       // The multiplier applied over both the values for the base recharge time after healing yourself and others on Hard.
				var config float SyringeRechargeScaleSui;       // The multiplier applied over both the values for the base recharge time after healing yourself and others on Suicidal.
				var config float SyringeRechargeScaleHel;       // The multiplier applied over both the values for the base recharge time after healing yourself and others on Hell on Earth.
				
				

		// III - PLAYER COUNT SCALES - The blanket variables to be logically used if the user wants one or both of the player scaling options for the Syringe in play.
		
			// IV - ONE PLAYER - The blanket variables to come in to play when the player count is one on a per-difficulty basis.
			
				// V - HELL ON EARTH - The one-player Syringe blanket variables for Hell on Earth.
				
					var config float SyringeHealScaleHelOneP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHelOneP;							// Base recharge time blanket
				
				
				// V - SUICIDAL - The one-player Syringe blanket variables for Suicidal.
				
					var config float SyringeHealScaleSuiOneP;								// Base healing amount blanket
					var config float SyringeRechargeScaleSuiOneP;       					// Base recharge time blanket
					
					
				// V - HARD - The one-player Syringe blanket variables for Hard.
				
					var config float SyringeHealScaleHarOneP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHarOneP;       					// Base recharge time blanket
					
					
				// V - NORMAL - The one-player Syringe blanket variables for Normal.
				
					var config float SyringeHealScaleNorOneP;								// Base healing amount blanket
					var config float SyringeRechargeScaleNorOneP;      	 					// Base recharge time blanket
					
				

			// IV - TWO PLAYERS - The blanket variables to come in to play when the player count is two on a per-difficulty basis.
			
				// V - HELL ON EARTH - The two-player Syringe blanket variables for Hell on Earth.
				
					var config float SyringeHealScaleHelTwoP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHelTwoP;       					// Base recharge time blanket
				
				
				// V - SUICIDAL - The two-player Syringe blanket variables for Suicidal.
				
					var config float SyringeHealScaleSuiTwoP;								// Base healing amount blanket
					var config float SyringeRechargeScaleSuiTwoP;       					// Base recharge time blanket
					
					
				// V - HARD - The two-player Syringe blanket variables for Hard.
				
					var config float SyringeHealScaleHarTwoP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHarTwoP;       					// Base recharge time blanket
					
					
				// V - NORMAL - The two-player Syringe blanket variables for Normal.
				
					var config float SyringeHealScaleNorTwoP;								// Base healing amount blanket
					var config float SyringeRechargeScaleNorTwoP;       					// Base recharge time blanket
				
				
				
			// IV - THREE PLAYERS - The blanket variables to come in to play when the player count is three on a per-difficulty basis.
			
				// V - HELL ON EARTH - The three-player Syringe blanket variables for Hell on Earth.
				
					var config float SyringeHealScaleHelThreeP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHelThreeP;     					// Base recharge time blanket
				
				
				// V - SUICIDAL - The three-player Syringe blanket variables for Suicidal.
				
					var config float SyringeHealScaleSuiThreeP;								// Base healing amount blanket
					var config float SyringeRechargeScaleSuiThreeP;     					// Base recharge time blanket
					
					
				// V - HARD - The three-player Syringe blanket variables for Hard.
				
					var config float SyringeHealScaleHarThreeP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHarThreeP;    	 					// Base recharge time blanket
					
					
				// V - NORMAL - The three-player Syringe blanket variables for Normal.
				
					var config float SyringeHealScaleNorThreeP;								// Base healing amount blanket
					var config float SyringeRechargeScaleNorThreeP;     					// Base recharge time blanket
				
				
				
			// IV - FOUR PLAYERS - The blanket variables to come in to play when the player count is four on a per-difficulty basis.
			
				// V - HELL ON EARTH - The four-player Syringe blanket variables for Hell on Earth.
				
					var config float SyringeHealScaleHelFourP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHelFourP;      					// Base recharge time blanket
				
				
				// V - SUICIDAL - The four-player Syringe blanket variables for Suicidal.
				
					var config float SyringeHealScaleSuiFourP;								// Base healing amount blanket
					var config float SyringeRechargeScaleSuiFourP;      					// Base recharge time blanket
					
					
				// V - HARD - The four-player Syringe blanket variables for Hard.
				
					var config float SyringeHealScaleHarFourP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHarFourP;     	 					// Base recharge time blanket
					
					
				// V - NORMAL - The four-player Syringe blanket variables for Normal.
				
					var config float SyringeHealScaleNorFourP;								// Base healing amount blanket
					var config float SyringeRechargeScaleNorFourP;     				 		// Base recharge time blanket
					
					
				
			// IV - FIVE PLAYERS - The blanket variables to come in to play when the player count is five on a per-difficulty basis.
			
				// V - HELL ON EARTH - The five-player Syringe blanket variables for Hell on Earth.
				
					var config float SyringeHealScaleHelFiveP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHelFiveP;      					// Base recharge time blanket
				
				
				// V - SUICIDAL - The five-player Syringe blanket variables for Suicidal.
				
					var config float SyringeHealScaleSuiFiveP;								// Base healing amount blanket
					var config float SyringeRechargeScaleSuiFiveP;      					// Base recharge time blanket
					
					
				// V - HARD - The five-player Syringe blanket variables for Hard.
				
					var config float SyringeHealScaleHarFiveP;								// Base healing amount blanket
					var config float SyringeRechargeScaleHarFiveP;      					// Base recharge time blanket
					
					
				// V - NORMAL - The five-player Syringe blanket variables for Normal.
				
					var config float SyringeHealScaleNorFiveP;								// Base healing amount blanket
					var config float SyringeRechargeScaleNorFiveP;      					// Base recharge time blanket
					
					
					
			// IV - SIX OR MORE PLAYERS - The blanket variables to come in to play when the player count is six or more on a per-difficulty basis.
			
				// V - HELL ON EARTH - The six-player or more Syringe blanket variables for Hell on Earth.
				
					var config float SyringeHealScaleHelSixPlusP;							// Base healing amount blanket
					var config float SyringeRechargeScaleHelSixPlusP;  					 	// Base recharge time blanket
				
				
				// V - SUICIDAL - The six-player or more Syringe blanket variables for Suicidal.
				
					var config float SyringeHealScaleSuiSixPlusP;							// Base healing amount blanket
					var config float SyringeRechargeScaleSuiSixPlusP;   					// Base recharge time blanket
					
					
				// V - HARD - The six-player or more Syringe blanket variables for Hard.
				
					var config float SyringeHealScaleHarSixPlusP;							// Base healing amount blanket
					var config float SyringeRechargeScaleHarSixPlusP;   					// Base recharge time blanket
					
					
				// V - NORMAL - The six-player or more Syringe blanket variables for Normal.
				
					var config float SyringeHealScaleNorSixPlusP;							// Base healing amount blanket
					var config float SyringeRechargeScaleNorSixPlusP;  						// Base recharge time blanket
			
		
		
		// III - DEFAULT SCALES - If the default variable set is toggled by the user, these variables will come into play taking priority over their customizations for as long as the variable set is toggled.
		
			// IV - BLANKETS, DEFAULT - The default blanket variables for the Syringe.
			
				// V - HELL ON EARTH - The blanket variables for the Syringe on Hell on Earth.
				
					var config float SyringeHealScaleHelDef;			// Base healing amount blanket
					var config float SyringeRechargeScaleHelDef;	    // Base recharge time blanket
				
				
				// V - SUICIDAL - The blanket variables for the Syringe on Suicidal.
				
					var config float SyringeHealScaleSuiDef;			// Base healing amount blanket
					var config float SyringeRechargeScaleSuiDef;	    // Base recharge time blanket
						
				
				// V - HARD - The blanket variables for the Syringe on Hard.
				
					var config float SyringeHealScaleHarDef;			// Base healing amount blanket
					var config float SyringeRechargeScaleHarDef;        // Base recharge time blanket
					
				
				// V - NORMAL - The blanket variables for the Syringe on Normal.
					
					var config float SyringeHealScaleNorDef;			// Base healing amount blanket
					var config float SyringeRechargeScaleNorDef;        // Base recharge time blanket
					
			
			
			// IV - INDIVIDUAL HEALING VARIABLES, DEFAULT - The default individual scales for base healing amount and recharge time when applying the Syringe to yourself and others. Per-difficulty.
			
				// V - HEALING FOR YOURSELF AND OTHERS, DEFAULT - The default base healing amount for when using the Syringe on yourself and others.
						
					// VI - HELL ON EARTH SYRINGE - The Syringe's base healing amount on Hell on Earth.
					
					var config float SyringeHealAmountHelDef;    					// Hell on Earth base healing amount
					var config float SyringeOthersHealAmountHelDef;					// Hell on Earth base healing amount when healing others
						
						
					// VI - SUICIDAL SYRINGE - The Syringe's base healing amount on Suicidal.
					
					var config float SyringeHealAmountSuiDef;    					// Suicidal base healing amount
					var config float SyringeOthersHealAmountSuiDef;					// Suicidal base healing amount when healing others
						
						
					// VI - HARD SYRINGE - The Syringe's base healing amount on Hard.
					
					var config float SyringeHealAmountHarDef;    					// Hard base healing amount
					var config float SyringeOthersHealAmountHarDef;					// Hard base healing amount when healing others
						
						
					// VI - NORMAL SYRINGE - The Syringe's base healing amount on Normal.
					
					var config float SyringeHealAmountNorDef;    					// Normal base healing amount
					var config float SyringeOthersHealAmountNorDef;					// Normal base healing amount when healing others
								
						
						
				// V - RECHARGE AFTER HEALING YOURSELF AND OTHERS, DEFAULT - The default base recharge time after using the Syringe on yourself and others.
						
					// VI - HELL ON EARTH SYRINGE - The Syringe's base recharge time on Hell on Earth.
					
					var config float SyringeRechargeHelDef;    						// Hell on Earth base recharge time
					var config float SyringeOthersRechargeHelDef;					// Hell on Earth base recharge time when healing others
						
						
					// VI - SUICIDAL SYRINGE - The Syringe's base recharge time on Suicidal.
					
					var config float SyringeRechargeSuiDef;    						// Suicidal base recharge time
					var config float SyringeOthersRechargeSuiDef;					// Suicidal base recharge time when healing others
						
						
					// VI - HARD SYRINGE - The Syringe's base recharge time on Hard.
					
					var config float SyringeRechargeHarDef;    						// Hard base recharge time
					var config float SyringeOthersRechargeHarDef;					// Hard base recharge time when healing others
						
						
					// VI - NORMAL SYRINGE - The Syringe's base recharge time on Normal.
					
					var config float SyringeRechargeNorDef;    						// Normal base recharge time
					var config float SyringeOthersRechargeNorDef;					// Normal base recharge time when healing others
			
			
			
		// III - UNIVERSAL SCALES - Should the user decide to enable the Universal special variable set, these blanket variables for the Syringe will be in play regardless of difficulty or player count.
		
			// IV - BLANKETS, UNIVERSAL - The universal blanket variables for the Syringe's general base healing and recharge time. Multiplied over the individual universal Syringe variables further below.
			
				var config float SyringeHealScaleUni;			// The universal blanket variables for the Syringe's base healing amount in general.
				var config float SyringeRechargeScaleUni;		// The universal blanket variables for the Syringe's base recharge time in general.
				
				
			// IV - HEALING FOR YOURSELF AND OTHERS, UNIVERSAL - The universal variables for the Syringe's base healing amount when healing yourself and others.
			
				var config float SyringeHealAmountUni;			// The universal base healing amount for the Syringe when healing yourself.
				var config float SyringeOthersHealAmountUni;	// The universal base healing amount for the Syringe when healing others.
			
			
			// IV - RECHARGE AFTER HEALING YOURSELF AND OTHERS, UNIVERSAL - The universal variables for the Syringe's base recharge time after healing yourself and others.
			
				var config float SyringeRechargeUni;			// The universal base recharge time for the Syringe when healing yourself.
				var config float SyringeOthersRechargeUni;      // The universal base recharge time for the Syringe when healing others.
		
			
			
	// II - INDIVIDUAL HEALING VARIABLES, PRIMARY - The primary and active by default variables for the Syringe. Note that these are distinct from the "Default" special variable set!
		
		// III - HEALING FOR YOURSELF AND OTHERS, PRIMARY - The primary and active by default variables for the base healing amount when applying the Syringe to yourself and others.
		
			// IV - HELL ON EARTH SYRINGE - The Syringe's base healing amounts on Hell on Earth.
			
				var config float SyringeHealAmountHel;    				// Hell on Earth base healing amount
				var config float SyringeOthersHealAmountHel;			// Hell on Earth base healing amount when healing others
				
				
			// IV - SUICIDAL SYRINGE - The Syringe's base healing amounts on Suicidal.
			
				var config float SyringeHealAmountSui;    				// Suicidal base healing amount
				var config float SyringeOthersHealAmountSui;			// Suicidal base healing amount when healing others
				
				
			// IV - HARD SYRINGE - The Syringe's base healing amounts on Hard.
			
				var config float SyringeHealAmountHar;    				// Hard base healing amount
				var config float SyringeOthersHealAmountHar;			// Hard base healing amount when healing others
				
				
			// IV - NORMAL SYRINGE - The Syringe's base healing amounts on Normal.
			
				var config float SyringeHealAmountNor;    				// Normal base healing amount
				var config float SyringeOthersHealAmountNor;			// Normal base healing amount when healing others
				
			
			
		// III - RECHARGE AFTER HEALING YOURSELF AND OTHERS, PRIMARY - The primary and active by default variables for the base recharge time when applying the Syringe to yourself and others.
		
			// IV - HELL ON EARTH SYRINGE - The Syringe's base recharge times on Hell on Earth.
		
				var config float SyringeRechargeHel;    				// Hell on Earth base healing amount
				var config float SyringeOthersRechargeHel;				// Hell on Earth base healing amount when healing others
				
				
			// IV - SUICIDAL SYRINGE - The Syringe's base recharge times on Suicidal.
			
				var config float SyringeRechargeSui;    				// Suicidal base healing amount
				var config float SyringeOthersRechargeSui;				// Suicidal base healing amount when healing others
				
				
			// IV - HARD SYRINGE - The Syringe's base recharge times on Hard.
			
				var config float SyringeRechargeHar;    				// Hard base healing amount
				var config float SyringeOthersRechargeHar;				// Hard base healing amount when healing others
				
				
			// IV - NORMAL SYRINGE - The Syringe's base recharge times on Normal.
			
				var config float SyringeRechargeNor;    				// Normal base healing amount
				var config float SyringeOthersRechargeNor;				// Normal base healing amount when healing others



// I - SYRINGE FUNCTIONALITY - Defining the logic paths for which the declared variables above are to come into play under.

	simulated function CustomFire() // Redeclared Syringe's usage parent function to replace its variables with my own.
	{
		local float HealAmount;
		
		
	// II - VARIABLE REPLACEMENT CHECK - Check what the user has the special value set booleans as and replace variables appropriately.
	
		// III - UNIVERSAL REPLACEMENT - Replace the placeholder healing variables with the universal set accordingly if the user has enabled it.
		
			if(UseUniversalSyringe == true)
			{
			
			
			// IV - CONTRADICTING BOOLEAN OVERRIDES - Override and disable contradictory value sets the user may have also enabled.
			
				if(ScaleSyringeHealByPlayers == true)
				{
					ScaleSyringeHealByPlayers = false;
				}											// If the user enabled scaling the Syringe's general base healing amount by player count, disable it.
				
				if(ScaleSyringeRechargeByPlayers == true)
				{
					ScaleSyringeRechargeByPlayers = false;
				}											// If the user enabled scaling the Syringe's general base recharge time by player count, disable it.
				
												
			// IV - BLANKETS, UNIVERSAL	- Replacing the primary blanket variables' values for the Syringe's general base healing and recharge time with their universal versions.
			
				// V - BASE AMOUNT TO YOURSELF AND OTHERS - Replacing the per-difficulty blanket variables for the Syringe's general base healing with the universal version.
				
					SyringeHealScaleNor = SyringeHealScaleUni;					// Assigning the value of the Syringe's Normal base healing blanket with the universal base healing blanket.
					SyringeHealScaleHar = SyringeHealScaleUni;					// Assigning the value of the Syringe's Hard base healing blanket with the universal base healing blanket.
					SyringeHealScaleSui = SyringeHealScaleUni;          		// Assigning the value of the Syringe's Suicidal base healing blanket with the universal base healing blanket.
					SyringeHealScaleHel = SyringeHealScaleUni;          		// Assigning the value of the Syringe's Hell on Earth base healing blanket with the universal base healing blanket.
				
				
				// V - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS - Replacing the per-difficulty blanket variables for the Syringe's general recharge time with the universal version.
				
					SyringeRechargeScaleNor = SyringeRechargeScaleUni;			// Assigning the value of the Syringe's Normal base recharge time blanket with the universal base recharge time blanket.
					SyringeRechargeScaleHar = SyringeRechargeScaleUni;			// Assigning the value of the Syringe's Hard base recharge time blanket with the universal base recharge time blanket.
					SyringeRechargeScaleSui = SyringeRechargeScaleUni;  		// Assigning the value of the Syringe's Suicidal base recharge time blanket with the universal base recharge time blanket.
					SyringeRechargeScaleHel = SyringeRechargeScaleUni;  		// Assigning the value of the Syringe's Hell on Earth base recharge time blanket with the universal base recharge time blanket.
			
			
			// IV - BY DIFFICULTY, UNIVERSAL - Replacing the Syringe's individual variables for base healing and recharge time per-difficulty with universal versions.
			
				// V - HEALING FOR YOURSELF AND OTHERS, UNIVERSAL - Replacing the variables for base healing towards yourself and others.
				
					// VI - HELL ON EARTH SYRINGE - The Syringe's base healing amounts on Hell on Earth.
					
						SyringeHealAmountHel = SyringeHealAmountUni;    				// Hell on Earth base heal amount for yourself
						SyringeOthersHealAmountHel = SyringeOthersHealAmountUni;		// Hell on Earth base heal amount for others
						                                                                
						                                                                
					// VI - SUICIDAL SYRINGE - The Syringe's base healing amounts on Suicidal.                                          
					                                                                    
						SyringeHealAmountSui = SyringeHealAmountUni;    				// Suicidal base heal amount for yourself
						SyringeOthersHealAmountSui = SyringeOthersHealAmountUni;		// Suicidal base heal amount for others
						                                                                
						                                                                
					// VI - HARD SYRINGE - The Syringe's base healing amounts on Hard.                                                
					                                                                    
						SyringeHealAmountHar = SyringeHealAmountUni;  					// Hard base heal amount for yourself
						SyringeOthersHealAmountHar = SyringeOthersHealAmountUni;		// Hard base heal amount for others
						                                                                
						                                                                
					// VI - NORMAL SYRINGE - The Syringe's base healing amounts on Normal.                                              
					
						SyringeHealAmountNor = SyringeHealAmountUni;    				// Normal base heal amount for yourself
						SyringeOthersHealAmountNor = SyringeOthersHealAmountUni;		// Normal base heal amount for others
						
					
					
				// V - RECHARGE AFTER HEALING YOURSELF AND OTHERS, UNIVERSAL - Replacing the variables for base recharge time after healing yourself and others.
				
					// VI - HELL ON EARTH SYRINGE - The Syringe's base recharge times on Hell on Earth.	
					
						SyringeRechargeHel = SyringeRechargeUni;     					// Hell on Earth recharge after healing yourself
						SyringeOthersRechargeHel = SyringeOthersRechargeUni;			// Hell on Earth recharge after healing others
						
					// VI - SUICIDAL SYRINGE - The Syringe's base recharge times on Suicidal.	
					
						SyringeRechargeSui = SyringeRechargeUni;    					// Suicidal recharge after healing yourself
						SyringeOthersRechargeSui = SyringeOthersRechargeUni;			// Suicidal recharge after healing others
						
					// VI - HARD SYRINGE - The Syringe's base recharge times on Hard.
					
						SyringeRechargeHar = SyringeRechargeUni;   						// Hard recharge after healing yourself
						SyringeOthersRechargeHar = SyringeOthersRechargeUni;			// Hard recharge after healing others
						
					// VI - NORMAL SYRINGE - The Syringe's base recharge times on Normal.
					
						SyringeRechargeNor = SyringeRechargeUni;     					// Normal recharge after healing yourself
						SyringeOthersRechargeNor = SyringeOthersRechargeUni;			// Normal recharge after healing others
			}
		
		
		
		// III - PLAYER SCALED HEALING REPLACEMENT - Replacing the appropriate general base healing and recharge time blankets with their player-scaled versions depending on whether one of or both player scaling sets for the 
												  // Syringe were enabled.
		
			// IV - HEALING AMOUNT BLANKETS, PLAYER SCALING - Replacing the general base healing amount blankets with their player scaled versions if desired by the user.
			
				if(ScaleSyringeHealByPlayers == true)	// If the user has toggled scaling the Syringe's general base healing amount by player count, then proceed with the following logic.
				{
					if(WorldInfo.Game.NumPlayers == 1)				// ONE PLAYERS
					{
						SyringeHealScaleNor = SyringeHealScaleNorOneP;				// Replace the general base healing amount blanket on Normal with the one-player Normal version.
						SyringeHealScaleHar = SyringeHealScaleHarOneP;				// Replace the general base healing amount blanket on Hard with the one-player Hard version.
						SyringeHealScaleSui = SyringeHealScaleSuiOneP;				// Replace the general base healing amount blanket on Suicidal with the one-player Suicidal version.
						SyringeHealScaleHel = SyringeHealScaleHelOneP;      		// Replace the general base healing amount blanket on Hell on Earth with the one-player Hell on Earth version.
					}		
					else if(WorldInfo.Game.NumPlayers == 2)			// TWO PLAYERS
					{		
						SyringeHealScaleNor = SyringeHealScaleNorTwoP;				// Replace the general base healing amount blanket on Normal with the two-player Normal version.
						SyringeHealScaleHar = SyringeHealScaleHarTwoP;      		// Replace the general base healing amount blanket on Hard with the two-player Hard version.
						SyringeHealScaleSui = SyringeHealScaleSuiTwoP;      		// Replace the general base healing amount blanket on Suicidal with the two-player Suicidal version.
						SyringeHealScaleHel = SyringeHealScaleHelTwoP;      		// Replace the general base healing amount blanket on Hell on Earth with the two-player Hell on Earth version.
					}		
					else if(WorldInfo.Game.NumPlayers == 3)			// THREE PLAYERS
					{		
						SyringeHealScaleNor = SyringeHealScaleNorThreeP;			// Replace the general base healing amount blanket on Normal with the three-player Normal version.
						SyringeHealScaleHar = SyringeHealScaleHarThreeP;    		// Replace the general base healing amount blanket on Hard with the three-player Hard version.
						SyringeHealScaleSui = SyringeHealScaleSuiThreeP;    		// Replace the general base healing amount blanket on Suicidal with the three-player Suicidal version.
						SyringeHealScaleHel = SyringeHealScaleHelThreeP;    		// Replace the general base healing amount blanket on Hell on Earth with the three-player Hell on Earth version.
					}		
					else if(WorldInfo.Game.NumPlayers == 4)			// FOUR PLAYERS
					{		
						SyringeHealScaleNor = SyringeHealScaleNorFourP;				// Replace the general base healing amount blanket on Normal with the four-player Normal version.
						SyringeHealScaleHar = SyringeHealScaleHarFourP;     		// Replace the general base healing amount blanket on Hard with the four-player Hard version.
						SyringeHealScaleSui = SyringeHealScaleSuiFourP;     		// Replace the general base healing amount blanket on Suicidal with the four-player Suicidal version.
						SyringeHealScaleHel = SyringeHealScaleHelFourP;     		// Replace the general base healing amount blanket on Hell on Earth with the four-player Hell on Earth version.
					}		
					else if(WorldInfo.Game.NumPlayers == 5)			// FIVE PLAYERS
					{		
						SyringeHealScaleNor = SyringeHealScaleNorFiveP;				// Replace the general base healing amount blanket on Normal with the five-player Normal version.
						SyringeHealScaleHar = SyringeHealScaleHarFiveP;     		// Replace the general base healing amount blanket on Hard with the five-player Hard version.
						SyringeHealScaleSui = SyringeHealScaleSuiFiveP;     		// Replace the general base healing amount blanket on Suicidal with the five-player Suicidal version.
						SyringeHealScaleHel = SyringeHealScaleHelFiveP;     		// Replace the general base healing amount blanket on Hell on Earth with the five-player Hell on Earth version.
					}		
					else if(WorldInfo.Game.NumPlayers >= 6)			// SIX PLAYERS OR MORE
					{		
						SyringeHealScaleNor = SyringeHealScaleNorSixPlusP;			// Replace the general base healing amount blanket on Normal with the six-player or more Normal version.
						SyringeHealScaleHar = SyringeHealScaleHarSixPlusP;  		// Replace the general base healing amount blanket on Hard with the six-player or more Hard version.
						SyringeHealScaleSui = SyringeHealScaleSuiSixPlusP;  		// Replace the general base healing amount blanket on Suicidal with six-player or more Suicidal version.
						SyringeHealScaleHel = SyringeHealScaleHelSixPlusP;  		// Replace the general base healing amount blanket on Hell on Earth with the six-player or more Hell on Earth version.
					}
				}
		
		
		
			// IV - HEALING RECHARGE BLANKETS - Replacing the general base recharge time blankets with their player scaled versions if desired by the user.
			
				if(ScaleSyringeRechargeByPlayers == true)	// If the user has toggled scaling the Syringe's general base recharge time by player count, then proceed with the following logic.
				{
					if(WorldInfo.Game.NumPlayers == 1)				// ONE PLAYER
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorOneP;		// Replace the general base recharge time blanket on Normal with the one-player Normal version.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarOneP;      // Replace the general base recharge time blanket on Hard with the one-player Hard version.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiOneP;      // Replace the general base recharge time blanket on Suicidal with the one-player Suicidal version.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelOneP;      // Replace the general base recharge time blanket on Hell on Earth with the one-player Hell on Earth version.
					}
					else if(WorldInfo.Game.NumPlayers == 2)			// TWO PLAYERS
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorTwoP;		// Replace the general base recharge time blanket on Normal with the two-player Normal version.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarTwoP;      // Replace the general base recharge time blanket on Hard with the two-player Hard version.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiTwoP;      // Replace the general base recharge time blanket on Suicidal with the two-player Suicidal version.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelTwoP;      // Replace the general base recharge time blanket on Hell on Earth with the two-player Hell on Earth version.
					}
					else if(WorldInfo.Game.NumPlayers == 3)			// THREE PLAYERS
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorThreeP;	// Replace the general base recharge time blanket on Normal with the three-player Normal version.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarThreeP;    // Replace the general base recharge time blanket on Hard with the three-player Hard version.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiThreeP;    // Replace the general base recharge time blanket on Suicidal with the three-player Suicidal version.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelThreeP;    // Replace the general base recharge time blanket on Hell on Earth with the three-player Hell on Earth version.
					}
					else if(WorldInfo.Game.NumPlayers == 4)			// FOUR PLAYERS
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorFourP;		// Replace the general base recharge time blanket on Normal with the four-player Normal version.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarFourP;     // Replace the general base recharge time blanket on Hard with the four-player Hard version.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiFourP;     // Replace the general base recharge time blanket on Suicidal with the four-player Suicidal version.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelFourP;     // Replace the general base recharge time blanket on Hell on Earth with the four-player Hell on Earth version.
					}
					else if(WorldInfo.Game.NumPlayers == 5)			// FIVE PLAYERS
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorFiveP;		// Replace the general base recharge time blanket on Normal with the five-player Normal version.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarFiveP;     // Replace the general base recharge time blanket on Hard with the five-player Hard version.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiFiveP;     // Replace the general base recharge time blanket on Suicidal with the five-player Suicidal version.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelFiveP;     // Replace the general base recharge time blanket on Hell on Earth with the five-player Hell on Earth version.
					}
					else if(WorldInfo.Game.NumPlayers >= 6)			// SIX PLAYERS OR MORE
					{
						SyringeRechargeScaleNor = SyringeRechargeScaleNorSixPlusP;	// Replace the general base recharge time blanket on Normal with the six-player or more Normal version.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarSixPlusP;  // Replace the general base recharge time blanket on Hard with the six-player or more Hard version.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiSixPlusP;  // Replace the general base recharge time blanket on Suicidal with the six-player or more Suicidal version.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelSixPlusP;  // Replace the general base recharge time blanket on Hell on Earth with the six-player or more Hell on Earth version.
					}
				}
		
		
		
		// III - DEFAULT REPLACEMENT - Replacing the appropriate Syringe variables for base healing and base recharge time if the user has toggled the Default variable set.
		
			if(UseDefaultSyringe == true)	// If the user has toggled the Default variable set, proceed with the following logic.
			{
			
			// IV - CONTRADICTORY BOOLEAN OVERRIDE - Override conflicting special variable sets that are toggled along with the Default variable set.
			
				if(ScaleSyringeHealByPlayers == true)
				{
					ScaleSyringeHealByPlayers = false;
				}											// If the user has enabled scaling Syringe general base healing amount blankets by player count, forcibly disable it.
			
				if(ScaleSyringeRechargeByPlayers == true)
				{
					ScaleSyringeRechargeByPlayers = false;
				}											// If the user has enabled scaling Syringe general base recharge time blankets by player count, forcibly disable it.
				
				if(UseUniversalSyringe == true)
				{
					UseUniversalSyringe = false;
				}											// If the user has enabled the Universal variable set, forcibly disable it.
				
			
			// IV - VARIABLE REPLACEMENT, DEFAULT - Replacing the appropriate Syringe variables with their default versions.
			
				// V - BLANKETS, DEFAULT - Replacing the Syringe's blanket variables with their default versions.
			
					// VI - BASE HEALING AMOUNT FOR YOURSELF AND OTHERS - Replacing the variables for the Syringe's base healing amount.
					
						SyringeHealScaleNor = SyringeHealScaleNorDef;				// Assigning the value of the Syringe's Normal base healing blanket with the default base healing blanket.
						SyringeHealScaleHar = SyringeHealScaleHarDef;       		// Assigning the value of the Syringe's Hard base healing blanket with the default base healing blanket.
						SyringeHealScaleSui = SyringeHealScaleSuiDef;       		// Assigning the value of the Syringe's Suicidal base healing blanket with the default base healing blanket.
						SyringeHealScaleHel = SyringeHealScaleHelDef;       		// Assigning the value of the Syringe's Hell on Earth base healing blanket with the default base healing blanket.
					
					
					// VI - BASE RECHARGE TIME AFTER HEALING YOURSELF AND OTHERS - Replacing the variables for the Syringe's base recharge time.
					
						SyringeRechargeScaleNor = SyringeRechargeScaleNorDef;		// Assigning the value of the Syringe's Normal base recharge blanket with the default base recharge blanket.
						SyringeRechargeScaleHar = SyringeRechargeScaleHarDef;	    // Assigning the value of the Syringe's Hard base recharge blanket with the default base recharge blanket.
						SyringeRechargeScaleSui = SyringeRechargeScaleSuiDef;       // Assigning the value of the Syringe's Suicidal base recharge blanket with the default base recharge blanket.
						SyringeRechargeScaleHel = SyringeRechargeScaleHelDef;       // Assigning the value of the Syringe's Hell on Earth base recharge blanket with the default base recharge blanket.
			
			
			
				// V - INDIVIDUAL SCALES BY DIFFICULTY, DEFAULT - Replacing the Syringe's difficulty-specific individual base healing and recharge time scales with their default versions.
				
					// VI - HEALING FOR YOURSELF AND OTHERS, DEFAULT - Replacing the Syringe's base healing amount scales with their default versions.
					
						// VII - HELL ON EARTH SYRINGE - The Syringe's base healing amount on Hell on Earth.
						
							SyringeHealAmountHel = SyringeHealAmountHelDef;    				// Hell on Earth base healing amount
							SyringeOthersHealAmountHel = SyringeOthersHealAmountHelDef;		// Hell on Earth base healing amount when healing others
							
						// VII - SUICIDAL SYRINGE - The Syringe's base healing amount on Suicidal.
						
							SyringeHealAmountSui = SyringeHealAmountSuiDef;    				// Suicidal base healing amount
							SyringeOthersHealAmountSui = SyringeOthersHealAmountSuiDef;		// Suicidal base healing amount when healing others
							
						// VII - HARD SYRINGE - The Syringe's base healing amount on Hard.
						
							SyringeHealAmountHar = SyringeHealAmountHarDef;  				// Hard base healing amount
							SyringeOthersHealAmountHar = SyringeOthersHealAmountHarDef;		// Hard base healing amount when healing others
							
						// VII - NORMAL SYRINGE - The Syringe's base healing amount on Normal.
						
							SyringeHealAmountNor = SyringeHealAmountNorDef;    				// Normal base healing amount
							SyringeOthersHealAmountNor = SyringeOthersHealAmountNorDef;		// Normal base healing amount when healing others
							
						
					// VI - RECHARGE AFTER HEALING YOURSELF AND OTHERS, DEFAULT - Replacing the Syringe's base recharge time scales with their default versions.
					
						// VII - HELL ON EARTH SYRINGE - The Syringe's base recharge time on Hell on Earth.
						
							SyringeRechargeHel = SyringeRechargeHelDef;     				// Hell on Earth base recharge time
							SyringeOthersRechargeHel = SyringeOthersRechargeHelDef;			// Hell on Earth base recharge time when healing others
							
						// VII - SUICIDAL SYRINGE - The Syringe's base recharge time on Suicidal.
						
							SyringeRechargeSui = SyringeRechargeSuiDef;    					// Suicidal base recharge time
							SyringeOthersRechargeSui = SyringeOthersRechargeSuiDef;			// Suicidal base recharge time when healing others
							
						// VII - HARD SYRINGE - The Syringe's base recharge time on Hard.
					
							SyringeRechargeHar = SyringeRechargeHarDef;   					// Hard base base recharge time
							SyringeOthersRechargeHar = SyringeOthersRechargeHarDef;			// Hard base base recharge time when healing others
							
						// VII - NORMAL SYRINGE - The Syringe's base recharge time on Normal.
						
							SyringeRechargeNor = SyringeRechargeNorDef;     				// Normal base recharge time
							SyringeOthersRechargeNor = SyringeOthersRechargeNorDef;			// Normal base recharge time when healing others
			}
			
			
			
			// IV - PRIMARY DIFFICULTY REPLACMENT - The placeholder variables here are written by the primary, active by default variables for the Syringe. It's the latter set of variables that is overwritten by applicable special value sets.
			
				// V - HEALING YOURSELF, PRIMARY - Assigning the primary, active by default variables for base healing towards oneself according to difficulty.
				
					if(WorldInfo.Game.GetModifiedGameDifficulty() == 0)			// NORMAL
					{
						TrueSoloHealAmount = SyringeHealAmountNor * SyringeHealScaleNor;	// Individual base healing amount towards oneself multiplied by general base healing blanket for the difficulty.
						TrueSoloRecharge = SyringeRechargeNor * SyringeRechargeScaleNor;	// Individual base recharge time after healing oneself multiplied by general base recharge blanket for the difficulty.
					}																			
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 1)	// HARD
					{
						TrueSoloHealAmount = SyringeHealAmountHar * SyringeHealScaleHar;	// Individual base healing amount towards oneself multiplied by general base healing blanket for the difficulty.
						TrueSoloRecharge = SyringeRechargeHar * SyringeRechargeScaleHar;    // Individual base recharge time after healing oneself multiplied by general base recharge blanket for the difficulty.
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 2)	// SUICIDAL
					{
						TrueSoloHealAmount = SyringeHealAmountSui * SyringeHealScaleSui;	// Individual base healing amount towards oneself multiplied by general base healing blanket for the difficulty.
						TrueSoloRecharge = SyringeRechargeSui * SyringeRechargeScaleSui;    // Individual base recharge time after healing oneself multiplied by general base recharge blanket for the difficulty.
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 3)	// HELL ON EARTH
					{
						TrueSoloHealAmount = SyringeHealAmountHel * SyringeHealScaleHel;	// Individual base healing amount towards oneself multiplied by general base healing blanket for the difficulty.
						TrueSoloRecharge = SyringeRechargeHel * SyringeRechargeScaleHel;    // Individual base recharge time after healing oneself multiplied by general base recharge blanket for the difficulty.
					}
					
			
				// V - HEALING OTHERS, PRIMARY - Assigning the primary, active by default variables for base healing towards others according to difficulty.
				
					if(WorldInfo.Game.GetModifiedGameDifficulty() == 0)			// NORMAL
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountNor * SyringeHealScaleNor;	// Individual base healing amount towards others multiplied by general base healing blanket for the difficulty.
						TrueSoloOthersRecharge = SyringeOthersRechargeNor * SyringeRechargeScaleNor;    // Individual base recharge time after healing others multiplied by general base recharge blanket for the difficulty.
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 1)	// HARD
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountHar * SyringeHealScaleHar;	// Individual base healing amount towards others multiplied by general base healing blanket for the difficulty.
						TrueSoloOthersRecharge = SyringeOthersRechargeHar * SyringeRechargeScaleHar;    // Individual base recharge time after healing others multiplied by general base recharge blanket for the difficulty.
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 2)	// SUICIDAL
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountSui * SyringeHealScaleSui;	// Individual base healing amount towards others multiplied by general base healing blanket for the difficulty.
						TrueSoloOthersRecharge = SyringeOthersRechargeSui * SyringeRechargeScaleSui;    // Individual base recharge time after healing others multiplied by general base recharge blanket for the difficulty.
					}
					else if(WorldInfo.Game.GetModifiedGameDifficulty() == 3)	// HELL ON EARTH
					{
						TrueSoloOthersHealAmount = SyringeOthersHealAmountHel * SyringeHealScaleHel;	// Individual base healing amount towards others multiplied by general base healing blanket for the difficulty.
						TrueSoloOthersRecharge = SyringeOthersRechargeHel * SyringeRechargeScaleHel;    // Individual base recharge time after healing others multiplied by general base recharge blanket for the difficulty.
					}



	// II - APPLYING PLACEHOLDER VARIABLES - Although the logic for replacing the placeholder Syringe variables is now already laid out, applying the placeholder variables to the Syringe still must be done.
	
		if( Role == ROLE_Authority )		// Redefining an if statement from the extended parent class, replacing the original variables for healing and recharge time with my own.
		{
				if( CurrentFireMode == DEFAULT_FIREMODE )	// If you are healing someone else, apply the primary variables I declared and go through the logic outlined for them to decide if they are to be replaced further 
				{											// with special variable sets.
					HealAmount = TrueSoloOthersHealAmount;															 
					HealTarget.HealDamage( HealAmount, Instigator.Controller, InstantHitDamageTypes[CurrentFireMode]);
					HealRechargeTime = TrueSoloOthersRecharge;
				}
				else if( CurrentFireMode == ALTFIRE_FIREMODE )	// If you are healing yourself, apply the primary variables I declared and go through the logic outlined for them to decide if they are to be replaced further 
				{												// with special variable sets.
					
					HealAmount = TrueSoloHealAmount; 																	// Replaced "StandAloneHealAmount" for solo with my own variable
					Instigator.HealDamage(HealAmount, Instigator.Controller, InstantHitDamageTypes[CurrentFireMode]);
					HealRechargeTime = TrueSoloRecharge; 																// Replaced "HealSelfRechargeSeconds" with my own own variable
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

