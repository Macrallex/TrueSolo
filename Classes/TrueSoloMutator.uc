class TrueSoloMutator extends KFMutator 
		config(TrueSolo); // This is the mutator's main class file.  The "//"s in the file signify comments I left throughout for explanatory purposes primarily to assist other developers, although they can
						  // also be utilized by users to have an easier time customizing the INI through understanding better what's happening behind the scenes. Furthermore, these comments will also ease issue identification
						  // and resolution by providing more understandable explanations of relevant code.
						   


// I - GUIDE TO THE CODE - A relatively brief guide that hopefully helps you make sense of my source code in general.
	
	// II - WHAT IS THIS? - What is this guide and why is here?
	
		// Going from not touching code in my life to making this mutator was painful and it was other developers' public source code that prevented my learning process from being absolutely excruciating. I'd like to
		// try and make some other developer's life easier like mine was through reading my source code so I've taken special care to leave an abundant presence of comments throughout to help make sense of things in addition to this little guide.  
		// Despite the line count and file size of this mutator, it actually doesn't touch on as much in the game as you might think. It only modifies and lets users further modify Zed damage, Zed movement speed, Syringe base recharge, and Syringe base 
		// healing. As a result, my source code isn't going to guide you very much for other topics like weapon modification, skin creation, custom 3D models, etc., but what you read and analyze here can very well be a 
		// decent stepping stone to learning to practice the more advanced stuff. This guide is a TL:DR of the source code in general and the comments located through this file to assist in using the mutator via the INI after understanding the inner
		// workings better and also being able to more easily navigate yourself through it all.
			
			
	// II - ORGANIZATION SCHEME - What format do I organize things?
		
		// III - CODE IS ORGANIZED ACCORDING TO ROMAN NUMERALS - See the link if you don't know what these are: https://www.unrv.com/culture/roman-numerals.php 
		
			// The overwhelming majority of my code across all files is separated into their own categories and subcategories. The relevance said categories have to each other can be deduced through indentation, numeral count, and 
			// category name followed by a brief explanation of said category. Subcategories with the same indentation and numeral count are part of the same category subject-wise. An empty category and the start of its 			 
			// subcategories are separated by one space. Two subcategories of the same category are separated by two spaces. If a different level subcategory follows another filled subcategory, then there is instead a three-space 
			// separation.
			

		
	// II - THE SOURCE FILES - A list of the mutator's more useful uncompiled files and their explanations. You can find these files directly here: https://github.com/Macrallex/TrueSolo. Please suffix file URLs with "?ts=4" 
							// to view the code with the proper, intended indentation.
	
		// III - MAIN FOLDER - Labelled "True Solo". This is the main folder of the mutator and holds every part of it within its sub-folders. "TrueSolo.TrueSoloMutator" is what the game recognizes the mutator by via console.
		
			// When the KF2 UDK is downloaded you will have access to the game's source code. The vanilla files I reference below can be found there in KF2's development folder within steamapps.
		
		
		
			// IV - CLASS FOLDER - The "Class" folder. Stores and identifies to the game my custom extended child classes. The meat of the mutator and where the important stuff happens. 
			
				// V - TrueSoloMutator.uc - The main mutator file extending off the vanilla "KFMutator.uc". A necessary part of all mutators. 
				
					// The largest in file size, this is file is where customizable scales for Zed movement and damage are defined and logically assigned. My customizable Syringe, comprised of the mutator's other 3 classes, is 
					// also called to replace the vanilla Syringe here.
			
				
				// V - TrueSoloHealingBase.uc - The file extends off the vanilla "KFWeap_HealerBase.uc". It is where I create the healing behavior for my custom Syringe.
				
					// The third largest in file size, this file is where customizable scales for my custom Syringe are defined and logically assigned in overwriting vanilla Syringe behavior.  
				
				
				// V - TrueSoloHealingDef.uc - This file, a near total copy and paste of "KFWeapDef_Healer.uc", extends off the vanilla "KFWeaponDefinition.uc". Here, I define the class path and icon for my custom Syringe.
				
					// The smallest in file size, albeit still very important. It's sole purposes are to define the class path for the main mutator file to check when "TrueSoloHealingSyringe" is called to replace the 
					// vanilla Syringe and assign my custom Syringe an icon.
				
				
				// V - TrueSoloHealingSyringe.uc - This file, a near total copy and paste of the vanilla "KFWeap_Healer_Syringe.uc", extends off my custom "TrueSoloHealingBase.uc". It's where the visible Syringe created.
				
					// The second smallest in file size. From what I can tell, this file handles all the 3D stuff related to the Syringe. Past that, I don't precisely understand any of it and have for the most part left it as is.
			
			
			
			// IV - CONFIG FOLDER - The "Config" folder. Stores and identifies to the game my custom INI. The game pulls values from it to assign my variables according to the logic I've defined here.
			
				// V - TrueSolo.ini - This file doesn't extend off of anything, it's its own thing. This file holds values for TrueSoloMutator.uc and TrueSoloHealingBase.uc to pull when the mutator is ran.
			
					// The second largest in file size, this file is what allows users to easily customize the mutator, by the given parameters, to their liking without making an entirely new mutator because that's just silly.
					// Here you can find the default values I assigned for the various value sets for Zed damage, Zed movement speed, Syringe base recharge, and Syringe base healing. User personalization can take place once the
					// mutator is downloaded and the customization instructions on the workshop page are followed.
					
					
			
			// IV - LOCALIZATION FOLDER - The "Localization" folder. Stores and identifies to the game my localization file. 
	
				// V - INT FOLDER - Tells the game to put the file within into KF2's INT localization folder. The INT folder seems to represent English localization.
	
					// VI - TrueSolo.int - Much like the INI, this file is its own thing. Holds basic non-essential information for the mutator to pull from.
					
						// Assigns a name in English and quick select category for my custom Syringe.
						
						
						
	// II - TABLE OF CONTENTS - A basic location guide to the contents of this file by all tier I categories. I recommend using Notepad++ for this to make sense although other code editing programs are available.
	
		// III - GUIDE TO THE CODE - Lines 8 to 119
		
			// Part of what you are reading right now. An explanatory guide that hopefully assists navigating my source code.
			
			
		// III - VARIABLE DECLARATIONS - Lines 126 to 1172
			
			// All of this file's variables are declared here and neatly separated into various subcategories. If you desire to see how these variables are used or want to change their name, CTRL-F them to see every instance.
			// The vast majority of these variables are what're called Config variables. Every "config" variable can be tailored in KFTrueSolo.ini to your personal tastes. 
			// Just go to Program Files (x86) > Steam > steamapps > workshop > content > 232090 > 2263399756 > Config. Know that INI assignments and variable names here must match.  
			
			
		// III - MAKE SURE THE MUTATOR IS RUNNING OR SOMETHING - Lines 1180 to 1212
		
			// A small but crucial section. These functions ensure the mutator is properly loaded before performing its functions.
		
		
		// III - REPLACING THE SYRINGE - Lines 1213 to 1256
	
			// Another minor but very important section. Replaces the vanilla Syringe with the custom, more customizable one I created with the other 3 UC files.
		

		// III - ZED DAMAGE AND MOVEMENT SPEED, SPECIAL VALUE SETS - Lines 1257 to 2298

			// Declared variables for Zed damage and movement are appropriately sorted into three special value sets, each toggleable and customizable to the user in the INI:  
			//
			// 1. Scaling Zed damage blankets by player count
			// 2. Scaling Zed movement speed blankets by player count
			// 2. A universal value set that is active regardless of difficulty or player count
			// 3. A default value set that allows enabling and disabling the mutator's default settings while preserving user customization.
			//
			// The logical parameters I lay here within KF2's parent "ModifyAI" function I called are evaluated first before the appropriate scales are actually assigned to the Zeds in the next section. 
			// If you're wondering what exactly "blankets" are, they're multipliers that are logically applied over the individual scales of every Zed for a certain difficulty and/or player count depending on the customization
			// choices the user made. Say you want to multiply every Zed's damage on Normal by 1.34x. You can do that via the blankets and similar changes can also be made to Zed movement speed. Make blanket changes to Zeds with 
			// minimal effort! This concept is explained more in the INI.
			
		
		// III - ZED SCALE ASSIGNMENTS - Line 2299 to 2983

			// After the logical parameters in the previous section have been evaluated based off what was read in the INI, the appropriate scales are Zeds' damage and movement speed are assigned here.
			// At the end of the document is a single entry in "defaultproperties" to assign a class path for my Syringe.
			

// I - VARIABLE DECLARATIONS - Creating variable names and their types for usage

	// II - SYRINGE 
	
		var private const class<KFWeapon> TrueSoloHealingSyringe; 			// Creates a variable name for my solo syringe to be used in replacing the original syringe.
	
	
	// II - CONVENIENCE VARIABLES - These variables make customization easier by allowing sweeping scale changes with minimal INI tweaking.
	
		// III - BLANKET SCALING VARIABLES - These variables affect either the movement speed or damage for every Zed over a chosen difficulty.
										  
			// IV - BLANKET ZED DAMAGE SCALING VARIABLES - Scales that are multiplied over all of the Zed damage scales for the selected difficulty. Useful for easily making blanket changes with one value change. 
		
				var config float DamageScaleUni;                	      	// UNIVERSAL 		BLANKET 	ZED DAMAGE SCALE
				var config float DamageScaleHel;                	     	// HELL ON EARTH	BLANKET 	ZED DAMAGE SCALE
				var config float DamageScaleSui;					  		// SUICDAL 			BLANKET 	ZED DAMAGE SCALE
				var config float DamageScaleHar;					  		// HARD 			BLANKET 	ZED DAMAGE SCALE
				var config float DamageScaleNor;					  		// NORMAL 			BLANKET 	ZED DAMAGE SCALE
				
				
				
				// V - PLAYER COUNT CUSTOMISATION VARIABLES - If users toggle player scaling for damage, damage blankets over a particular difficulty will equal these depending on player count
				
					// VI - BOOLEAN TO ALLOW BLANKET ZED DAMAGE SCALING BY PLAYER COUNT - Decides by true/false whether the mutator is allowed to scale Zed damage blankets by player count.
					
						var config bool ScaleDamageBlanketsByPlayerCount; 	// Boolean that determines whether Zed damage blanket scales should scale according to player count or not.
				
				
					// VI - 1 PLAYER - The damage of every Zed across the chosen difficulty will by multiplied by this much when one player is present.
					
						var config float DamageScaleHelOneP; 				// HELL ON EARTH 	BLANKET 	ZED DAMAGE SCALE 	FOR ONE PLAYER
						var config float DamageScaleSuiOneP;				// SUICIDAL 		BLANKET 	ZED DAMAGE SCALE 	FOR ONE PLAYER
						var config float DamageScaleHarOneP; 				// HARD 			BLANKET	 	ZED DAMAGE SCALE 	FOR ONE PLAYER
						var config float DamageScaleNorOneP; 				// NORMAL 			BLANKET 	ZED DAMAGE SCALE 	FOR ONE PLAYER
						
					
					// VI - 2 PLAYERS - The damage of every Zed across the chosen difficulty will by multiplied by this much when two players are present.
					
						var config float DamageScaleHelTwoP; 				// HELL ON EARTH 	BLANKET 	ZED DAMAGE SCALE 	FOR TWO PLAYERS
						var config float DamageScaleSuiTwoP;				// SUICIDAL			BLANKET 	ZED DAMAGE SCALE 	FOR TWO PLAYERS
						var config float DamageScaleHarTwoP; 				// HARD 			BLANKET 	ZED DAMAGE SCALE 	FOR TWO PLAYERS
						var config float DamageScaleNorTwoP; 				// NORMAL 			BLANKET 	ZED DAMAGE SCALE 	FOR TWO PLAYERS
					
					
					// VI - 3 PLAYERS - The damage of every Zed across the chosen difficulty will by multiplied by this much when three players are present.
					
						var config float DamageScaleHelThreeP; 				// HELL ON EARTH 	BLANKET 	ZED DAMAGE SCALE 	FOR THREE PLAYERS
						var config float DamageScaleSuiThreeP;				// SUICIDAL 		BLANKET 	ZED DAMAGE SCALE 	FOR THREE PLAYERS
						var config float DamageScaleHarThreeP; 				// HARD 			BLANKET 	ZED DAMAGE SCALE 	FOR THREE PLAYERS
						var config float DamageScaleNorThreeP; 				// NORMAL 			BLANKET 	ZED DAMAGE SCALE 	FOR THREE PLAYERS
					
					
					// VI - 4 PLAYERS - The damage of every Zed across the chosen difficulty will by multiplied by this much when four players are present.
					
						var config float DamageScaleHelFourP; 				// HELL ON EARTH 	BLANKET 	ZED DAMAGE SCALE 	FOR FOUR PLAYERS
						var config float DamageScaleSuiFourP;				// SUICIDAL 		BLANKET 	ZED DAMAGE SCALE 	FOR FOUR PLAYERS
						var config float DamageScaleHarFourP; 				// HARD 			BLANKET 	ZED DAMAGE SCALE 	FOR FOUR PLAYERS
						var config float DamageScaleNorFourP; 				// NORMAL 			BLANKET 	ZED DAMAGE SCALE 	FOR FOUR PLAYERS
					
					
					// VI - 5 PLAYERS - The damage of every Zed across the chosen difficulty will by multiplied by this much when five players are present.
					
						var config float DamageScaleHelFiveP; 				// HELL ON EARTH 	BLANKET 	ZED DAMAGE SCALE 	FOR FIVE PLAYERS
						var config float DamageScaleSuiFiveP;				// SUICIDAL 		BLANKET 	ZED DAMAGE SCALE	FOR FIVE PLAYERS
						var config float DamageScaleHarFiveP; 				// HARD 			BLANKET 	ZED DAMAGE SCALE 	FOR FIVE PLAYERS
						var config float DamageScaleNorFiveP; 				// NORMAL 			BLANKET 	ZED DAMAGE SCALE 	FOR FIVE PLAYERS
					
					
					// VI - 6 PLAYERS AND UP - The damage of every Zed across the chosen difficulty will by multiplied by this much when six or more players are present.
					
						var config float DamageScaleHelSixPlusP; 			// HELL ON EARTH 	BLANKET 	ZED DAMAGE SCALE 	FOR SIX OR MORE PLAYERS
						var config float DamageScaleSuiSixPlusP;			// SUICIDAL 		BLANKET 	ZED DAMAGE SCALE 	FOR SIX OR MORE PLAYERS
						var config float DamageScaleHarSixPlusP; 			// HARD 			BLANKET 	ZED DAMAGE SCALE 	FOR SIX OR MORE PLAYERS
						var config float DamageScaleNorSixPlusP; 			// NORMAL 			BLANKET 	ZED DAMAGE SCALE 	FOR SIX OR MORE PLAYERS
					
				
				
			// IV - BLANKET ZED MOVESPEED SCALING VARIABLES - Scales that are multiplied over all of the Zed move speed scales for the selected difficulty. Useful for easily making blanket changes with one value change. 
			
				var config float MoveSpeedScaleUni;                    	    // UNIVERSAL 		BLANKET 	ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleHel;							// HELL ON EARTH	BLANKET 	ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleSui;							// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleHar;							// HARD 			BLANKET 	ZED MOVE SPEED SCALE
				var config float MoveSpeedScaleNor;							// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE
				
				
				
				// V - PLAYER COUNT CUSTOMISATION VARIABLES - The above move speed scales will equal these depending on playercount
				
					// VI - TOGGLE BOOLEAN - Decides by true/false whether the mutator is allowed to scale Zed move speed blankets by player count.
					
						var config bool ScaleMoveSpeedBlanketsByPlayerCount;	// Boolean that determines whether movement blanket scales should scale according to player count or not.
				
			
					// VI - 1 PLAYER - The move speed of every Zed across the chosen difficulty will by multiplied by this much when one player is present.
					
						var config float MoveSpeedScaleHelOneP; 			// HELL ON EARTH 	BLANKET 	ZED MOVE SPEED SCALE 	FOR ONE PLAYER
						var config float MoveSpeedScaleSuiOneP;				// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE 	FOR ONE PLAYER
						var config float MoveSpeedScaleHarOneP; 			// HARD 			BLANKET 	ZED MOVE SPEED SCALE 	FOR ONE PLAYER
						var config float MoveSpeedScaleNorOneP; 			// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE 	FOR ONE PLAYER
						
					
					// VI - 2 PLAYERS - The move speed of every Zed across the chosen difficulty will by multiplied by this much when two players are present.
					
						var config float MoveSpeedScaleHelTwoP; 			// HELL ON EARTH 	BLANKET 	ZED MOVE SPEED SCALE 	FOR TWO PLAYERS
						var config float MoveSpeedScaleSuiTwoP;				// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE 	FOR TWO PLAYERS
						var config float MoveSpeedScaleHarTwoP; 			// HARD 			BLANKET 	ZED MOVE SPEED SCALE 	FOR TWO PLAYERS
						var config float MoveSpeedScaleNorTwoP; 			// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE 	FOR TWO PLAYERS
					
					
					// VI - 3 PLAYERS - The move speed of every Zed across the chosen difficulty will by multiplied by this much when three players are present.
					
						var config float MoveSpeedScaleHelThreeP; 			// HELL ON EARTH 	BLANKET 	ZED MOVE SPEED SCALE 	FOR THREE PLAYERS
						var config float MoveSpeedScaleSuiThreeP;			// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE 	FOR THREE PLAYERS
						var config float MoveSpeedScaleHarThreeP; 			// HARD 			BLANKET 	ZED MOVE SPEED SCALE 	FOR THREE PLAYERS
						var config float MoveSpeedScaleNorThreeP; 			// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE 	FOR THREE PLAYERS
					
					
					// VI - 4 PLAYERS - The move speed of every Zed across the chosen difficulty will by multiplied by this much when four players are present.
					
						var config float MoveSpeedScaleHelFourP; 			// HELL ON EARTH 	BLANKET 	ZED MOVE SPEED SCALE	 FOR FOUR PLAYERS
						var config float MoveSpeedScaleSuiFourP;			// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE	 FOR FOUR PLAYERS
						var config float MoveSpeedScaleHarFourP; 			// HARD 			BLANKET 	ZED MOVE SPEED SCALE	 FOR FOUR PLAYERS
						var config float MoveSpeedScaleNorFourP; 			// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE	 FOR FOUR PLAYERS
					
					
					// VI - 5 PLAYERS - The move speed of every Zed across the chosen difficulty will by multiplied by this much when five players are present.
					
						var config float MoveSpeedScaleHelFiveP; 			// HELL ON EARTH 	BLANKET 	ZED MOVE SPEED SCALE 	 FOR FIVE PLAYERS
						var config float MoveSpeedScaleSuiFiveP;			// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE 	 FOR FIVE PLAYERS
						var config float MoveSpeedScaleHarFiveP; 			// HARD 			BLANKET 	ZED MOVE SPEED SCALE 	 FOR FIVE PLAYERS
						var config float MoveSpeedScaleNorFiveP; 			// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE 	 FOR FIVE PLAYERS
					
					
					// VI - 6 PLAYERS AND UP - The move speed of every Zed across the chosen difficulty will by multiplied by this much when six players or more are present.
					
						var config float MoveSpeedScaleHelSixPlusP; 		// HELL ON EARTH 	BLANKET 	ZED MOVE SPEED SCALE 	 FOR SIX PLAYERS OR MORE
						var config float MoveSpeedScaleSuiSixPlusP;			// SUICIDAL 		BLANKET 	ZED MOVE SPEED SCALE 	 FOR SIX PLAYERS OR MORE
						var config float MoveSpeedScaleHarSixPlusP; 		// HARD 			BLANKET 	ZED MOVE SPEED SCALE 	 FOR SIX PLAYERS OR MORE
						var config float MoveSpeedScaleNorSixPlusP; 		// NORMAL 			BLANKET 	ZED MOVE SPEED SCALE 	 FOR SIX PLAYERS OR MORE
						
							
							
		// III - UNIVERSAL VARIABLES - Variable sets for Zed movement speed and damage that are to come into play without restrictions from difficulty or player count.
		
			// IV - TOGGLE BOOLEAN - Decides through true/false whether this variable set is to be activated.
			
				var config bool UseUniversalSet;							// Boolean that determines if only one set of variables should be used for move speed and damage scaling for all difficulties and player counts 
				
				
				
				// V - ZED DAMAGE SCALING VARIABLES, UNIVERSAL - These individual damage scales for Zeds will always be active regardless of difficulty or player count if toggled. The numbers are for quality of life purposes 
															  // to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
															   
					// VI - BOSS ZEDS, UNIVERSAL 					   5 - 5/24			 				The universal individual damage scales for boss class Zeds.
					
						var config float HansDamageScaleUni;					// 1, HANS 
						var config float MatriarchDamageScaleUni;				// 2, MATRIARCH
						var config float PatriarchDamageScaleUni;				// 3, PATRIARCH
						var config float AbominationDamageScaleUni;				// 4, ABOMINATION
						var config float KingFleshpoundDamageScaleUni;			// 5, KING FLESHPOUND

					
					// VI - LARGE ZEDS, UNIVERSAL 					   3 - 8/24							The universal individual damage scales for large class Zeds.
					
						var config float FleshpoundDamageScaleUni;				// 1, FLESHPOUND
						var config float ScrakeDamageScaleUni;					// 2, SCRAKE
						var config float QuarterpoundDamageScaleUni;			// 3, QUARTER POUND

					
					// VI - MEDIUM TRASH ZEDS, UNIVERSAL 			   6 - 14/24						The universal individual damage scales for medium trash class Zeds.
					
						var config float BloatDamageScaleUni;					// 1, BLOAT
						var config float TrapperDamageScaleUni;					// 2, TRAPPER
						var config float BlasterDamageScaleUni;					// 3, BLASTER
						var config float BomberDamageScaleUni;					// 4, BOMBER
						var config float HuskDamageScaleUni;					// 5, HUSK
						var config float SirenDamageScaleUni;					// 6, SIREN

					
					// VI - ELITE TRASH ZEDS, UNIVERSAL 			   3 - 17/24						The universal individual damage scales for elite trash class Zeds.
					
						var config float GorefiendDamageScaleUni; 				// 1, GOREFIEND
						var config float GasCrawlerDamageScaleUni;				// 2, ELITE CRAWLER
						var config float RioterDamageScaleUni;					// 3, RIOTER

					
					// VI - WEAK TRASH ZEDS, UNIVERSAL 				   7 - 24/24						The universal individual damage scales for weak trash class Zeds.
					
						var config float GorefastDamageScaleUni; 				// 1, GOREFAST
						var config float StalkerDamageScaleUni;					// 2, STALKER
						var config float SlasherDamageScaleUni;					// 3, SLASHER
						var config float CystDamageScaleUni;					// 4, CYST
						var config float ClotDamageScaleUni;					// 5, CLOT
						var config float CrawlerDamageScaleUni;					// 6, CRAWLER
						var config float AbominationSpawnDamageScaleUni;		// 7, ABOMINATION SPAWN, useless
				
				
				
				// V - ZED MOVE SPEED SCALING VARIABLES, UNIVERSAL - These individual move speed scales for Zeds will always be active regardless of difficulty or player count. The numbers are for quality of life purposes to   
				                                                  // make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
																  
					// VI - BOSS ZEDS, UNIVERSAL 					  5 - 5/24							The universal individual move speed scales for boss class Zeds. 
					
						var config float HansMoveSpeedScaleUni;					// 1, HANS
						var config float MatriarchMoveSpeedScaleUni;			// 2, MATRIARCH
						var config float PatriarchMoveSpeedScaleUni;			// 3, PATRIARCH
						var config float AbominationMoveSpeedScaleUni;			// 4, ABOMINATION
						var config float KingFleshpoundMoveSpeedScaleUni;		// 5, KING FLESHPOUND

					
					// VI - LARGE ZEDS, UNIVERSAL 					  3 - 8/24							The universal individual move speed scales for large class Zeds.
					
						var config float FleshpoundMoveSpeedScaleUni;			// 1, FLESHPOUND
						var config float ScrakeMoveSpeedScaleUni;				// 2, SCRAKE
						var config float QuarterpoundMoveSpeedScaleUni;			// 3, QUARTER POUND

					
					// VI - MEDIUM TRASH ZEDS, UNIVERSAL 			  6 - 14/24							The universal individual move speed scales for medium trash class Zeds.
					
						var config float BloatMoveSpeedScaleUni;				// 1, BLOAT
						var config float TrapperMoveSpeedScaleUni;				// 2, TRAPPER
						var config float BlasterMoveSpeedScaleUni;				// 3, BLASTER
						var config float BomberMoveSpeedScaleUni;				// 4, BOMBER
						var config float HuskMoveSpeedScaleUni;					// 5, HUSK
						var config float SirenMoveSpeedScaleUni;				// 6, SIREN

					
					// VI - ELITE TRASH ZEDS, UNIVERSAL 			  3 - 17/24							The universal individual move speed scales for elite trash class Zeds.
					
						var config float GorefiendMoveSpeedScaleUni; 			// 1, GOREFIEND
						var config float GasCrawlerMoveSpeedScaleUni;			// 2, GAS CRAWLER
						var config float RioterMoveSpeedScaleUni;				// 3, RIOTER

					
					// VI - WEAK TRASH ZEDS, UNIVERSAL 				  7 - 24/24							The universal individual move speed scales for weak trash class Zeds. 
					
						var config float GorefastMoveSpeedScaleUni; 			// 1, GOREFAST
						var config float StalkerMoveSpeedScaleUni;				// 2, STALKER
						var config float SlasherMoveSpeedScaleUni;				// 3, SLASHER
						var config float CystMoveSpeedScaleUni;					// 4, CYST
						var config float ClotMoveSpeedScaleUni;					// 5, CLOT
						var config float CrawlerMoveSpeedScaleUni;				// 6, CRAWLER
						var config float AbominationSpawnMoveSpeedScaleUni;		// 7, ABOMINATION SPAWN


		
		// III - DEFAULT VARIABLES - These variables store the mutator's default settings. 
		
			// IV - BOOLEAN - Decides through true/false whether default settings are to be activated or not. Useful for when you want to switch in and out from your customizations without value or INI replacement.
			
				var config bool UseDefault;
				
				
			// IV - BLANKETS, DEFAULT - These blanket variables for Zeds will be activated if default settings are toggled.
			
				// V - ZED DAMAGE, DEFAULT - Default Zed damage blankets per difficulty.
				
					var config float DamageScaleNorDef;					// DEFAULT NORMAL			- The default amount every Zed's damage scale is multiplied by on Normal, which is 1.
					var config float DamageScaleHarDef;					// DEFAULT HARD				- The default amount every Zed's damage scale is multiplied by on Hard, which is 1.
					var config float DamageScaleSuiDef;					// DEFAULT SUICIDAL         - The default amount every Zed's damage scale is multiplied by on Suicidal, which is 1.
					var config float DamageScaleHelDef;					// DEFAULT HELL ON EARTH    - The default amount every Zed's damage scale is multiplied by on Hell on Earth, which is 1.
				
				// V - ZED MOVE SPEED, DEFAULT - Default Zed move speed blankets per difficulty. Multiply every 
				
					var config float MoveSpeedScaleNorDef;				// DEFAULT NORMAL			- The default amount every Zed's damage scale is multiplied by on Normal, which is 1.
					var config float MoveSpeedScaleHarDef;              // DEFAULT HARD				- The default amount every Zed's damage scale is multiplied by on Hard, which is 1.
					var config float MoveSpeedScaleSuiDef;              // DEFAULT SUICIDAL         - The default amount every Zed's damage scale is multiplied by on Suicidal, which is 1.
					var config float MoveSpeedScaleHelDef;              // DEFAULT HELL ON EARTH    - The default amount every Zed's damage scale is multiplied by on Hell on Earth, which is 1.
				
		
		
			// IV - INDIVIDUAL SCALES, DEFAULT - Default scales for each Zed by itself.
			
				// IV - HELL ON EARTH, DEFAULT - Default individual scales for Zed damage and movement speed on Hell on Earth.
				
					// V - ZED DAMAGE, DEFAULT HELL ON EARTH - These individual damage scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're  
															 // not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
					
						// VI - BOSS ZEDS, DEFAULT HELL ON EARTH 			 5 - 5/24 				 			The default individual Hell on Earth damage scales for boss class Zeds. 
							
							var config float HansDamageScaleHelDef;						// 1, HANS 
							var config float MatriarchDamageScaleHelDef;				// 2, MATRIARCH 
							var config float PatriarchDamageScaleHelDef;				// 3, PATRIARCH
							var config float AbominationDamageScaleHelDef;				// 4, ABOMINATION
							var config float KingFleshpoundDamageScaleHelDef;			// 5, KING FLESHPOUND

							
						// VI - LARGE ZEDS, DEFAULT HELL ON EARTH 			 3 - 8/24 							The default individual Hell on Earth damage scales for large class Zeds.  
						
							var config float FleshpoundDamageScaleHelDef;				// 1, FLESHPOUND
							var config float ScrakeDamageScaleHelDef;					// 2, SCRAKE
							var config float QuarterpoundDamageScaleHelDef;				// 3, QUARTERPOUND

						
						// VI - MEDIUM TRASH ZEDS, DEFAULT HELL ON EARTH 	 6 - 14/24 						    The default individual Hell on Earth damage scales for medium trash class Zeds.  
						
							var config float BloatDamageScaleHelDef;					// 1, BLOAT 
							var config float TrapperDamageScaleHelDef;					// 2, TRAPPER
							var config float BlasterDamageScaleHelDef;					// 3, BLASTER
							var config float BomberDamageScaleHelDef;					// 4, BOMBER
							var config float HuskDamageScaleHelDef;						// 5, HUSK
							var config float SirenDamageScaleHelDef;					// 6, SIREN

						
						// VI - ELITE TRASH ZEDS, DEFAULT HELL ON EARTH 	 3 - 17/24  						The default individual Hell on Earth damage scales for elite trash class Zeds. 
						
							var config float GorefiendDamageScaleHelDef; 				// 1, GOREFIEND
							var config float GasCrawlerDamageScaleHelDef;				// 2, ELITE CRAWLER
							var config float RioterDamageScaleHelDef;					// 3, RIOTER

						
						// VI - WEAK TRASH ZEDS, DEFAULT HELL ON EARTH 		 7 - 24/24 						    The default individual Hell on Earth damage scales for weak trash class Zeds.  
						
							var config float GorefastDamageScaleHelDef; 				// 1, GOREFAST
							var config float StalkerDamageScaleHelDef;					// 2, STALKER
							var config float SlasherDamageScaleHelDef;					// 3, SLASHER
							var config float CystDamageScaleHelDef;						// 4, CYST
							var config float ClotDamageScaleHelDef;						// 5, CLOT
							var config float CrawlerDamageScaleHelDef;					// 6, CRAWLER
							var config float AbominationSpawnDamageScaleHelDef;			// 7, ABOMINATION SPAWN, useless
					
						
					
					// V - ZED MOVE SPEED, DEFAULT HELL ON EARTH - These individual movement speed scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure   
																 // we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
					
						// VI - BOSS ZEDS, DEFAULT HELL ON EARTH 			 5 - 5/24 							The default individual Hell on Earth move speed scales for boss class Zeds.  
							
							var config float HansMoveSpeedScaleHelDef;					// 1, HANS 
							var config float MatriarchMoveSpeedScaleHelDef;				// 2, MATRIARCH 
							var config float PatriarchMoveSpeedScaleHelDef;				// 3, PATRIARCH
							var config float AbominationMoveSpeedScaleHelDef;			// 4, ABOMINATION
							var config float KingFleshpoundMoveSpeedScaleHelDef;		// 5, KING FLESHPOUND

							
						// VI - LARGE ZEDS, DEFAULT HELL ON EARTH 			 3 - 8/24 							The default individual Hell on Earth move speed scales for large class Zeds. 
						
							var config float FleshpoundMoveSpeedScaleHelDef;			// 1, FLESHPOUND
							var config float ScrakeMoveSpeedScaleHelDef;				// 2, SCRAKE
							var config float QuarterpoundMoveSpeedScaleHelDef;			// 3, QUARTERPOUND

						
						// VI - MEDIUM TRASH ZEDS, DEFAULT HELL ON EARTH 	 6 - 14/24 							The default individual Hell on Earth move speed scales for medium trash class Zeds. 
						
							var config float BloatMoveSpeedScaleHelDef;					// 1, BLOAT 
							var config float TrapperMoveSpeedScaleHelDef;				// 2, TRAPPER
							var config float BlasterMoveSpeedScaleHelDef;				// 3, BLASTER
							var config float BomberMoveSpeedScaleHelDef;				// 4, BOMBER
							var config float HuskMoveSpeedScaleHelDef;					// 5, HUSK
							var config float SirenMoveSpeedScaleHelDef;					// 6, SIREN

						
						// VI - ELITE TRASH ZEDS, DEFAULT HELL ON EARTH 	 3 - 17/24 							The default individual Hell on Earth move speed scales for elite trash class Zeds. 
						
							var config float GorefiendMoveSpeedScaleHelDef; 			// 1, GOREFIEND
							var config float GasCrawlerMoveSpeedScaleHelDef;			// 2, ELITE CRAWLER
							var config float RioterMoveSpeedScaleHelDef;				// 3, RIOTER

						
						// VI - WEAK TRASH ZEDS, DEFAULT HELL ON EARTH 		 7 - 24/24  						The default individual Hell on Earth move speed scales for weak trash class Zeds. 
						
							var config float GorefastMoveSpeedScaleHelDef; 				// 1, GOREFAST
							var config float StalkerMoveSpeedScaleHelDef;				// 2, STALKER
							var config float SlasherMoveSpeedScaleHelDef;				// 3, SLASHER
							var config float CystMoveSpeedScaleHelDef;					// 4, CYST
							var config float ClotMoveSpeedScaleHelDef;					// 5, CLOT
							var config float CrawlerMoveSpeedScaleHelDef;				// 6, CRAWLER
							var config float AbominationSpawnMoveSpeedScaleHelDef;		// 7, ABOMINATION SPAWN
								
				

				// IV - SUICIDAL, DEFAULT - Default individual scales for Zed damage and movement speed on Suicidal.
					
					// V - ZED DAMAGE, DEFAULT SUICIDAL - These individual damage scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're not
					                                   // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
														
						// VI - BOSS ZEDS, DEFAULT SUICIDAL 				 5 - 5/24 							The default individual Suicidal damage scales for boss class Zeds. 
							
							var config float HansDamageScaleSuiDef;						// 1, HANS 
							var config float MatriarchDamageScaleSuiDef;				// 2, MATRIARCH 
							var config float PatriarchDamageScaleSuiDef;				// 3, PATRIARCH
							var config float AbominationDamageScaleSuiDef;				// 4, ABOMINATION
							var config float KingFleshpoundDamageScaleSuiDef;			// 5, KING FLESHPOUND
                                                                                        
							                                                            
						// VI - LARGE ZEDS, DEFAULT SUICIDAL 			 	 3 - 8/24 							The default individual Suicidal damage scales for large class Zeds.                  
						                                                                
							var config float FleshpoundDamageScaleSuiDef;				// 1, FLESHPOUND
							var config float ScrakeDamageScaleSuiDef;					// 2, SCRAKE
							var config float QuarterpoundDamageScaleSuiDef;				// 3, QUARTERPOUND
                                                                                        
						                                                                
						// VI - MEDIUM TRASH ZEDS, DEFAULT SUICIDAL 	 	 6 - 14/24 							The default individual Suicidal damage scales for medium trash class Zeds.          
						                                                                
							var config float BloatDamageScaleSuiDef;					// 1, BLOAT 
							var config float TrapperDamageScaleSuiDef;					// 2, TRAPPER
							var config float BlasterDamageScaleSuiDef;					// 3, BLASTER
							var config float BomberDamageScaleSuiDef;					// 4, BOMBER
							var config float HuskDamageScaleSuiDef;						// 5, HUSK
							var config float SirenDamageScaleSuiDef;					// 6, SIREN
                                                                                        
						                                                                
						// VI - ELITE TRASH ZEDS, DEFAULT SUICIDAL 		 	 3 - 17/24 							The default individual Suicidal damage scales for elite trash class Zeds.           
						                                                                
							var config float GorefiendDamageScaleSuiDef; 				// 1, GOREFIEND
							var config float GasCrawlerDamageScaleSuiDef;				// 2, ELITE CRAWLER
							var config float RioterDamageScaleSuiDef;					// 3, RIOTER
                                                                                        
						                                                                
						// VI - WEAK TRASH ZEDS, DEFAULT SUICIDAL 		 	 7 - 24/24 							The default individual Suicidal damage scales for weak trash class Zeds.           
						                                                                
							var config float GorefastDamageScaleSuiDef; 				// 1, GOREFAST
							var config float StalkerDamageScaleSuiDef;					// 2, STALKER
							var config float SlasherDamageScaleSuiDef;					// 3, SLASHER
							var config float CystDamageScaleSuiDef;						// 4, CYST
							var config float ClotDamageScaleSuiDef;						// 5, CLOT
							var config float CrawlerDamageScaleSuiDef;					// 6, CRAWLER
							var config float AbominationSpawnDamageScaleSuiDef;			// 7, ABOMINATION SPAWN, useless
					
						
					
					// V - ZED MOVE SPEED, DEFAULT SUICIDAL - These individual movement speed scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're not
					                                       // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
					
						// VI - BOSS ZEDS, DEFAULT SUICIDAL  			 	5 - 5/24 							The default individual Suicidal movement speed scales for boss class Zeds.
							
							var config float HansMoveSpeedScaleSuiDef;					// 1, HANS  
							var config float MatriarchMoveSpeedScaleSuiDef;				// 2, MATRIARCH 
							var config float PatriarchMoveSpeedScaleSuiDef;				// 3, PATRIARCH
							var config float AbominationMoveSpeedScaleSuiDef;			// 4, ABOMINATION
							var config float KingFleshpoundMoveSpeedScaleSuiDef;		// 5, KING FLESHPOUND
                                                                                        
							                                                            
						// VI - LARGE ZEDS, DEFAULT SUICIDAL 				3 - 8/24     						The default individual Suicidal movement speed scales for large class Zeds.            						
						                                                                
							var config float FleshpoundMoveSpeedScaleSuiDef;			// 1, FLESHPOUND
							var config float ScrakeMoveSpeedScaleSuiDef;				// 2, SCRAKE
							var config float QuarterpoundMoveSpeedScaleSuiDef;			// 3, QUARTERPOUND
                                                                                        
						                                                                
						// VI - MEDIUM TRASH ZEDS, DEFAULT SUICIDAL 		6 - 14/24   						The default individual Suicidal movement speed scales for medium trash class Zeds.            						
						                                                                
							var config float BloatMoveSpeedScaleSuiDef;					// 1, BLOAT 
							var config float TrapperMoveSpeedScaleSuiDef;				// 2, TRAPPER
							var config float BlasterMoveSpeedScaleSuiDef;				// 3, BLASTER
							var config float BomberMoveSpeedScaleSuiDef;				// 4, BOMBER
							var config float HuskMoveSpeedScaleSuiDef;					// 5, HUSK
							var config float SirenMoveSpeedScaleSuiDef;					// 6, SIREN
                                                                                        
						                                                                
						// VI - ELITE TRASH ZEDS, DEFAULT SUICIDAL  		3 - 17/24   						The default individual Suicidal movement speed scales for elite trash class Zeds.       						
						                                                                
							var config float GorefiendMoveSpeedScaleSuiDef; 			// 1, GOREFIEND
							var config float GasCrawlerMoveSpeedScaleSuiDef;			// 2, ELITE CRAWLER
							var config float RioterMoveSpeedScaleSuiDef;				// 3, RIOTER
                                                                                        
						                                                                
						// VI - WEAK TRASH ZEDS, DEFAULT SUICIDAL 			7 - 24/24  							The default individual Suicidal movement speed scales for weak trash class Zeds.        						
						                                                                
							var config float GorefastMoveSpeedScaleSuiDef; 				// 1, GOREFAST
							var config float StalkerMoveSpeedScaleSuiDef;				// 2, STALKER
							var config float SlasherMoveSpeedScaleSuiDef;				// 3, SLASHER
							var config float CystMoveSpeedScaleSuiDef;					// 4, CYST
							var config float ClotMoveSpeedScaleSuiDef;					// 5, CLOT
							var config float CrawlerMoveSpeedScaleSuiDef;				// 6, CRAWLER
							var config float AbominationSpawnMoveSpeedScaleSuiDef;		// 7, ABOMINATION SPAWN
								
				

				// IV - HARD, DEFAULT - Default scales for Zed damage and movement speed on Hard.
								
					// V - ZED DAMAGE, DEFAULT HARD - These individual damage scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're not
					                               // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
					
						// VI - BOSS ZEDS, DEFAULT HARD 					5 - 5/24 							The default individual Hard damage scales for boss class Zeds. 
							
							var config float HansDamageScaleHarDef;						// 1, HANS   
							var config float MatriarchDamageScaleHarDef;				// 2, MATRIARCH 
							var config float PatriarchDamageScaleHarDef;				// 3, PATRIARCH
							var config float AbominationDamageScaleHarDef;				// 4, ABOMINATION
							var config float KingFleshpoundDamageScaleHarDef;			// 5, KING FLESHPOUND
                                                                                        
							                                                            
						// VI - LARGE ZEDS, DEFAULT HARD 					3 - 8/24               				The default individual Hard damage scales for large class Zeds. 			
						                                                                
							var config float FleshpoundDamageScaleHarDef;				// 1, FLESHPOUND
							var config float ScrakeDamageScaleHarDef;					// 2, SCRAKE
							var config float QuarterpoundDamageScaleHarDef;				// 3, QUARTERPOUND
                                                                                        
						                                                                
						// VI - MEDIUM TRASH ZEDS, DEFAULT HARD 			6 - 14/24    						The default individual Hard damage scales for medium trash class Zeds. 	
						                                                                
							var config float BloatDamageScaleHarDef;					// 1, BLOAT 
							var config float TrapperDamageScaleHarDef;					// 2, TRAPPER
							var config float BlasterDamageScaleHarDef;					// 3, BLASTER
							var config float BomberDamageScaleHarDef;					// 4, BOMBER
							var config float HuskDamageScaleHarDef;						// 5, HUSK
							var config float SirenDamageScaleHarDef;					// 6, SIREN
                                                                                        
						                                                                
						// VI - ELITE TRASH ZEDS, DEFAULT HARD 				3 - 17/24      						The default individual Hard damage scales for elite trash class Zeds. 		
						                                                                
							var config float GorefiendDamageScaleHarDef; 				// 1, GOREFIEND
							var config float GasCrawlerDamageScaleHarDef;				// 2, ELITE CRAWLER
							var config float RioterDamageScaleHarDef;					// 3, RIOTER
                                                                                        
						                                                                
						// VI - WEAK TRASH ZEDS, DEFAULT HARD 				7 - 24/24    						The default individual Hard damage scales for weak trash class Zeds. 	
						                                                                
							var config float GorefastDamageScaleHarDef; 				// 1, GOREFAST
							var config float StalkerDamageScaleHarDef;					// 2, STALKER
							var config float SlasherDamageScaleHarDef;					// 3, SLASHER
							var config float CystDamageScaleHarDef;						// 4, CYST
							var config float ClotDamageScaleHarDef;						// 5, CLOT
							var config float CrawlerDamageScaleHarDef;					// 6, CRAWLER
							var config float AbominationSpawnDamageScaleHarDef;			// 7, ABOMINATION SPAWN, useless
					
						
					
					// V - ZED MOVE SPEED, DEFAULT HARD - These movement speed scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're not
					                                   // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
													   
						// VI - BOSS ZEDS, DEFAULT HARD 					5 - 5/24 							The default individual Hard movement speed scales for boss class Zeds.
							
							var config float HansMoveSpeedScaleHarDef;					// 1, HANS    
							var config float MatriarchMoveSpeedScaleHarDef;				// 2, MATRIARCH 
							var config float PatriarchMoveSpeedScaleHarDef;				// 3, PATRIARCH
							var config float AbominationMoveSpeedScaleHarDef;			// 4, ABOMINATION
							var config float KingFleshpoundMoveSpeedScaleHarDef;		// 5, KING FLESHPOUND
                                                                                            
							                                                                
						// VI - LARGE ZEDS, DEFAULT HARD 					3 - 8/24                   			The default individual Hard movement speed scales for large class Zeds.             				
						                                                                    
							var config float FleshpoundMoveSpeedScaleHarDef;			// 1, FLESHPOUND
							var config float ScrakeMoveSpeedScaleHarDef;				// 2, SCRAKE
							var config float QuarterpoundMoveSpeedScaleHarDef;			// 3, QUARTERPOUND
                                                                                            
						                                                                    
						// VI - MEDIUM TRASH ZEDS, DEFAULT HARD 			6 - 14/24            				The default individual Hard movement speed scales for medium trash class Zeds.     					
						                                                                    
							var config float BloatMoveSpeedScaleHarDef;					// 1, BLOAT 
							var config float TrapperMoveSpeedScaleHarDef;				// 2, TRAPPER
							var config float BlasterMoveSpeedScaleHarDef;				// 3, BLASTER
							var config float BomberMoveSpeedScaleHarDef;				// 4, BOMBER
							var config float HuskMoveSpeedScaleHarDef;					// 5, HUSK
							var config float SirenMoveSpeedScaleHarDef;					// 6, SIREN
                                                                                            
						                                                                    
						// VI - ELITE TRASH ZEDS, DEFAULT HARD 			    3 - 17/24            				The default individual Hard movement speed scales for elite trash class Zeds.      					
						                                                                    
							var config float GorefiendMoveSpeedScaleHarDef; 			// 1, GOREFIEND
							var config float GasCrawlerMoveSpeedScaleHarDef;			// 2, ELITE CRAWLER
							var config float RioterMoveSpeedScaleHarDef;				// 3, RIOTER
                                                                                            
						                                                                    
						// VI - WEAK TRASH ZEDS, DEFAULT HARD 				7 - 24/24          					The default individual Hard movement speed scales for weak trash class Zeds.        					
						                                                                    
							var config float GorefastMoveSpeedScaleHarDef; 				// 1, GOREFAST
							var config float StalkerMoveSpeedScaleHarDef;				// 2, STALKER
							var config float SlasherMoveSpeedScaleHarDef;				// 3, SLASHER
							var config float CystMoveSpeedScaleHarDef;					// 4, CYST
							var config float ClotMoveSpeedScaleHarDef;					// 5, CLOT
							var config float CrawlerMoveSpeedScaleHarDef;				// 6, CRAWLER
							var config float AbominationSpawnMoveSpeedScaleHarDef;		// 7, ABOMINATION SPAWN
								
								
								
				// IV - NORMAL, DEFAULT - Default scales for Zed damage and movement speed on Normal.
				
					// V - ZED DAMAGE, DEFAULT NORMAL - These individual damage scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're not
					                                 // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
																			
						// VI - BOSS ZEDS, DEFAULT NORMAL 					 5 - 5/24 							The default individual Normal damage scales for boss class Zeds.     
							
							var config float HansDamageScaleNorDef;						// 1, HANS    
							var config float MatriarchDamageScaleNorDef;				// 2, MATRIARCH 
							var config float PatriarchDamageScaleNorDef;				// 3, PATRIARCH
							var config float AbominationDamageScaleNorDef;				// 4, ABOMINATION
							var config float KingFleshpoundDamageScaleNorDef;			// 5, KING FLESHPOUND
                                                                                            
							                                                                
						// VI - LARGE ZEDS, DEFAULT NORMAL 					 3 - 8/24 		           			The default individual Normal damage scales for large class Zeds.       
						                                                                                          
							var config float FleshpoundDamageScaleNorDef;				// 1, FLESHPOUND                   
							var config float ScrakeDamageScaleNorDef;					// 2, SCRAKE                    
							var config float QuarterpoundDamageScaleNorDef;				// 3, QUARTERPOUND                   
                                                                                                                  
						                                                                                          
						// VI - MEDIUM TRASH ZEDS, DEFAULT NORMAL 			 6 - 14/24           			    The default individual Normal damage scales for medium trash class Zeds.
						                                                                                          
							var config float BloatDamageScaleNorDef;					// 1, BLOAT                     
							var config float TrapperDamageScaleNorDef;					// 2, TRAPPER                    
							var config float BlasterDamageScaleNorDef;					// 3, BLASTER                    
							var config float BomberDamageScaleNorDef;					// 4, BOMBER                    
							var config float HuskDamageScaleNorDef;						// 5, HUSK                     
							var config float SirenDamageScaleNorDef;					// 6, SIREN                     
                                                                                                                  
						                                                                                          
						// VI - ELITE TRASH ZEDS, DEFAULT NORMAL 			 3 - 17/24           			    The default individual Normal damage scales for elite trash class Zeds. 
						                                                                                          
							var config float GorefiendDamageScaleNorDef; 				// 1, GOREFIEND                    
							var config float GasCrawlerDamageScaleNorDef;				// 2, ELITE CRAWLER                   
							var config float RioterDamageScaleNorDef;					// 3, RIOTER                    
                                                                                                                  
						                                                                                          
						// VI - WEAK TRASH ZEDS, DEFAULT NORMAL 			 7 - 24/24         			    	The default individual Normal damage scales for weak trash class Zeds.  
						                                                                    
							var config float GorefastDamageScaleNorDef; 				// 1, GOREFAST
							var config float StalkerDamageScaleNorDef;					// 2, STALKER
							var config float SlasherDamageScaleNorDef;					// 3, SLASHER
							var config float CystDamageScaleNorDef;						// 4, CYST
							var config float ClotDamageScaleNorDef;						// 5, CLOT
							var config float CrawlerDamageScaleNorDef;					// 6, CRAWLER
							var config float AbominationSpawnDamageScaleNorDef;			// 7, ABOMINATION SPAWN, useless
					
						
					
					// V - ZED MOVE SPEED, DEFAULT NORMAL - These individual movement speed scales for Zeds will be active if default settings are toggled. The numbers are for quality of life purposes to make sure we're not
					                                     // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
														 
						// VI - BOSS ZEDS, DEFAULT NORMAL  					5 - 5/24 							The default individual Normal movement speed scales for boss class Zeds.
							                                                        
							var config float HansMoveSpeedScaleNorDef;					// 1, HANS    
							var config float MatriarchMoveSpeedScaleNorDef;				// 2, MATRIARCH 
							var config float PatriarchMoveSpeedScaleNorDef;				// 3, PATRIARCH
							var config float AbominationMoveSpeedScaleNorDef;			// 4, ABOMINATION
							var config float KingFleshpoundMoveSpeedScaleNorDef;		// 5, KING FLESHPOUND
                                                                                                    
							                                                                        
						// VI - LARGE ZEDS, DEFAULT NORMAL                  3 - 8/24                   			The default individual Normal movement speed scales for large class Zeds.       
						                                                                            
							var config float FleshpoundMoveSpeedScaleNorDef;			// 1, FLESHPOUND
							var config float ScrakeMoveSpeedScaleNorDef;				// 2, SCRAKE
							var config float QuarterpoundMoveSpeedScaleNorDef;			// 3, QUARTERPOUND
                                                                                                  
						                                                                          
						// VI - MEDIUM ZEDS, DEFAULT NORMAL                 6 - 14/24          					The default individual Normal movement speed scales for medium trash class Zeds.
						                                                                          
							var config float BloatMoveSpeedScaleNorDef;					// 1, BLOAT 
							var config float TrapperMoveSpeedScaleNorDef;				// 2, TRAPPER
							var config float BlasterMoveSpeedScaleNorDef;				// 3, BLASTER
							var config float BomberMoveSpeedScaleNorDef;				// 4, BOMBER
							var config float HuskMoveSpeedScaleNorDef;					// 5, HUSK
							var config float SirenMoveSpeedScaleNorDef;					// 6, SIREN
                                                                                                  
						                                                                          
						// VI - ELITE TRASH ZEDS, DEFAULT NORMAL            3 - 17/24          					The default individual Normal movement speed scales for elite trash class Zeds. 
						                                                                          
							var config float GorefiendMoveSpeedScaleNorDef; 			// 1, GOREFIEND
							var config float GasCrawlerMoveSpeedScaleNorDef;			// 2, ELITE CRAWLER
							var config float RioterMoveSpeedScaleNorDef;				// 3, RIOTER
                                                                                                  
						                                                                          
						// VI - WEAK TRASH ZEDS, DEFAULT NORMAL             7 - 24/24        					The default individual Normal movement speed scales for weak trash class Zeds.  
						                                                                          
							var config float GorefastMoveSpeedScaleNorDef; 				// 1, GOREFAST
							var config float StalkerMoveSpeedScaleNorDef;				// 2, STALKER
							var config float SlasherMoveSpeedScaleNorDef;				// 3, SLASHER
							var config float CystMoveSpeedScaleNorDef;					// 4, CYST
							var config float ClotMoveSpeedScaleNorDef;					// 5, CLOT
							var config float CrawlerMoveSpeedScaleNorDef;				// 6, CRAWLER
							var config float AbominationSpawnMoveSpeedScaleNorDef;		// 7, ABOMINATION SPAWN
						
						
			
	// II - DIFFICULTY SPECIFIC DAMAGE SCALING VARIABLES - Individual damage scales for every Zed for each difficulty.
	
		// III - ZED DAMAGE SCALING VARIABLES, HELL ON EARTH - These individual damage scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality 
			                                                // of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count. 
															
			// IV - BOSS ZEDS, HELL ON EARTH 	 			  5 - 5/24  						 The individual Hell on Earth damage scales for boss class Zeds.
			
				var config float HansDamageScaleHel;					// 1, HANS     
				var config float MatriarchDamageScaleHel;				// 2, MATRIARCH 
				var config float PatriarchDamageScaleHel;				// 3, PATRIARCH
				var config float AbominationDamageScaleHel;				// 4, ABOMINATION
				var config float KingFleshpoundDamageScaleHel;			// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, HELL ON EARTH 				  3 - 8/24          				 The individual Hell on Earth damage scales for large class Zeds.                                    			
			                                                                        
				var config float FleshpoundDamageScaleHel;				// 1, FLESHPOUND
				var config float ScrakeDamageScaleHel;					// 2, SCRAKE
				var config float QuarterpoundDamageScaleHel;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM ZEDS, HELL ON EARTH 				  6 - 14/24                    		 The individual Hell on Earth damage scales for medium trash class Zeds.                 					
			                                                                      
				var config float BloatDamageScaleHel;					// 1, BLOAT 
				var config float TrapperDamageScaleHel;					// 2, TRAPPER
				var config float BlasterDamageScaleHel;					// 3, BLASTER
				var config float BomberDamageScaleHel;					// 4, BOMBER
				var config float HuskDamageScaleHel;					// 5, HUSK
				var config float SirenDamageScaleHel;					// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, HELL ON EARTH 		  3 - 17/24                 		 The individual Hell on Earth damage scales for elite trash class Zeds.               					
			                                                                      
				var config float GorefiendDamageScaleHel; 				// 1, GOREFIEND
				var config float GasCrawlerDamageScaleHel;				// 2, ELITE CRAWLER
				var config float RioterDamageScaleHel;					// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, HELL ON EARTH	 		  7 - 24/24            			     The individual Hell on Earth damage scales for weak trash class Zeds.                   					
			                                                                      
				var config float GorefastDamageScaleHel; 				// 1, GOREFAST
				var config float StalkerDamageScaleHel;					// 2, STALKER
				var config float SlasherDamageScaleHel;					// 3, SLASHER
				var config float CystDamageScaleHel;					// 4, CYST
				var config float ClotDamageScaleHel;					// 5, CLOT
				var config float CrawlerDamageScaleHel;					// 6, CRAWLER
				var config float AbominationSpawnDamageScaleHel;		// 7, ABOMINATION SPAWN, useless
			
			
			
		// III - ZED DAMAGE SCALING VARIABLES, SUICIDAL - These individual damage scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality 
			                                           // of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
													   
			// IV - BOSS ZEDS, SUICIDAL 					  5 - 5/24 							 The individual Suicidal damage scales for boss class Zeds.
			                                                                
				var config float HansDamageScaleSui;					// 1, HANS     
				var config float MatriarchDamageScaleSui;				// 2, MATRIARCH 
				var config float PatriarchDamageScaleSui;				// 3, PATRIARCH
				var config float AbominationDamageScaleSui;				// 4, ABOMINATION
				var config float KingFleshpoundDamageScaleSui;			// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, SUICIDAL 					  3 - 8/24           				 The individual Suicidal damage scales for large class Zeds.       
			                                                                        
				var config float FleshpoundDamageScaleSui;				// 1, FLESHPOUND
				var config float ScrakeDamageScaleSui;					// 2, SCRAKE
				var config float QuarterpoundDamageScaleSui;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASH ZEDS, SUICIDAL 			  6 - 14/24                     	 The individual Suicidal damage scales for medium trash class Zeds.
			                                                                      
				var config float BloatDamageScaleSui;					// 1, BLOAT 
				var config float TrapperDamageScaleSui;					// 2, TRAPPER
				var config float BlasterDamageScaleSui;					// 3, BLASTER
				var config float BomberDamageScaleSui;					// 4, BOMBER
				var config float HuskDamageScaleSui;					// 5, HUSK
				var config float SirenDamageScaleSui;					// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, SUICIDAL 				  3 - 17/24                  		 The individual Suicidal damage scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendDamageScaleSui; 				// 1, GOREFIEND
				var config float GasCrawlerDamageScaleSui;				// 2, ELITE CRAWLER
				var config float RioterDamageScaleSui;					// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, SUICIDAL 				  7 - 24/24              			 The individual Suicidal damage scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastDamageScaleSui; 				// 1, GOREFAST
				var config float StalkerDamageScaleSui;					// 2, STALKER
				var config float SlasherDamageScaleSui;					// 3, SLASHER
				var config float CystDamageScaleSui;					// 4, CYST
				var config float ClotDamageScaleSui;					// 5, CLOT
				var config float CrawlerDamageScaleSui;					// 6, CRAWLER
				var config float AbominationSpawnDamageScaleSui;		// 7, ABOMINATION SPAWN, useless
			
			
			
		// III - ZED DAMAGE SCALING VARIABLES, HARD - These individual damage scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality 
			                                       // of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
												   
			// IV - BOSS ZEDS, HARD 				 		  5 - 5/24 							 The individual Hard damage scales for boss class Zeds.
			                                                                
				var config float HansDamageScaleHar;					// 1, HANS      
				var config float MatriarchDamageScaleHar;				// 2, MATRIARCH 
				var config float PatriarchDamageScaleHar;				// 3, PATRIARCH
				var config float AbominationDamageScaleHar;				// 4, ABOMINATION
				var config float KingFleshpoundDamageScaleHar;			// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, HARD 					 	  3 - 8/24             				 The individual Hard damage scales for large class Zeds.       
			                                                                        
				var config float FleshpoundDamageScaleHar;				// 1, FLESHPOUND
				var config float ScrakeDamageScaleHar;					// 2, SCRAKE
				var config float QuarterpoundDamageScaleHar;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASH ZEDS, HARD 				  6 - 14/24               			 The individual Hard damage scales for medium trash class Zeds.
			                                                                      
				var config float BloatDamageScaleHar;					// 1, BLOAT 
				var config float TrapperDamageScaleHar;					// 2, TRAPPER
				var config float BlasterDamageScaleHar;					// 3, BLASTER
				var config float BomberDamageScaleHar;					// 4, BOMBER
				var config float HuskDamageScaleHar;					// 5, HUSK
				var config float SirenDamageScaleHar;					// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, HARD 					  3 - 17/24                   		 The individual Hard damage scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendDamageScaleHar; 				// 1, GOREFIEND
				var config float GasCrawlerDamageScaleHar;				// 2, ELITE CRAWLER
				var config float RioterDamageScaleHar;					// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, HARD 					  7 - 24/24                  		 The individual Hard damage scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastDamageScaleHar; 				// 1, GOREFAST
				var config float StalkerDamageScaleHar;					// 2, STALKER
				var config float SlasherDamageScaleHar;					// 3, SLASHER
				var config float CystDamageScaleHar;					// 4, CYST
				var config float ClotDamageScaleHar;					// 5, CLOT
				var config float CrawlerDamageScaleHar;					// 6, CRAWLER
				var config float AbominationSpawnDamageScaleHar;		// 7, ABOMINATION SPAWN, useless



		// III - ZED DAMAGE SCALING VARIABLES, NORMAL - These individual damage scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality 
			                                         // of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
													 
			// IV - BOSS ZEDS, NORMAL  						  5 - 5/24 							The individual Normal damage scales for boss class Zeds.
			                                                                
				var config float HansDamageScaleNor;					// 1, HANS      
				var config float MatriarchDamageScaleNor;				// 2, MATRIARCH 
				var config float PatriarchDamageScaleNor;				// 3, PATRIARCH
				var config float AbominationDamageScaleNor;				// 4, ABOMINATION
				var config float KingFleshpoundDamageScaleNor;			// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, NORMAL  					  3 - 8/24                          The individual Normal damage scales for large class Zeds.       
			                                                                        
				var config float FleshpoundDamageScaleNor;				// 1, FLESHPOUND
				var config float ScrakeDamageScaleNor;					// 2, SCRAKE
				var config float QuarterpoundDamageScaleNor;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASH ZEDS, NORMAL   			  6 - 14/24                         The individual Normal damage scales for medium trash class Zeds.
			                                                                      
				var config float BloatDamageScaleNor;					// 1, BLOAT 
				var config float TrapperDamageScaleNor;					// 2, TRAPPER
				var config float BlasterDamageScaleNor;					// 3, BLASTER
				var config float BomberDamageScaleNor;					// 4, BOMBER
				var config float HuskDamageScaleNor;					// 5, HUSK
				var config float SirenDamageScaleNor;					// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, NORMAL 				  3 - 17/24                         The individual Normal damage scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendDamageScaleNor; 				// 1, GOREFIEND
				var config float GasCrawlerDamageScaleNor;				// 2, ELITE CRAWLER
				var config float RioterDamageScaleNor;					// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, NORMAL  				  7 - 24/24                         The individual Normal damage scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastDamageScaleNor; 				// 1, GOREFAST
				var config float StalkerDamageScaleNor;					// 2, STALKER
				var config float SlasherDamageScaleNor;					// 3, SLASHER
				var config float CystDamageScaleNor;					// 4, CYST
				var config float ClotDamageScaleNor;					// 5, CLOT
				var config float CrawlerDamageScaleNor;					// 6, CRAWLER
				var config float AbominationSpawnDamageScaleNor;		// 7, ABOMINATION SPAWN, useless



	// II - DIFFICULTY SPECIFIC ZED MOVESPEED SCALING VARIABLES - Individual movement speed scales for every Zed for each difficulty.
		
		// III - ZED MOVE SPEED SCALING VARIABLES, HELL ON EARTH - These individual movement speed scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality of life 
		                                                        // purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
																
			// IV - BOSS ZEDS, HELL ON EARTH 				  5 - 5/24 							The individual Hell on Earth movement speed scales for boss class Zeds.
			                                                                
				var config float HansMoveSpeedScaleHel;					// 1, HANS      
				var config float MatriarchMoveSpeedScaleHel;			// 2, MATRIARCH 
				var config float PatriarchMoveSpeedScaleHel;			// 3, PATRIARCH
				var config float AbominationMoveSpeedScaleHel;			// 4, ABOMINATION
				var config float KingFleshpoundMoveSpeedScaleHel;		// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, HELL ON EARTH 				  3 - 8/24                          The individual Hell on Earth movement speed scales for large class Zeds.       
			                                                                        
				var config float FleshpoundMoveSpeedScaleHel;			// 1, FLESHPOUND
				var config float ScrakeMoveSpeedScaleHel;				// 2, SCRAKE
				var config float QuarterpoundMoveSpeedScaleHel;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASH ZEDS, HELL ON EARTH 		  6 - 14/24                         The individual Hell on Earth movement speed scales for medium trash class Zeds.
			                                                                      
				var config float BloatMoveSpeedScaleHel;				// 1, BLOAT 
				var config float TrapperMoveSpeedScaleHel;				// 2, TRAPPER
				var config float BlasterMoveSpeedScaleHel;				// 3, BLASTER
				var config float BomberMoveSpeedScaleHel;				// 4, BOMBER
				var config float HuskMoveSpeedScaleHel;					// 5, HUSK
				var config float SirenMoveSpeedScaleHel;				// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, HELL ON EARTH 	      3 - 17/24                         The individual Hell on Earth movement speed scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendMoveSpeedScaleHel; 			// 1, GOREFIEND
				var config float GasCrawlerMoveSpeedScaleHel;			// 2, ELITE CRAWLER
				var config float RioterMoveSpeedScaleHel;				// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, HELL ON EARTH 			  7 - 24/24                         The individual Hell on Earth movement speed scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastMoveSpeedScaleHel; 			// 1, GOREFAST
				var config float StalkerMoveSpeedScaleHel;				// 2, STALKER
				var config float SlasherMoveSpeedScaleHel;				// 3, SLASHER
				var config float CystMoveSpeedScaleHel;					// 4, CYST
				var config float ClotMoveSpeedScaleHel;					// 5, CLOT
				var config float CrawlerMoveSpeedScaleHel;				// 6, CRAWLER
				var config float AbominationSpawnMoveSpeedScaleHel;		// 7, ABOMINATION SPAWN
				
				
				
		// III - ZED MOVESPEED SCALING VARIABLES - SUICIDAL - These individual movement speed scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality of life 
		                                                   // purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
														   
			// IV - BOSS ZEDS 								  5 - 5/24 							The individual Suicidal movement speed scales for boss class Zeds.
			                                                                
				var config float HansMoveSpeedScaleSui;					// 1, HANS       
				var config float MatriarchMoveSpeedScaleSui;			// 2, MATRIARCH 
				var config float PatriarchMoveSpeedScaleSui;			// 3, PATRIARCH
				var config float AbominationMoveSpeedScaleSui;			// 4, ABOMINATION
				var config float KingFleshpoundMoveSpeedScaleSui;		// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS 								  3 - 8/24                          The individual Suicidal movement speed scales for large class Zeds.       
			                                                                        
				var config float FleshpoundMoveSpeedScaleSui;			// 1, FLESHPOUND
				var config float ScrakeMoveSpeedScaleSui;				// 2, SCRAKE
				var config float QuarterpoundMoveSpeedScaleSui;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASH ZEDS 						  6 - 14/24                         The individual Suicidal movement speed scales for medium trash class Zeds.
			                                                                      
				var config float BloatMoveSpeedScaleSui;				// 1, BLOAT 
				var config float TrapperMoveSpeedScaleSui;				// 2, TRAPPER
				var config float BlasterMoveSpeedScaleSui;				// 3, BLASTER
				var config float BomberMoveSpeedScaleSui;				// 4, BOMBER
				var config float HuskMoveSpeedScaleSui;					// 5, HUSK
				var config float SirenMoveSpeedScaleSui;				// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS  						  3 - 17/24                         The individual Suicidal movement speed scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendMoveSpeedScaleSui; 			// 1, GOREFIEND
				var config float GasCrawlerMoveSpeedScaleSui;			// 2, ELITE CRAWLER
				var config float RioterMoveSpeedScaleSui;				// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS  						  7 -  24/24                        The individual Suicidal movement speed scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastMoveSpeedScaleSui; 			// 1, GOREFAST
				var config float StalkerMoveSpeedScaleSui;				// 2, STALKER
				var config float SlasherMoveSpeedScaleSui;				// 3, SLASHER
				var config float CystMoveSpeedScaleSui;					// 4, CYST
				var config float ClotMoveSpeedScaleSui;					// 5, CLOT
				var config float CrawlerMoveSpeedScaleSui;				// 6, CRAWLER
				var config float AbominationSpawnMoveSpeedScaleSui;		// 7, ABOMINATION SPAWN
				
				
				
		// III - ZED MOVESPEED SCALING VARIABLES, HARD - These individual movement speed scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality of life 
		                                               // purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
													   
			// IV - BOSS ZEDS, HARD  						  5 - 5/24 							The individual Hard movement speed scales for boss class Zeds.
			                                                                
				var config float HansMoveSpeedScaleHar;					// 1, HANS        
				var config float MatriarchMoveSpeedScaleHar;			// 2, MATRIARCH 
				var config float PatriarchMoveSpeedScaleHar;			// 3, PATRIARCH
				var config float AbominationMoveSpeedScaleHar;			// 4, ABOMINATION
				var config float KingFleshpoundMoveSpeedScaleHar;		// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, HARD  					  	  3 - 8/24                          The individual Hard movement speed scales for large class Zeds.       
			                                                                        
				var config float FleshpoundMoveSpeedScaleHar;			// 1, FLESHPOUND
				var config float ScrakeMoveSpeedScaleHar;				// 2, SCRAKE
				var config float QuarterpoundMoveSpeedScaleHar;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASHZEDS, HARD  				  6 - 14/24                         The individual Hard movement speed scales for medium trash class Zeds.
			                                                                      
				var config float BloatMoveSpeedScaleHar;				// 1, BLOAT 
				var config float TrapperMoveSpeedScaleHar;				// 2, TRAPPER
				var config float BlasterMoveSpeedScaleHar;				// 3, BLASTER
				var config float BomberMoveSpeedScaleHar;				// 4, BOMBER
				var config float HuskMoveSpeedScaleHar;					// 5, HUSK
				var config float SirenMoveSpeedScaleHar;				// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, HARD  				  3 - 17/24                         The individual Hard movement speed scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendMoveSpeedScaleHar; 			// 1, GOREFIEND
				var config float GasCrawlerMoveSpeedScaleHar;			// 2, ELITE CRAWLER
				var config float RioterMoveSpeedScaleHar;				// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, HARD  					  7 -  24/24                        The individual Hard movement speed scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastMoveSpeedScaleHar; 			// 1, GOREFAST
				var config float StalkerMoveSpeedScaleHar;				// 2, STALKER
				var config float SlasherMoveSpeedScaleHar;				// 3, SLASHER
				var config float CystMoveSpeedScaleHar;					// 4, CYST
				var config float ClotMoveSpeedScaleHar;					// 5, CLOT
				var config float CrawlerMoveSpeedScaleHar;				// 6, CRAWLER
				var config float AbominationSpawnMoveSpeedScaleHar;		// 7, ABOMINATION SPAWN
					
				
				
		// III - ZED MOVESPEED SCALING VARIABLES, NORMAL - These individual movement speed scales for Zeds will be active by default assuming no special value sets are toggled. The numbers are for quality of life 
		                                                 // purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
														 
			// IV - BOSS ZEDS, NORMAL  						  5 - 5/24 							The individual Normal movement speed scales for boss class Zeds.
			                                                                
				var config float HansMoveSpeedScaleNor;					// 1, HANS         
				var config float MatriarchMoveSpeedScaleNor;			// 2, MATRIARCH 
				var config float PatriarchMoveSpeedScaleNor;			// 3, PATRIARCH
				var config float AbominationMoveSpeedScaleNor;			// 4, ABOMINATION
				var config float KingFleshpoundMoveSpeedScaleNor;		// 5, KING FLESHPOUND
                                                                                    
			                                                                        
			// IV - LARGE ZEDS, NORMAL  					  3 - 8/24                          The individual Normal movement speed scales for large class Zeds.       
			                                                                        
				var config float FleshpoundMoveSpeedScaleNor;			// 1, FLESHPOUND
				var config float ScrakeMoveSpeedScaleNor;				// 2, SCRAKE
				var config float QuarterpoundMoveSpeedScaleNor;			// 3, QUARTERPOUND
                                                                                  
			                                                                      
			// IV - MEDIUM TRASH ZEDS, NORMAL 				  6 - 14/24                         The individual Normal movement speed scales for medium trash class Zeds.
			                                                                      
				var config float BloatMoveSpeedScaleNor;				// 1, BLOAT 
				var config float TrapperMoveSpeedScaleNor;				// 2, TRAPPER
				var config float BlasterMoveSpeedScaleNor;				// 3, BLASTER
				var config float BomberMoveSpeedScaleNor;				// 4, BOMBER
				var config float HuskMoveSpeedScaleNor;					// 5, HUSK
				var config float SirenMoveSpeedScaleNor;				// 6, SIREN
                                                                                  
			                                                                      
			// IV - ELITE TRASH ZEDS, NORMAL  				  3 - 17/24                         The individual Normal movement speed scales for elite trash class Zeds. 
			                                                                      
				var config float GorefiendMoveSpeedScaleNor; 			// 1, GOREFIEND
				var config float GasCrawlerMoveSpeedScaleNor;			// 2, ELITE CRAWLER
				var config float RioterMoveSpeedScaleNor;				// 3, RIOTER
                                                                                  
			                                                                      
			// IV - WEAK TRASH ZEDS, NORMAL  				  7 -  24/24                        The individual Normal movement speed scales for weak trash class Zeds.  
			                                                                      
				var config float GorefastMoveSpeedScaleNor; 			// 1, GOREFAST
				var config float StalkerMoveSpeedScaleNor;				// 2, STALKER
				var config float SlasherMoveSpeedScaleNor;				// 3, SLASHER
				var config float CystMoveSpeedScaleNor;					// 4, CYST
				var config float ClotMoveSpeedScaleNor;					// 5, CLOT
				var config float CrawlerMoveSpeedScaleNor;				// 6, CRAWLER
				var config float AbominationSpawnMoveSpeedScaleNor;		// 7, ABOMINATION SPAWN


	
// I - MAKE SURE THE MUTATOR IS RUNNING OR SOMETHING - The 3 functions below start and add the mutator to the game or something I think. It works so just leave it.
 
	// II - IMPORTANT STUFF - I don't have a fine understanding of what these things do, but it doesn't seem to matter at this point.
	
			function InitMutator(string Options, out string ErrorMessage)
			{
				super.InitMutator( Options, ErrorMessage );
				`log("True Solo Mutator initialized");
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
	
	
	
// I - REPLACING THE SYRINGE - Replacing the vanilla Syringe with my custom, customizable Syringe that I created using my other 3 UC files. Re-purposed code from 
							// ArmorWelder: https://steamcommunity.com/sharedfiles/filedetails/?id=1163993031. As such, I lack a complete understanding of what this code section actually does as I only understood 
							// enough to make the appropriate changes to it to suit my needs.

	// II - SYRINGE REPLACEMENT FUNCTION - The process of replacing the Syringe
		
		private final function ReplaceSyringe(Pawn P)
		{
			local KFInventoryManager KFIM; 													// Creating a referenceable variable name for the inventory manager 
			local KFWeapon BabySyringe; 													// The easy mode syringe
			
			KFIM = KFInventoryManager(KFPawn(P).InvManager);								// Defining what KFIM is.								
			
			if (KFIM != none)
			{
				KFIM.GetWeaponFromClass(BabySyringe, 'KFWeap_Healer_Syringe'); 					// Assigns the "BabySyringe" name to the original syringe.
	
				if (TrueSoloHealingSyringe != none) 											
				{
					KFIM.CreateInventory(TrueSoloHealingSyringe /*, false*/);					// Create my custom Syringe
					LogInternal("=== TrueSoloHealingSyringe === Added the real syringe");		// Make a log reporting replacement success
				} 																				// If the real solo syringe doesn't exist, then create it
	
				if (BabySyringe != none)
				{
					KFIM.ServerRemoveFromInventory(BabySyringe);								// Remove the vanilla Syringe
					LogInternal("=== TrueSoloHealingSyringe === Removed baby syringe");			// Make a log reporting deletion success
				} 																				// If the original cheesy syringe still exists, remove it so the player ends up only with my Syringe.
			}
		}
	

	// II - APPLY SYRINGE REPLACEMENT FUNCTION TO PLAYER - Calls the function defined above to replace the vanilla Syringe.

		function ModifyPlayer(Pawn P) 															// Using a parent function set aside for modders to modify the player originating from KF2's source code in KFMutator.uc.
		{
			Super.ModifyPlayer(P);																// The "Super" part indicates a higher priority for the function over other similar ones.
			
			if (P != none)
				ReplaceSyringe(P); 																// If a player exists, then call the ReplaceSyringe function defined just above.
		}
	
	
	
// I - ZED DAMAGE AND MOVEMENT SPEED, SPECIAL VALUE SETS 

	function ModifyAI(Pawn AIPawn) 		// Parent function to modify AI Pawns set aside for modders from KF2's source code in KFMutator.uc.
	{
	
	// II - BLANKET SCALE PLAYER COUNT BOOLEANS - Does the user want blanket scales to automatically scale with player count according to customizable amounts?
	
		// III - DAMAGE SCALES BOOLEAN - Does the user want Zed damage blanket scales to automatically scale with player count according to customizable amounts?
		
			if(ScaleDamageBlanketsByPlayerCount == true) 			// If "true" is selected...
			{
				if(WorldInfo.Game.NumPlayers == 1)						// If the player count is 1, multiply every Zed's individual damage scale on the chosen difficulty by these amounts.
				{
					DamageScaleNor = DamageScaleNorOneP;					// Use the user's customized one-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarOneP;					// Use the user's customized one-player blanket scale for Zed damage on Hard
					DamageScaleSui = DamageScaleSuiOneP;					// Use the user's customized one-player blanket scale for Zed damage on Suicidal
					DamageScaleHel = DamageScaleHelOneP;					// Use the user's customized one-player blanket scale for Zed damage on Hell on Earth	
				}
				else if(WorldInfo.Game.NumPlayers == 2)					// If the player count is 2, multiply every Zed's individual damage scale on the chosen difficulty by these amounts.
				{
					DamageScaleNor = DamageScaleNorTwoP;					// Use the user's customized two-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarTwoP;					// Use the user's customized two-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiTwoP;					// Use the user's customized two-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelTwoP;					// Use the user's customized two-player blanket scale for Zed damage on Hell on Earth 		
				}
				else if(WorldInfo.Game.NumPlayers == 3)					// If the player count is 3, multiply every Zed's individual damage scale on the chosen difficulty by these amounts.
				{
					DamageScaleNor = DamageScaleNorThreeP;					// Use the user's customized three-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarThreeP;					// Use the user's customized three-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiThreeP;					// Use the user's customized three-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelThreeP;					// Use the user's customized three-player blanket scale for Zed damage on Hell on Earth 
				}
				else if(WorldInfo.Game.NumPlayers == 4)					// If the player count is 4, multiply every Zed's individual damage scale on the chosen difficulty by these amounts.
				{
					DamageScaleNor = DamageScaleNorFourP;					// Use the user's customized four-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarFourP;					// Use the user's customized four-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiFourP;					// Use the user's customized four-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelFourP;					// Use the user's customized four-player blanket scale for Zed damage on Hell on Earth 
				}
				else if(WorldInfo.Game.NumPlayers == 5)					// If the player count is 5, multiply every Zed's individual damage scale on the chosen difficulty by these amounts.
				{
					DamageScaleNor = DamageScaleNorFiveP;					// Use the user's customized five-player blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarFiveP;					// Use the user's customized five-player blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiFiveP;					// Use the user's customized five-player blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelFiveP;					// Use the user's customized five-player blanket scale for Zed damage on Hell on Earth 
				}
				else if(WorldInfo.Game.NumPlayers >= 6)					// If the player count is 6 or more, multiply every Zed's individual damage scale on the chosen difficulty by these amounts.
				{
					DamageScaleNor = DamageScaleNorSixPlusP;				// Use the user's customized six-player and up blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarSixPlusP;				// Use the user's customized six-player and up blanket scale for Zed damage on Hard 
					DamageScaleSui = DamageScaleSuiSixPlusP;				// Use the user's customized six-player and up blanket scale for Zed damage on Suicidal 
					DamageScaleHel = DamageScaleHelSixPlusP;				// Use the user's customized six-player and up blanket scale for Zed damage on Hell on Earth 
				}
			}
			
		
		
		// III - Move Speed Scales Boolean - Does the user want Zed movement speed blanket scales to automatically scale with player count according to customizable amounts?
		
			if(ScaleMoveSpeedBlanketsByPlayerCount == true)			// If "true" is selected...
			{
				if(WorldInfo.Game.NumPlayers == 1)						// If the player count is 1, multiply every Zed's invididual movement speed scale on the chosen difficulty by these amounts.
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorOneP;			// Use the user's customized one-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarOneP;			// Use the user's customized one-player blanket scale for Zed move speed on Hard
						MoveSpeedScaleSui = MoveSpeedScaleSuiOneP;			// Use the user's customized one-player blanket scale for Zed move speed on Suicidal
						MoveSpeedScaleHel = MoveSpeedScaleHelOneP;			// Use the user's customized one-player blanket scale for Zed move speed on Hell on Earth	
					}
					else if(WorldInfo.Game.NumPlayers == 2)				// If the player count is 2, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorTwoP;			// Use the user's customized two-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarTwoP;			// Use the user's customized two-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiTwoP;			// Use the user's customized two-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelTwoP;			// Use the user's customized two-player blanket scale for Zed move speed on Hell on Earth 		
					}
					else if(WorldInfo.Game.NumPlayers == 3)				// If the player count is 3, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorThreeP;		// Use the user's customized three-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarThreeP;		// Use the user's customized three-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiThreeP;		// Use the user's customized three-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelThreeP;		// Use the user's customized three-player blanket scale for Zed move speed on Hell on Earth 	
					}
					else if(WorldInfo.Game.NumPlayers == 4)				// If the player count is 4, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorFourP;			// Use the user's customized four-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarFourP;			// Use the user's customized four-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiFourP;			// Use the user's customized four-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelFourP;			// Use the user's customized four-player blanket scale for Zed move speed on Hell on Earth 	
					}
					else if(WorldInfo.Game.NumPlayers == 5)				// If the player count is 5, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorFiveP;			// Use the user's customized five-player blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarFiveP;			// Use the user's customized five-player blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiFiveP;			// Use the user's customized five-player blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelFiveP;			// Use the user's customized five-player blanket scale for Zed move speed on Hell on Earth 	
					}
					else if(WorldInfo.Game.NumPlayers >= 6)				// If the player count is 6 or more, apply these blanket scales
					{
						MoveSpeedScaleNor = MoveSpeedScaleNorSixPlusP;		// Use the user's customized six-player and up blanket scale for Zed move speed on Normal
						MoveSpeedScaleHar = MoveSpeedScaleHarSixPlusP;		// Use the user's customized six-player and up blanket scale for Zed move speed on Hard 
						MoveSpeedScaleSui = MoveSpeedScaleSuiSixPlusP;		// Use the user's customized six-player and up blanket scale for Zed move speed on Suicidal 
						MoveSpeedScaleHel = MoveSpeedScaleHelSixPlusP;		// Use the user's customized six-player and up blanket scale for Zed move speed on Hell on Earth 	
					}
			}
			
			
			
	// II - UNIVERSAL SCALES BOOLEAN - Does the user want to use only one customizable set of variables for Zeds individual scales and blankets for all player counts and difficulties?
	
		// III - UNIVERSAL SCALES - These scales remain active across all difficulties and player counts if universal settings are toggled. 
		
			if(UseUniversalSet == true) 								// If "true" is selected, enable the universal set.
			{
				
			// IV - PLAYER COUNT SCALING BOOLEAN OVERRIDES - If the booleans for scaling Zed damage and move speed blankets by player count are contradictorily marked "true", set them to false if universal variables are toggled.
					
				// V - ZED DAMAGE BLANKETS - Overriding the Zed damage blanket player scaling boolean 
			
					if(ScaleDamageBlanketsByPlayerCount == true)
					{
						ScaleDamageBlanketsByPlayerCount = false; 		// Disable scaling Zed damage blankets by player count if the user enabled it along with universal settings
					}
				
				
				// V - ZED MOVE SPEED BLANKETS - Overriding the Zed movement speed blanket player scaling boolean
					
					if(ScaleMoveSpeedBlanketsByPlayerCount == true)
					{
						ScaleMoveSpeedBlanketsByPlayerCount = false;	// Disable scaling Zed damage blankets by player count if the user enabled it along with universal settings
					}
						
						
								
			// IV - BLANKET SCALE REPLACEMENT, UNIVERSAL - Assign all blanket scales the values of their universal versions
			
				// V - ZED DAMAGE BLANKETS, UNIVERSAL - Zed damage blanket assignment
				
					DamageScaleNor = DamageScaleUni;						// Tell the blanket scale for Zed damage on Normal to assume the value of one universal damage blanket
					DamageScaleHar = DamageScaleUni;						// Tell the blanket scale for Zed damage on Hard to assume the value of one universal damage blanket
					DamageScaleSui = DamageScaleUni;						// Tell the blanket scale for Zed damage on Suicidal to assume the value of one universal damage blanket
					DamageScaleHel = DamageScaleUni;						// Tell the blanket scale for Zed damage on Hell on Earth to assume the value of one universal damage blanket	
				
				
				// V - ZED MOVE SPEED BLANKETS, UNIVERSAL - Zed movement speed blanket assignment
				
					MoveSpeedScaleNor = MoveSpeedScaleUni;					// Tell the blanket scale for Zed movement speed on Normal to assume the value of one universal movement speed blanket
					MoveSpeedScaleHar = MoveSpeedScaleUni;					// Tell the blanket scale for Zed movement speed on Hard to assume the value of one universal movement speed blanket
					MoveSpeedScaleSui = MoveSpeedScaleUni;					// Tell the blanket scale for Zed movement speed on Suicidal to assume the value of one universal movement speed blanket
					MoveSpeedScaleHel = MoveSpeedScaleUni;					// Tell the blanket scale for Zed movement speed on Hell on Earth to assume the value of one universal movement speed blanket	
					
			
			
			// IV - INDIVIDUAL ZED DAMAGE SCALE REPLACEMENT, UNIVERSAL - Assign all individual Zed damage scales the values of their universal versions. These individual damage scales for Zeds will be active by regardless of  
																	  // difficulty or player count if universal value sets are toggled. The numbers are for quality of life purposes to make sure we're not missing Zeds. 24 Zeds  
																	  // in the game. First number is the amount in a category, second is that number added to an overall count.
														   
				// V - BOSS ZEDS, UNIVERSAL 									5 - 5/24 		Replacing the individual damage scales for boss class Zeds with their universal versions.
				
					// VI - HANS VOLTER, UNIVERSAL - 1
					
						HansDamageScaleNor = HansDamageScaleUni; 							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						HansDamageScaleHar = HansDamageScaleUni;            		   	 	// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						HansDamageScaleSui = HansDamageScaleUni;            		   		// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT  	Zed's Suicidal damage scale instead equals a universal version.
						HansDamageScaleHel = HansDamageScaleUni;            		   		// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT  	Zed's Hell on Earth damage scale instead equals a universal version.	
									
									
					// VI - MATRIARCH, UNIVERSAL - 2				
				
						MatriarchDamageScaleNor = MatriarchDamageScaleUni;					// NORMAL 			DAMAGE SCALE 	REPLACEMENT  	Zed's Normal damage scale instead equals a universal version.
						MatriarchDamageScaleHar = MatriarchDamageScaleUni;					// HARD 			DAMAGE SCALE 	REPLACEMENT  	Zed's Hard damage scale instead equals a universal version.
						MatriarchDamageScaleSui = MatriarchDamageScaleUni;					// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT  	Zed's Suicidal damage scale instead equals a universal version.
						MatriarchDamageScaleHel = MatriarchDamageScaleUni;					// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT  	Zed's Hell on Earth damage scale instead equals a universal version.	
										
										
					// VI - PATRIARCH, UNIVERSAL - 3				
										
						PatriarchDamageScaleNor = PatriarchDamageScaleUni;					// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						PatriarchDamageScaleHar = PatriarchDamageScaleUni;					// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						PatriarchDamageScaleSui = PatriarchDamageScaleUni;					// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						PatriarchDamageScaleHel = PatriarchDamageScaleUni;					// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
										
					// VI - ABOMINATION, UNIVERSAL - 4				
										
						AbominationDamageScaleNor = AbominationDamageScaleUni;				// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						AbominationDamageScaleHar = AbominationDamageScaleUni;				// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						AbominationDamageScaleSui = AbominationDamageScaleUni;				// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						AbominationDamageScaleHel = AbominationDamageScaleUni;				// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
										
					// VI - KING FLESHPOUND, UNIVERSAL - 5				
										
						KingFleshpoundDamageScaleNor = KingFleshpoundDamageScaleUni;		// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						KingFleshpoundDamageScaleHar = KingFleshpoundDamageScaleUni;		// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						KingFleshpoundDamageScaleSui = KingFleshpoundDamageScaleUni;		// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						KingFleshpoundDamageScaleHel = KingFleshpoundDamageScaleUni;		// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
				
										
										
				// V - LARGE ZEDS, UNIVERSAL 									3 - 8/24		Replacing the individual damage scales for large class Zeds with their universal versions.		
										
					// VI - FLESHPOUND, UNIVERSAL				
									
						FleshpoundDamageScaleNor = FleshpoundDamageScaleUni;				// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						FleshpoundDamageScaleHar = FleshpoundDamageScaleUni;				// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						FleshpoundDamageScaleSui = FleshpoundDamageScaleUni;				// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						FleshpoundDamageScaleHel = FleshpoundDamageScaleUni;				// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
										
					// VI - SCRAKE, UNIVERSAL				
										
						ScrakeDamageScaleNor = ScrakeDamageScaleUni;		    		    // NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						ScrakeDamageScaleHar = ScrakeDamageScaleUni;		    		    // HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						ScrakeDamageScaleSui = ScrakeDamageScaleUni;		    		    // SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						ScrakeDamageScaleHel = ScrakeDamageScaleUni;		    		    // HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
								
					// VI - QUARTER POUND, UNIVERSAL	
						
						QuarterpoundDamageScaleNor = QuarterpoundDamageScaleUni;			// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						QuarterpoundDamageScaleHar = QuarterpoundDamageScaleUni;			// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						QuarterpoundDamageScaleSui = QuarterpoundDamageScaleUni;			// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	Zed's Suicidal damage scale instead equals a universal version.
						QuarterpoundDamageScaleHel = QuarterpoundDamageScaleUni;			// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	Zed's Hell on Earth damage scale instead equals a universal version.	
				
							
							
				// V - MEDIUM TRASH ZEDS, UNIVERSAL 							6 - 14/24		Replacing the individual damage scales for medium trash class Zeds with their universal versions.
					
					// VI - BLOAT, UNIVERSAL - 1	
										
						BloatDamageScaleNor = BloatDamageScaleUni;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						BloatDamageScaleHar = BloatDamageScaleUni;							// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						BloatDamageScaleSui = BloatDamageScaleUni;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						BloatDamageScaleHel = BloatDamageScaleUni;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
									
	
					// VI - EDAR TRAPPER, UNIVERSAL - 2	
										
						TrapperDamageScaleNor = TrapperDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						TrapperDamageScaleHar = TrapperDamageScaleUni;						// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						TrapperDamageScaleSui = TrapperDamageScaleUni;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						TrapperDamageScaleHel = TrapperDamageScaleUni;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
								
	
					// VI - EDAR BLASTER, UNIVERSAL - 3	
						
						BlasterDamageScaleNor = BlasterDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						BlasterDamageScaleHar = BlasterDamageScaleUni; 						// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						BlasterDamageScaleSui = BlasterDamageScaleUni; 						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						BlasterDamageScaleHel = BlasterDamageScaleUni; 						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
						
					// VI - EDAR BOMBER, UNIVERSAL - 4	
						
						BomberDamageScaleNor = BomberDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						BomberDamageScaleHar = BomberDamageScaleUni;						// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						BomberDamageScaleSui = BomberDamageScaleUni;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						BomberDamageScaleHel = BomberDamageScaleUni;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
									
						
					// VI - HUSK, UNIVERSAL - 5	
						
						HuskDamageScaleNor = HuskDamageScaleUni;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						HuskDamageScaleHar = HuskDamageScaleUni;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						HuskDamageScaleSui = HuskDamageScaleUni;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	Zed's Suicidal damage scale instead equals a universal version.
						HuskDamageScaleHel = HuskDamageScaleUni;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	Zed's Hell on Earth damage scale instead equals a universal version.	
								
	
					// VI - SIREN, UNIVERSAL - 6	
						
						SirenDamageScaleNor = SirenDamageScaleUni;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT  	Zed's Normal damage scale instead equals a universal version.
						SirenDamageScaleHar = SirenDamageScaleUni;							// HARD 			DAMAGE SCALE 	REPLACEMENT  	Zed's Hard damage scale instead equals a universal version.
						SirenDamageScaleSui = SirenDamageScaleUni;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT  	Zed's Suicidal damage scale instead equals a universal version.
						SirenDamageScaleHel = SirenDamageScaleUni;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT  	Zed's Hell on Earth damage scale instead equals a universal version.	
				
								
								
				// V - ELITE TRASH ZEDS, UNIVERSAL  							3 - 17/24		Replacing the individual damage scales for boss class Zeds with their universal versions.
					
					// VI - GOREFIEND, UNIVERSAL - 1	
					
						GorefiendDamageScaleNor = GorefiendDamageScaleUni;					// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						GorefiendDamageScaleHar = GorefiendDamageScaleUni;					// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						GorefiendDamageScaleSui = GorefiendDamageScaleUni;					// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						GorefiendDamageScaleHel = GorefiendDamageScaleUni;					// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
										
					// VI - ELITE CRAWLER, UNIVERSAL - 2	
						
						GasCrawlerDamageScaleNor = GasCrawlerDamageScaleUni;				// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						GasCrawlerDamageScaleHar = GasCrawlerDamageScaleUni;				// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						GasCrawlerDamageScaleSui = GasCrawlerDamageScaleUni;				// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	Zed's Suicidal damage scale instead equals a universal version.
						GasCrawlerDamageScaleHel = GasCrawlerDamageScaleUni;				// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	Zed's Hell on Earth damage scale instead equals a universal version.	
										
											
					// VI - RIOTER, UNIVERSAL - 3	
						
						RioterDamageScaleNor = RioterDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						RioterDamageScaleHar = RioterDamageScaleUni;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						RioterDamageScaleSui = RioterDamageScaleUni;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	Zed's Suicidal damage scale instead equals a universal version.
						RioterDamageScaleHel = RioterDamageScaleUni;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	Zed's Hell on Earth damage scale instead equals a universal version.	
				
							
							
				// V - WEAK TRASH ZEDS, UNIVERSAL 								 7 - 24/24		Replacing the individual damage scales for boss class Zeds with their universal versions.
						
					// VI - GOREFAST, UNIVERSAL - 1	
					
						GorefastDamageScaleNor = GorefastDamageScaleUni;					// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						GorefastDamageScaleHar = GorefastDamageScaleUni;					// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						GorefastDamageScaleSui = GorefastDamageScaleUni;					// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						GorefastDamageScaleHel = GorefastDamageScaleUni;					// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
										
					// VI - STALKER, UNIVERSAL - 2	
						
						StalkerDamageScaleNor = StalkerDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						StalkerDamageScaleHar = StalkerDamageScaleUni;						// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						StalkerDamageScaleSui = StalkerDamageScaleUni;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						StalkerDamageScaleHel = StalkerDamageScaleUni;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
							
								
					// VI - SLASHER, UNIVERSAL - 3							
												
						SlasherDamageScaleNor = SlasherDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						SlasherDamageScaleHar = SlasherDamageScaleUni;						// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						SlasherDamageScaleSui = SlasherDamageScaleUni;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						SlasherDamageScaleHel = SlasherDamageScaleUni;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
						
	
					// VI - CYST, UNIVERSAL - 4	
						
						CystDamageScaleNor = CystDamageScaleUni;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						CystDamageScaleHar = CystDamageScaleUni;							// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						CystDamageScaleSui = CystDamageScaleUni;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						CystDamageScaleHel = CystDamageScaleUni;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.	
						
	
					// VI - CLOT, UNIVERSAL - 5	
						
						ClotDamageScaleNor = ClotDamageScaleUni;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						ClotDamageScaleHar = ClotDamageScaleUni;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						ClotDamageScaleSui = ClotDamageScaleUni;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	Zed's Suicidal damage scale instead equals a universal version.
						ClotDamageScaleHel = ClotDamageScaleUni;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	Zed's Hell on Earth damage scale instead equals a universal version.	
										
											
					// VI - CRAWLER, UNIVERSAL - 6	
						
						CrawlerDamageScaleNor = CrawlerDamageScaleUni;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	Zed's Normal damage scale instead equals a universal version.
						CrawlerDamageScaleHar = CrawlerDamageScaleUni;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	Zed's Hard damage scale instead equals a universal version.
						CrawlerDamageScaleSui = CrawlerDamageScaleUni;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	Zed's Suicidal damage scale instead equals a universal version.
						CrawlerDamageScaleHel = CrawlerDamageScaleUni;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	Zed's Hell on Earth damage scale instead equals a universal version.	
							
							
					// VI - ABOMINATION SPAWN, UNIVERSAL - 7	
						
						AbominationSpawnDamageScaleNor = AbominationSpawnDamageScaleUni;	// NORMAL 			DAMAGE SCALE 	REPLACEMENT     Zed's Normal damage scale instead equals a universal version.
						AbominationSpawnDamageScaleHar = AbominationSpawnDamageScaleUni;	// HARD 			DAMAGE SCALE 	REPLACEMENT     Zed's Hard damage scale instead equals a universal version.
						AbominationSpawnDamageScaleSui = AbominationSpawnDamageScaleUni;	// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT     Zed's Suicidal damage scale instead equals a universal version.
						AbominationSpawnDamageScaleHel = AbominationSpawnDamageScaleUni;	// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT     Zed's Hell on Earth damage scale instead equals a universal version.			
			
	
	
			// IV - INDIVIDUAL ZED MOVE SPEED SCALE REPLACEMENT, UNIVERSAL - Assign all individual Zed movement speed scales the values of their universal versions. These individual damage scales for Zeds will be active by   
			                                                              // regardless of difficulty or player count if universal value sets are toggled. The numbers are for quality of life purposes to make sure we're not 
			                                                              // missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
	
				// V - BOSS ZEDS, UNIVERSAL 									 5 - 5/24 				Replacing the individual movement speed scales for boss class Zeds with their universal versions.
				
					// VI - HANS VOLTER, UNIVERSAL - 1
					
						HansMoveSpeedScaleNor = HansMoveSpeedScaleUni; 							// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						HansMoveSpeedScaleHar = HansMoveSpeedScaleUni;            			    // HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						HansMoveSpeedScaleSui = HansMoveSpeedScaleUni;            			    // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						HansMoveSpeedScaleHel = HansMoveSpeedScaleUni;            			    // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.
									
									
					// VI - MATRIARCH, UNIVERSAL - 2				
				
						MatriarchMoveSpeedScaleNor = MatriarchMoveSpeedScaleUni;				// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						MatriarchMoveSpeedScaleHar = MatriarchMoveSpeedScaleUni;				// HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						MatriarchMoveSpeedScaleSui = MatriarchMoveSpeedScaleUni;				// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						MatriarchMoveSpeedScaleHel = MatriarchMoveSpeedScaleUni;				// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.
										
										
					// VI - PATRIARCH, UNIVERSAL - 3				
										
						PatriarchMoveSpeedScaleNor = PatriarchMoveSpeedScaleUni;				// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						PatriarchMoveSpeedScaleHar = PatriarchMoveSpeedScaleUni;				// HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						PatriarchMoveSpeedScaleSui = PatriarchMoveSpeedScaleUni;				// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						PatriarchMoveSpeedScaleHel = PatriarchMoveSpeedScaleUni;				// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.
																								
																								
					// VI - ABOMINATION, UNIVERSAL - 4			                                	    
																								
						AbominationMoveSpeedScaleNor = AbominationMoveSpeedScaleUni;			// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						AbominationMoveSpeedScaleHar = AbominationMoveSpeedScaleUni;			// HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						AbominationMoveSpeedScaleSui = AbominationMoveSpeedScaleUni;			// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						AbominationMoveSpeedScaleHel = AbominationMoveSpeedScaleUni;			// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.
									
									
					// VI - KING FLESHPOUND, UNIVERSAL - 5			
									
						KingFleshpoundMoveSpeedScaleNor = KingFleshpoundMoveSpeedScaleUni;		// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						KingFleshpoundMoveSpeedScaleHar = KingFleshpoundMoveSpeedScaleUni;		// HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						KingFleshpoundMoveSpeedScaleSui = KingFleshpoundMoveSpeedScaleUni;		// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						KingFleshpoundMoveSpeedScaleHel = KingFleshpoundMoveSpeedScaleUni;		// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.
			
									
									
				// V - LARGE ZEDS, UNIVERSAL 									 3 - 8/24				Replacing the individual movement speed scales for large class Zeds with their universal versions.		
									
					// VI - FLESHPOUND, UNIVERSAL			
								
						FleshpoundMoveSpeedScaleNor = FleshpoundMoveSpeedScaleUni;				// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						FleshpoundMoveSpeedScaleHar = FleshpoundMoveSpeedScaleUni;				// HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						FleshpoundMoveSpeedScaleSui = FleshpoundMoveSpeedScaleUni;				// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						FleshpoundMoveSpeedScaleHel = FleshpoundMoveSpeedScaleUni;				// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.	
																								
																								
					// VI - SCRAKE, UNIVERSAL			                                            	    
																								
						ScrakeMoveSpeedScaleNor = ScrakeMoveSpeedScaleUni;		    			// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Normal move speed scale instead equals a universal version.
						ScrakeMoveSpeedScaleHar = ScrakeMoveSpeedScaleUni;		    			// HARD 			MOVE SPEED SCALE 	REPLACEMENT    Zed's Hard move speed scale instead equals a universal version.
						ScrakeMoveSpeedScaleSui = ScrakeMoveSpeedScaleUni;		    			// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT    Zed's Suicidal move speed scale instead equals a universal version.
						ScrakeMoveSpeedScaleHel = ScrakeMoveSpeedScaleUni;		    			// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT    Zed's Hell on Earth move speed scale instead equals a universal version.    
																								
																								
					// VI - QUARTER POUND, UNIVERSAL                                              	    
																								
						QuarterpoundMoveSpeedScaleNor = QuarterpoundMoveSpeedScaleUni;			// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						QuarterpoundMoveSpeedScaleHar = QuarterpoundMoveSpeedScaleUni;			// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						QuarterpoundMoveSpeedScaleSui = QuarterpoundMoveSpeedScaleUni;			// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						QuarterpoundMoveSpeedScaleHel = QuarterpoundMoveSpeedScaleUni;			// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.
			                                                                                
									           
											   
				// V - MEDIUM TRASH ZEDS, UNIVERSAL  							 6 - 14/24    			Replacing the individual movement speed scales for medium trash class Zeds with their universal versions.                                        
				                                                                            
					// VI - BLOAT, UNIVERSAL - 1                                                     
									                                                       
						BloatMoveSpeedScaleNor = BloatMoveSpeedScaleUni;						// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						BloatMoveSpeedScaleHar = BloatMoveSpeedScaleUni;						// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						BloatMoveSpeedScaleSui = BloatMoveSpeedScaleUni;						// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						BloatMoveSpeedScaleHel = BloatMoveSpeedScaleUni;						// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
								                                                           
                                                                                           
					// VI - EDAR TRAPPER, UNIVERSAL - 2                                              
									                                                       
						TrapperMoveSpeedScaleNor = TrapperMoveSpeedScaleUni;					// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						TrapperMoveSpeedScaleHar = TrapperMoveSpeedScaleUni;					// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						TrapperMoveSpeedScaleSui = TrapperMoveSpeedScaleUni;					// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						TrapperMoveSpeedScaleHel = TrapperMoveSpeedScaleUni;					// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.			
							

					// VI - EDAR BLASTER, UNIVERSAL - 3
					
						BlasterMoveSpeedScaleNor = BlasterMoveSpeedScaleUni;					// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						BlasterMoveSpeedScaleHar = BlasterMoveSpeedScaleUni; 					// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						BlasterMoveSpeedScaleSui = BlasterMoveSpeedScaleUni; 					// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						BlasterMoveSpeedScaleHel = BlasterMoveSpeedScaleUni; 					// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.		
									
					
					// VI - EDAR BOMBER, UNIVERSAL - 4
					
						BomberMoveSpeedScaleNor = BomberMoveSpeedScaleUni;						// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						BomberMoveSpeedScaleHar = BomberMoveSpeedScaleUni;						// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						BomberMoveSpeedScaleSui = BomberMoveSpeedScaleUni;						// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						BomberMoveSpeedScaleHel = BomberMoveSpeedScaleUni;						// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
								
					
					// VI - HUSK, UNIVERSAL - 5
					
						HuskMoveSpeedScaleNor = HuskMoveSpeedScaleUni;							// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT 	Zed's Normal move speed scale instead equals a universal version.
						HuskMoveSpeedScaleHar = HuskMoveSpeedScaleUni;						    // HARD 			MOVE SPEED SCALE 	REPLACEMENT 	Zed's Hard move speed scale instead equals a universal version.
						HuskMoveSpeedScaleSui = HuskMoveSpeedScaleUni;						    // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT 	Zed's Suicidal move speed scale instead equals a universal version.
						HuskMoveSpeedScaleHel = HuskMoveSpeedScaleUni;						    // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT 	Zed's Hell on Earth move speed scale instead equals a universal version.	
							

					// VI - SIREN, UNIVERSAL - 6
					
						SirenMoveSpeedScaleNor = SirenMoveSpeedScaleUni;						// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						SirenMoveSpeedScaleHar = SirenMoveSpeedScaleUni;					    // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						SirenMoveSpeedScaleSui = SirenMoveSpeedScaleUni;					    // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						SirenMoveSpeedScaleHel = SirenMoveSpeedScaleUni;					    // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
			
							
							
				// V - ELITE TRASH ZEDS, UNIVERSAL 								 3 - 17/24 				Replacing the individual movement speed scales for elite trash class Zeds with their universal versions.
				
					// VI - GOREFIEND, UNIVERSAL - 1
				
						GorefiendMoveSpeedScaleNor = GorefiendMoveSpeedScaleUni;				// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						GorefiendMoveSpeedScaleHar = GorefiendMoveSpeedScaleUni;		        // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						GorefiendMoveSpeedScaleSui = GorefiendMoveSpeedScaleUni;		        // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						GorefiendMoveSpeedScaleHel = GorefiendMoveSpeedScaleUni;		        // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.
									
									
					// VI - ELITE CRAWLER, UNIVERSAL - 2
					
						GasCrawlerMoveSpeedScaleNor = GasCrawlerMoveSpeedScaleUni;				// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						GasCrawlerMoveSpeedScaleHar = GasCrawlerMoveSpeedScaleUni;		        // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						GasCrawlerMoveSpeedScaleSui = GasCrawlerMoveSpeedScaleUni;		        // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						GasCrawlerMoveSpeedScaleHel = GasCrawlerMoveSpeedScaleUni;		        // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
									
										
					// VI - RIOTER, UNIVERSAL - 3
					
						RioterMoveSpeedScaleNor = RioterMoveSpeedScaleUni;						// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						RioterMoveSpeedScaleHar = RioterMoveSpeedScaleUni;				        // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						RioterMoveSpeedScaleSui = RioterMoveSpeedScaleUni;				        // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						RioterMoveSpeedScaleHel = RioterMoveSpeedScaleUni;				        // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
			
										
				// V - WEAK TRASH ZEDS, UNIVERSAL 								 7 - 24/24 				Replacing the individual movement speed scales for weak trash class Zeds with their universal versions.
					
					// VI - GOREFAST, UNIVERSAL - 1
				
						GorefastMoveSpeedScaleNor = GorefastMoveSpeedScaleUni;					// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						GorefastMoveSpeedScaleHar = GorefastMoveSpeedScaleUni;				    // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						GorefastMoveSpeedScaleSui = GorefastMoveSpeedScaleUni;				    // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						GorefastMoveSpeedScaleHel = GorefastMoveSpeedScaleUni;				    // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
									
					// VI - STALKER, UNIVERSAL - 2
					
						StalkerMoveSpeedScaleNor = StalkerMoveSpeedScaleUni;					// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						StalkerMoveSpeedScaleHar = StalkerMoveSpeedScaleUni;				    // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						StalkerMoveSpeedScaleSui = StalkerMoveSpeedScaleUni;				    // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						StalkerMoveSpeedScaleHel = StalkerMoveSpeedScaleUni;				    // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
						
							
					// VI - SLASHER, UNIVERSAL - 3						
											
						SlasherMoveSpeedScaleNor = SlasherMoveSpeedScaleUni;					// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						SlasherMoveSpeedScaleHar = SlasherMoveSpeedScaleUni;				    // HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						SlasherMoveSpeedScaleSui = SlasherMoveSpeedScaleUni;				    // SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						SlasherMoveSpeedScaleHel = SlasherMoveSpeedScaleUni;				    // HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
					

					// VI - CYST, UNIVERSAL - 4
					
						CystMoveSpeedScaleNor = CystMoveSpeedScaleUni;							// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						CystMoveSpeedScaleHar = CystMoveSpeedScaleUni;							// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						CystMoveSpeedScaleSui = CystMoveSpeedScaleUni;							// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						CystMoveSpeedScaleHel = CystMoveSpeedScaleUni;							// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
					

					// VI - CLOT, UNIVERSAL - 5
					
						ClotMoveSpeedScaleNor = ClotMoveSpeedScaleUni;							// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT 	Zed's Normal move speed scale instead equals a universal version.
						ClotMoveSpeedScaleHar = ClotMoveSpeedScaleUni;							// HARD 			MOVE SPEED SCALE 	REPLACEMENT 	Zed's Hard move speed scale instead equals a universal version.
						ClotMoveSpeedScaleSui = ClotMoveSpeedScaleUni;							// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT 	Zed's Suicidal move speed scale instead equals a universal version.
						ClotMoveSpeedScaleHel = ClotMoveSpeedScaleUni;							// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT 	Zed's Hell on Earth move speed scale instead equals a universal version.	
									
										
					// VI - CRAWLER, UNIVERSAL - 6
					
						CrawlerMoveSpeedScaleNor = CrawlerMoveSpeedScaleUni;					// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals a universal version.
						CrawlerMoveSpeedScaleHar = CrawlerMoveSpeedScaleUni;					// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals a universal version.
						CrawlerMoveSpeedScaleSui = CrawlerMoveSpeedScaleUni;					// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals a universal version.
						CrawlerMoveSpeedScaleHel = CrawlerMoveSpeedScaleUni;					// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals a universal version.	
						
						
					// VI - ABOMINATION SPAWN, UNIVERSAL - 7
					
						AbominationSpawnMoveSpeedScaleNor = AbominationSpawnMoveSpeedScaleUni;	// NORMAL 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Normal move speed scale instead equals its universal version.
						AbominationSpawnMoveSpeedScaleHar = AbominationSpawnMoveSpeedScaleUni;	// HARD 			MOVE SPEED SCALE 	REPLACEMENT     Zed's Hard move speed scale instead equals its universal version.
						AbominationSpawnMoveSpeedScaleSui = AbominationSpawnMoveSpeedScaleUni;	// SUICIDAL 		MOVE SPEED SCALE 	REPLACEMENT     Zed's Suicidal move speed scale instead equals its universal version.
						AbominationSpawnMoveSpeedScaleHel = AbominationSpawnMoveSpeedScaleUni;	// HELL ON EARTH 	MOVE SPEED SCALE 	REPLACEMENT     Zed's Hell on Earth move speed scale instead equals its universal version.
			}
	
	
	
	// II - DEFAULT VARIABLES BOOLEAN - Does the user want to enable to mutator's default settings?
	
		// III - DEFAULTING - Overriding special value sets and user customizations for as long as default settings are enabled.
		
			if(UseDefault == true) 								// If default settings are activated by the user then run the logic block below.
			{
				
			// IV - CONTRADICTING BOOLEAN OVERRIDES - If the booleans for scaling damage and/or move speed blankets by player count are contradictorily marked "true", set them to false if default variables are toggled.
					
				// V - ZED DAMAGE BLANKETS - Check if the user also contradictorily enabled scaling Zed damage blankets by player count and disable it if they did.
			
					if(ScaleDamageBlanketsByPlayerCount == true)
					{
						ScaleDamageBlanketsByPlayerCount = false;
					}
				
				
				// V - ZED MOVE SPEED BLANKETS  - Check if the user also contradictorily enabled scaling Zed movement speed blankets by player count and disable it if they did.
					
					if(ScaleMoveSpeedBlanketsByPlayerCount == true)
					{
						ScaleMoveSpeedBlanketsByPlayerCount = false;
					}
					
			
				// V - UNIVERSAL BOOLEAN OVERRIDE - Check if the user also contradictorily enabled scaling universal settings and disable it if they did.
						
					if(UseUniversalSet == true)
					{
						UseUniversalSet = false;
					}
					
					
								
			// IV - BLANKET SCALE REPLACEMENT - Assign all blanket scales the values of their default versions
			
				// V - ZED DAMAGE BLANKETS, DEFAULT - Defaulting Zed damage blankets to 1.0
				
					DamageScaleNor = DamageScaleNorDef;						// NORMAL 			ZED DAMAGE BLANKET 			REPLACEMENT 	Use the default blanket scale for Zed damage on Normal
					DamageScaleHar = DamageScaleHarDef;						// HARD 			ZED DAMAGE BLANKET 			REPLACEMENT 	Use the default blanket scale for Zed damage on Hard
					DamageScaleSui = DamageScaleSuiDef;						// SUICIDAL 		ZED DAMAGE BLANKET 			REPLACEMENT 	Use the default blanket scale for Zed damage on Suicidal
					DamageScaleHel = DamageScaleHelDef;						// HELL ON EARTH 	ZED DAMAGE BLANKET 			REPLACEMENT 	Use the default blanket scale for Zed damage on Hell on Earth	
				
				
				// V - ZED MOVE SPEED BLANKETS, DEFAULT  - Defaulting Zed movement speed blankets to 1.0
				
					MoveSpeedScaleNor = MoveSpeedScaleNorDef;				// NORMAL 			ZED MOVE SPEED BLANKET 		REPLACEMENT 	Use the default blanket scale for Zed damage on Normal
					MoveSpeedScaleHar = MoveSpeedScaleHarDef;				// HARD 			ZED MOVE SPEED BLANKET 		REPLACEMENT 	Use the default blanket scale for Zed damage on Hard
					MoveSpeedScaleSui = MoveSpeedScaleSuiDef;				// SUICIDAL 		ZED MOVE SPEED BLANKET 		REPLACEMENT 	Use the default blanket scale for Zed damage on Suicidal
					MoveSpeedScaleHel = MoveSpeedScaleHelDef;				// HELL ON EARTH 	ZED MOVE SPEED BLANKET 		REPLACEMENT 	Use the default blanket scale for Zed damage on Hell on Earth	
					
			
			
			// IV - INDIVIDUAL ZED DAMAGE SCALE REPLACEMENT, DEFAULT - Assign all individual Zed damage scales the values of their default versions. These individual damage scales for Zeds will be active if default 
			                                                        // settings are toggled and will override user customizations to the INI as long as it is active. The numbers are for quality of life purposes to make 
			                                                        // sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
				
				// V - BOSS ZEDS, DEFAULT 						 					5 - 5/24 				Replacing the individual movement speed scales for boss class Zeds with their default versions.
				
					// VI - HANS VOLTER, DEFAULT - 1
					
						HansDamageScaleNor = HansDamageScaleNorDef; 								// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						HansDamageScaleHar = HansDamageScaleHarDef;            					    // HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						HansDamageScaleSui = HansDamageScaleSuiDef;            					    // SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						HansDamageScaleHel = HansDamageScaleHelDef;            					    // HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
										
										
					// VI - MATRIARCH, DEFAULT - 2					
					
						MatriarchDamageScaleNor = MatriarchDamageScaleNorDef;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						MatriarchDamageScaleHar = MatriarchDamageScaleHarDef;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						MatriarchDamageScaleSui = MatriarchDamageScaleSuiDef;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						MatriarchDamageScaleHel = MatriarchDamageScaleHelDef;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
											
					// VI - PATRIARCH, DEFAULT - 3					
											
						PatriarchDamageScaleNor = PatriarchDamageScaleNorDef;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						PatriarchDamageScaleHar = PatriarchDamageScaleHarDef;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						PatriarchDamageScaleSui = PatriarchDamageScaleSuiDef;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						PatriarchDamageScaleHel = PatriarchDamageScaleHelDef;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
											
					// VI - ABOMINATION, DEFAULT - 4					
											
						AbominationDamageScaleNor = AbominationDamageScaleNorDef;					// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						AbominationDamageScaleHar = AbominationDamageScaleHarDef;					// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						AbominationDamageScaleSui = AbominationDamageScaleSuiDef;					// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						AbominationDamageScaleHel = AbominationDamageScaleHelDef;					// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
											
					// VI - KING FLESHPOUND, DEFAULT - 5					
											
						KingFleshpoundDamageScaleNor = KingFleshpoundDamageScaleNorDef;				// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						KingFleshpoundDamageScaleHar = KingFleshpoundDamageScaleHarDef;				// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						KingFleshpoundDamageScaleSui = KingFleshpoundDamageScaleSuiDef;				// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						KingFleshpoundDamageScaleHel = KingFleshpoundDamageScaleHelDef;				// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
					
											
											
				// V - LARGE ZEDS, DEFAULT 											3 - 8/24				Replacing the individual movement speed scales for large class Zeds with their default versions.				
											
					// VI - FLESHPOUND, DEFAULT					
										
						FleshpoundDamageScaleNor = FleshpoundDamageScaleNorDef;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						FleshpoundDamageScaleHar = FleshpoundDamageScaleHarDef;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						FleshpoundDamageScaleSui = FleshpoundDamageScaleSuiDef;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						FleshpoundDamageScaleHel = FleshpoundDamageScaleHelDef;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
											
					// VI - SCRAKE, DEFAULT					
											
						ScrakeDamageScaleNor = ScrakeDamageScaleNorDef;		    				    // NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						ScrakeDamageScaleHar = ScrakeDamageScaleHarDef;		    				    // HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						ScrakeDamageScaleSui = ScrakeDamageScaleSuiDef;		    				    // SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						ScrakeDamageScaleHel = ScrakeDamageScaleHelDef;		    				    // HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
									
					// VI - QUARTER POUND, DEFAULT		
							
						QuarterpoundDamageScaleNor = QuarterpoundDamageScaleNorDef;					// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						QuarterpoundDamageScaleHar = QuarterpoundDamageScaleHarDef;					// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						QuarterpoundDamageScaleSui = QuarterpoundDamageScaleSuiDef;					// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						QuarterpoundDamageScaleHel = QuarterpoundDamageScaleHelDef;					// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
					
											
				// V - MEDIUM TRASH ZEDS, DEFAULT 									 6 - 14/24		 		Replacing the individual movement speed scales for medium trash class Zeds with their default versions.
						
					// VI - BLOAT, DEFAULT - 1		
											
						BloatDamageScaleNor = BloatDamageScaleNorDef;								// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						BloatDamageScaleHar = BloatDamageScaleHarDef;								// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						BloatDamageScaleSui = BloatDamageScaleSuiDef;								// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						BloatDamageScaleHel = BloatDamageScaleHelDef;								// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
										
		
					// VI - EDAR TRAPPER, DEFAULT - 2		
											
						TrapperDamageScaleNor = TrapperDamageScaleNorDef;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						TrapperDamageScaleHar = TrapperDamageScaleHarDef;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						TrapperDamageScaleSui = TrapperDamageScaleSuiDef;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						TrapperDamageScaleHel = TrapperDamageScaleHelDef;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
									
		
					// VI - EDAR BLASTER, DEFAULT - 3		
							
						BlasterDamageScaleNor = BlasterDamageScaleNorDef;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						BlasterDamageScaleHar = BlasterDamageScaleHarDef; 							// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						BlasterDamageScaleSui = BlasterDamageScaleSuiDef; 							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						BlasterDamageScaleHel = BlasterDamageScaleHelDef; 							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
							
					// VI - EDAR BOMBER, DEFAULT - 4		
							
						BomberDamageScaleNor = BomberDamageScaleNorDef;								// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						BomberDamageScaleHar = BomberDamageScaleHarDef;								// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						BomberDamageScaleSui = BomberDamageScaleSuiDef;								// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						BomberDamageScaleHel = BomberDamageScaleHelDef;								// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
										
							
					// VI - HUSK, DEFAULT - 5		
							
						HuskDamageScaleNor = HuskDamageScaleNorDef;									// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						HuskDamageScaleHar = HuskDamageScaleHarDef;									// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						HuskDamageScaleSui = HuskDamageScaleSuiDef;									// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						HuskDamageScaleHel = HuskDamageScaleHelDef;									// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
									
		
					// VI - SIREN, DEFAULT - 6		
							
						SirenDamageScaleNor = SirenDamageScaleNorDef;								// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						SirenDamageScaleHar = SirenDamageScaleHarDef;								// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						SirenDamageScaleSui = SirenDamageScaleSuiDef;								// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						SirenDamageScaleHel = SirenDamageScaleHelDef;								// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
					
									
									
				// V - ELITE TRASH ZEDS, DEFAULT 									 3 - 17/24				Replacing the individual movement speed scales for elite trash class Zeds with their default versions.
						
					// VI - GOREFIEND, DEFAULT - 1		
						
						GorefiendDamageScaleNor = GorefiendDamageScaleNorDef;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						GorefiendDamageScaleHar = GorefiendDamageScaleHarDef;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						GorefiendDamageScaleSui = GorefiendDamageScaleSuiDef;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						GorefiendDamageScaleHel = GorefiendDamageScaleHelDef;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
											
					// VI - ELITE CRAWLER, DEFAULT - 2		
							
						GasCrawlerDamageScaleNor = GasCrawlerDamageScaleNorDef;						// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						GasCrawlerDamageScaleHar = GasCrawlerDamageScaleHarDef;						// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						GasCrawlerDamageScaleSui = GasCrawlerDamageScaleSuiDef;						// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						GasCrawlerDamageScaleHel = GasCrawlerDamageScaleHelDef;						// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
												
					// VI - RIOTER, DEFAULT - 3		
							
						RioterDamageScaleNor = RioterDamageScaleNorDef;								// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						RioterDamageScaleHar = RioterDamageScaleHarDef;								// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						RioterDamageScaleSui = RioterDamageScaleSuiDef;								// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						RioterDamageScaleHel = RioterDamageScaleHelDef;								// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
					
												
				// V - WEAK TRASH ZEDS, DEFAULT - 7 - 24/24		
							
					// VI - GOREFAST, DEFAULT - 1		
						
						GorefastDamageScaleNor = GorefastDamageScaleNorDef;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						GorefastDamageScaleHar = GorefastDamageScaleHarDef;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						GorefastDamageScaleSui = GorefastDamageScaleSuiDef;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						GorefastDamageScaleHel = GorefastDamageScaleHelDef;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
					// VI - STALKER, DEFAULT - 2		
							
						StalkerDamageScaleNor = StalkerDamageScaleNorDef;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						StalkerDamageScaleHar = StalkerDamageScaleHarDef;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						StalkerDamageScaleSui = StalkerDamageScaleSuiDef;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						StalkerDamageScaleHel = StalkerDamageScaleHelDef;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
								
									
					// VI - SLASHER, DEFAULT - 3								
													
						SlasherDamageScaleNor = SlasherDamageScaleNorDef;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						SlasherDamageScaleHar = SlasherDamageScaleHarDef;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						SlasherDamageScaleSui = SlasherDamageScaleSuiDef;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						SlasherDamageScaleHel = SlasherDamageScaleHelDef;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
							
		
					// VI - CYST, DEFAULT - 4		
							
						CystDamageScaleNor = CystDamageScaleNorDef;									// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						CystDamageScaleHar = CystDamageScaleHarDef;									// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						CystDamageScaleSui = CystDamageScaleSuiDef;									// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						CystDamageScaleHel = CystDamageScaleHelDef;									// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
							
		
					// VI - CLOT, DEFAULT - 5		
							
						ClotDamageScaleNor = ClotDamageScaleNorDef;									// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						ClotDamageScaleHar = ClotDamageScaleHarDef;									// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						ClotDamageScaleSui = ClotDamageScaleSuiDef;									// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						ClotDamageScaleHel = ClotDamageScaleHelDef;									// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
											
												
					// VI - CRAWLER, DEFAULT - 6		
							
						CrawlerDamageScaleNor = CrawlerDamageScaleNorDef;							// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						CrawlerDamageScaleHar = CrawlerDamageScaleHarDef;							// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						CrawlerDamageScaleSui = CrawlerDamageScaleSuiDef;							// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						CrawlerDamageScaleHel = CrawlerDamageScaleHelDef;							// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.
							
							
					// VI - ABOMINATION SPAWN, DEFAULT - 7	
						
						AbominationSpawnDamageScaleNor = AbominationSpawnDamageScaleNorDef;			// NORMAL 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Normal damage scale instead equals its default version.
						AbominationSpawnDamageScaleHar = AbominationSpawnDamageScaleHarDef;			// HARD 			DAMAGE SCALE 	REPLACEMENT 	 Zed's Hard damage scale instead equals its default version.
						AbominationSpawnDamageScaleSui = AbominationSpawnDamageScaleSuiDef;			// SUICIDAL 		DAMAGE SCALE 	REPLACEMENT 	 Zed's Suicidal damage scale instead equals its default version.
						AbominationSpawnDamageScaleHel = AbominationSpawnDamageScaleHelDef;			// HELL ON EARTH 	DAMAGE SCALE 	REPLACEMENT 	 Zed's Hell on Earth damage scale instead equals its default version.			
			
	
	
			// IV - INDIVIDUAL ZED MOVE SPEED SCALE REPLACEMENT, DEFAULT - Assign all individual Zed movement speed scales the values of their default versions. These individual damage scales for Zeds will be active if default 
			                                                            // settings are toggled and will override user customizations to the INI as long as it is active. The numbers are for quality of life purposes to make
			                                                            // sure we're not missing Zeds. 24 Zeds in the game. First number is the amount in a category, second is that number added to an overall count.
	
				// V - BOSS ZEDS, DEFAULT 											 5 - 5/24 				Replacing the individual movement speed scales for boss class Zeds with their default versions.
				
					// VI - HANS VOLTER, DEFAULT - 1
					
						HansMoveSpeedScaleNor = HansMoveSpeedScaleNorDef; 							// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						HansMoveSpeedScaleHar = HansMoveSpeedScaleHarDef;            				// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						HansMoveSpeedScaleSui = HansMoveSpeedScaleSuiDef;            				// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						HansMoveSpeedScaleHel = HansMoveSpeedScaleHelDef;            				// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
										
										
					// VI - MATRIARCH, DEFAULT - 2					
					
						MatriarchMoveSpeedScaleNor = MatriarchMoveSpeedScaleNorDef;					// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						MatriarchMoveSpeedScaleHar = MatriarchMoveSpeedScaleHarDef;					// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						MatriarchMoveSpeedScaleSui = MatriarchMoveSpeedScaleSuiDef;					// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						MatriarchMoveSpeedScaleHel = MatriarchMoveSpeedScaleHelDef;					// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
											
											
					// VI - PATRIARCH, DEFAULT - 3					
											
						PatriarchMoveSpeedScaleNor = PatriarchMoveSpeedScaleNorDef;					// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						PatriarchMoveSpeedScaleHar = PatriarchMoveSpeedScaleHarDef;					// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						PatriarchMoveSpeedScaleSui = PatriarchMoveSpeedScaleSuiDef;					// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						PatriarchMoveSpeedScaleHel = PatriarchMoveSpeedScaleHelDef;					// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
																									
																									
					// VI - ABOMINATION, DEFAULT - 4			                                		    
																									
						AbominationMoveSpeedScaleNor = AbominationMoveSpeedScaleNorDef;				// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						AbominationMoveSpeedScaleHar = AbominationMoveSpeedScaleHarDef;				// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						AbominationMoveSpeedScaleSui = AbominationMoveSpeedScaleSuiDef;				// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						AbominationMoveSpeedScaleHel = AbominationMoveSpeedScaleHelDef;				// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
										
										
					// VI - KING FLESHPOUND, DEFAULT - 5				
										
						KingFleshpoundMoveSpeedScaleNor = KingFleshpoundMoveSpeedScaleNorDef;		// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						KingFleshpoundMoveSpeedScaleHar = KingFleshpoundMoveSpeedScaleHarDef;		// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						KingFleshpoundMoveSpeedScaleSui = KingFleshpoundMoveSpeedScaleSuiDef;		// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						KingFleshpoundMoveSpeedScaleHel = KingFleshpoundMoveSpeedScaleHelDef;		// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
				
										
										
				// V - LARGE ZEDS, DEFAULT 				 							 3 - 8/24				Replacing the individual movement speed scales for large class Zeds with their default versions.		
										
					// VI - FLESHPOUND, DEFAULT				
									
						FleshpoundMoveSpeedScaleNor = FleshpoundMoveSpeedScaleNorDef;				// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						FleshpoundMoveSpeedScaleHar = FleshpoundMoveSpeedScaleHarDef;				// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						FleshpoundMoveSpeedScaleSui = FleshpoundMoveSpeedScaleSuiDef;				// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						FleshpoundMoveSpeedScaleHel = FleshpoundMoveSpeedScaleHelDef;				// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
																									
																									
					// VI - SCRAKE, DEFAULT			                                            		    
																									
						ScrakeMoveSpeedScaleNor = ScrakeMoveSpeedScaleNorDef;		    			// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						ScrakeMoveSpeedScaleHar = ScrakeMoveSpeedScaleHarDef;		    			// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						ScrakeMoveSpeedScaleSui = ScrakeMoveSpeedScaleSuiDef;		    			// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						ScrakeMoveSpeedScaleHel = ScrakeMoveSpeedScaleHelDef;		    			// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.   
																									
																									
					// VI - QUARTER POUND, DEFAULT                                              		    
																									
						QuarterpoundMoveSpeedScaleNor = QuarterpoundMoveSpeedScaleNorDef;			// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						QuarterpoundMoveSpeedScaleHar = QuarterpoundMoveSpeedScaleHarDef;			// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						QuarterpoundMoveSpeedScaleSui = QuarterpoundMoveSpeedScaleSuiDef;			// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						QuarterpoundMoveSpeedScaleHel = QuarterpoundMoveSpeedScaleHelDef;			// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
																								
																								
				// V - MEDIUM TRASH ZEDS, DEFAULT  									6 - 14/24   			Replacing the individual movement speed scales for medium trash class Zeds with their default versions.                                         	
																								
					// VI - BLOAT, DEFAULT - 1                                                     	
																							
						BloatMoveSpeedScaleNor = BloatMoveSpeedScaleNorDef;							// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						BloatMoveSpeedScaleHar = BloatMoveSpeedScaleHarDef;							// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						BloatMoveSpeedScaleSui = BloatMoveSpeedScaleSuiDef;							// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						BloatMoveSpeedScaleHel = BloatMoveSpeedScaleHelDef;							// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
																							
																							
					// VI - EDAR TRAPPER, DEFAULT - 2                                              	
																							
						TrapperMoveSpeedScaleNor = TrapperMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						TrapperMoveSpeedScaleHar = TrapperMoveSpeedScaleHarDef;						// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						TrapperMoveSpeedScaleSui = TrapperMoveSpeedScaleSuiDef;						// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						TrapperMoveSpeedScaleHel = TrapperMoveSpeedScaleHelDef;						// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.			
								
	
					// VI - EDAR BLASTER, DEFAULT - 3	
						
						BlasterMoveSpeedScaleNor = BlasterMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						BlasterMoveSpeedScaleHar = BlasterMoveSpeedScaleHarDef; 					// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						BlasterMoveSpeedScaleSui = BlasterMoveSpeedScaleSuiDef; 					// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						BlasterMoveSpeedScaleHel = BlasterMoveSpeedScaleHelDef; 					// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.		
										
						
					// VI - EDAR BOMBER, DEFAULT - 4	
						
						BomberMoveSpeedScaleNor = BomberMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						BomberMoveSpeedScaleHar = BomberMoveSpeedScaleHarDef;						// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						BomberMoveSpeedScaleSui = BomberMoveSpeedScaleSuiDef;						// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						BomberMoveSpeedScaleHel = BomberMoveSpeedScaleHelDef;						// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
									
						
					// VI - HUSK, DEFAULT - 5	
						
						HuskMoveSpeedScaleNor = HuskMoveSpeedScaleNorDef;							// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						HuskMoveSpeedScaleHar = HuskMoveSpeedScaleHarDef;							// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						HuskMoveSpeedScaleSui = HuskMoveSpeedScaleSuiDef;							// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						HuskMoveSpeedScaleHel = HuskMoveSpeedScaleHelDef;							// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
								
	
					// VI - SIREN, DEFAULT - 6	
						
						SirenMoveSpeedScaleNor = SirenMoveSpeedScaleNorDef;							// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						SirenMoveSpeedScaleHar = SirenMoveSpeedScaleHarDef;							// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						SirenMoveSpeedScaleSui = SirenMoveSpeedScaleSuiDef;							// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						SirenMoveSpeedScaleHel = SirenMoveSpeedScaleHelDef;							// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
				
								
								
				// V - ELITE TRASH ZEDS, DEFAULT 			 						3 - 17/24				Replacing the individual movement speed scales for medium trash class Zeds with their default versions.
					
					// VI - GOREFIEND, DEFAULT - 1	
					
						GorefiendMoveSpeedScaleNor = GorefiendMoveSpeedScaleNorDef;					// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						GorefiendMoveSpeedScaleHar = GorefiendMoveSpeedScaleHarDef;		    	    // HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						GorefiendMoveSpeedScaleSui = GorefiendMoveSpeedScaleSuiDef;		    	    // SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						GorefiendMoveSpeedScaleHel = GorefiendMoveSpeedScaleHelDef;		    	    // HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
										
										
					// VI - ELITE CRAWLER, DEFAULT - 2	
						
						GasCrawlerMoveSpeedScaleNor = GasCrawlerMoveSpeedScaleNorDef;				// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						GasCrawlerMoveSpeedScaleHar = GasCrawlerMoveSpeedScaleHarDef;			    // HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						GasCrawlerMoveSpeedScaleSui = GasCrawlerMoveSpeedScaleSuiDef;			    // SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						GasCrawlerMoveSpeedScaleHel = GasCrawlerMoveSpeedScaleHelDef;			    // HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
										
											
					// VI - RIOTER, DEFAULT - 3	
						
						RioterMoveSpeedScaleNor = RioterMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						RioterMoveSpeedScaleHar = RioterMoveSpeedScaleHarDef;					    // HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						RioterMoveSpeedScaleSui = RioterMoveSpeedScaleSuiDef;					    // SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						RioterMoveSpeedScaleHel = RioterMoveSpeedScaleHelDef;					    // HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
				
											
				// V - WEAK TRASH ZEDS, DEFAULT 		 							7 - 24/24				Replacing the individual movement speed scales for medium trash class Zeds with their default versions.
						
					// VI - GOREFAST, DEFAULT - 1	
					
						GorefastMoveSpeedScaleNor = GorefastMoveSpeedScaleNorDef;					// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						GorefastMoveSpeedScaleHar = GorefastMoveSpeedScaleHarDef;					// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						GorefastMoveSpeedScaleSui = GorefastMoveSpeedScaleSuiDef;					// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						GorefastMoveSpeedScaleHel = GorefastMoveSpeedScaleHelDef;					// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
										
					// VI - STALKER, DEFAULT - 2	
						
						StalkerMoveSpeedScaleNor = StalkerMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						StalkerMoveSpeedScaleHar = StalkerMoveSpeedScaleHarDef;					    // HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						StalkerMoveSpeedScaleSui = StalkerMoveSpeedScaleSuiDef;					    // SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						StalkerMoveSpeedScaleHel = StalkerMoveSpeedScaleHelDef;					    // HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
							
								
					// VI - SLASHER, DEFAULT - 3							
												
						SlasherMoveSpeedScaleNor = SlasherMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						SlasherMoveSpeedScaleHar = SlasherMoveSpeedScaleHarDef;					    // HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						SlasherMoveSpeedScaleSui = SlasherMoveSpeedScaleSuiDef;					    // SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						SlasherMoveSpeedScaleHel = SlasherMoveSpeedScaleHelDef;					    // HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
						
	
					// VI - CYST, DEFAULT - 4	
						
						CystMoveSpeedScaleNor = CystMoveSpeedScaleNorDef;							// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						CystMoveSpeedScaleHar = CystMoveSpeedScaleHarDef;							// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						CystMoveSpeedScaleSui = CystMoveSpeedScaleSuiDef;							// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						CystMoveSpeedScaleHel = CystMoveSpeedScaleHelDef;							// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
						
	
					// VI - CLOT, DEFAULT - 5	
						
						ClotMoveSpeedScaleNor = ClotMoveSpeedScaleNorDef;							// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						ClotMoveSpeedScaleHar = ClotMoveSpeedScaleHarDef;							// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						ClotMoveSpeedScaleSui = ClotMoveSpeedScaleSuiDef;							// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						ClotMoveSpeedScaleHel = ClotMoveSpeedScaleHelDef;							// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
										
											
					// VI - CRAWLER, DEFAULT - 6	
						
						CrawlerMoveSpeedScaleNor = CrawlerMoveSpeedScaleNorDef;						// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						CrawlerMoveSpeedScaleHar = CrawlerMoveSpeedScaleHarDef;						// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						CrawlerMoveSpeedScaleSui = CrawlerMoveSpeedScaleSuiDef;						// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						CrawlerMoveSpeedScaleHel = CrawlerMoveSpeedScaleHelDef;						// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.
						
						
					// VI - ABOMINATION SPAWN, DEFAULT - 7
					
						AbominationSpawnMoveSpeedScaleNor = AbominationSpawnMoveSpeedScaleNorDef;	// NORMAL 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Normal move speed scale instead equals its default version.
						AbominationSpawnMoveSpeedScaleHar = AbominationSpawnMoveSpeedScaleHarDef;	// HARD 		   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hard move speed scale instead equals its default version.
						AbominationSpawnMoveSpeedScaleSui = AbominationSpawnMoveSpeedScaleSuiDef;	// SUICIDAL 	   MOVE SPEED SCALE 	REPLACEMENT   Zed's Suicidal move speed scale instead equals its default version.
						AbominationSpawnMoveSpeedScaleHel = AbominationSpawnMoveSpeedScaleHelDef;	// HELL ON EARTH   MOVE SPEED SCALE 	REPLACEMENT   Zed's Hell on Earth move speed scale instead equals its default version.	
			}
	
	
	
// I - ZED SCALE ASSIGNMENTS - After evaluating the logic in the special value sets section, let's apply the right scales to the Zeds. Multiple references used for accurate 1:1 damage and movement speed scale values. 
							 // More info on these references in the INI file. The numbers are for quality of life purposes to make sure we're not missing Zeds. 24 Zeds in the game. First number 
							 // is the amount in a category, second is that number added to an overall count.
							 // 
							 // Difficulty numeric IDs are 0 for Normal, 1 for Hard, 2 for Suicidal, and 3 for Hell on Earth. These numeric IDs can be used to load maps via string commands 
							 // using the "difficulty='0, 1, 2, or 3'" command statement.
                             
	// II - BOSS ZEDS 													 5 - 5/24 							Assigning the proper scales for boss class Zeds
	
		// III - ABOMINATION - 1
		
			if(KFPawn_ZedBloatKing(AIPawn)!=None) 																	// If an Abomination exists, apply the appropriate following scales to it.
			{	
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Abomination's damage and movement scales for Normal.  
				{	
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleNor * MoveSpeedScaleNor;	 		// ABOMINATION 	NORMAL 			MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleNor * DamageScaleNor; 				// ABOMINATION 	NORMAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}	
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Abomination's damage and movement scales for Hard.
				{	
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleHar * MoveSpeedScaleHar;	 		// ABOMINATION 	HARD 			MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleHar * DamageScaleHar; 				// ABOMINATION 	HARD 			DAMAGE SCALING  		Individual scale multiplied by blanket scale.
				}	
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Abomination's damage and movement scales for Suicidal.
				{	
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleSui * MoveSpeedScaleSui;			// ABOMINATION 	SUICIDAL 		MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleSui * DamageScaleSui; 				// ABOMINATION 	SUICIDAL 		DAMAGE SCALING 	 		Individual scale multiplied by blanket scale.
				}	
				else																									// If the difficulty is Hell on Earth, use the Abomination's damage and movement scales for Hell on Earth.
				{	
				   KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationMoveSpeedScaleHel * MoveSpeedScaleHel; 			// ABOMINATION 	HELL ON EARTH 	MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
				   KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationDamageScaleHel * DamageScaleHel; 				// ABOMINATION 	HELL ON EARTH 	DAMAGE SCALING 	 		Individual scale multiplied by blanket scale.
				}
			}
			
		
		// III - KING FLESHPOUND - 2
		
			if(KFPawn_ZedFleshpoundKing(AIPawn)!=None) 																// If a King Fleshpound exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the King Fleshpound's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleNor * MoveSpeedScaleNor; 	 	// KING FLESHPOUND 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleNor * DamageScaleNor; 			// KING FLESHPOUND 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the King Fleshpound's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleHar * MoveSpeedScaleHar; 	 	// KING FLESHPOUND 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleHar * DamageScaleHar; 	 		// KING FLESHPOUND 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the King Fleshpound's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleSui * MoveSpeedScaleSui; 	 	// KING FLESHPOUND 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleSui * DamageScaleSui; 	 		// KING FLESHPOUND 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																								// If the difficulty is Hell on Earth, use the King Fleshpound's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = KingFleshpoundMoveSpeedScaleHel * MoveSpeedScaleHel; 	 	// KING FLESHPOUND 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = KingFleshpoundDamageScaleHel * DamageScaleHel; 	 		// KING FLESHPOUND 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}	
			
		
		// III - Matriarch - 3
		
			if(KFPawn_ZedMatriarch(AIPawn)!=None) 																	// If the Matriarch exists, apply the appropriate following scales to her.
			
			{																										// NOTE: 
																													// Due to source code differences with other Zeds, I had to use KFPawn_Monster's "PursuitSpeed" variables
																													// to modify the Matriarch's speed. I eventually extended this to every other Zed early on in development 
																													// as I eventually found CD didn't respond properly	to the originally used parent variable 
																													// "InitialGroundSpeedModifier". Also, the new variable is more convenient when it comes to scaling Zed movement 
																													// speed since it already considers difficulty-assigned speed. As such, the defaults for this on every Zed 
																													// is 1.0 with the exception of Hans, Patty, and Matty of course as I set theirs to 
																													// 1.3 to replicate Last Man Standing.
																													
				KFPawn_Monster(AIPawn).bSprintOverride = True;		// A patching variable for Controlled Difficulty. CD independently breaks the Matriarch's sprinting behavior and rendered her movement scaling 
																	// useless. However, this variable overrides whatever CD broke and now the Matriarch's sprinting behaves and is affected by her movement scaling normally. 
																	// Default is "false", it you find it relevant.
				
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Matriarch's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleNor * MoveSpeedScaleNor; 				// MATRIARCH   NORMAL 			MOVE SPEED SCALING   Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleNor * DamageScaleNor; 					// MATRIARCH   NORMAL 			DAMAGE SCALING  	 Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Matriarch's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleHar * MoveSpeedScaleHar; 				// MATRIARCH   HARD 			MOVE SPEED SCALING   Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleHar * DamageScaleHar; 					// MATRIARCH   HARD 			DAMAGE SCALING  	 Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Matriarch's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleSui * MoveSpeedScaleSui; 				// MATRIARCH   SUICIDAL 		MOVE SPEED SCALING   Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleSui * DamageScaleSui; 					// MATRIARCH   SUICIDAL 		DAMAGE SCALING  	 Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Matriarch's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = MatriarchMoveSpeedScaleHel * MoveSpeedScaleHel; 				// MATRIARCH   HELL ON EARTH 	MOVE SPEED SCALING   Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = MatriarchDamageScaleHel * DamageScaleHel; 					// MATRIARCH   HELL ON EARTH 	DAMAGE SCALING  	 Individual scale multiplied by blanket scale.
				}
			}	
			
		
		// III - Hans - 4
		
			if(KFPawn_ZedHans(AIPawn)!=None) 																		// If Hans exists, apply the appropriate following scales to him.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use Hans' damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleNor * MoveSpeedScaleNor; 					// HANS 	NORMAL 			MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleNor * DamageScaleNor; 						// HANS 	NORMAL 			DAMAGE SCALING  		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use Hans' damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleHar * MoveSpeedScaleHar; 					// HANS 	HARD 			MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleHar * DamageScaleHar; 						// HANS 	HARD 			DAMAGE SCALING  		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use Hans' damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleSui * MoveSpeedScaleSui; 					// HANS 	SUICIDAL 		MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleSui * DamageScaleSui; 						// HANS 	SUICIDAL 		DAMAGE SCALING  		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Matriarch's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HansMoveSpeedScaleHel * MoveSpeedScaleHel; 					// HANS 	HELL ON EARTH 	MOVE SPEED SCALING  	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HansDamageScaleHel * DamageScaleHel; 						// HANS 	HELL ON EARTH 	DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}	
			
			
		// III - Patriarch - 5
		
			if(KFPawn_ZedPatriarch(AIPawn)!=None) 																	// If the Patriarch exists, apply the appropriate following scales to him.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Patriarch's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleNor * MoveSpeedScaleNor; 				// PATRIARCH 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleNor * DamageScaleNor; 					// PATRIARCH 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Patriarch's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleHar *	MoveSpeedScaleHar; 				// PATRIARCH 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleHar * DamageScaleHar; 					// PATRIARCH 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Patriarch's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleSui * MoveSpeedScaleSui; 				// PATRIARCH 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleSui * DamageScaleSui; 					// PATRIARCH 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Matriarch's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = PatriarchMoveSpeedScaleHel * MoveSpeedScaleHel; 				// PATRIARCH 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = PatriarchDamageScaleHel * DamageScaleHel; 					// PATRIARCH 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
		
		
	// II - LARGE ZEDS 												 	 3 - 8/24 								Assigning the proper scales for large class Zeds
	
		// III - Fleshpound - 1
		
			if(KFPawn_ZedFleshpound(AIPawn)!=None) 													// If a Fleshpound exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Fleshpound's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleNor * MoveSpeedScaleNor; 			// FLESHPOUND 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleNor * DamageScaleNor; 				// FLESHPOUND 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Fleshpound's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleHar * MoveSpeedScaleHar; 			// FLESHPOUND 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleHar * DamageScaleHar; 				// FLESHPOUND 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Fleshpound's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleSui * MoveSpeedScaleSui; 			// FLESHPOUND 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleSui * DamageScaleSui; 				// FLESHPOUND 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Fleshpound's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = FleshpoundMoveSpeedScaleHel * MoveSpeedScaleHel; 			// FLESHPOUND 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = FleshpoundDamageScaleHel * DamageScaleHel; 				// FLESHPOUND 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}																						
		
		// III - Quarter Pound - 2
		
			if(KFPawn_ZedFleshpoundMini(AIPawn)!=None) 												// If a Quarter Pound exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Quarter Pound's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleNor * MoveSpeedScaleNor; 			// QUARTER POUND 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleNor * DamageScaleNor; 				// QUARTER POUND 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Quarter Pound's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleHar * MoveSpeedScaleHar; 			// QUARTER POUND 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleHar * DamageScaleHar; 				// QUARTER POUND 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Quarter Pound's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleSui * MoveSpeedScaleSui; 			// QUARTER POUND 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleSui * DamageScaleSui; 				// QUARTER POUND 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Quarter Pound's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = QuarterpoundMoveSpeedScaleHel * MoveSpeedScaleHel; 			// QUARTER POUND 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = QuarterpoundDamageScaleHel * DamageScaleHel; 				// QUARTER POUND 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}																						
		
		
		// III - Scrake - 3
		
			if(KFPawn_ZedScrake(AIPawn)!=None) 														// If a Scrake exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Scrake's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleNor * MoveSpeedScaleNor; 				// SCRAKE 	NORMAL 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleNor * DamageScaleNor; 					// SCRAKE 	NORMAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Scrake's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleHar * MoveSpeedScaleHar; 				// SCRAKE 	HARD 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleHar * DamageScaleHar; 					// SCRAKE 	HARD 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Scrake's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleSui * MoveSpeedScaleSui; 				// SCRAKE 	SUICIDAL 		MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleSui * DamageScaleSui; 					// SCRAKE 	SUICIDAL 		DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Scrake's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ScrakeMoveSpeedScaleHel * MoveSpeedScaleHel; 				// SCRAKE 	HELL ON EARTH 	MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ScrakeDamageScaleHel * DamageScaleHel; 					// SCRAKE 	HELL ON EARTH 	DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}
		
	
	
	// II - MEDIUM TRASH ZEDS 			 									6 - 14/24 							Assigning the proper scales for medium trash class Zeds
	
		// III - EDAR TRAPPER - 1
		
			if(KFPawn_ZedDAR_EMP(AIPawn)!=None) 													// If an EDAR Trapper exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Trapper's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleNor * MoveSpeedScaleNor; 				// TRAPPER 		NORMAL 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleNor * DamageScaleNor; 					// TRAPPER 		NORMAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Trapper's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleHar * MoveSpeedScaleHar; 				// TRAPPER 		HARD 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleHar * DamageScaleHar; 					// TRAPPER 		HARD 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Trapper's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleSui * MoveSpeedScaleSui; 				// TRAPPER 		SUICIDAL 		MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleSui * DamageScaleSui; 					// TRAPPER 		SUICIDAL 		DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Trapper's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = TrapperMoveSpeedScaleHel * MoveSpeedScaleHel; 				// TRAPPER 		HELL ON EARTH	MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = TrapperDamageScaleHel * DamageScaleHel; 					// TRAPPER 		HELL ON EARTH 	DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}																						
		
		
		// III - EDAR BLASTER - 2
		
			if(KFPawn_ZedDAR_Laser(AIPawn)!=None) 													// If an EDAR Blaster exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Blaster's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleNor * MoveSpeedScaleNor; 				// BLASTER 		NORMAL 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleNor * DamageScaleNor; 					// BLASTER 		NORMAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Blaster's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleHar * MoveSpeedScaleHar; 				// BLASTER 		HARD 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleHar * DamageScaleHar; 					// BLASTER 		HARD 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Blaster's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleSui * MoveSpeedScaleSui; 				// BLASTER 		SUICIDAL 		MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleSui * DamageScaleSui; 					// BLASTER 		SUICIDAL 		DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Blaster's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BlasterMoveSpeedScaleHel * MoveSpeedScaleHel; 				// BLASTER 		HELL ON EARTH 	MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BlasterDamageScaleHel * DamageScaleHel; 					// BLASTER 		HELL ON EARTH 	DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}																						
		
		
		// III - EDAR BOMBER - 3 
		
			if(KFPawn_ZedDAR_Rocket(AIPawn)!=None) 													// If an EDAR Bomber exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Bomber's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleNor * MoveSpeedScaleNor; 				// BOMBER 		NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleNor * DamageScaleNor; 					// BOMBER 		NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Bomber's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleHar * MoveSpeedScaleHar; 				// BOMBER 		HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleHar * DamageScaleHar; 					// BOMBER 		HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Bomber's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleSui * MoveSpeedScaleSui; 				// BOMBER 		SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleSui * DamageScaleSui; 					// BOMBER 		SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Bomber's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BomberMoveSpeedScaleHel * MoveSpeedScaleHel; 				// BOMBER 		HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BomberDamageScaleHel * DamageScaleHel; 					// BOMBER 		HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}																						
		
		
		// III - HUSK - 4
		
			if(KFPawn_ZedHusk(AIPawn)!=None) 														// If a Husk exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Husk's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleNor * MoveSpeedScaleNor; 					// HUSK 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleNor * DamageScaleNor; 						// HUSK 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Husk's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleHar * MoveSpeedScaleHar; 					// HUSK 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleHar * DamageScaleHar; 						// HUSK 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Husk's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleSui * MoveSpeedScaleSui; 					// HUSK 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleSui * DamageScaleSui; 						// HUSK	 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Husk's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = HuskMoveSpeedScaleHel * MoveSpeedScaleHel; 					// HUSK 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = HuskDamageScaleHel * DamageScaleHel; 						// HUSK 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}


		// III - SIREN - 5
		
			if(KFPawn_ZedSiren(AIPawn)!=None) 														// If a Siren exists, apply the appropriate following scales to it.
			{	
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Siren's damage and movement scales for Normal.
				{ 
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleNor * MoveSpeedScaleNor; 					// SIREN 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleNor * DamageScaleNor; 						// SIREN 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Siren's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleHar * MoveSpeedScaleHar; 					// SIREN 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleHar * DamageScaleHar; 						// SIREN 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Siren's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleSui * MoveSpeedScaleSui; 					// SIREN 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleSui * DamageScaleSui; 						// SIREN 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Siren's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SirenMoveSpeedScaleHel * MoveSpeedScaleHel; 					// SIREN 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SirenDamageScaleHel * DamageScaleHel; 						// SIREN 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
				
				
		// III - BLOAT - 6

			if(KFPawn_ZedBloat(AIPawn)!=None) 														// If a Bloat exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Bloat's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleNor * MoveSpeedScaleNor; 					// BLOAT 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleNor * DamageScaleNor; 						// BLOAT 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Bloat's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleHar * MoveSpeedScaleHar; 					// BLOAT 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleHar * DamageScaleHar; 						// BLOAT 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Bloat's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleSui * MoveSpeedScaleSui; 					// BLOAT 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleSui * DamageScaleSui; 						// BLOAT 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Bloat's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = BloatMoveSpeedScaleHel * MoveSpeedScaleHel; 					// BLOAT 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = BloatDamageScaleHel * DamageScaleHel; 						// BLOAT 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			} 								
			


			
	// II - ELITE TRASH ZEDS 			 								3 - 17/24 							Assigning the proper scales for elite trash class Zeds
	
		// III - GOREFIEND - 1
		
			if(KFPawn_ZedGorefastDualBlade(AIPawn)!=None) 											// If a Gorefiend exists, apply the appropriate following scales to it.
			{	
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Gorefiend's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleNor * MoveSpeedScaleNor; 				// GOREFIEND 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleNor * DamageScaleNor; 					// GOREFIEND 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Gorefiend's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleHar * MoveSpeedScaleHar; 				// GOREFIEND 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleHar * DamageScaleHar; 					// GOREFIEND 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Gorefiend's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleSui * MoveSpeedScaleSui; 				// GOREFIEND 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleSui * DamageScaleSui; 					// GOREFIEND 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Gorefiend's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefiendMoveSpeedScaleHel * MoveSpeedScaleHel; 				// GOREFIEND 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefiendDamageScaleHel * DamageScaleHel; 					// GOREFIEND 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
			
			
		// III - ELITE CRAWLER - 2
		
			if(KFPawn_ZedCrawlerKing(AIPawn)!=None) 												// If an Elite Crawler exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Elite Crawler's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleNor * MoveSpeedScaleNor; 			// ELITE CRAWLER 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleNor * DamageScaleNor; 				// ELITE CRAWLER 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Elite Crawler's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleHar * MoveSpeedScaleHar; 			// ELITE CRAWLER 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleHar * DamageScaleHar; 				// ELITE CRAWLER 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Elite Crawler's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleSui * MoveSpeedScaleSui; 			// ELITE CRAWLER 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleSui * DamageScaleSui; 				// ELITE CRAWLER 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Elite Crawler's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GasCrawlerMoveSpeedScaleHel * MoveSpeedScaleHel; 			// ELITE CRAWLER 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GasCrawlerDamageScaleHel * DamageScaleHel; 				// ELITE CRAWLER 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
			
			
		// III - RIOTER - 3
		
			if(KFPawn_ZedClot_AlphaKing(AIPawn)!=None) 												// If a Rioter exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Rioter's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleNor * MoveSpeedScaleNor; 				// RIOTER 		NORMAL 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleNor * DamageScaleNor; 					// RIOTER 		NORMAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Rioter's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleHar * MoveSpeedScaleHar; 				// RIOTER 		HARD 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleHar * DamageScaleHar; 					// RIOTER 		HARD 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Rioter's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleSui * MoveSpeedScaleSui; 				// RIOTER 		SUICIDAL 		MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleSui * DamageScaleSui; 					// RIOTER 		SUICIDAL 		DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Rioter's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = RioterMoveSpeedScaleHel * MoveSpeedScaleHel; 				// RIOTER 		HELL ON EARTH 	MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = RioterDamageScaleHel * DamageScaleHel; 					// RIOTER 		HELL ON EARTH 	DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}
	
	
	
	
	// II - WEAK TRASH ZEDS 					 						7 - 24/24  							Assigning the proper scales for weak trash class Zeds
	
		// III - GOREFAST - 1 
		
			if(KFPawn_ZedGorefast(AIPawn)!=None) 													// If a Gorefast exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Gorefast's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleNor * MoveSpeedScaleNor; 				// GOREFAST 	NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleNor * DamageScaleNor; 					// GOREFAST 	NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Gorefast's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleHar * MoveSpeedScaleHar; 				// GOREFAST 	HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleHar * DamageScaleHar; 					// GOREFAST 	HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Gorefast's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleSui * MoveSpeedScaleSui; 				// GOREFAST 	SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleSui * DamageScaleSui; 					// GOREFAST 	SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Gorefast's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = GorefastMoveSpeedScaleHel * MoveSpeedScaleHel; 				// GOREFAST 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = GorefastDamageScaleHel * DamageScaleHel; 					// GOREFAST 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
		
		
		// III - STALKER - 2
		
			if(KFPawn_ZedStalker(AIPawn)!=None) 													// If a Stalker exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Stalker's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleNor * MoveSpeedScaleNor; 				// STALKER 		NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleNor * DamageScaleNor; 					// STALKER		NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Stalker's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleHar * MoveSpeedScaleHar; 				// STALKER 		HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleHar * DamageScaleHar; 					// STALKER 		HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Stalker's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleSui * MoveSpeedScaleSui; 				// STALKER 		SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleSui * DamageScaleSui; 					// STALKER 		SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Stalker's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = StalkerMoveSpeedScaleHel * MoveSpeedScaleHel; 				// STALKER 		HELL ON EARTH 	MOVE SPEED SCALING	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = StalkerDamageScaleHel * DamageScaleHel; 					// STALKER 		HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
		
		
		// III - SLASHER - 3
		
			if(KFPawn_ZedClot_Slasher(AIPawn)!=None) 												// If a Slasher exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Slasher's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleNor * MoveSpeedScaleNor; 				// SLASHER 		NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleNor * DamageScaleNor; 					// SLASHER 		NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Slasher's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleHar * MoveSpeedScaleHar; 				// SLASHER 		HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleHar * DamageScaleHar; 					// SLASHER 		HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Slasher's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleSui * MoveSpeedScaleSui; 				// SLASHER 		SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleSui * DamageScaleSui; 					// SLASHER 		SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Slasher's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = SlasherMoveSpeedScaleHel * MoveSpeedScaleHel; 				// SLASHER 		HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = SlasherDamageScaleHel * DamageScaleHel; 					// SLASHER 		HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
		
		
		// III - CYST - 4
		
			if(KFPawn_ZedClot_Cyst(AIPawn)!=None) 													// If a Cyst exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Cyst's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleNor * MoveSpeedScaleNor; 					// CYST 	NORMAL 				MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleNor * DamageScaleNor; 						// CYST 	NORMAL 				DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Cyst's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleHar * MoveSpeedScaleHar; 					// CYST 	HARD 				MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleHar * DamageScaleHar; 						// CYST 	HARD 				DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Cyst's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleSui * MoveSpeedScaleSui; 					// CYST 	SUICIDAL 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleSui * DamageScaleSui; 						// CYST 	SUICIDAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Cyst's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CystMoveSpeedScaleHel * MoveSpeedScaleHel; 					// CYST 	HELL ON EARTH 		MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CystDamageScaleHel * DamageScaleHel; 						// CYST 	HELL ON EARTH 		DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}
		
		
		// III - CLOT - 5
		
			if(KFPawn_ZedClot_Alpha(AIPawn)!=None) 													// If a Clot exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Clot's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleNor * MoveSpeedScaleNor; 					// CLOT 	NORMAL 				MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleNor * DamageScaleNor; 						// CLOT 	NORMAL 				DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Clot's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleHar * MoveSpeedScaleHar; 					// CLOT 	HARD 				MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleHar * DamageScaleHar; 						// CLOT 	HARD 				DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Clot's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleSui * MoveSpeedScaleSui; 					// CLOT 	SUICIDAL 			MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleSui * DamageScaleSui; 						// CLOT 	SUICIDAL 			DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Clot's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = ClotMoveSpeedScaleHel * MoveSpeedScaleHel; 					// CLOT 	HELL ON EARTH 		MOVE SPEED SCALING 		Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = ClotDamageScaleHel *=DamageScaleHel; 						// CLOT 	HELL ON EARTH 		DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
			}
		
		
		// III - CRAWLER - 6 
		
			if(KFPawn_ZedCrawler(AIPawn)!=None) 													// If a Crawler exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Crawler's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleNor * MoveSpeedScaleNor; 				// CRAWLER 		NORMAL 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleNor * DamageScaleNor; 					// CRAWLER 		NORMAL 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Crawler's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleHar * MoveSpeedScaleHar; 				// CRAWLER 		HARD 			MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleHar * DamageScaleHar; 					// CRAWLER 		HARD 			DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Crawler's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleSui * MoveSpeedScaleSui; 				// CRAWLER 		SUICIDAL 		MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleSui * DamageScaleSui; 					// CRAWLER 		SUICIDAL 		DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
				else																									// If the difficulty is Hell on Earth, use the Crawler's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = CrawlerMoveSpeedScaleHel * MoveSpeedScaleHel; 				// CRAWLER 		HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale.  
					KFPawn_Monster(AIPawn).DifficultyDamageMod = CrawlerDamageScaleHel * DamageScaleHel; 					// CRAWLER 		HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}
		
		
		// III - ABOMINATION SPAWN - 7 - Damage variables are useless
		
			if(KFPawn_ZedBloatKingSubspawn(AIPawn)!=None) 											// If an Abomination Spawn exists, apply the appropriate following scales to it.
			{
				if( WorldInfo.Game.GetModifiedGameDifficulty() == 0 )													// If the difficulty is Normal, use the Abomination Spawn's damage and movement scales for Normal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleNor * MoveSpeedScaleNor; 		// ABOMINATION SPAWN 	NORMAL 	MOVE SPEED SCALING 			Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleNor * DamageScaleNor; 			// ABOMINATION SPAWN 	NORMAL 	DAMAGE SCALING 				Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 1 )												// If the difficulty is Hard, use the Abomination Spawn's damage and movement scales for Hard.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleHar * MoveSpeedScaleHar; 		// ABOMINATION SPAWN 	HARD 	MOVE SPEED SCALING 			Individual scale multiplied by blanket scale.
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleHar * DamageScaleHar; 			// ABOMINATION SPAWN 	HARD 	DAMAGE SCALING 				Individual scale multiplied by blanket scale.
				}
				else if( WorldInfo.Game.GetModifiedGameDifficulty() == 2 )												// If the difficulty is Suicidal, use the Abomination Spawn's damage and movement scales for Suicidal.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleSui * MoveSpeedScaleSui; 		// ABOMINATION SPAWN 	SUICIDAL 	MOVE SPEED SCALING 		Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleSui * DamageScaleSui; 			// ABOMINATION SPAWN 	SUICIDAL 	DAMAGE SCALING 			Individual scale multiplied by blanket scale.
				}
				else																									// If it's Hell on Earth, use the Abomination Spawn's damage and movement scales for Hell on Earth.
				{
					KFPawn_Monster(AIPawn).PursuitSpeedScale = AbominationSpawnMoveSpeedScaleHel * MoveSpeedScaleHel; 		// ABOMINATION SPAWN 	HELL ON EARTH 	MOVE SPEED SCALING 	Individual scale multiplied by blanket scale. 
					KFPawn_Monster(AIPawn).DifficultyDamageMod = AbominationSpawnDamageScaleHel * DamageScaleHel; 			// ABOMINATION SPAWN 	HELL ON EARTH 	DAMAGE SCALING 		Individual scale multiplied by blanket scale.
				}
			}	
	}
	
	
	
	
defaultproperties
{
	TrueSoloHealingSyringe=class'TrueSolo.TrueSoloHealingSyringe' 							// Assigns class path for my syringe set in the TrueSoloHealingSyringeDef file's "default properties" section. This is used by the
																							// mutator in the section responsible for replacing the Syringe so it has something to replace the vanilla one with.
}

	


