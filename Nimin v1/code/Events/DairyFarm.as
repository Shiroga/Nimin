function doDairyFarm():void{
	var chance:int = eventSelect("Dairy Farm");
	if (malonRep == 4 && malonPreg > 216) {
		textL("As you approach the farm, one of the farmhands rushes up to you. Catching their breath, they speak rapidly.\r\r\"Hurry! Malon's gone into labor!!\"\r\rThe farmhand grabs you hand and yanks you towards the main farmhouse. Within minutes, you're brought up to Malon's room where the excessively pregnant half-bovine woman huffs and heaves. Her tail swishes out the side from under her, twitching with each contraction.\r\r\"Here it comes!\", one of the farmhands announces as the baby begins to crown.\r\rAn eternity of bliss passes as you hear a cry, slightly mooing, but utterly beautiful. She has long, luxurious red hair, just like her mother's. Along with large, cow-like ears, and a long swishy tail. As well as, oddly enough, a jiggly little udder just below her belly and palmable breasts on her chest. A beautiful baby girl");
		if (malonChildren > 1) { textLP(", just like the rest"); }
		textLP("! ...She's got your eyes, at least.\r\rThe baby is actually quite developed already, it seems. She opens her eyes and giggles playfully, closer to a seven-year-old child than an actual baby. And as the farmhand places her on the bed, she tries to stand, but stumbles at first, using her mother as support. You wouldn't be surprised if she were running and talking within the next few days!\r\rBut, first thing's first, Malon pulls up her dress the rest of the way, letting her over-engorged bosom leak all over the bed. The little girl quickly crawls up to a long nipple, sucking it down her throat and suckling. You");
		if (malonChildren == 1) { textLP(", and her older sister,"); }
		if (malonChildren > 1) { textLP(", and her older sisters,"); }
		textLP(" gather close and give Malon a great big hug.");
		doNext();
		doListen = function():void{
			textL("You wind up sleeping at the farmhouse and spend an entire day with the family. The newborn girl is walking after the bedrest and even begins muttering her own cute little moos. Malon already has a dress ready for the girl, long and white that goes all the way down to the feet, just like she used to wear when she was that young. Well, not quite that young, but around that equivalent age in development.\r\rYou're congratulated many times as you eventually leave, and even given quite the hefty sum as a gift from the whole farm!"); 
			doCoin(150);
			doSexP(50);
			stats(0,1,0,0);
			malonChildren++;
			malonPreg = 0;
			malonRep = 5;
			hrs = 30;
			doEnd();
		}
	}
	else if (chance == 1){
		textL("As you head towards the dairy farm, one of the farmers waves you over in greeting.\r\r\"Why hello there! You're lucky to have passed by here at this time. We're giving away free samples of our dairy enhancement pills for cows, to help drum up some business. We use these to keep our dairy cows in top shape and producing plenty of milk. Give them to your own cows to help make them fine producers as well!\r Just... try not to eat them yourself, or you'll end up like Malon over there.\"\r\rHe nods over to one of the farm-hands that is nearby. She's a beautiful woman with long, flowing red hair in a yellow shirt and long purple skirt with a brown apron around her waist and yellow shawl around her shoulders. However, the shawl seems fairly wet and she's careful to drape its ends over breasts larger than watermelons, trying to hide the large blotches on her shirt with it and keeping it at the ready to use at any moment. Her ears are also quite long, hanging perpendicular from her head, nearly 5 inches, and droop a little. Behind her you see a long, narrow tail, tipped with a tuft of long hairs, swish about her calves with each step. She lugs two overflowing pails of milk with a blush in her cheeks, trying to avoid eye contact with anyone as she disappears into a barn.");
		if (malonRep > 2) { textLP(" Although, she spots you out of the corner of her eye before she enters and turns to give you a bright smile. It looks like she'd wave at you, but her hands are a bit busy at the moment."); }
		if (malonRep == 4) {
			if (malonPreg > 36 && malonPreg <= 72) { textLP(" Especially as one wraps around her protruding belly, obviously pregnant..."); }
			if (malonPreg > 72 && malonPreg <= 144) { textLP(" Yet, despite the massive belly she is sporting, it seems she's managing work just fine."); }
			if (malonPreg > 144 && malonPreg <= 216) { textLP(" You're actually quite surprised that she's even working at all. Though her breasts seem even larger than usual, they're actually supported by her enormously pregnant belly, looking to be even larger than she is."); }
		}
		if (malonRep > 3){ textLP("\r\r\"Although, I'm sure you're already aware of the consequences.\"\r\rHe gives you a perverse wink and hands you a complimentary DairE Pill, nodding you along."); }
		else { textLP("\r\r\"Let's just say it's best to keep the pills to the cows.\"\r\rHe hands you a complimentary DairE Pill and nods you along."); }
		itemAdd(211);
		hrs = 2;
		doEnd();
	}

	//Experimental Milk Machine
	else if (chance == 2) {
		if (dairyFarmBrand == true && percent() < 50) {
			textL("You approach the farm just as you see the farmer that developed the experimental milk machine leaving the farm with a several others to deliver a large supply of milk to Softlik, so there's nobody to stop and greet you. Though you're on the side of the farm where there isn't much to do anyways. Well, except the barn where the experimental milker is... You could probably go use it yourself without anybody knowing, since they would be gone for at least a day with the shipment, so if you're feeling kinky you could...\r\rDo you?");			
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					textL("You slink your way over to the cellar doors, lifting one and shutting it behind you as you slip inside. All the usual bottles that are stored here are gone, having left with the shipment. However, the path still remains and leads you right to the machine. A panel on the side has been removed from the farmer working on it, but it doesn't seem to be dismantled any further to prevent it from functioning.\r\rQuickly stripping your "+currentClothes()+" until you're naked for complete freedom, you give your "+udderDesc()+" udder a gentle rub-down in preparation. As the "+teatDesc()+" teats stiffen slightly, you then pick up the control board and carry it to the platform. You lean over the rail and let your milky bag hang below you. Fiddling with the control board, you're not exactly how it works, but there's not too many buttons and dials. So you press a few until you hear the machine grind awake and the hidden doors beneath you open.");
					textLP("\r\rThe soft cylinders rise up and engulf your drippy teats. The tender touch of the gentle compression makes you gasp and squirt into the machine before the pumping even begins. And when the cylinders start to rise and fall, the suction increasing and tugging on your teats, you gush strongly with a moan, the machine whirring to take it all in. Your rump sways from side to side as the pleasant sensations build. Swiftly coming to your first climax, you squeeze your udder between your "+legDesc(6)+", making the machine fill the basement with even louder churning for several seconds.");
					if (gender != 0) {
						textLP("\r\rAfter the first orgasm, the pleasure lingers with the continuing milking. You reach around your "+udderDesc()+" udder and stroke");
						if (cockTotal > 0) { textLP(" "+oneYour(1)+" growing "+cockDesc()+" erection"+plural(1)+"."); }
						else { textLP(" "+oneYour(2)+" swelling "+clitDesc()+" clit"+plural(2)+"."); }
						textLP(" It's slightly difficult to grope yourself from this position while attached to the machine, but you manage it. Rubbing and wringing steadily and slowly, masturbating in tune with the changing pressure of the pump. Again, the blissful milking combines with your own efforts and rapidly brings you to another high. You cry out in ecstasy, your voice echoing through the emptied basement, as ");
						if (cockTotal > 0) { 
							textLP("you blow a load across the back of your udder, painting it in your seed.");	
						}
						else { textLP("your pussy gapes and contracts in stuttered climax, drooling fluids down the back of your udder."); }
						doLust(-Math.floor(sen/2), 2, 1, 2, 4);
						if (percent() < 50)	{
							textLP("\r\rYou come so hard that you don't even notice as you accidentally mash the buttons of the control board...\r\rWhich side of the control board did you 'accidentally' mash?");
							buttonWrite(5,"Left Side");
							buttonWrite(7, "Right Side");
							viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
							viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
							doListen = function():void{
								if (buttonChoice == 5) {
									textL("In the midst of your reflection, the sounds of gears grinding and doors opening goes unheeded. It's not until you feel padded mechanical arms clamp around your "+hipDesc()+" hips and hold your backend still that you realize something has gone wrong. Looking back, not only has the machine taken your "+buttDesc()+" rear hostage, but it's extending a long and thick phallic tube right towards");
									if (vagTotal > 0) { textLP(" "+oneYour(2)+" puss"+plural(16)+"");	}
									else { textLP(" the hole in your ass"); }
									textLP(". You clench as it rams its way into you, stretching you open and driving far into your depths. It slides in and out, thrusting in rhythm with the pumping. It grows warmer and warmer as lube exudes from small pores, making your tunnel slick. So powerful, your nerves scream out in sensitive pleasure, taking you to your peak once more.\r\r\"MOOOOOO!\" You shout out subconsciously as bull spunk spews into your belly. So thick and plentiful, some of it even oozes back out across your thighs as the 'dildo' continues to plow you.");
									if (vagLimit() > 72 && vagTotal > 0 && pregCheck(1)) { textLP("\r\rMore of the stuff enters than leaves, your tunnel so deep that the spunk pools within your womb. Your belly distends as it fills, the inseminator pumping away... Eventually, the timer runs out and the phallic thing pulls out."); }
									else { textLP("\r\rAfter sufficiently filling you with seed, it pulls out."); }
									textLP(" You gasp in erotic desparation, but the clamp around your hips doesn't release, just like the milker. Forced to stay with your rump up high and your udder tugging towards the floor, you awkwardly try to get comfortable on the rail. And after an hour, when you think you've survived the worst of it, the inseminator comes back out...\r\rOn the hour, every hour, for the full 12 hours, you're stuffed with bull cum again and again");
									if (vagLimit() > 72 && vagTotal > 0 && pregCheck(1)) { textLP(", your belly swelling more with each injection, "); }
									textLP("while the machine churns to drain you of all your milk. After about 6 hours, you pass out where you 'stand', exhausted...");
									doNext();
									doListen = function():void{
										textL("You awaken when the machine finally releases you, making you collapse to the floor. Your udder feeling swollen and your teats stretched, you do your best to stand. White goop pours out of your ");
										if (vagTotal > 0){ textLP("cunt"+plural(2)+""); }
										else { textLP("ass"); }

										textLP(" and pools below you with all the other fluids you released. Dazed, you try to wipe it off haphazardly, but don't really care. As soon as you've concealed your presence here for the mostpart, you head out of the farm, your "+legDesc(2)+" bent and your back hunching over your still dripping udder"); 
										if (vagLimit() > 72 && vagTotal > 0 && pregCheck(1)) { textLP(", while your cum-inflated womb sloshes with each step"); }
										textLP("...");
										if (vagLimit() > 72 && vagTotal > 0 && pregCheck(1)) { 
											while (i < pregArray.length) {
												if (pregArray[i] == false) { 
													pregArray[i] = true; 
													pregArray[i+1] = 1501;
													pregArray[i+3] = 220;
													i = pregArray.length;
												}
												i += 5;
											}
										}
										else if (vagTotal > 0) {
											var tempInt:int = 1;
											for (tempInt = 1; tempInt < 13 ; tempInt++ ) { doImpregnate(101); }
										}
										doLust(-Math.floor(sen/1.5), 2, 2, 4);
										doLust(-Math.floor(sen/1.5), 2, 2, 4);
										doLust(-Math.floor(sen/1.5), 2, 2, 4);
										milkAmount(2);
										lactChange(2, 50);
										udderSize += 4;
										teatSize += 5;
										teatPump += 40;
										udderPlay += 100;
										hrs += 13;
										exhaustion -= 4;
										skipExhaustion = true;
										doEnd();
									}
								}
								if (buttonChoice == 7) {
									var getCum:int = 0;
									textL("In the midst of your reflection, the sounds of gears grinding and doors opening goes unheeded. It's not until you feel padded mechanical arms clamp around your "+hipDesc()+" hips and hold your backend still that you realize something has gone wrong. Looking back, not only has the machine taken your "+buttDesc()+" rear hostage, but  another cylindar is rising behind your udder. This one looks quite different from the ones on your teats. It's much wider and deeper, with a lot more adjusting straps to take on things much larger than normal teats... It twists and turns from side to side, seemingly searching for something in particular. ");
									if (cockTotal > 0) {
										getCum = cumAmount();
										doLust(-Math.floor(sen/1.5), 2, 1);
										textLP(" After a few seconds of scanning, however, it seems to have found a target.\r\rYou let out a loud gasp as the thing engulfs "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+", gently clamping down around it. The inside of the cylinder feels very plush and cushioned, and completely coated in a slick lubricant that drenches your shlong. The new cylindar slowly starts up, a subtle suction gripping your penis and pulling it in. Then the machine begins to rock back and forth, sliding across your sensitive skin with slick slurps. You quickly learn what its purpose is...\r\rYour hips held hostage by the rest of the machine, you can do nothing but moan and pant as the cock-milker sucks you off, even while the other milkers suckle from your teats. The machine obviously wasn't built to account for one over the other. The intense sensations quickly build heat within your body and soon you're blasting your hot spunk into the guzzling machine. Your hips twitch within its grip, your cock bucking against the padding within, and all of your seed drains down into some tanks below. Even after the main spurts have finished, the machine continues to suck out your cum, draining you dry and leaving you feeling numb from the waist down...\r\rOnce you've been fully 'milked' from that appendage, the machine relinquishes its grip on your cock and descends back into the floor, leaving your with a limp dick and some time to catch your breath. ");
									}
									else if (clitSize > 15 && vagTotal > 0) {
										textLP(" After a few seconds of scanning, however, it seems to have found a target.\r\rYou let out a loud moan as the thing engulfs "+oneYour(2)+" "+clitDesc()+" clit"+plural(2)+", gently clamping down around it. The inside of the cylinder feels very plush and cushioned, and completely coated in a slick lubricant that drenches your long button. The new cylindar slowly starts up, a subtle suction gripping your clit and pulling it in. Then the machine begins to rock back and forth, sliding across your sensitive skin with slick slurps. You have a pretty good idea of what it is trying to do. It's trying to pump out something you don't have... That doesn't hinder its attempts though, as it vigorously masturbates your clit, tugging and sucking away at its tender meat. Your hips try to buck in turn, but they're still held hostage by the rest of the machine, leaving you to be sucked off at the mercy of the 'milker' below, even while the other milkers suck away at your udders. The machine obviously wasn't built to account for one over the other!\r\rYou come again and again, melting across the bar, unable to do a thing about it... It takes nearly twenty minutes before the machine finally seems to give up, beeping in error as it releases your clit and sinks back into the ground. Taking the chance to breath, your clit feels rather plumped up after that ordeal, even bigger than before...");
										clitSize += 5;
										clitPump += 20;
										doLust(-Math.floor(sen/1.5), 2, 2);
										doLust(-Math.floor(sen/1.5), 2, 2);
										doLust(-Math.floor(sen/1.5), 2, 2);
									}
									else { 
										textLP(" Yet, after several minutes of scanning, it doesn't seem to find its target. A loud beep signals an error and the cylindar descends back into the floor. Rather strange, but you can't complain.");
									}
									textLP("\r\rYou don't seem to get much time to relax, however. The machine clangs and cranks, sounding like it is getting confused by the fact the udder milker is still going. Rather than releasing your hips, it assumes you must be a female cow, and proceeds to start another task. Behind you, the machine shifts and whirs, opening yet another window, this time on the wall, and a long thick phallic tube begins to extend out, aiming right for");
									if (vagTotal > 0) { textLP(" "+oneYour(2)+" puss"+plural(16)+"");	}
									else { textLP(" the hole in your ass"); }
									textLP(". You clench as it rams its way into you, stretching you open and driving far into your depths. It slides in and out, thrusting in rhythm with the pumping. It grows warmer and warmer as lube exudes from small pores, making your tunnel slick. So powerful, your nerves scream out in sensitive pleasure, taking you to your peak once more.\r\r\"MOOOOOO!\" You shout out subconsciously as spunk spews into your belly. ");
									if (getCum > 0)	{
										textLP("The stuff feels rather familiar, actually. Well, as far as you can tell. Then after a few seconds it dawns on you. The machine is pumping your semen back into you! It fills your hole, attempting to make you pregnant with your own cum.");
										if (vagLimit() > 72 && vagTotal > 0 && pregCheck(1) && getCum > 5000) {
											textLP(" With your hole so deep, the cum flows down into your womb, away from the inseminator. The stuff pools inside, your belly swelling and distending as it fills with the stuff. Without the injector detecting a full vagina, it just keeps dumping your own semen into you, making you look like you're pregnant just from the abundant amount of seed within. It sloshes as you climax, finally splashing some back out against the object, triggering it to finish.\r\rHaving spent so much spunk in the one hole, the injector doesn't seem to bother anymore, overloaded by the extended injection period.");
											while (i < pregArray.length) {
												if (pregArray[i] == false) { 
													pregArray[i] = true; 
													pregArray[i+1] = 1502;
													pregArray[i+3] = 220;
													i = pregArray.length;
												}
												i += 5;
											}
										}
										else{
											if (vagTotal > 1) {
												textLP(" Then, once it has given your pussy a nice load, it pulls back out, making you shudder. It swerves from side to side, scanning for any more. Of course, you have more than one, so it doesn't take long before it finds another hole and plunges back in.");
												if (getCum < 500) {	textLP(" Yet, you hear a beep from the machine, indicating an error. You can also hear some swishing around as tanks are moved and shifted below. You must not have had enough seed. And as the next batch of thick stuff pumps into you, it's definitely not your own, though you could probably venture a guess as to what it belonged to!"); }
												if (vagTotal > 2) {
													textLP(" Again and again you're injected with spunk, the dildo checking for each one of your holes.");
													if (getCum >= 500 && getCum < vagTotal*500)	{ textLP(" Until eventually you hear the tank with your semen finally sputter out below. But, the machine doesn't cease there. With more holes to fill, you hear it churn and shift as another tank is put in its place, filling you with another kind of seed that it had in storage."); }
													else if (getCum >= vagTotal*500) { textLP(" Eventually it fills them all with your own cum, prepped and ready for breeding. Yet, you had fed it so much spunk that the machine continues to pump more out, the dildo jerking against the sides of your rump and moving further and further away, spurting your cum across the floor until it eventually runs dry..."); }
												}
											}
											if ( vagTotal > 0) {
												doImpregnate(dominant);	
												var tempInt:int = 1;
												for (tempInt = 1; tempInt <= vagTotal ; tempInt++ ) { 
													if (getCum > 500) { 
														doImpregnate(dominant);	
														getCum -= 500;
													}
													else { doImpregnate(101); }
												}
											}
										}
									}
									else {
										textLP("The stuff is thick and heavy, probably perfect for a cow. It doesn't take much of a guess as to what the machine is trying to make you pregnant with.");
										if (vagTotal > 1) {
											textLP(" Then, once it has given your pussy a nice load, it pulls back out, making you shudder. It swerves from side to side, scanning for any more. Of course, you have more than one, so it doesn't take long before it finds another hole and plunges back in.");
											if (vagTotal > 2) {	textLP(" Again and again you're injected with spunk, the dildo checking for each one of your holes."); }
										}
										if (vagTotal > 0){
											var tempInt:int = 1;
											for (tempInt = 1; tempInt <= vagTotal ; tempInt++ ) { doImpregnate(101); }
										}										
									}
									doNext();
									doListen = function():void{
										textL("Once it's done filling you up, the injector retracts back into the machine. The clamp around your hips also releases you as rest of the milkers shut down. You slump to the floor with white goop pouring out of your ");
										if (vagTotal > 0){ textLP("cunt"+plural(2)+""); }
										else { textLP("ass"); }
										textLP(", pooling below you with all the other fluids you released. That final cycle seemed to have shut down the machine as a whole, releasing you within just a couple hours. Though you're a bit stuffed, you're rather pleased with the results, your udder being milked quite well. It takes you a few minutes to regain feeling in your legs, but once you do you're quick to escape");
										if (vagLimit() > 72 && vagTotal > 0 && pregCheck(1) && getCum > 5000) { textLP(", your hands wrapping around your cum-inflated belly as it sloshes with each step,"); }
										textLP(" before anybody catches you with the mess you've made.");
										milkAmount(2);
										teatPump += 20;
										udderPlay += 30;
										hrs += 3;
										doEnd();
									}
								}
							}
						}
						else {
							textLP("\r\rYou slump over the rail, panting and moaning with the persistent pumping of your milk. Taking some time to relax, you take comfort in the milky massage, letting it slowly warm you back up. With no farmers around to watch you, there's no reason you can't keep masturbating over and over while you're here... So you do.\r\rAfter about 6 hours of consistent pumpinng and frequent excitation of your nerves, you slump over your udder and allow the gentle rocking of the pumping to guide you to sleep for the rest of the time...");
							if (cockTotal > 0) { cumAmount(); }
							doNext();
							doListen = function():void{
								textL("You awaken when the machine finally releases you, making you fall to the floor. You udder feels swollen and your teats feel stretched again, but overall the multiple orgasms and extended milking make you feel rather blissful. You take several moments to clean up the mess you've made, hoping nobody will notice your presence here, and head off the farm happy.");
								doLust(-Math.floor(sen/2), 2, 4);
								doLust(-Math.floor(sen/2), 2, 4);
								doLust(-Math.floor(sen/2), 2, 4);
								milkAmount(2);
								lactChange(2, 50);
								udderSize += 4;
								teatSize += 5;
								teatPump += 40;
								udderPlay += 100;
								hrs += 13;
								exhaustion -= 4;
								skipExhaustion = true;
								doEnd();
							}
						}
					}
					else { 
						textLP("\r\rHours and hours of squirting and dripping passes with the occassional uddergasm. You eventually take a nap for the rest of the 12 hours, awakening only to the sound of the machine releasing you and shutting down. Your udder swollen and your teats stretched, you happily take your leave, pleased with the effective milking.");
						doLust(-Math.floor(sen/3), 2, 4);
						doLust(-Math.floor(sen/3), 2, 4);
						doLust(-Math.floor(sen/3), 2, 4);
						milkAmount(2);
						lactChange(2, 50);
						udderSize += 4;
						teatSize += 5;
						teatPump += 40;
						udderPlay += 100;
						hrs += 13;
						exhaustion -= 4;
						skipExhaustion = true;
						doEnd();
					}					
				}
				else {
					textL("Thinking it best to not deal with that confounded contraption, you go find something less dangerous to do...");
					hrs = 1;
					doEnd();
				}
			}
		}
		else{
			if (dairyFarmBrand == false) {	textL("As you head towards the dairy farm, one of the farmers spots you and walks over to greet you.\r\r\"Hello! If you want some of our milk, you should head over to Softlik. Though, umm...\" He glances down at the milky bag of flesh below your "+bellyDesc()+" belly. \"Hey, that there udder looks mighty similar to the ones my cows have. You wouldn't happen to be interested in testing out a new milking machine I've been working on, would you? It's normally only meant for cows, but they're too skittish around new equipment and you seem like you'd be a pretty good fit anyways. It'd only take about an hour and I'd also pay ya, of course.\""); }
			else { textL("As you head towards the dairy farm once again, a familiar looking farmer spots you in the distance with your drippy udder and makes sure to walk over and greet you.\r\r\"Why hello again! I was hoping to see you around here some time. Sorry about last time, but I really think I've fixed all the kinks with the milker. If you'd be a dear, would you mind testing it for me again? You'll be compensated as usual, of course.\""); }
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					if (dairyFarmBrand == false) {	textL("\"Really? Fantastic! Just come with me!\" The farmer nearly hops with joy as he twirls around and eagerly leads you towards one of the milking barns. Though, you don't quite go into it as he swerves off course towards a cellar door at the side. He hoists it open, waving for you to head on in.\r\rHeading down the steps, the scent of milk fills your nose. Candles lighting up the cool cellar, large crates surround you. Bottles and bottles of fresh milk waiting to be delivered surround your path. The farmer urges you forward, leading you deeper in until the crates become tools and parts. Equipment from around the farm is either dismantled or waiting to be repaired. And then there's a small workspace cleared out, filled with nothing but a large, clean machine. In front is a mechanical platform, laying several feet wide from the rest of the machine, with a thick railing surrounding it, perfect for tying cows up to as they stand on top.\r\r\"Well, this is it.\" The farmer proudly motions towards it. \"The Auto-Milker 5000! Why 5000? Eh, I thought it sounded nice. But this little doohickey should help save us plenty of work when milking the cows. Now, if you don't mind...\"\r\rHe directs you onto the platform, facing out towards the rail. A hand presses lightly on your back. \"Just need you to bend forward, you can lean over the rail. The cows don't quite walk on two legs, so you gotta press on the rail for the machine's safety protocols.\" He chuckles. You do as you're told, bending forward and leaning comfortably over the thick rail, crossing your arms to rest your head. Then you jerk a little as you feel him grope about your "+clothesBottom()+". \"Cows don't quite wear clothes either, so we gotta get yer udder outta there.\"\r\rBefore you can protest, he pulls your "+clothesBottom()+" "+pullUD(2)+", letting your "+udderDesc()+" udder hang freely. He pauses for a moment before going any further, staring at your "); }
					else { textL("\"Really? Great! Let's get going.\" The farmer skips a bit with excitement to try his machine again. Back down into the barn cellar, the large machination awaits you. He helps you to the platform and presses your back down towards the rail. \"I really hope it works this time!\"\r\rAgain, in his eagerness, he pulls "+pullUD(2)+" your "+clothesBottom()+" to let your "+udderDesc()+" udder hang loose, but can't help but stare once more at your "); }
					if (gender == 1) { textLP(""+cockDesc()+" shlong"+plural(1)+"");	}
					if (gender == 1 && showBalls == true) { textLP(" and "+ballDesc()+" balls");	}
					if (gender == 1) { textLP(" that hang between him and the udder.");	}
					if (gender == 2) { textLP(""+vulvaDesc()+" hole"+plural(2)+" that look"+plural(4)+" back at him."); }
					if (gender == 3) { textLP(""+cockDesc()+" shlong"+plural(1)+" and "+vulvaDesc()+" hole"+plural(2)+" between him and the udder.");	}
					if (gender == 0) { textLP(""+buttDesc()+" ass between him and the udder."); 	}
					if (dairyFarmBrand == false) {	textLP(" He quickly clears his throat. \"Errr... Eh-hem... Cows don't exactly have bits like that either. Or, none that I'd look at in that sorta way... Sorry about that!\"\r\rAverting his eyes and quickly getting off the platform, he returns to the front. Grabbing a small control board attached to the machine by a wire, he begins to press some buttons. \"Okay, this thing here controls the whole machine. I can just press this button...\" As he does so, the platform shakes beneath you.\r\rHidden doors part and four soft cylinders rise up beneath your udder. They each separate into quarters with sheets of a flexible material being stretched out between them. They rise up to your "+teatDesc()+" hanging teats, engulfing them. The cylindars press up into your udder slightly and slowly close around your teats, the material snuggly hugging them. All of your teats are held perfectly by the machine, tight enough to hold pressure but not so much to hurt.\r\r\"And the machine hooks the pumps up all by itself, one size fits all. Then all I have to do is press this button...\"\r\rThe machine begins to hum and you feel a sudden suction on your teats. The cylindars begin to rise and fall, pressing into the flesh of your "+udderDesc()+" bag of milk just enough to help put pressure on the glands inside and then pull back while the vaccum within the tubes increase and descrease in rhythm."); }
					else{ textLP(" After a moment, he realizes his mistake. \"Eh... heh. Sorry about that. I keep forgetting you're not one of my cows... Quite the view though!\" He tries to shrug it off with a joking laugh.\r\rQuickly escaping your backside, he steps off and heads to his control board. \"Alright, same as last time, so prepare yourself!\"\r\rYou clench a little as the hidden doors part and the four soft cylinders rise up beneath your udder. They each separate into quarters with sheets of a flexible material being stretched out between them. They rise up to your "+teatDesc()+" hanging teats, engulfing them. The cylindars press up into your udder slightly and slowly close around your teats, the material snuggly hugging them. All of your teats are held perfectly by the machine, tight enough to hold pressure but not so much to hurt. You let out a gasp as you relax into their pleasant grip, ready as the farmer presses the next button.\r\rThe machine begins to hum and you feel the gentle suction on your teats grow. The cylindars begin to rise and fall, pressing into the flesh of your "+udderDesc()+" bag of milk just enough to help put pressure on the glands inside and then pull back while the vaccum within the tubes increase and descrease in rhythm."); }
					textLP(" Your "+legDesc(6)+" buckle slightly as the milk gushes from your teats, pleasantly and powerfully sucked into the machine. Your "+hipDesc()+" hips can't help but rock in tune to the rhythm, your lower bits warming up with the enjoyable sensation.");
					if (dairyFarmBrand == false) {	textLP("\r\rAs you let out a moan of relief and bliss, the farmer speaks up as though he didn't notice. \"And that button starts the milking process, almost like the machines we use on the cows already, but a bit more... thorough, so to speak. All I have to do is set up the timer - let's say... 30 minutes,\" he turns a dial on the control panel, \"and the machine will know when to let go. So, just relax and let the milk flow. I'll be right here.\"\r\rThe farmer sits in a nearby chair and tries to read a book while you gasp and moan. The machine tugs and sucks you in just the right way that... you can't help but cry out into your arms. The machine grows a bit louder as the incoming flood of milk makes it work harder, but settles back down to a steady level as you come down from your orgasm. With still plenty of milk and time to go, you melt against the railing, trying not to be too obvious about your further climaxes, though the farmer has a hard time not noticing when his machine churns louder every now and then..."); }
					else {	textLP("\r\rAs you let out a moan of relief and bliss, the farmer speaks up as though he didn't notice. \"Well, I'll leave you to that for a while. We'll try 30 minutes again and cross our finger.\"\r\rThe farmer turns the dial on the board and sits in a nearby chair, trying to read a large book while you gasp and moan. The machine tugs and sucks you in just the right way that... you can't help but cry out into your arms. The machine grows a bit louder as the incoming flood of milk makes it work harder, but settles back down to a steady level as you come down from your orgasm. With still plenty of milk and time to go, you melt against the railing, trying not to be too obvious about your further climaxes, though the farmer has a hard time not noticing when his machine churns louder every now and then..."); }
					doNext();
					doListen = function():void{
						textL("10 minutes pass and you're feeling quite well.\r\r20 minutes pass and you're udder is feeling much lighter, can't be much left in there.\r\r30 minutes pass and the farmer perks up, ready for the machine to shut off.\r\r40 minutes pass and he starts looking a little worried. Though you've been milked dry, the machine continues to pull and suck on your teats, but without any fluids the pressure is rather low and merely feels silly at this point.\r\r50 minutes pass and the farmer looks at his control panel, scratching his head. He starts to look around the machine, not saying a word...\r\r60 minutes pass and he steps before you sheepishly, hat in hand.");
						if (dairyFarmBrand == false) {	textLP("\r\r\"Umm... There seems to be an 'issue'... The timer inside the machine must have been tripped up by some of the other circuitry or something and, well... The machine won't stop now... And I can't shut it down while it's already going without potentially busting it all apart and we can't quite get you out of there without hurting you in the process; it's got ahold of you pretty well, we wouldn't want cows slipping out and walking off on their own.\" He shuffles his feet a bit in embarassment. \"Oh, but it won't go on forever! There's a built in safety shutoff just in case something like this happens. So if you don't mind waiting a little longer, it will turn off and release you on its own. But... The safety shutoff is another 11 hours from now. Don't ask for specifics why so long; it was the shortest time the machine could have such a natural shutoff, with the way it cycles. So, uhh... try to relax. I'll make sure somebody is down here with you for the whole time. We'll take shifts and bring you food and stuff. So terribly sorry...\"\r\rWith a shrug, there's nothing you can really do but wait."); }
						else { textLP("\r\r\"Crud... I don't know how to say this...\" he twiddles his fingers sheepishly, \"but it seems the timer must have been tripped by one of the other changes to the circuits. So, I'm terribly sorry, but you'll be stuck here for 12 hours again... And we'll be sure to take shifts and keep you company of course. I'm just so embarassed this happened again...\r\rWith a shrug, there's nothing you can really do but wait."); }
						textLP(" The machine persistently pumps your teats, ");
						if (udderLactation > 4000) { textLP("heavily and loudly, working hard to keep up with your milk production");	}
						else if (udderLactation > 1000) { textLP("strongly and steadily with your abundant milk supply");	}
						else { textLP("softly and slowly"); }
						textLP(". It gets annoying after a while, but never painful. For a machine it's got a rather tender touch, never sucking so hard that your udder would ache while you're running dry. And when your udder starts to fill up again, the machine powers up, sucking out the milk as its made. With the constant gentle milking, it's hard to feel much from it. More like a lingering tingle that just won't go away. Occassionally the tingle starts to build as your nerves focus on it, growing until the machine whirs loudly and spooks whoever is accompanying you. You just grin bashfully and nod everything is alright, your face flushed with blush from the mild orgasm.\r\rThe time passes slowly, the farmers changing shift and try to keep you entertained with conversations about recent events. You also lift yourself from the rail slightly or stretch below it, kicking your "+legDesc(2)+" or even kneeling every now and then to prevent any cramping. Not exactly the most productive use of your time, save for all the milk you're producing...");
						if (malonRep >= 4) {
							textLP("\r\rEven Malon comes down to visit you one shift.");
							if (dairyFarmBrand == false) {	
								textLP(" She rushes over to you");
								if (malonPreg > 36) { textLP(", her swollen belly swaying from side to side,"); }
								if (malonChildren == 1) { textLP(" with your daughter following closely behind");	}
								if (malonChildren > 1) { textLP(" with your daughters following closely behind");	}
								textLP(" and her breasts envelop your head as she embraces you. \"Oh dear, I had heard that you were stuck down here and I was worried. I took the next shift as soon as I could. Are you alright?!\"\r\rYou nod lazily. Bored and rather sensitive in a certain region, but alright.\r\r\"Oh, thank goodness! I know the farmer who made this thing is quite a genius, I use his umm... 'other products' sometimes too, though he doesn't know. But gosh, having to be stuck milking like that for 12 hours straight? I don't exactly envy you. But");
								if (malonChildren == 1) { textLP(" your daughter and");	}
								if (malonChildren > 1) { textLP(" your daughters and");	}
								textLP(" I will keep you company for a while, at least until I need to get back to work.\" She smiles warmly.");
								if (lactation > 0 && milkEngorgementLevel > 0) { textLP(" And seeing your "+boobTotal+" "+boobDesc()+" hanging tits drip through your "+clothesTop()+" the floor, she takes the liberty of assisting you with the other milking and chuckles. \"And help take care of what the machine doesn't cover, I suppose.\""); }
								textLP("\r\rShe pulls the chair in closer, stroking you hair for a bit before you begin to settle into a relaxed conversation. You occassional moans as you produce more milk make her giggle, but her giggling in turn makes her own top wet. Thankfully there's plenty of buckets around, and with the privacy available to you, she's spends some time milking herself as well, slipping into the same beat as your own gasps.");
								if (malonChildren == 1) { textLP(" Your daughter wanders about, exploring this strange place she has never seen before, amazed at how much milk there is.");	}
								if (malonChildren > 1) { textLP(" Your daughters wander about, exploring this strange place they have never seen before, amazed at how much milk there is.");	}
								textLP(" After a couple hours, though, you lover needs to head back to work.\r\r\"Alright hun, you seem to be doing well enough.\" She leans in, smothering you in boob-flesh as she kisses your forehead. \"Take care, I'll see you when you're out~\" Then she leaves");
								if (malonChildren == 1) { textLP(" with your girl"); }
								if (malonChildren > 1) { textLP(" with your girls"); }
								textLP(" and allows the next farmer to take the shift.");
							}
							else {
								textLP(" She slowly walks over to you");
								if (malonPreg > 36) { textLP(", cradling her swollen pregnant belly,") }
								if (malonChildren == 1) { textLP(" with your daughter following closely behind");	}
								if (malonChildren > 1) { textLP(" with your daughters following closely behind");	}
								textLP(" and covers you head with her breasts as she hugs you. \"Hehe, I heard you got caught in this thing again and thought I would take a shift to keep you company. Though gosh, with how much this thing is milking you, I'm starting to get a little jealous.\" She giggles at the thought. But then her shirt begins to blotch from the jiggling and she pulls the chair in closer. With plenty of buckets down here and all the privacy, she's able to start milking right in front of you");
								if (lactation > 0 && milkEngorgementLevel > 0) { textLP(" and takes the liberty to relieve your own chest of milk, since the machine is focused elsewhere"); }
								textLP(". A nice conversation picks up as milk flies everywhere and helps the time pass quickly.");
								if (malonChildren == 1) { textLP("\r\r\"Mommy, mommy, can I be hooked up to the machine too? It looks like fun!\" Your daughter stands beside you, one hand reaching out to grab the rail so she can bend forward a little, the other hand pulling up her white dress. Her naked rump sticking out, she tries to pull the teats of her small exposed udder to try and mimic you.\r\rThe sight makes the two of you laugh. \"Sorry hun, but the machine only works for one person right now. Plus you're not big enough for it yet. Maybe one day.\" She gives the girl a pat on the head. Unphased, the girl just shrugs and continues to play like she's being milked like you, mooing in tune to your own gasps."); }
								if (malonChildren > 1) { textLP("\r\r\"Mommy, mommy, can we be hooked up to the machine too? It looks like fun!\" Your daughters stand on boths sides, hands grabbing the rail so they can bend forward a little while their other hands pull up their white dresses. Naked rumps sticking out all around, they try to pull the teats of their small exposed udders to try and mimic you.\r\rThe sight makes the two of you laugh. \"Sorry sweeties, but the machine only works for one person right now. Plus you're not big enough for it yet. Maybe one day.\" She gives the girls pats on their heads. Unphased, they continue to play like they're being milked like you, mooing in tune to your own gasps."); }
								textLP("\r\rAfter a couple hours, your lover needs to head back to work. \"Alright hun, you seem to be enjoying yourself.\" She leans in, smothering you in boob-flesh again as she kisses your forehead. \"Take care, I'll see you when you're out~\" Then she leaves");
								if (malonChildren == 1) { textLP(" with your girl"); }
								if (malonChildren > 1) { textLP(" with your girls"); }
								textLP(" and allows the next farmer to take the shift.");
							}
							if (lactation > 0 && milkEngorgementLevel > 0) { milkAmount(1); }
						}
						doNext();
						doListen = function():void{
							textL("After a moist nap and a few more hours, the inventor of the infernal thing comes back down. \"Well, it should be just about finishing up. I hope you had a good time?\" He tries to stifle a chuckle at the nether fluids that stretch down from your backside after all the orgasms. He then picks up the control board and waits for the completion cycle.");
							if (dairyFarmBrand == false) {	textLP("\r\rWhile he focuses on the board, a new sound starts to come from the machine. Levers and gears churn upon each other as a rod reachs out from an opening. At the end of the rod is some sort of circular symbol made of metal, with some kind of image raised beyond it. The worrisome part, however, is how it starts to glow red and points straight to your rump.\r\r\"Oh, crap, I forgot about that!\" The farmer rushes to get behind you, but doesn't make it in time.\r\rYou cry out loudly in pain as the metal presses into your "+buttDesc()+" butt and sizzles against your flesh!\r\rThe farmer grabs some cool nearby milk and quickly tosses it at your bum, extinguishing the heat and eliminating much of the pain. A bit too late, though, as the rod begins to pull back, leaving a rather obvious mark on your tush. The silhouette of a slightly tipped bucket with some fluid splashing out over the rim.\r\r\"Oh dear, I'm so sorry, I forgot about the branding cycle! It was automated to help identify new cows as our own! That means you, uh... kinda belong to this dairy farm now.\" He laughs in a feigned attempt to lighten the situation, but quickly shuts up as your eyes shoot daggers at him. \"Well, on the bright side, that means the machine is complete...\" As he says that, the machine livens up as parts begin to move."); }
							textLP("\r\rYou hear a wet sucking of air as the pipes widen. Your udder flinches as the air nips at your raw teats, so sensitive after having been held for so long. And as the cylinders lower, you could swear the teats are longer, stretched and swollen from all the pumping...\r\rAnd as the cylinders disappear into the floor, you slump to the ground. \"Woah there, I gotcha!\" The farmer catches you before you hurt yourself.\r\rHaving stood bent over for so long, with so many orgasms, your "+legDesc(2)+" "+legPlural(2)+" weak. You roll back onto your rear and sit upon the cool platform, curling up around your udder. It aches slightly from the hours and hours of milking, yet spurts of milk still squirt out of habit. You slowly regain your strength as the farmer talks.\r\r\"Again, I'm so sorry you had to go through all that. I'm very grateful you were willing to test the machine for me, though, it's these kinds of kinks I've gotta work out. Here, this is your payment, plus some 'hazard pay', and a couple jugs of milk that you, uhh... helped make. I hope this doesn't sour your experience of the farm and maybe you could come back some time and test again once I've tinkered with the machine more.");
							if (dairyFarmBrand == true) { textLP(" Thanks so much for doing this again too, I'm <i>sure</i> I'll have this fixed next time."); }
							textLP("\". He hands you your payment and helps you up to your "+legDesc(10)+". You udder hangs down, larger and heavier than before... It takes several steps for you to get into the 'swing' of things, but you cover it back up with your "+clothesBottom()+" and leave the farm, eager to do something else...");
							doLust(-Math.floor(sen/2)*3, 2, 4);
							doCoin(70);
							milkAmount(2);
							lactChange(2, 50);
							udderSize += 4;
							teatSize += 5;
							teatPump += 40;
							udderPlay += 100;
							itemAdd(501);
							itemAdd(501);
							itemAdd(501);
							if (dairyFarmBrand == false) { dairyFarmBrand = true; }
							hrs += 13;
							exhaustion -= 4;
							skipExhaustion = true;
							doEnd();
						}
					}
				}
				else {
					textL("\"Aww, alright. Thanks anyways; maybe next time. You have a good day now, then.\" The farmer gives you a nod and lets you go on your way.");
					hrs = 1;
					doEnd();
				}
			}
		}
	}
	//Dair-E Pill Sell
	else if (chance == 3) {
		bc();
		textL("As you head towards the dairy farm, one of the farmers spots you and walks over to greet you.\r\r\"Hello! If you want some of our milk, you should head over to Softlik. But if you're here for some of our DairE Pills, the supplement that helps our cows produce so much delicious milk, then look no further, you can buy one from me!\"\r\r\"Would you like to buy one? Only 30 coins!\"");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				if (coin < 30){ 
					textL("\"Sorry friend, you don't seem to have enough coins. Come back later when you do and we can try to deal again!\"\r\rHe gives you a nod before heading back to his work, leaving you to head back to Softlik.");
					hrs = 1;
					doEnd();
				}
				else{ 
					textL("\"Alright, here you go friend!\" He rummages through one of his pockets in his overalls and pulls out a large pill, handing it to you. \"Come back later if you need any more!\"\r\rHe gives you a nod before heading back to his work, leaving you to head back to Softlik.");
					doCoin(-30);
					itemAdd(211);
					hrs = 2;
					doEnd();
				}
			}
			else{
				textL("\"Well, come back again later if you change your mind. And have a nice day!\"\r\rHe gives you a nod before heading back to his work, leaving you to head back to Softlik.");
				hrs = 1;
				doEnd();
			}
		}
	}

	//Malon Encounter
	else if (chance == 4)	{
		
		if (percent() <= 25 || (malonRep > 3 && percent() <= 50)){
			bc();
			viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
			viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
			buttonWrite(5, "Inspect");
			buttonWrite(7, "Leave");
			textL("Having avoided any farmers, you approach one of the barns. Your ears perk up as you hear something inside. A machine sounds like its pumping, yet you can see no signs of cows nearby or the farmers that take care of them.\r\r\rWhat do you do?");
			doListen = function():void{
				if (buttonChoice == 5) {
					if (malonRep < 1) {	textL("You quietly open the door and look inside, your eyes going wide at what you see. There are no cows, yet the automatic milker is churning away. In the stalls where the cows should be, stands a young woman, bent forward and hanging onto the guardrail to hold herself up. She wears a long purple skirt with a brown apron, her large rump rocking from side to side as a long tail with a hairy tip dances above in tune. Long red hair dangles down from her shoulders, with long, round ears sticking out. She heaves with each pump of the milker, letting out soft gasping moos.\r\rHer white shirt pushed down around her belly and her yellow shawl draped over the rail beside her, her enormous naked breasts hang down towards the floor. They're larger than watermelons, with nipples several inches long encompassed by the milking cups. Gushes of milk flow through the milker's hoses with each pump, her giant breasts being drained...\r\r\rWhat now?"); }
					else { 
						textL("You quietly open the door and look inside, a smirk crossing your face. There are no cows, yet the automatic milker is churning away. In the stalls where the cows should be, stands Malon, the young farm-hand, bent forward and hanging onto the guardrail to hold herself up, her large rump rocking lazily back and forth as her bovine tail swings above in tune. Her white shirt is scrunched down around her belly, her enormous naked breasts hanging down towards the floor. Her nipples are several inches long and encompassed by the milking cups, gushes of milk flow through the milker's hoses with each pump, her giant breasts being drained. In between gasps, she lets out soft moos...");
						if (malonRep == 4){ 
							if (malonPreg > 36 && malonPreg <= 72) { textLP("\r\rShe rubs her slightly protruding belly, pregnant with one of your children..."); }
							if (malonPreg > 72 && malonPreg <= 144) { textLP("\r\rBoth of her hands rub around her giant belly which hangs nearly as low as her tits, pregnant with one of your children. You don't know how she managed to even pull her shirt down like that..."); }
							if (malonPreg > 144 && malonPreg <= 216) { textLP("\r\rHer flow of milk through the tubes seems even more powerful than before. You're surprised at how large her tits have grown, her nipples nearly scraping along the ground as she bends over. However, her giant belly that she hugs and caresses as she's milked reaches even further, the hay on the floor tickling her protruding belly button. She has propped it up against the guardrail to help maintain her balance, though she doesn't seem terribly uncomfortable."); }
						}
						if (malonRep == 5 && malonChildren > 0){ textLP("\r\rIt seems as though she has finally found a moment to get away from your offspring and have some time to herself.");	}
						textLP("\r\r\rWhat now?"); 
					}
					bc();
					viewButtonOutline(0,1,0,0,1,0,1,0,0,1,0,0);
					viewButtonText(0,1,0,0,1,0,1,0,0,1,0,0);
					buttonWrite(2, "Interrupt");
					buttonWrite(5, "Assist");
					buttonWrite(7, "Fuck");
					if (malonRep < 1) { buttonWrite(7, "Rape");	}
					buttonWrite(10, "Leave");
					doListen = function():void{
						if (buttonChoice == 2) {
							textL("You tap on the rail beside her, notifying her of your presence. Her eyes go wide as she jumps, her tits bouncing and wobbling around the rail as she looks up at you.");
							if (malonRep < 0) { 
								textLP("\r\rWith fear in her eyes, she grabs her shawl from the rail and runs in the opposite direction until the cups pop from her nipples with a milky flood. Her breasts swing from side to side, more milk splashing about the walls as she goes, she disappears out another door, leaving you with nothing.");
								stats(0,-1,0,0);
								doSexP(5);
								hrs = 2;
								doEnd();
							}
							else if (malonRep > 2){
								textLP("\r\r\"Meanie. Why'd you go and scare me like that?\" She winks and sticks out her tongue at you.\r\rHer eyelids droop as her body shudders, the tail flicking wildly while the milk flow stutters with a strong burst. She lets out a low \"moo\" as she comes, at least partly enjoying some of her bovine endownments.\r\rShe takes a moment before she comes down from her high. \"Mmm... I'm just going to hang out here for a bit. Feel free to take the bottle from the machine. It's really fresh~\" She gives you a wink, rubbing her naked breasts as a bit more milk rushes through the tubes.");
								hrs = 2;
								doSexP(2);
								itemAdd(214);
								doEnd();
							}
							else if (malonRep == 2){
									textLP("\"O-Oh, umm...\" Her hands blindly wanders along the rail for her yellow shawl, picking it up and futily attempting to cover her large chest with it.\r\r\"I-I just got so full that I, umm...\" Her eyes glance from side to side. \"I-I know it's very much like a cow, but with all the work around here and how long it takes to do it manually...\" Sadness fills her face at having been caught, despite what you said before. \"D-Don't worry, I'll clean up now...\"\r\rHer ears drooping, her tail pushing against her dress trying to hide between her legs, she pulls the cups from her long nipples and lets the excess milk dribble off onto the floor. Turning away and trying to avoid any eyecontact, she wipes herself down with the yellow shawl and pulls up her shirt. She looks over her shoulder, her eyes to the ground, and says meekly, \"Sorry...\", before heading out the other end of the building, leaving you to head back to Softlik.");
									hrs = 2;
									doEnd();
							}
							else if (malonRep == 0 || malonRep == 1){
								if (malonRep == 0)	{ textLP("\r\r\"Uhh... umm...\" Her hands blindly wanders along the rail for her yellow shawl, picking it up and futily attempting to cover her large chest with it. \"Who-Who're you? Please, please don't tell anyone I've been in here!\"");	}
								if (malonRep == 1) { textLP("\r\r\"Oh, whew...\" She puts a hand to her chest. \"It's just you. I-I'm not exactly supposed to be here, but, well, I'm sure you can see the benefits...\" She stands there awkwardly, the machine still sucking milk from her long nipples. \"You... You won't tell anyone, will you?\"");	}
								viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
								viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
								buttonWrite(5, "Tell");
								buttonWrite(7, "Don't Tell");
								doListen = function():void{
									if (buttonChoice == 5){
										textL("With tears welling up in her eyes, she rips away from the cups, letting them pop from her nipples with a milky flood. She turns and runs the other way, her tits bouncing from side to side and milk splashing across the walls as she goes, until she disappears out another door, leaving you with nothing.");
										stats(0,-3,0,0);
										malonRep = -1;
										hrs = 2;
										doEnd();
									}
									if (buttonChoice == 7) {
										if (malonRep == 0) {
											textL("\"Ahh, thank you so much!\" She looks like she wants to hug you, but she's a bit tethered at the moment... and half naked.\r\rShe begins to gather herself, trying to turn away as she removes the milk-cups. You get a short flash of her over-ample chest before she pulls her shirt back into position, rubbing her nipples so they don't show through as well and dabbing the resulting blotch with her shawl.\r\r\"M-My name is Malon. I've been this way most of my life... As a child, I always loved animals. A little too much, you could say... I liked the cows so much that I wanted to be like them. And so, I took one of their DairE Pills... To cut a long story short, I was happy with the results at first, becoming more like my bovine friends. Until eventually I grew up and realized my predicament. And, well, ever since then, I've been like this...\"\r\rShe shuffles uncomfortably in position for a bit, not quite sure what to say. She glances from side to side before deciding to step over to the milk machine, grabbing a bottle that was freshly made. Very freshly.\r\r\"I-I don't know how to thank you for not ruining one of the few pleasures of my life, but at least take this.\" She hands you the bottle as she bows her head.\r\rIn an instant, she turns and hurries out of the barn, her long tail squeezing against her backside and outlining her butt even more.");
											malonRep = 1;
											doSexP(20);
											stats(0,1,0,0);
											hrs = 2;
											itemAdd(214);
											doEnd();
										}
										if (malonRep == 1){
											textL("\"Hehe, thanks. Just a bit more to go...\" Her eyelids droop as her body shudders, the tail flicking wildly while the milk flow stutters with a strong burst. She lets out a low \"moo\" as she comes, at least partly enjoying some of her bovine endownments.\r\rShe takes a moment before she comes down from her high. \"Mmm... I'm just going to hang out here for a bit. Feel free to take the bottle from the machine. It's really fresh~\" She gives you a wink, rubbing her naked breasts as a bit more milk rushes through the tubes.");
											hrs = 2;
											doSexP(5);
											itemAdd(214);
											stats(0,1,0,0);
											doEnd();
										}
									}
								}
							}
						}
						if (buttonChoice == 5) {
							if (malonRep < 1) {
								textL("The woman doesn't see you as you approach, her eyes closed as she hums pleasantly to herself. You pull up a bucket and a nearby stool, sliding it beneath the tubes of the milking cups.\r\r\"Eep!\" She cries out as you interrupt her milking by pulling off the cups. She quickly settles down with a heavy blush on her face as you wrap your hands around her 6-inch long nipples, wringing down their lengths with gentle tugs, oscillating one after the other. Unable to resist, her breasts weighing her down and your hands keeping it that way, she rests upon the guardrail and waits for you to finish, her large ears drooping in embarrassment.\r\rEvery few squirts from her tits, the fluid splashing against the metallic bucket, she lets out a gasp as her large rear twitches, her long bristly tipped tail jerking above. After a few minutes of gentle milking, the flow begins to increase, the milk spraying everywhere with each tug. She clenches her eyes shut as her face burns red. Her whole body shudders, causing her rump to jiggle and the heavy bags to jounce out of your hands. Her mouth yawns wide to let out a moan of ecstasy, but all that comes out is a long, low \"Moooooooo!\"");
								doNext();
								doListen = function():void{ 
									if (buttonChoice == 6) {
										textL("She huffs for a few moments, her mind returning to its senses. The realization of her excessively cattle-like behaviour, especially in front of you, embarrasses her immensely. She jerks backward to stand up, a breast swinging out and slapping you in the face with a wet kiss from her nipple, before she turns and runs in the opposite direction. With a kink in her step and her breasts swaying from side to side, she disappears with her tail between her legs, pushing the skirt in to further amplify her endowments.\r\rA bit afraid of what happens next, you decide it best to disappear yourself.");
										malonRep++;
										if (malonRep == 1) {
											doNext();
											doListen = function():void{
												textL("However, on your way out, you feel a tug on your "+clothesTop()+".\r\rYou turn around to see the woman again, covering her chest with the yellow shawl she had left behind.\r\r\"Uhh... umm... Th-that was a bit rude of me. I'm sorry... You seem like you were genuinely trying to help.\" She fumbles a little as she tries to hold the shawl to her chest with a single arm, managing to let a nipple pop out with a blush before she gets it right. She holds out her free hand to shake yours. \"I'm Malon.\"\r\rYou take her hand and shake with the formal introduction.\r\r\"I'm... kinda ashamed for being such a... well, cow. Let's just say I liked them too much when I was younger and took some DairE Pills to act like them. And then I wound up being a little too much like them, resulting in some rather... bothersome attributes for a woman like me. Anyways, here. At least you should get something for your efforts.\"\r\rShe turns away and adjusts her shirt back into place so she doesn't have to worry about her shawl, though her naked breasts are still visible on either side of her body. Then she picks up the bucket you had used and pours it into one of the bottles meant for the milk of normal cows, handing it to you.\r\r\"I-It's not much, but that's all I can offer at the moment...\"\r\rAfter you take the milk, she says her goodbyes and tells you she'll be more welcoming from now on, leaving you to head back to Softlik.");
												stats(1,2,1,2);
												doSexP(20);
												itemAdd(214);
												hrs = 2;

												doEnd();
											}
										}
										else {
											stats (1,1,1,1);
											doSexP(2);
											hrs = 2;
											doEnd();
										}
									}
								}
							}
							else if (malonRep >= 1) {
								textL("Malon doesn't see you as you approach, her eyes closed as she hums pleasantly to herself. You pull up a bucket and a nearby stool, sliding it beneathe the tubes of the milking cups.\r\r\"Eep!\" She cries out as you interrupt her milking by pulling off the cups. She quickly settles down with a heavy blush on her face as she recognies you and your hands wrap around her 6-inch long nipples, wringing down their lengths with gentle tugs, oscillating one after the other. With a small smile, though still a slight blush, she allows you to take care of her milk for her.\r\rEvery few squirts from her tits, the fluid splashing against the metallic bucket, she lets out a gasp as her large rear twitches, her long bristly tipped tail jerking above. After a few minutes of gentle milking, the flow begins to increase, the milk spraying everywhere with each tug. She clenches her eyes shut as her face burns red. Her whole body shudders, causing her rump to jiggle and the heavy bags to jounce out of your hands. Her mouth yawns wide to let out a moan of ecstasy, but all that comes out is a long, low \"Moooooooo!\"\r\rShe takes a few moments to come down from her climax, heaving slightly, her breasts bobbing up and down. Then she leans over the rail, her tits squirting milk across your lap, as she kisses you on the forehead.\r\r\"Thanks for that\", she whispers. \"Feel free to take a bottle and fill it for your kind efforts.\"\r\rShe dozes off a little on the rail, her tail flicking back and forth contently as she reflects on her orgasm, her nipples dripping into the hay on the ground.\r\rNot wanting to disrupt her pleasant thoughts, you take a bottle of her milk and leave.");
								stats(1,1,1,0);
								itemAdd(214);
								hrs = 2;
								if (malonRep == 1)	{
									doNext();
									doListen = function():void{
										textL("You don't get far, however, as you feel a tug at your "+clothesTop()+" from behind.\r\rYou turn to see Malon huffing a little, her shirt covered with milk, as she had ran to catch up with you.\r\r\"Umm... I... I just wanted to thank you for being so kind to me... Most of the people that work on the farm or visit regard me as being a nuisance or a joke. I mean, I still love the animals so much that I'll never want to leave, but they often regard me like one of them. And, well... When I let out a moo like that, just like a cow, I... I can't help but think that they're right. I'm nothing but a big fat cow...\"\r\rHer head hangs low, her bovine ears drooping in shame.\r\r\rDo you want to tell her that she shouldn't act like a cow and try to avoid mooing, or that she should accept her cow-like qualities?");
										viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
										viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
										buttonWrite(5, "Don't Moo");
										buttonWrite(7, "Moo");
										doListen = function():void{
											if (buttonChoice == 5) {
												textL("You nod and tell her that it'd probably be best if she tried to not act like a cow to the best of her abilities. Her head still hangs, but she nods in return, accepting her condition as a problem. She reaches out, giving you a small hug, then turns to walk back to the farm. Her tail hangs between her legs, trying to tuck itself between her legs to prevent anybody from noticing, althouth the effort merely shows off her large rump even more...");
												stats(0,2,0,-2);
												doSexP(5);
												malonRep = 2;
												doEnd();
											}
											if (buttonChoice == 7) {
												textL("You smile and pat her on the head, telling her that she shouldn't be ashamed of being a cow. There's a lot of races out there that are like other animals, so she's more like a new race on her own.\r\rHearing your uplifting words, her head rises back up with a big, goofy smile, her ears nearly flapping. \"M-Mooo?\"\r\rYou nod in acceptance.\r\rShe giggles loudly, lunging out at you with her arms stretched wide and plowing you to the ground under her massive soft tits in a great big hug. She nuzzles your "+boobDesc()+" chest a little, enjoying your presence, before lifting herself with milky drops spilling from her shirt onto you. Not caring in the slightest, however, she turns around and skips back to the farm, her chest bouncing immensely while her tail flits about happily behind her.\r\r\rAs you come to a stand, however, something drops from your body, having been intentionally left behind during her attack...");
												stats(0,1,0,2);
												doSexP(25);
												malonRep = 3;
												itemAdd(215);
												doEnd();
											}
										}
									}
								}
								else { doEnd(); }
							}
						}
						if (buttonChoice == 7) {
							if (malonRep < 1){
								textL("You sneak up behind her, careful to not let her notice your movement as she hums pleasantly to herself. Before she can react, you flip up her long skirt and expose her naked loins. Her ass is large and her hips protrude from her sides, looking much like an actual cow. Her feminine sex is large and plump, almost animalistic in its size and absolute lewdness, with her inner labia bulging past her thick outer ones, gaping slightly with arousal. Tiny drops of dew speckle the lips, already engorged and aroused from the milking.\r\rShe lets out a cry of surprise as you inspect her naked rear. However, her heavy chest weighs her down and you pull her narrow tail to make sure she can't stand.");
								if (cockTotal > 0) {
									if (cockSize*cockSizeMod <= eVagLimit(56)) { textLP(" She shrieks in terror as you plunge your "+cockDesc()+" cock into her hungry sex.\r\r\"No, don't!\" She cries out in fear. \"Somebody help!\"\r\rNobody hears her over the machine that continues to pump away at her breasts. She whines and mewls as you churn her insides, pumping in tune to the machine. Her body defies her and begins to quiver around your cock, a gush of milk stuttering through the tubes. Her mouth opens wide to shout one last time but all that comes out is a long \"MOOOOOO!\""); }
									if (cockSize*cockSizeMod > eVagLimit(56)) { textLP(" She shrieks in terror as you ram your "+cockDesc()+" cock against her fat lips. Yet, despite her rather pronounced size, you're still far too large for her. Instead, you slide your cock between her thighs, running it through the cleft of her pussy and grinding it across her stiff clit until your cock pushes against the other side of the long skirt, wedging it between her hanging breasts until you're literally tit-fucking her from behind.\r\r\"No, don't!\" She cries out in fear and bewilderment.\r\rHowever, the shouts of dissension quickly die down as you thrust your cock back and forth across her clit and through her cleavage, pumping in tune to the machine. The vibrations reverberate through her chest and connect to the sensations from her clit, making her whole body begin to quiver.\r\rA moment later, her mouth yawns wide to either shout or moan, but what comes out is nothing but a loud \"Moooooo!\""); }
									doNext();
									doListen = function():void{
										textL("Before you can come yourself, the loud bovine expression makes the girl jump with embarrassment, her tail slipping from your hand");
										if (knot == true) { textLP(" and tries to pull herself from your cock. She recoils at first, your knot yanking at her tender cunt, but her will is greater and she tugs again with a yelp, making your erection ache a little from the force as it flies out"); }
										else { textLP(" and your cock sliding out"); }
										textLP(" from between her legs as she turns to run. The milking cups pop from her long nipples, flinging milk everywhere as she runs away, her large breasts swinging from side to side and her skirt a mess.");
										if (cockSize*cockSizeMod <= eVagLimit(56)) { 
											textLP("\r\rObviously having thoroughly terrified the girl, you turn the opposite direction to make a quick getaway yourself, your cock hard in your "+clothesBottom()+"...");
											malonRep = -1;
										}
										if (cockSize*cockSizeMod > eVagLimit(56)) { textLP("\r\rYou're not quite sure if it was because of your actions that frightened her so, or her own reaction to them... Either way, you think it best to not dawdle, despite your cock still being hard...");	}
										stats(0,-3,2,0);
										doSexP(5);
										doLust(30, 0);
										hrs = 2;
										doEnd();
									}
								}
								if (cockTotal < 1) {
									textLP(" She gasps loudly as you fall to your "+legDesc(6)+" and dive your face into her plush groin.\r\r\"No, don't!\" She whines as you nibble her fat clit and lick through her folds.\r\rHowever, the shouts of dissension quickly die down as your tongue works its way into her supple hole. Muffled whines still escape her lips every now and again, but as the machine works at her breasts in tune to your devouring of her sex, her wide hips soon begin to sway in harmony.\r\rQuite soon, you hear the machine stutter on a sudden increase in her flow. A second later, wet ecstasy gushes around your face and slimes down to your chin, her whole body quivering around you, while a low and loud \"Mooooo!\" fills the air...");
									doNext();
									doListen = function():void{
										textL("As you pull your face from her cunt, you find yourself temporarily wedged between her cheeks as she abruptly stands. With a whimper and her ears drooping in embarrassment, she yanks herself from the milker and runs away. With a kink in her step and her breasts swaying from side to side, she disappears with her tail between her legs, pushing the skirt in until it blotches with her feminine mess.\r\rNot quite sure what she was thinking, you decide it best to disappear yourself.");
										stats(0,-1,1,0);
										doSexP(5);
										doLust(Math.floor(lib/5), 1);
										hrs = 2;
										doEnd();
									}
								}
							}
							if (malonRep == 1 || malonRep == 2){
								textL("You sneak up behind her, careful to not let her notice your movement as she hums pleasantly to herself. Before she can react, you flip up her long skirt and expose her naked loins. Her ass is large and her hips protrude from her sides, looking much like an actual cow. Her feminine sex is large and plump, almost animalistic in its size and absolute lewdness, with her inner labia bulging past her thick outer ones, gaping slightly with arousal. Tiny drops of dew speckle the lips, already engorged and aroused from the milking.\r\rShe lets out a cry of surprise as you inspect her naked rear. However, her heavy chest weighs her down and you grab her tail playfully to keep her down.");
								if (cockTotal > 0) {
									if (cockSize*cockSizeMod <= eVagLimit(56)) { textLP(" She shrieks in terror as you plunge your "+cockDesc()+" cock into her hungry sex.\r\r\"No, don't!\" She cries out in fear. However, she quickly recognizes you and begins to whine. \"Please, not like this!\"\r\rYou ignore her pleas and continue anyways. She whines and mewls as you churn her insides, pumping in tune to the machine. Her body soon reacts and begins to quiver around your cock, a gush of milk stuttering through the tubes. Her mouth opens wide to shout one last time but all that comes out is a long \"MOOOOOO!\""); }
									if (cockSize*cockSizeMod > eVagLimit(56)) { textLP(" She shrieks in terror as you ram your "+cockDesc()+" cock against her fat lips. Yet, despite her rather pronounced size, you're still far too large for her. Instead, you slide your cock between her thighs, running it through the cleft of her pussy and grinding it across her stiff clit until your cock pushes against the other side of the long skirt, wedging it between her hanging breasts until you're literally tit-fucking her from behind.\r\r\"No, don't!\" She cries out in fear and bewilderment. However, she quickly recognizes you and bites her lip; not entirely happy with the situation but not fighting much more either.\r\rYou thrust your cock back and forth across her clit and through her cleavage, pumping in tune to the machine. The vibrations reverberate through her chest and connect to the sensations from her clit, making her whole body begin to quiver.\r\rA moment later, her mouth yawns wide to either shout or moan, but what comes out is nothing but a loud \"Moooooo!\""); }
									doNext();
									doListen = function():void{
										textL("Before you can come yourself, the loud bovine expression makes the girl jump with embarrassment, her tail slipping from your hand and ");
										if (knot == true) { textLP(" reaches into her pussy with her fingers, wincing as she squeezes your swollen knot, slipping it out "); }
										else { textLP(" your cock sliding out "); }
										textLP("from between her legs as she turns and stands. The milking cups pop from her long nipples, flinging milk everywhere as she turns to face you.\r\r\"P-Please! I don't want to be that kind of girl!\" She fretfully tries to cover her naked, milky chest with her shawl before turning to run away in silence.");
										textLP("\r\rThe way she said it didn't seem to regard the sexual aspect of what just happened... Unsure of what to do, you turn and head away from the farm, your cock even harder than before...");
										stats(0,-1,1,0);
										doSexP(5);
										doLust(20, 0);
										hrs = 2;
										doEnd();
									}
								}
								if (cockTotal < 1) {
									textL(" She gasps loudly as you fall to your "+legDesc(6)+" and dive your face into her plush groin.\r\r\"No, don't!\" She whines as you nibble her fat clit and lick through her folds.\r\rHowever, the shouts of dissension quickly die down as your tongue works its way into her supple hole. Muffled whines still escape her lips every now and again, but as the machine works at her breasts in tune to your devouring of her sex, her wide hips soon begin to sway in harmony.\r\rQuite soon, you hear the machine stutter on a sudden increase in her flow. A second later, wet ecstasy gushes around your face and slimes down to your chin, her whole body quivering around you, while a low and loud \"Mooooo!\" fills the air...");
									doNext();
									doListen = function():void{
										textL("As you pull your face from her cunt, you find yourself temporarily wedged between her cheeks as she abruptly stands. With a whimper and her ears drooping in embarrassment, she yanks herself from the milker and turns towards you.\r\r\"P-Please! I don't want to be that kind of girl!\" She fretfully tries to cover her naked, milky chest with her shawl before turning to run away in silence, her tail pushing the skirt between her legs in until it blotches with her feminine mess.\r\rThe way she said it didn't seem to regard the sexual aspect of what just happened... Unsure of what to do, you turn and head away from the farm.");
										stats(0,-1,1,0);
										doSexP(5);
										doLust(Math.floor(lib/5), 1);
										hrs = 2;
										doEnd();
									}
								}
							}
							if (malonRep == 3) {
								textL("You sneak up behind her, careful to not let her notice your movement as she hums pleasantly to herself. Before she can react, you flip up her long skirt and expose her naked loins. Her ass is large and her hips protrude from her sides, looking much like an actual cow. Her feminine sex is large and plump, almost animalistic in its size and absolute lewdness, with her inner labia bulging past her thick outer ones, gaping slightly with arousal. Tiny drops of dew speckle the lips, already engorged and aroused from the milking.\r\rShe lets out a cry of surprise as you inspect her naked rear. However, her heavy chest weighs her down and you grab her tail playfully to keep her down.");
								if (cockTotal > 0) {
									if (cockSize*cockSizeMod <= eVagLimit(56)) { 
										textLP(" She shrieks as you plunge your "+cockDesc()+" cock into her hungry sex.\r\r\"No, don't!\" She cries out in fear. However, she quickly recognizes you and her head descends behind her shoulders. \"A-Are you sure?\" She looks at you with complete seriousness.\r\rYou nod with a smile.\r\r\"O-Okay!\" She forces a smile back, then braces herself against the guardrail.\r\rShe quickly begins to push back against your hips, sucking in the length of your cock as her plump ass presses against you. She shivers in ecstasy as you fill her, the machine pleasuring her tits."); 
										if (percent() <= 20) { 
											malonRep = 4;
											malonPreg = 0;
										}
									}
									if (cockSize*cockSizeMod > eVagLimit(56)) { textLP(" She shrieks as you ram your "+cockDesc()+" cock against her fat lips. Yet, despite her rather pronounced size, you're still far too large for her. Instead, you slide your cock between her thighs, running it through the cleft of her pussy and grinding it across her stiff clit until your cock pushes against the other side of the long skirt, wedging it between her hanging breasts until you're literally tit-fucking her from behind.\r\r\"No, don't!\" She cries out in fear. However, she quickly recognizes you and her head descends behind her shoulders. \"A-Are you sure?\" She looks at you with complete seriousness.\r\rYou nod with a smile.\r\r\"O-Okay!\" She forces a smile back, then braces herself against the guardrail.\r\rShe leans backward along your length, running her clit across your shaft until her plump ass presses against you. She shivers in ecstasy from the sensitive contact and the machine still pleasuring her tits.");  }										
									textLP("\r\rYou thrust against her wide hips again and again, in tune to the machine. Her breasts sway back and forth as you pound her, milk spitting through the tubes as she comes closer and closer to climax. You lean forward, hugging her tight as she begins to shudder. Her thighs clench and her hands wring the rail. Her mouth yawns widely. With some slight hestitation, she lets out a soft \"M-Mooo!\". Then, as your cock begins to gush with cum, her mouth yawns wider as her eyes go wide, completely ignoring her inhibitions.\r\r\"MOOOOOOOOO!\"");
									cumAmount();
									doNext();
									doListen = function():void{

										textL("You both stand there for a few moments, gasping for breath. She slumps backward, pinning you against the wall behind you and she turns to stroke your face.\r\r\"Th-Thank you so much!\" Her lips reach out and softly kisses your own...\r\r\rThoroughly satisfied, the two of you spend the next hour");
										if (knot == true){ textLP("waiting for your knot to deflate before "); }
										textLP("cleaning up all the cum and milk you left everywhere... But you're quite happy nevertheless.\r\rEventually you kiss her goodbye and leave her to quickly return to her work as a farm-hand before she's caught with her little pleasure.");
										stats(0,2,2,2);
										doLust(-Math.floor(sen/2), 2, 1);
										doSexP(20);
										if (malonRep == 3) { malonRep = 5; }
										hrs = 3;
										doEnd();
									}
								}
								if (cockTotal < 1) {
									textL(" She gasps loudly as you fall to your "+legDesc(6)+" and dive your face into her plush groin.\r\r\"No, don't!\" She cries out in fear. However, she quickly turns and recognizes you, her head descending behind her shoulders. \"A-Are you sure?\" She looks at you with complete seriousness.\r\rYou nod with a smile.\r\r\"O-Okay!\" She forces a smile back, then braces herself against the guardrail.\r\rShe pushes her plump rump towards your face, letting you nibble her fat clit and lick through her folds. Her hips rock beack and forth while your tongue works its way into her supple hole, her arousal drizzling down your face. Soft moans escape her lips every now and again, and increase as the machine works at her breasts in tune to your devouring of her sex, her breasts beginning to sway in harmony.\r\rQuite soon, you hear the machine stutter on a sudden increase in her flow. A second later, wet ecstasy gushes around your face and slimes down to your chin, her whole body quivering around you. Her mouth yawns widely. With some slight hestitation, she lets out a soft \"M-Mooo!\". Then, as you bite down on her orgasming clit, her mouth yawns wider as her eyes go wide, completely ignoring her inhibitions.\r\r\"MOOOOOOOOO!\"");
									doNext();
									doListen = function():void{
										textL("As you pull your face from her cunt, her legs give out as she slumps back into you, pinning you between her fat pussy and the wall behind. Her ears twitching at the sides of her head, she stands up and turns to you, allowing the cups to pop from her nipples and milk cascade down your body. She kneels down beside you, hugging her tits to your chest.\r\r\"Th-thank you!\" She presses her lips to your own, kissing you through her own slickness that covers your face.\r\rThe two of your relax in each others arms. However, eventually she has to get back to her duties before she is missed. She pulls her skirt back down and her shirt back up, giving you a wink as both pieces blotch a little from various fluids. She turns away and heads out with some extra sway in her step and her tail flicking high.");
										stats(0,2,2,2);
										doSexP(20);
										if (malonRep == 3) {malonRep = 5; }
										doLust(Math.floor(lib/4), 0);
										hrs = 2;
										doEnd();
									}
								}

							}
							if (malonRep >= 4) {
								textL("You sneak up behind her, careful to not let her notice your movement as she hums pleasantly to herself. Before she can react, you flip up her long skirt and expose her naked loins. Her ass is large and her hips protrude from her sides, looking much like an actual cow. Her feminine sex is large and plump, almost animalistic in its size and absolute lewdness, with her inner labia bulging past her thick outer ones, gaping slightly with arousal. Tiny drops of dew speckle the lips, already engorged and aroused from the milking.\r\rShe lets out a cry of surprise as you inspect her naked rear. However, her heavy chest weighs her down and you grab her tail playfully to keep her down.");
								if (cockTotal > 0) {
									if (cockSize*cockSizeMod <= eVagLimit(56)) { 
										textLP(" She shrieks as you plunge your "+cockDesc()+" cock into her hungry sex. She immediately turns to spot her assailent and her face calms as she begins to smile.\r\r\"Don't frighten me like that!\" She sticks out her tongue and kicks you with a foot.\r\rShe quickly begins to push back against your hips, sucking in the length of your cock as her plump ass presses against you. She shivers in ecstasy as you fill her, the machine pleasuring her tits."); 
										if (malonRep == 5 && percent() <= 20) { 
											malonRep = 4;
											malonPreg = 0;
										}
									}
									if (cockSize*cockSizeMod > eVagLimit(56)) { textLP(" She shrieks as you ram your "+cockDesc()+" cock against her fat lips. Yet, despite her rather pronounced size, you're still far too large for her. Instead, you slide your cock between her thighs, running it through the cleft of her pussy and grinding it across her stiff clit until your cock pushes against the other side of the long skirt,");
										if (malonRep == 4) {
											if (malonPreg < 54)	{ textLP(" wedging it between her hanging breasts until you're literally tit-fucking her from behind. She turns to spot who could possibly plow through her cleavage like that and isn't terribly surprised to see you.\r\r\"Don't frighten me like that!\" She sticks out her tongue and kicks you with a foot.\r\rShe leans backward along your length, running her clit across your shaft until her plump ass presses against you. She shivers in ecstasy from the sensitive contact and the machine still pleasuring her tits."); }
											if (malonPreg >= 54 && malonPreg < 72) { textLP(" curving around her pregnant belly until it wedges between her hanging breasts, literally tit-fucking her from behind. She turns to spot who could possibly plow through her cleavage like that and isn't terribly surprised to see you.\r\r\"Don't frighten me like that!\" She sticks out her tongue and kicks you with a foot.\r\rShe leans backward along your length, running her clit across your shaft until her plump ass presses against you. She shivers in ecstasy from the sensitive contact and the machine still pleasuring her tits."); }
											if (malonPreg >= 72 && malonPreg < 108) { textLP(" diverting down towards the ground from her massive belly until your ramming into the hay. She turns to spot who could possibly hump her belly likse that and isn't terribly surprised.\r\r\"Don't frighten me like that!\" She sticks out her tongue and kicks you with a foot.\r\rShe leans backward along your length, running her clit across your shaft until her plump ass presses against you. She shivers in ecstasy from the sensitive contact and the machine still pleasuring her tits."); }
											if (malonPreg >= 108) { textLP(" diverting down towards the ground from her massive belly until you're lifting her slightly as your cock wedges between the belly and the hay on the floor. She turns to spot who could possibly hump her belly likse that and isn't terribly surprised.\r\r\"Don't frighten me like that!\" She sticks out her tongue and kicks you with a foot.\r\rShe leans backward along your length, running her clit across your shaft until her plump ass presses against you. She shivers in ecstasy from the sensitive contact and the machine still pleasuring her tits."); }
										}
										else { textLP(" wedging it between her hanging breasts until you're literally tit-fucking her from behind. She turns to spot who could possibly plow through her cleavage like that and isn't terribly surprised to see you.\r\r\"Don't frighten me like that!\" She sticks out her tongue and kicks you with a foot.\r\rShe leans backward along your length, running her clit across your shaft until her plump ass presses against you. She shivers in ecstasy from the sensitive contact and the machine still pleasuring her tits."); }
									}

									textLP("\r\rYou thrust against her wide hips again and again, in tune to the machine. Her breasts sway back and forth as you pound her, milk spitting through the tubes as she comes closer and closer to climax. You lean forward,");
									if (malonRep == 3 && malonPreg >= 54) { textLP(" hugging her and her pregnant belly "); }
									else { textLP(" hugging her "); }
									textLP("tight as she begins to shudder. Her thighs clench and her hands wring the rail, her mouth proudly yawning wide with a loud \"Moooooooo!\", squeezing your cock until you gush with cum.");
									cumAmount();
									doNext();
									doListen = function():void{
										textL("You both stand there for a few moments, gasping for breath. She slumps backward, pinning you against the wall behind you and she turns to stroke your face.\r\r\"Thank you~\" She kisses you...\r\r\rThoroughly satisfied, the two of you spend the next hour cleaning up all the cum and milk you left everywhere... But you're quite happy nevertheless.\r\rEventually you kiss her goodbye and leave her to quickly return to her work as a farm-hand before she's caught with her little pleasure.");
										stats(0,2,2,2);
										doSexP(2);
										doLust(-Math.floor(sen/2), 2, 1);
										/*if (malonPreg >= 54) { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23, 51, 21);	}
										else { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23, 21); }*/
										hrs = 3;
										doEnd();
									}
								}
								if (cockTotal < 1) {
									textL(" She gasps loudly as you fall to your "+legDesc(6)+" and dive your face into her plush groin. She turns to see who it is and giggles.\r\r\"Don't frighten me like that!\" She presses back against your face as punishment, stuffing you into the cheeks of her plump rump.\r\rThe 'punishment' quickly subsides as you nibble her fat clit and lick through her folds. Her hips rock beack and forth while your tongue works its way into her supple hole, her arousal drizzling down your face. Soft moans escape her lips every now and again, and increase as the machine works at her breasts in tune to your devouring of her sex, her breasts beginning to sway in harmony.\r\rQuite soon, you hear the machine stutter on a sudden increase in her flow. A second later, wet ecstasy gushes around your face and slimes down to your chin, her whole body quivering around you, while a low and loud \"Mooooo!\" fills the air.");
									doNext();
									doListen = function():void{
										textL("As you pull your face from her cunt, her legs give out as she slumps back into you, pinning you between her fat pussy and the wall behind. Her ears twitching at the sides of her head, she stands up and turns to you, allowing the cups to pop from her nipples and milk cascade down your body. She kneels down beside you, kissing you through her own slickness that covers your face.\r\r\"Thank you~\"\r\rHaving to get back to her duties, however, she pulls her skirt back down and her shirt back up, giving you a wink as both pieces blotch a little from various fluids. She turns away and heads out with some extra sway in her step and her tail flicking high.");
										stats(0,2,2,2);
										doSexP(2);
										doLust(Math.floor(lib/4), 0);
										/*if (malonPreg >= 54) { doLust(Math.floor(lib/4), 0, 2, 5, 27, 53, 23, 51, 21);	}
										else { doLust(Math.floor(lib/4), 0, 2, 5, 27, 53, 23, 21); }*/
										hrs = 2;
										doEnd();
									}
								}
							}
						}
						if (buttonChoice == 10)	{
							textL("You turn around and head back to Softlik, deciding it best to leave her to her privacy.");
							hrs = 1;
							doEnd();
						}
					}
				}
				if (buttonChoice == 7) {
					textL("A little too dangerous, and probably illegal with the whole trespassing thing, you turn around and walk away.");
					hrs = 1;
					doEnd();
				}
			}
		}

		else if (malonRep > 0){
			if (malonRep == 1 && (milkEngorgementLevel > 0 || udderEngorgementLevel > 0)){
				textL("Malon is working outside as you approach the farm once again. She spots the blotches in your "+clothesTop()+" and shouts to the other workers that she's got some business she needs to take care of. The others roll their eyes, well used to the excuse thanks to her 'condition'. Nevertheless, she smiles as she heads towards you.\r\r\"Need some help?\" She winks and sticks out her tongue as she looks down at your moistness.");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6){
						textL("She nods with a soft smile, taking you by the hand. Leading you into the main farmhouse, she's quick to look around corners and check hallways, as if she were smuggling you into the building. Eventually, she brings you upstairs to a bedroom.\r\rIn the center of the room sits a good-sized bed, with downy blankets and soft mattress. However, the sheets seem to be coated with some sort of wax, making them shiny and most likely waterproof. In a corner beside the bed stands a stack of several buckets, all clean and ready to be used. Malon leads you towards her bed, motioning for you to sit.\r\r\"Just relax and I'll take care of it for you.\" She speaks sweetly.");
						doNext();
						doListen = function():void{
							textL("\r\rYou sit down upon the soft bed, sinking in slightly from the extra cushioning. She then grabs a bucket from the stack and pulls a short stool over to your "+legDesc(6)+".\r\r\"Your "+clothesTop()+", please.\" She motions to it being in the way.");
							if (ment > lib)	{ textLP("\r\rWith a heavy blush in your cheeks, you nod back, pulling your "+clothesTop()+" "+pullUD(1)+", slowly exposing your "); }	
							else if (ment > (lib-10)) { textLP("\r\rWith a slight blush in your cheeks, you nod back, pulling your "+clothesTop()+" "+pullUD(1)+", exposing your "); }	
							else { textLP("\r\rWith a quick nod and no hesitation, you pull "+pullUD(1)+" your "+clothesTop()+", exposing your "); }
							if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0 && udders == true) { textLP(boobDesc()+" leaky breasts and letting your "+udderDesc()+" udder spill into your lap.");	}
							else if (milkEngorgementLevel > 0)	{ textLP(boobDesc()+" leaky breasts.");	}
							else if (udderEngorgementLevel > 0 && udders == true) { textLP(udderDesc()+" udder, your teats dripping into your lap.");	}
							textLP(" Malon then slips her hands into her cleavage, quickly warming her hands, before reaching out to your ");
							if (milkEngorgementLevel > 0) { textLP(nipDesc()+" nipples"); }
							else if (udderEngorgementLevel > 0 && udders == true){textLP(teatDesc()+" teats"); }
							textLP(" and gently pinches them within her grasp. Expertly, she bends you forward slightly and aims towards the bucket. Within just a few tugs, you're already squirting milk into the bucket, the pleasant feeling of warmth overcoming you and intensified by her caring massage.\r\rThe room quickly fills with the sound of your squirts hitting the metallic bucket, in a gentle rhythm. She begins to hum a tune (that, for some reason, you'd think horses would love), when redness tinges her cheeks. \"Oh-Oh my...\"\r\rHer shirt blotches quickly, her own milk beginning to drip into the bucket with yours. \"Uh-umm... I think doing this made my breasts think it's that time... Y-You don't mind, do you?\" She plucks at her shirt to indicate what she means.");
							viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
							viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
							buttonWrite(5, "Help her");
							buttonWrite(7, "Let her");
							doListen = function():void{
								if (buttonChoice == 5) {
									var getMilk:int;
									if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0) { getMilk = milkAmount(1) + milkAmount(2); }
									else if (milkEngorgementLevel > 0) { getMilk = milkAmount(1); }
									else if (udderEngorgementLevel > 0) { getMilk = milkAmount(2); }
									nipplePlay += 12;
									if (udders == true)	{ udderPlay +=12; }
									textL("You shake your head, telling her it's not alright.\r\rA bit defeated, the redness in her cheeks intensifies as she attempts to continue milking you while she drips away. However, you tell her to stop with that as well.\r\rCompletely confused, her eyes quickly go wide as you reach out for her shirt and pull it up. When your hands gently caress her 6-inch long nipples, aiming them towards the bucket and squirting out some of her own milk, the blush in her face recedes as a soft smile grows on her face, cheerfully accepting your efforts.\r\rFacing each other, with your hands on each other's milky bits, the two of you tug and pull until each other sprays into the bucket with a gasp. More and more milk spills from you both, though the moans echoing between you two would suggest something more as they rise in volume. Until, eventually, Malon's tits gush into the bucket as her body quivers and her mouth yawns wide to cry out in ecstacy, only to let out a long \"Mooooooo!\"");
									doNext();
									doListen = function():void{
										textL("Her hands let go of you, springing up to cover her mouth in fright. Her ears droop in shame and tears begin to well up in her eyes as she buries the rest of her face behind her hands. She jumps up from her stool, milk still spraying from her nipples and drenching you slightly, before she runs out of the room in utter embarrassment, her breasts swinging from side to side and painting the walls of the house with more milk.\r\rUnsure of what just happened, you clean yourself off and finish the last of your own lactation, neatly putting the buckets aside. You attempt to look for her, but with a farm so big you have no idea where to start. With a sigh, you head back to Softlik.");
										doNext();
										doListen = function():void{
											textL("You don't get far, however, as you feel a tug at your "+clothesTop()+" from behind.\r\rYou turn to see Malon huffing a little, her shirt covered with milk after having been hastily put on having ran to catch up with you. She wipes her eyes with a sniffle.\r\r\"Umm... I... I'm so sorry for running out on you like that. I just wanted to thank you for being so kind to me, though... Most of the people that work on the farm or visit regard me as being a nuisance or a joke. I mean, I still love the animals so much that I'll never want to leave, but they often regard me like one of them. And, well... When I let out a moo like that, just like a cow, I... I can't help but think that they're right. I'm nothing but a big fat cow...\"\r\rHer head hangs low, another tear dripping from her cheek, her bovine ears drooping in shame.\r\r\rDo you want to tell her that she shouldn't act like a cow and try to avoid mooing, or that she should accept her cow-like qualities?");
											viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
											viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
											buttonWrite(5, "Don't Moo");
											buttonWrite(7, "Moo");
											doListen = function():void{
												if (buttonChoice == 5) {
													textL("You nod and tell her that it'd probably be best if she tried to not act like a cow to the best of her abilities. Her head still hangs, but she nods in return, accepting her condition as a problem. She reaches out, giving you a small hug, then turns to walk back to the farm. Her tail hangs between her legs, trying to tuck itself between her legs to prevent anybody from noticing, altouth the effort merely shows off her large rump even more...");
													stats(0,2,0,-2);
													doSexP(10);
													malonRep = 2;
													doEnd();
												}
												if (buttonChoice == 7) {
													textL("You smile and pat her on the head, telling her that she shouldn't be ashamed of being a cow. There's a lot of races out there that are like other animals, so she's actually a whole new race on her own rather than a mere animal.\r\rHearing your uplifting words, her head rises back up with a small smile, her ears twitching hesitantly. \"M-Mooo?\"\r\rYou nod in acceptance.\r\rShe giggles cheerfully, lunging out you with her arms stretched wide and plowing you to the ground under her massive soft tits in a great big hug. She nuzzles your "+boobDesc()+" chest a little, enjoying your presence, before lifting herself with milky drops spilling from her shirt onto you. Not caring in the slightest, however, she turns around and skips back to the farm, her chest bouncing immensely while her tail flails about happily behind her.\r\r\rAs you come to a stand, however, something drops from your body, having been intentionally left behind during her attack...");
													stats(0,1,0,2);
													doSexP(25);
													malonRep = 3;
													itemAdd(215);
													doEnd();
												}
											}
										}
									}
								}
								if (buttonChoice == 7){
									textL("Nodding your head to say it's alright, she pulls her shirt up, exposing her enormous breasts. They rest more comfortably on her knees, with 6-inch long nipples dangling like teats. While one hand works your body, her other reaches around a fleshy mass to grab her own nipple. In a couple seconds, her rhythm quickly matches yours, filling the bucket rapidly.\r\r");
									var getMilk:int;
									if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0) { getMilk = milkAmount(1)+milkAmount(2);	}
									else if (milkEngorgementLevel > 0) { getMilk = milkAmount(1); }
									else if (udderEngorgementLevel > 0) { getMilk = milkAmount(2); }
									if (getMilk <= 4000) { textL("After filling up two buckets of milk, most of which was Malon's, she pushes them off to the side with a clap."); 	}
									else if (getMilk <= 18000) { textL("After filling up few buckets of milk, most of which was yours, Malon pushes them off to the side with a sigh."); 	}
									else if (getMilk <= 35500) { textL("After filling up several buckets of milk, far surpassing Malon's amount, she pushes them off to the side with a tired sigh, stretching her adept fingers."); 	}
									else if (getMilk > 35500) { textL("After a while, Malon begins to panic. \"Umm... I-I seem to have run out of buckets!\" She sloshes the last one from the stack to the side as you still spill with milk. \"I-I'm so sorry! I didn't know it was that bad for you. Here!\"\r\rShe takes off her shawl, holding it to your mammaries and waiting for the flow to come to a halt. A few minutes pass before she can remove it, your lactation having ceased and her hands covered in the white stuff. \"Whew... That was close.\"\r\rShe wrings her shawl out in a bucket that has yet to overflow before slinging it around her neck again."); 	}
									textLP(" \"There, all done!\" She gently pats your "+boobDesc()+" breasts");
									if (udders == true)	{ textLP(" and your "+udderDesc()+" milky bag."); }
									textLP("\r\r\"I enjoyed this little milking session between us 'cows'. I hope to do it again with you some time!\" She smiles as she pulls her shirt back down, lifting her massive tits a few time to get them to settle within the shirt without her large nipples being so obvious. With a wink, she leans forward, giving you a great view of her deep cleavage as she kisses you on your forehead. Then she takes your hand once more, leading your back out of the farmhouse, saying she can take care of the buckets herself.\r\rWith a wave, you say goodbye and head back to Softlik.");
									hrs = 3;
									doLust(5, 0);
									doSexP(2);
									stats(0,1,1,1);
									doEnd();
								}
							}
						}
					}
					else {
						textL("You shake your head, not accepting her assistance. She gives you a soft smile, not offended by the choice. However, as her own shirt begins to blotch, white liquid spilling out and dribbling onto her apron and ground, she blushes a little as she has now found a new reason for her excuse. She pulls her shawl down to cover her huge chest, turning away and scampering off into the main house to take care of business, leaving you to head back to Softlik.");
						hrs = 1;
						doEnd();
					}
				}
			}
			else if (malonRep == 3 && (milkEngorgementLevel > 0 || udderEngorgementLevel > 0)){
				textL("Malon is working outside as you approach the farm once again. She spots the blotches in your "+clothesTop()+" and shouts to the other workers that she's got some business she needs to take care of. The others roll their eyes, well used to the excuse thanks to her 'condition'. Nevertheless, she smiles as she heads towards you.\r\r\"Need some help?\" She winks and sticks out her tongue as she looks down at your moistness.");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6){
						textL("She nods with a soft smile, taking you by the hand. Leading you into the main farmhouse, she's quick to look around corners and check hallways, as if she were smuggling you into the building. Eventually, she brings you upstairs to a bedroom.\r\rIn the center of the room sits a good-sized bed, with downy blankets and soft matress. However, the sheets seem to be coated with some sort of wax, making them shiny and most likely waterproof. In a corner beside the bed stands a stack of several buckets, all clean and ready to be used. Malon leads you towards her bed, motioning for you to sit.\r\r\"Just relax and I'll take care of it for you.\" She speaks sweetly.");
						doNext();
						doListen = function():void{
							textL("\r\rYou sit down upon the soft bed, sinking in slightly from the extra cushioning. She then grabs a bucket from the stack and pulls a short stool over to your "+legDesc(6)+".\r\r\"Your "+clothesTop()+", please.\" She motions to it being in the way.");
							if (ment > lib)	{ textLP("\r\rWith a heavy blush in your cheeks, you nod back, pulling your "+clothesTop()+" "+pullUD(1)+", slowly exposing your "); }	
							else if (ment > (lib-10)) { textLP("\r\rWith a slight blush in your cheeks, you nod back, pulling your "+clothesTop()+" "+pullUD(1)+", exposing your "); }	
							else { textLP("\r\rWith a quick nod and no hesitation, you pull "+pullUD(1)+" your "+clothesTop()+", exposing your "); }
							if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0 && udders == true) { textLP(boobDesc()+" leaky breasts and letting your "+udderDesc()+" udder spill into your lap.");	}
							else if (milkEngorgementLevel > 0)	{ textLP(boobDesc()+" leaky breasts.");	}
							else if (udderEngorgementLevel > 0 && udders == true) { textLP(udderDesc()+" udder, your teats dripping into your lap.");	}
							textLP(" Malon then slips her hands into her cleavage, quickly warming her hands, before reaching out to your ");
							if (milkEngorgementLevel > 0) { textLP(nipDesc()+" nipples"); }
							else if (udderEngorgementLevel > 0 && udders == true){textLP(teatDesc()+" teats"); }
							textLP(" and gently pinches them within her grasp. Expertly, she bends you forward slightly and aims towards the bucket. Within just a few tugs, you're already squirting milk into the bucket, the pleasant feeling of warmth overcoming you and intensified by her caring massage.\r\rThe room quickly fills with the sound of your squirts hitting the metallic bucket, in a gentle rhythm. She begins to hum a tune (that, for some reason, you'd think horses would love), when redness tinges her cheeks. \"Oh-Oh my...\"\r\rHer shirt blotches quickly, her own milk beginning to drip into the bucket with yours. \"Uh-umm... I think doing this made my breasts think it's that time... Y-You don't mind, do you?\" She plucks at her shirt to indicate what she means.");
							viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
							viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
							buttonWrite(5, "Help her");
							buttonWrite(7, "Let her");
							doListen = function():void{
								if (buttonChoice == 5) {
									var getMilk:int;
									if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0) { getMilk = milkAmount(1)+ milkAmount(2); }
									else if (milkEngorgementLevel > 0) { getMilk = milkAmount(1); }
									else if (udderEngorgementLevel > 0) { getMilk = milkAmount(2); }
									nipplePlay += 12;
									if (udders == true)	{ udderPlay +=12; }
									textL("You shake your head, telling her it's not alright.\r\rA bit defeated, the redness in her cheeks intensifies as she attempts to continue milking you while she drips away. However, you tell her to stop with that as well.\r\rHer eyes brightening, she quickly realizes your intention as you reach out for her shirt and pull it up. When your hands gently caress her 6-inch long nipples, aiming them towards the bucket and squirting out some of her own milk, the blush in her face recedes as a soft smile grows on her face, cheerfully accepting your efforts.\r\rFacing each other, with your hands on each other's milky bits, the two of you tug and pull until each other sprays into the bucket with a gasp. More and more milk spills from you both, though the moans echoing between you two would suggest something more as they rise in volume. Until, eventually, Malon's tits gush into the bucket as her body quivers and her mouth begins to yawn wide. With some slight hestitation, she lets out a soft \"M-Mooo!\". Then, as you give her breasts a strong, sensual squeeze, her mouth yawns wider as her eyes go wide, completely ignoring her inhibitions.\r\r\"MOOOOOOOOO!\"");
									doNext();
									doListen = function():void{
										textL("She collapses forward onto your "+boobDesc()+" chest, huffing and heaving. After a few moments, her eyelashes flutter as she turns her head towards you with a glimmer in her eye.");
										viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
										viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
										buttonWrite(5, "Kiss Her");
										buttonWrite(7, "Help Up");
										doListen = function():void{
											if (buttonChoice == 5) {
												textL("Your hand slips behind her head, pulling her face to your own. You press your lips to hers.\r\rWithout any resistance, she returns the favor, hugging your head and kissing you deeply. She pushes you forward, back onto her bed. With fervor, you lift her long purple skirt, revealing her wide, cow-like hips and large, dripping, animalistic nether-region.");
												if (cockTotal > 0) {
													textLP("\r\rFlipping back her long red hair, she grinds down your "+legDesc(2)+" and across the bed to pull "+pullUD(2)+" your "+clothesBottom()+", letting "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+" flop out. She licks and kisses it ravenously, as though something had come over her. She sucks at the tip, slipping her tongue across and through your urethra and savoring the salty taste of your pre.");
													if (cockSize*cockSizeMod <= eVagLimit(56))	{ 
														textLP("\r\rIt doesn't take long before she grows too hungry, crawling back up your body, licking your milk up as she goes. Her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she slides your cock into her supple folds, devouring its entire length.");
														if (percent() <= 20) { 
															malonRep = 4;
															malonPreg = 0;
														}
														else { malonRep = 5; }
													}
													if (cockSize*cockSizeMod > eVagLimit(56)){	textLP("\r\rHowever, she can easily tell that you're far too large for her. So, instead, she crawls back up your body, licking your	milk up as she goes, while her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she straddles your "+cockDesc()+" erection"+plural(1)+", humping her clit along your length"+plural(1)+"."); }
													textLP("\r\rOver and over, she grinds her wide hips. She leans down to kiss you some more, her tongue driving into your mouth. You thrust back in turn, making her moan into your throat.\r\rQuickly, her body begins to quiver once again, milk spraying about beneath the sheets. She keeps her mouth shut at first, but as you begin to gush with cum, she can no longer resist, allowing her mouth stretch wide.\r\r\"MOOOOOOO!\"");
													cumAmount();
												}
												else if (cockTotal < 1 && vagTotal > 0) { 
													textLP("\r\rFlipping back her long red hair, she grinds down your "+legDesc(2)+" and across the bed to pull "+pullUD(2)+" your "+clothesBottom()+". Seeing your "+vulvaDesc()+" slit"+plural(2)+", she dives in and begins devouring your clit"+plural(2)+".\r\rIt doesn't take long before she grows too hungry, crawling back up your body, licking your milk up as she goes. Her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where presses her supple folds to your own, letting them kiss erotically.\r\rOver and over, she grinds her wide hips. She leans down to kiss you some more, her tongue driving into your mouth. You thrust back in turn, making her moan into your throat.\r\rQuickly, her body begins to quiver once again, milk spraying about beneath the sheets. She keeps her mouth shut at first, but as you thrust your clit"+plural(2)+" against hers as you come, she can no longer resist, allowing her mouth stretch wide.\r\r\"MOOOOOOO!\""); 
													malonRep = 5;
												}
												else { 
													textLP("\r\rFlipping back her long red hair, she grinds down your "+legDesc(2)+" and across the bed to pull "+pullUD(2)+" your "+clothesBottom()+". Seeing your lack of any genitalia, she kisses your crotch softly several times anyways, before crawling back up your body She licks up your milk up as she goes, while her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she humps your empty crotch.\r\rOver and over, she grinds her wide hips. She leans down to kiss you some more, her tongue driving into your mouth. You thrust back in turn, making her moan into your throat.\r\rQuickly, her body begins to quiver once again, milk spraying about beneath the sheets. So hot is her body that you can feel yourself climax as well! She keeps her mouth shut at first, but as you thrust back with the phantom orgasm, she can no longer resist, allowing her mouth stretch wide.\r\r\"MOOOOOOO!\""); 
													malonRep = 5;
												}
												textLP("\r\r\rThe two of you soon pass out beneath the blankets, trapped within the sea of milk and sensual fluids...");
												doLust(-Math.floor(sen/2), 2, 1, 2);
												hrs = 9;
												exhaustion = 0;
												skipExhaustion = true;
												doNext();
												doListen = function():void{
													textL("Many hours later, you awaken to gentle kissing from your bovine lover. You open your eyes to see Malon's face, a soft smile greeting you and a happy glimmer in her eyes.\r\r\"Thank you so much~\" She whispers before kissing you once more.\r\rAfter some cuddling, she eventually needs to get back to work. She hugs you again and tells you that she'd love for you to come back any time you can. You hug her back, giving her a sweet goodbye as you squeeze her plush tush, her tail jerking excitedly as she giggles. With another kiss, you head back to Softlik, your "+skinDesc()+" nice and soft from the extended milk bath.");
													stats(1,2,2,4);
													doSexP(20);
													doEnd();
												}
											}
											if (buttonChoice == 7) {
												textL("You help her back up onto her stool, the last of both of your milk emptying into the final bucket. With a big sigh, she smiles.\r\r\"W-Well, I suppose I should get this cleaned up. Thanks for helping me!\"\r\rShe leans forward, giving you a great view of her deep cleavage as she kisses you on the forehead. Then she pulls her shirt back up and takes your hand once more, leading your back out of the farmhouse, saying she can take care of the buckets herself.\r\rWith a hug, you say goodbye and head back to Softlik.");
												stats(1,1,0,2);
												doSexP(2);
												doEnd();
											}
										}											
									}
								}
								if (buttonChoice == 7){
									textL("Nodding your head to say it's alright, she pulls her shirt up, exposing her enormous breasts. They rest more comfortably on her knees, with 6-inch long nipples dangling like teats. While one hand works your body, her other reaches around a fleshy mass to grab her own nipple. In a couple seconds, her rhythm quickly matches yours, filling the bucket rapidly.\r\r");
									var getMilk:int;
									if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0) { getMilk = milkAmount(1)+milkAmount(2);	}
									else if (milkEngorgementLevel > 0) { getMilk = milkAmount(1); }
									else if (udderEngorgementLevel > 0) { getMilk = milkAmount(2); }
									if (getMilk <= 4000) { textL("After filling up two buckets of milk, most of which was Malon's, she pushes them off to the side with a clap."); 	}
									else if (getMilk <= 18000) { textL("After filling up few buckets of milk, most of which was yours, Malon pushes them off to the side with a sigh."); 	}
									else if (getMilk <= 35500) { textL("After filling up several buckets of milk, far surpassing Malon's amount, she pushes them off to the side with a tired sigh, stretching her adept fingers."); 	}
									else if (getMilk > 35500) { textL("After a while, Malon begins to panic. \"Umm... I-I seem to have run out of buckets!\" She sloshes the last one from the stack to the side as you still spill with milk. \"I-I'm so sorry! I didn't know it was that bad for you. Here!\"\r\rShe takes off her shawl, holding it to your mammaries and waiting for the flow to come to a halt. A few minutes pass before she can remove it, your lactation having ceased and her hands covered in the white stuff. \"Whew... That was close.\"\r\rShe wrings her shawl out in a bucket that has yet to overflow before slinging it around her neck again."); 	}
									textLP(" \"There, all done!\" She gently pats your "+boobDesc()+" breasts");
									if (udders == true)	{ textLP(" and your "+udderDesc()+" milky bag."); }
									textLP("\r\r\"I enjoyed this little milking session between us 'cows'. I hope to do it again with you some time!\" She smiles as she pulls her shirt back down, lifting her massive tits a few time to get them to settle within the shirt without her large nipples being so obvious. With a wink, she leans forward, giving you a great view of her deep cleavage as she kisses you on your forehead. Then she takes your hand once more, leading your back out of the farmhouse, saying she can take care of the buckets herself.\r\rWith a wave, you say goodbye and head back to Softlik.");
									hrs = 3;
									doSexP(2);
									doLust(5, 0, 3, 4);
									stats(0,1,1,1);
									doEnd();
								}
							}
						}
					}
					else {
						textL("You shake your head, not accepting her assistance. She gives you a soft smile, not offended by the choice. However, as her own shirt begins to blotch, white liquid spilling out and dribbling onto her apron and ground, she blushes a little as she has now found a new reason for her excuse. She pulls her shawl down to cover her huge chest, turning away and scampering off into the main house to take care of business, leaving you to head back to Softlik.");
						hrs = 1;
						doEnd();
					}
				}
			}
			else if (malonRep == 4 || malonRep == 5){
				textL("Malon is working outside as you approach the farm once again");
				if (malonRep == 4) {
					if (malonPreg > 36 && malonPreg <= 72) { textLP(", an arm slung under her slightly protruding yet obviously pregnant belly"); }
					if (malonPreg > 72 && malonPreg <= 144) { textLP(", her arms hugging her giant belly that nearly pushes past her breasts, easily working despite it"); }
					if (malonPreg > 144 && malonPreg <= 216) { textLP(", her breasts swollen with pregnancy and supported by her enormously pregnant belly, looking to be even larger than she is. You actually wonder how she manages to work with it"); }
				}
				if (malonChildren == 1) { textLP(", your large-eared and wide-hipped child running around playing, her tail swishing happily through a little white dress just like her mother used to wear, except with a little bulge at the front where her udder jiggles with each step"); }
				if (malonChildren > 1) { textLP(", your "+malonChildren+" large-eared and wide-hipped children running around playing, their tails swishing happily through little white dresses just like their mother used to wear, except with little bulges at the front where their udders jiggles with each step"); }
				textLP(". The half-bovine woman spots you and her face shines up, turning to come and greet you.\r\r\"Hello hun!\" Her arms wrap around you with a big hug.");
				if (malonChildren == 1) { textLP("\r\rYour child also spots you and runs up with her own hug, shouting \"Daddy!\""); }
				if (malonChildren > 1) { textLP("\r\rYour children also spot you and run up with their own hugs, shouting \"Daddy!\""); }
				textLP("\r\rYou visit for a while and help Malon with a bit of work, earning you some coin. You spend the time chatting and enjoying yourselves, but eventually Malon gives you a wink.\r\r\"Would you like to do something?\"");
				doCoin(Math.floor(percent()/20));
				viewButtonOutline(0,0,0,0,1,0,1,0,0,0,0,0);
				viewButtonText(0,0,0,0,1,0,1,0,0,0,0,0);
				if (lactation < 1 && udderLactation < 1) { Choice5.visible = false; }
				buttonWrite(5, "Milk");
				buttonWrite(7, "Sex");
				doListen = function():void{
					if (buttonChoice == 5){
						textL("Poking her nipple while you wink back, Malon shouts to the other workers that she's got some business she needs to take care of. The others roll their eyes, well used to the excuse thanks to her 'condition', but don't give her any other guff as she takes you into an empty barn, where she's since become comfortable indulging in her bovine assets.\r\rYou both pull over some buckets and sit down in rather comfortable chairs, removing your tops. Humming the same tune, you begin to work on each other, hugging and gently caressing each other.");
						if (malonChildren == 1)	{ textLP(" Your little girl also joins in, taking a free nipple when she can. She pulls up her white dress and massages her small udder, tugging at the short teats as her hips jerk in wry sensitivity, until little drops start to form and drip down her legs.");	}
						if (malonChildren > 1)	{ textLP(" Your little girls also joins in, taking a free nipples when they can. They pull up their white dresses and massage their small udders, tugging at the short teats as their hips jerk in wry sensitivity, until little drops start to form and drip down their legs. When there aren't enough nipples to suckle from on their parents, they take to suckling from each other, happily downing their meal.");	}
						textLP("\r\rWith so much experience with each other, it doesn't take long before sparks start to fly and milk starts to spew, orgasms wracking your bodies. Malon opens her mouth and lets out several long, hearty moos of ecstasy,");
						if (malonChildren == 1)	{ textLP(" the little girl mimicking her mother with her own little \"Moo~\","); }
						if (malonChildren > 1)	{ textLP(" the little girls mimicking their mother with their own little \"Moo~'s\","); }
						textLP(" until you're both gasping for air.\r\rThoroughly milked, you spend another hour enjoying the company before eventually giving your goodbye kisses and heading back to Softlik, happy and content.");
						milkAmount(1);
						milkAmount(2);
						nipplePlay += 15;
						if (udders == true)	{ udderPlay +=15; }
						doSexP(5);
						stats(1,1,0,2);
						hrs = 4;
						doEnd();
					}
					if (buttonChoice == 7) {
						textL("With a perverse grin, you give Malon a wink of your own and grab her ample tush. She jumps with a giggle and shouts to the other workers that she's got some business she needs to take care of. The others smirk and chuckle to themselves, noticing the extra-excited perkiness in her voice and knowing exactly what 'business' means exactly. She sticks her tongue out at them and pulls you back into the house, eager to get you under the sheets.");
						textL("\r\rQuickly making your way to her room, your clothes littering the hallway along the way, the two of you jump onto the bed. The two of you kiss again and again, until she knocks you onto your back.\r\rWith fervor, you lift her long purple skirt, revealing her wide, cow-like hips and large, dripping, animalistic nether-region.");
						if (cockTotal > 0) {
							textLP("\r\rFlipping back her long red hair, she grinds down your "+legDesc(2)+" and across the bed to pull "+pullUD(2)+" your "+clothesBottom()+", letting "+oneYour(1)+" "+cockDesc()+" cock"+plural(1)+" flop out. She licks and kisses it ravenously, as though something had come over her. She sucks at the tip, slipping her tongue across and through your urethra and savoring the salty taste of your pre.");
							if (cockSize*cockSizeMod <= eVagLimit(56))	{ 
								textLP("\r\rIt doesn't take long before she grows too hungry and crawls back up your body, dragging across your erection"+plural(1)+". Her breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she slides your cock into her supple folds, devouring its entire length.");
								if (percent() <= 20 && malonRep == 5) { 
									malonRep = 4;
									malonPreg = 0;
								}
							}

							if (cockSize*cockSizeMod > eVagLimit(56)){	textLP("\r\rHowever, she can easily tell that you're far too large for her. So, instead, she crawls back up your body, licking you as she goes, while her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she straddles your "+cockDesc()+" erection"+plural(1)+", humping her clit along your length"+plural(1)+"."); }
							if (malonRep == 4){ 
								if (malonPreg > 36 && malonPreg <= 72) { textLP("\r\rYou both rub her slightly protruding belly as you kiss, delighting in the feeling of new life growing within her. As you rub against each other, you take precautions to protect the womb, but it doesn't prevent the room from getting hot..."); }
								if (malonPreg > 72 && malonPreg <= 144) { textLP("\r\rYou both hug and rub her large belly, her breasts laying atop and just barely hanging past. Her large rump rises in the air, her tail dancing above, as she tries to bend around her swollen womb and kiss you again and again. One of your hands grabs her ass trying to push her back down against you, while the other roves over the taut skin, keen to protect and caress it."); }
								if (malonPreg > 144 && malonPreg <= 216) { textLP("\r\rHer belly is enormous, filling the gap between the two of you and protruding further than her pregnancy-swollen tits, milk already dribbling down the taut skin. She grinds down hard against you, the large girth making her all the hornier. So horny, in fact, that she rolls her giant belly against yours, just to lean in to give you a kiss. Her ass swings in the air, swaying erotically while her tail dances in rhythm. Both of your hands are busy keeping her giant womb balanced against you, stroking the sensitive skin until you can feel her arousal splash down from her hind-qaurters and splatter across your thighs. She rolls back to satiate her engorged cunt, letting her feminine lubricant slip beneath her belly, allowing it to slide erotically across you as well."); }
							}
							if (malonChildren == 1)	{ textLP("\r\rAll giggly and just as naked as you are, your little girl jumps into the bed with you, rubbing her small udder and tugging the short teats until her own milk is flowing. She suckles from the two of you when you two give her the chance, trying to get a nice meal in. However, your actions are so vulgar that she begins to slip her fingers between her own legs and fondle her small breasts, gasping softly as she tries to bring herself to a premature orgasm."); }
							if (malonChildren > 1)	{ textLP("\r\rAll giggly and just as naked as you are, your little girls jump into the bed with you, rubbing their small udders and tugging at each others short teats until their own milk begins to flow. They suckle from the two of you when you two give them the chance, trying to get a nice meal in, and suckle from each other whenever you don't. However, your actions are so vulgar that they begin to slip their fingers between their own legs and fondle their small breasts, gasping softly as they try to bring themselves to premature orgasms, even going so far to even lick each others developing cunnies in hopes for a greater chance of success."); }
							textLP("\r\rOver and over, Malon grinds her wide hips");
							if (knot == true) { textLP(", lifting your rump off the bed as she lifts you by your thick knot with each pass and makes her gasp each time from the stretching of her slit"); }
							textLP(". She leans down to kiss you some more, her tongue driving into your mouth. You thrust back in turn, making her moan into your throat.\r\rQuickly, her body begins to quiver once again, milk spraying about beneath the sheets, drenching you all. Her mouth quickly stretches wide, the sound echoing around the room. \r\r\"MOOOOOOO!\"");
							if (malonChildren == 1) { textLP("\r\rYour child does the same, coming to the small peak of her own pleasuring with a weaker, cute encore of \"Moooo~!\""); }
							if (malonChildren > 1) { textLP("\r\rYour children do the same, coming to the small peaks of their own pleasuring with weaker, cute encores of \"Moooo~!\""); }
							cumAmount();
						}
						else if (cockTotal < 1 && vagTotal > 0) {
							textLP("\r\rFlipping back her long red hair, she grinds down your "+legDesc(2)+" and across the bed to pull "+pullUD(2)+" your "+clothesBottom()+". Seeing your "+vulvaDesc()+" slit"+plural(2)+", she dives in and begins devouring your clit"+plural(2)+".\r\rIt doesn't take long before she grows too hungry, crawling back up your body, licking your milk up as she goes. Her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she presses her supple folds to your own, letting them kiss erotically.");
							if (malonChildren == 1)	{ textLP("\r\rAll giggly and just as naked as you are, your little girl jumps into the bed with you, rubbing her small udder and tugging the short teats until her own milk is flowing. She suckles from the two of you when you two give her the chance, trying to get a nice meal in. However, your actions are so vulgar that she begins to slip her fingers between her own legs and fondle her small breasts, gasping softly as she tries to bring herself to a premature orgasm."); }
							if (malonChildren > 1)	{ textLP("\r\rAll giggly and just as naked as you are, your little girls jump into the bed with you, rubbing their small udders and tugging at each others short teats until their own milk begins to flow. They suckle from the two of you when you two give them the chance, trying to get a nice meal in, and suckle from each other whenever you don't. However, your actions are so vulgar that they begin to slip their fingers between their own legs and fondle their small breasts, gasping softly as they try to bring themselves to premature orgasms, even going so far to even lick each others developing cunnies in hopes for a greater chance of success."); }
							if (malonRep == 4){ 
								if (malonPreg > 36 && malonPreg <= 72) { textLP("\r\rYou both rub her slightly protruding belly as you kiss, delighting in the feeling of new life growing within her. As you rub against each other, you take precautions to protect the womb, but it doesn't prevent the room from getting hot..."); }
								if (malonPreg > 72 && malonPreg <= 144) { textLP("\r\rYou both hug and rub her large belly, her breasts laying atop and just barely hanging past. Her large rump rises in the air, her tail dancing above, as she tries to bend around her swollen womb and kiss you again and again. One of your hands grabs her ass trying to push her back down against you, while the other roves over the taut skin, keen to protect and caress it."); }
								if (malonPreg > 144 && malonPreg <= 216) { textLP("\r\rHer belly is enormous, filling the gap between the two of you and protruding further than her pregnancy-swollen tits, milk already dribbling down the taut skin. She grinds down hard against you, the large girth making her all the hornier. So horny, in fact, that she rolls her giant belly against yours, just to lean in to give you a kiss. Her ass swings in the air, swaying erotically while her tail dances in rhythm. Both of your hands are busy keeping her giant womb balanced against you, stroking the sensitive skin until you can feel her arousal splash down from her hind-qaurters and splatter across your thighs. She roll back to satiate her engorged cunt, letting her feminine lubricant slip beneath her belly, allowing it to slide erotically across you as well."); }
							}
							textLP("\r\rOver and over, she grinds her wide hips. She leans down to kiss you some more, her tongue driving into your mouth. You thrust back in turn, making her moan into your throat.\r\rQuickly, her body begins to quiver once again, milk spraying about beneath the sheets. She keeps her mouth shut at first, but as you thrust your clit"+plural(2)+" against hers as you come, she can no longer resist, allowing her mouth stretch wide.\r\r\"MOOOOOOO!\"");
							if (malonChildren == 1) { textLP("\r\rYour child does the same, coming to the small peak of her own pleasuring with a weaker, cute encore of \"Moooo~!\""); }
							if (malonChildren > 1) { textLP("\r\rYour children do the same, coming to the small peaks of their own pleasuring with weaker, cute encores of \"Moooo~!\""); }
						}
						else { 
							textLP("\r\rFlipping back her long red hair, she grinds down your "+legDesc(2)+" and across the bed to pull "+pullUD(2)+" your "+clothesBottom()+". Seeing your lack of any genitalia, she kisses your crotch softly several times anyways, before crawling back up your body She licks up your milk up as she goes, while her own breasts dribble over you until it runs off your sides and soaks into the fluffy blanket. Then, she pulls the blankets open, letting you both slip into the water-resistant sheets, where she humps your empty crotch.");
							if (malonChildren == 1)	{ textLP("\r\rAll giggly and just as naked as you are, your little girl jumps into the bed with you, rubbing her small udder and tugging the short teats until her own milk is flowing. She suckles from the two of you when you two give her the chance, trying to get a nice meal in. However, your actions are so vulgar that she begins to slip her fingers between her own legs and fondle her small breasts, gasping softly as she tries to bring herself to a premature orgasm."); }
							if (malonChildren > 1)	{ textLP("\r\rAll giggly and just as naked as you are, your little girls jump into the bed with you, rubbing their small udders and tugging at each others short teats until their own milk begins to flow. They suckle from the two of you when you two give them the chance, trying to get a nice meal in, and suckle from each other whenever you don't. However, your actions are so vulgar that they begin to slip their fingers between their own legs and fondle their small breasts, gasping softly as they try to bring themselves to premature orgasms, even going so far to even lick each others developing cunnies in hopes for a greater chance of success."); }
							if (malonRep == 4){ 
								if (malonPreg > 36 && malonPreg <= 72) { textLP("\r\rYou both rub her slightly protruding belly as you kiss, delighting in the feeling of new life growing within her. As you rub against each other, you take precautions to protect the womb, but it doesn't prevent the room from getting hot..."); }
								if (malonPreg > 72 && malonPreg <= 144) { textLP("\r\rYou both hug and rub her large belly, her breasts laying atop and just barely hanging past. Her large rump rises in the air, her tail dancing above, as she tries to bend around her swollen womb and kiss you again and again. One of your hands grabs her ass trying to push her back down against you, while the other roves over the taut skin, keen to protect and caress it."); }
								if (malonPreg > 144 && malonPreg <= 216) { textLP("\r\rHer belly is enormous, filling the gap between the two of you and protruding further than her pregnancy-swollen tits, milk already dribbling down the taut skin. She grinds down hard against you, the large girth making her all the hornier. So horny, in fact, that she rolls her giant belly against yours, just to lean in to give you a kiss. Her ass swings in the air, swaying erotically while her tail dances in rhythm. Both of your hands are busy keeping her giant womb balanced against you, stroking the sensitive skin until you can feel her arousal splash down from her hind-qaurters and splatter across your thighs. She roll back to satiate her engorged cunt, letting her feminine lubricant slip beneath her belly, allowing it to slide erotically across you as well."); }
							}
							textLP("\r\rOver and over, she grinds her wide hips");
							if (knot == true) { textLP(", tugging your cock by the thick knot again and again"); }
							textLP(". She leans down to kiss you some more, her tongue driving into your mouth. You thrust back in turn, making her moan into your throat.\r\rQuickly, her body begins to quiver once again, milk spraying about beneath the sheets. So hot is her body that you can feel yourself climax as well! She keeps her mouth shut at first, but as you thrust back with the phantom orgasm, she can no longer resist, allowing her mouth stretch wide.\r\r\"MOOOOOOO!\"");
							if (malonChildren == 1) { textLP("\r\rYour child does the same, coming to the small peak of her own pleasuring with a weaker, cute encore of \"Moooo~!\""); }
							if (malonChildren > 1) { textLP("\r\rYour children do the same, coming to the small peaks of their own pleasuring with weaker, cute encores of \"Moooo~!\""); }
						}
						textLP("\r\r\rYou soon pass out beneath the blankets, trapped within the sea of milk and sensual fluids");
						if (knot == true) { textLP(", your knot still tied to her");	}
						textLP("...");
						doLust(-Math.floor(sen/2), 2,1,2);
						/*if (malonPreg >= 54 && malonChildren > 0) { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23, 24, 51);	}
						else if (malonPreg >= 54) { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23, 51);	}
						else if (malonChildren > 0) { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23, 24, 51);	}
						else { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23); }*/
						hrs = 9;
						exhaustion = 0;
						skipExhaustion = true;
						doNext();
						doListen = function():void{
							textL("Many hours later, you awaken to gentle kissing from your bovine lover. You open your eyes to see Malon's face, a soft smile greeting you and a happy glimmer in her eyes.\r\r\"Thank you so much~\" She whispers before kissing you once more.\r\rAfter some cuddling, she eventually needs to get back to work. She hugs you again and tells you that she'd love for you to come back any time you can. You hug her back, giving her a sweet goodbye as you squeeze her plush tush, her tail jerking excitedly as she giggles. With a round of kisses and hugs, you head back to Softlik, your "+skinDesc()+" nice and soft from the extended milk bath");
							if (malonChildren == 1)	{ textLP(", your little girl growing up with probably the fairest skin of anyone in Nimin"); }
							if (malonChildren > 1)	{ textLP(", your little girls growing up with probably the fairest skins of anyone in Nimin"); }
							textLP(".");
							doSexP(5);
							stats(0,1,2,4);
							doEnd();
						}
					}
				}
			}
			else if (malonRep == 2) {
				textL("You spot Malon out of the corner of your eye. She spots you and waves with a slight smile. However, she quickly stops as her shirt begins to blotch, white liquid spilling out and dribbling onto her apron and ground. She blushes intently and pulls her shawl down to cover her huge chest, turning away and running off, her tail pushing her skirt between her legs and outlining her ample bum.\r\rNot wanting to be so much like a cow, she avoids you in hopes of taking care of the situation herself. With a shrug, you head back to Softlik.");
				hrs = 1;
				doEnd();
			}
			else {
				textL("You spot Malon out of the corner of your eye. She spots you and waves with a slight smile. However, she quickly stops as her shirt begins to blotch, white liquid spilling out and dribbling onto her apron and ground. She blushes intently and pulls her shawl down to cover her huge chest, turning away and running off, her tail pushing her skirt between her legs and outlining her ample bum.\r\rA bit distracted with her 'issues', you leave her be and head back to Softlik.");
				hrs = 1;
				doEnd();
			}
		}

		else if (malonRep == 0 && ((milkEngorgement > 300 && milkEngorgementLevel > 0) || (udderEngorgement > 300 && udderEngorgementLevel > 0))) {
			textL("Heading towards the farm, you spot a strange farm-hand. A young woman, with an exceptionally well-endowed figure... Beautiful, with long, flowing red hair, she wears a yellow shirt and long purple skirt with a brown apron around her waist and yellow shawl around her shoulders. However, the shawl seems fairly wet and she's careful to drape its ends over breasts larger than watermelons, trying to hide the large blotches on her shirt with it and keeping it at the ready to use at any moment. Her ears are also quite long, hanging perpendicular from her head, nearly 5 inches, and droop a little. Behind her you see a long, narrow tail, tipped with a tuft of long hairs, swish about her calves with each step.\r\rAs you watch her, she seems to avoid most of the other workers. It doesn't take long before she spots you eyeing her. At first redness tinges her cheeks, but then her eyes spot the large blotches on your "+clothesTop()+" with a curious look. Checking to make sure nobody else is around, she heads towards you...");
			doNext();
			doListen = function():void{
				textL("With a gentle voice, she speaks,\r\r\"Oh my, w-would you like some help with that?\" She nods down to your milkiness. \"I, umm... Kinda know the feeling and can help you out if you would like.\"\r\r\rDo you accept her offer?");
				buttonConfirm();
				doListen = function():void{
					if (buttonChoice == 6){
						textL("She nods with a soft smile, taking you by the hand. Leading you into the main farmhouse, she's quick to look around corners and check hallways, as if she were smuggling you into the building. Eventually, she brings you upstairs to a bedroom.\r\rIn the center of the room sits a good-sized bed, with downy blankets and soft matress. However, the sheets seem to be coated with some sort of wax, making them shiny and most likely waterproof. In a corner beside the bed stands a stack of several buckets, all clean and ready to be used. The strange woman leads you towards her bed, motioning for you to sit.\r\r\"Just relax and I'll take care of it for you.\" She speaks sweetly.");
						doNext();
						doListen = function():void{
							textL("\r\rYou sit down upon the soft bed, sinking in slightly from the extra cushioning. She then grabs a bucket from the stack and pulls a short stool over to your "+legDesc(6)+".\r\r\"Your "+clothesTop()+", please.\" She motions to it being in the way.");
							if (ment > lib)	{ textLP("\r\rWith a heavy blush in your cheeks, you nod back, pulling your "+clothesTop()+" "+pullUD(1)+", slowly exposing your "); }	
							else if (ment > (lib-10)) { textLP("\r\rWith a slight blush in your cheeks, you nod back, pulling your "+clothesTop()+" "+pullUD(1)+", exposing your "); }	
							else { textLP("\r\rWith a quick nod and no hesitation, you pull "+pullUD(1)+" your "+clothesTop()+", exposing your "); }
							if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0 && udders == true) { textLP(boobDesc()+" leaky breasts and letting your "+udderDesc()+" udder spill into your lap.");	}
							else if (milkEngorgementLevel > 0)	{ textLP(boobDesc()+" leaky breasts.");	}
							else if (udderEngorgementLevel > 0 && udders == true) { textLP(udderDesc()+" udder, your teats dripping into your lap.");	}
							textLP(" The woman then slips her hands into her cleavage, quickly warming her hands, before reaching out to your ");
							if (milkEngorgementLevel > 0) { textLP(nipDesc()+" nipples"); }
							else if (udderEngorgementLevel > 0 && udders == true){textLP(teatDesc()+" teats"); }
							textLP(" and gently pinches them within her grasp. Expertly, she bends you forward slightly and aims towards the bucket. Within just a few tugs, you're already squirting milk into the bucket, the pleasant feeling of warmth overcoming you and intensified by her caring massage.\r\rAs the room fills with the sound of your squirts hitting the metallic bucket, the strange woman finally introduces herself. \"I'm Malon, it's nice to meet you.\" She giggles as she shakes your milky flesh with a hand in greeting. \"Usually I'm the one with the milky problem around here.\" She motions down to her shirt. The redness tinges her cheeks. \"Oh-Oh my...\" Her shirt blotches quickly, her own milk beginning to drip into the bucket with yours. \"Uh-umm... I think doing this made my breasts think it's that time... Y-You don't mind, do you?\" She plucks at her shirt to indicate what she means.\r\rAs you nod your head to say it's alright, she pulls her shirt up, exposing her enormous breasts. They rest more comfortably on her knees, with 6-inch long nipples dangling like teats. While one hand works your body, her other reaches around a fleshy mass to grab her own nipple. In a couple seconds, her rhythm quickly matches yours, filling the bucket rapidly.");
							doNext();
							doListen = function():void{
								textL("She continues to speak, trying to distract herself from her shyness and ignore the redness in her face as she milks the both of you.\r\r\"When I was little, I loved the animals, and I still do. However, in my naive youth, I attempted to get to know some of the cows better... by taking one of those DairE Pills. At first I was ecstatic. Imagine a little girl, in a long white dress, with larger than average nipples that poked at the fabric, dripping with milk, just like the cows! I even had the same shawl back then,\" she tugs the yellow shawl around her shoulders, \"and I used to soak it through after an hour of sitting with the cows, playing with my nipples and mooing to be just like them.\"\r\rShe sighs.\r\r\"Having such success, I kept taking the pills. And taking them. And taking them... Before I was even 15 years old, I had a chest larger than any woman's in Softlik and could make more milk than most cows on the farm. Added to the fact that I had these ears and this tail,\" the thing swishes behind her as a big gush of milk shoots from her nipples as she shudder slightly. \"E-Excuse me.. \" She blushes instensely, waiting for a moment as her climax passes. \"W-Well, let's just say I became a little self-aware. I still kept up with the milkings to keep the engorgement away and, well, I'm sure you can guess the rest.\"");
								doNext();
								doListen = function():void{
									var getMilk:int;
									if (milkEngorgementLevel > 0 && udderEngorgementLevel > 0) { getMilk = milkAmount(1)+milkAmount(2);	}
									else if (milkEngorgementLevel > 0) { getMilk = milkAmount(1); }
									else if (udderEngorgementLevel > 0) { getMilk = milkAmount(2); }
									if (getMilk <= 4000) { textL("After filling up two buckets of milk, most of which was Malon's, she pushes them off to the side with a clap."); 	}
									else if (getMilk <= 18000) { textL("After filling up few buckets of milk, most of which was yours, Malon pushes them off to the side with a sigh."); 	}
									else if (getMilk <= 35500) { textL("After filling up several buckets of milk, far surpassing Malon's amount, she pushes them off to the side with a tired sigh, stretching her adept fingers."); 	}
									else if (getMilk > 35500) { textL("After a while, Malon begins to panic. \"Umm... I-I seem to have run out of buckets!\" She sloshes the last one from the stack to the side as you still spill with milk. \"I-I'm so sorry! I didn't know it was that bad for you. Here!\"\r\rShe takes off her shawl, holding it to your mammaries and waiting for the flow to come to a halt. A few minutes pass before she can remove it, your lactation having ceased and her hands covered in the white stuff. \"Whew... That was close.\"\r\rShe wrings her shawl out in a bucket that has yet to overflow before slinging it around her neck again."); 	}
									textLP(" \"There, all done!");
									if (udders == true)	{ textLP(" Although, I probably shouldn't be rambling about my problems. It seems like you've gone far beyond my own troubles.\" She gently pats your milky bag. \"Anyways..."); }
									textLP(" If you ever have trouble again, come see me and I'll help you out. Otherwise, don't be a stranger.\" She pulls her shirt back down, lifting her massive tits a few time to get them to settle within the shirt without her large nipples being so obvious. \"Us 'cows' should stick together.\" With a wink, she leans forward, giving you a great view of her deep cleavage as she kisses you on the forehead. Then she takes your hand once more, leading your back out of the farmhouse, saying she can take care of the buckets herself.\r\rWith a wave, you say goodbye and head back to Softlik.");
									hrs = 3;
									doLust(10, 0);
									nipplePlay += 10;
									malonRep = 1;
									if (udders == true)	{ udderPlay +=10; }
									doSexP(5);
									stats(0,2,2,1);
									doEnd();
								}
							}
						}
					}
					else {
						textL("You shake your head, not accepting her assistance. She gives you a soft smile, not offended by the choice. Her extrovert moment quickly passes, however, as her own shirt begins to blotch more, white liquid spilling out and dribbling onto her apron and ground. She blushes intensely as she pulls her shawl down to cover her huge chest, turning away and running off, her tail pushing her skirt between her legs and outlining her ample bum.\r\rShe disappears into a building. With a shrug, you head back to Softlik.");
						hrs = 1;
						doEnd();
					}
				}
			}
		}

		else {
			textL("You spot a farm-hand out of the corner of your eye. A young woman, with an exceptionally well-endowed figure... Beautiful, with long, flowing red hair, she wears a yellow shirt and long purple skirt with a brown apron around her waist and yellow shawl around her shoulders. However, the shawl seems fairly wet and she's careful to drape its ends over breasts larger than watermelons, trying to hide the large blotches on her shirt with it and keeping it at the ready to use at any moment. Her ears are also quite long, hanging perpendicular from her head, nearly 5 inches, and droop a little. Behind her you see a long, narrow tail, tipped with a tuft of long hairs, swish about her calves with each step.\r\rAs you watch her, she seems to avoid most of the other workers. It doesn't take long before she spots you eyeing her. She immediately averts her eyes, redness tinging her cheeks. Her shy moment quickly passes, however, as her shirt begins to blotch more, white liquid spilling out and dribbling onto her apron and ground. Her blush intensifies as she pulls her shawl down to cover her huge chest, turning away and running off, her tail pushing her skirt between her legs and outlining her ample bum.\r\rShe disappears into a building. With a shrug, you head back to Softlik.");
			hrs = 1;
			doEnd();
		}
	}
	else if (chance == 5) {
		textL("You manage to approach the farm without being seen or stopped by a farmer. You find a bottle of milk that has yet to be shipped out with the rest. ");
		if (milkEngorgement > 15000 && lactation > 0 && malonRep > 3) {
			textLP("However, as you feel your "+boobDesc()+" tits slosh about with the massive amount of milk within, you realize you could take this opportunity to do what Malon does and sneak some time with the larger and much more efficient milkers of the farm... Would save you quite a bit of time and effort.\r\rWill you?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6) {
					var getMilk:int = milkAmount(1);
					textL("Feeling a bit daring, you sneak into the barn where all the milking happens. After catching Malon in here, you have a fairly good idea as to how things work. You grab up some of the cow's milking cups and carry them over to the hitching-rail. Using the rail for support, you lean forward and stick out your "+boobDesc()+" tits, pulling your "+clothesTop()+" "+pullUD(1)+" and letting your "+nipDesc()+" nipples pop out. They're already stiff and leaking profusely, a steady stream of milk trickling out in anticipation over what you're about to do.\r\rSheathing the cups over your "+nipDesc()+" 'erections', ");
					if (nippleSize < 15) { textLP("barely filling the cups at all");	}
					else if (nippleSize <= 50) { textLP("fitting the cups almost a little too perfectly");	}
					else if (nippleSize <= 70) { textLP("taking a bit of effort to stuff them into the cups intended for cow teats"); }
					else { textLP("barely covering the tips of your giant monsters"); }
					textLP(", and switch the machine on to make the cups latch on with their suction. You let out a moan as the machine begins to chug away, sucking your nipples in deeper, pulling the milk from your "+nipDesc()+" handles, and drinking the milk in long gluttonous slurps through the clear tubes. It feels so delightful, perfectly timed for large amounts of milk and completely hands-free, allowing your fingers to provide you with more sensual attention elsewhere, letting you moan even more loudly.\r\rBetween the noises of the machine and your moaning, you don't even notice somebody sneaking up on you until you feel thir arms wrap around you and grabs into your swollen chest.\r\r\"Gotcha!\"\r\rA pleasantly familiar voice, you turn around to see the tell-tale tail swishing upon her backside with her own shirt slightly soaked in front");
					if (malonPreg > 100) { textLP(", her large pregnant belly swollen with your child");	}
					textLP(".\r\r\"Hehe, I guess I wasn't the only one who thought to use this, hmm? Well then, I suppose it's only fair to do to you what you usually do to me~\" Malon gives you a devious smirk. Her hands massage your "+boobDesc()+" mammaries while she grinds against your "+buttDesc()+" backside. Even though she has no phallic thing to penetrate you with, she still manages to arouse you further with the effort alone, making the machine chug harder as it tries to gulp down the increasing flow of your dairy goodness. She leans forward to kiss you from the side, her large chest mushing up against your back	until her own bovine leakage seeps out through her shirt into small rivers ");
					if (malonPreg > 100) { textLP("around her fertile girth and "); }
					textLP("down to your rump, quickly making both your crotches warm and wet with her milk, making yours flow even more and more and...\r\rSploosh! The milking cups fly off from your "+nipDesc()+" nipples. Geysers of white spray from your tits with enough volume and pressure to have defeated the suction of a machine meant for cows. This doesn't seem to phase Malon, however. Instead, as she watches you erupt with so much arousal, it seems to only entice her further as she pulls you back to the wall and slides down to the floor with you between her legs. She continues to kiss and grope at your chest, grabbing a tit and milking by hand while another hand sneaks down into your "+clothesBottom()+", fondling your crotch and making you gyrate against her own in rhythm.");
					if (getMilk <= 25000) { textLP(" A good deal of your milk having already been taken by the machine, the gushing quickly dies down as you calm within her embrace, focusing more on sending you both to orgasm rather than on the milk that rolls down Malon's arm and into your connected laps, forming a puddle beneath the two of you.");	}
					else if (getMilk <= 40000) { textLP(" Your milk continues to spray out from your bosom for a while, showering down upon you both, thoroughly drenching you in the warm fluid while making a large puddle beneath you, getting into all sorts of cracks and crevices and making Malon quake beneath you.");	}
					else if (getMilk <= 60000) { textLP(" The gushing continues for a while, drenching you both in the warm fluids in moments until your mouths are filling with it and gulping it down with each kiss. A grand puddle forms beneath you, splitting off into several small rivers that spread throughout the floor of the barn, even some trickling to the outside.");	}
					else { textLP(" The gushing persists and even increases in power as the two of you make love beneath the torrent of milk. In between each kiss is a gulp of the sweet fluid, in between each grope and grind flows some of the warm fluids across your sensitive bits. Milk spreads throughout the barn, a near-river of the stuff that flows out under the doorway while the floor grows soaked."); }
					textLP(" It doesn't take long before you're both letting out a long \"Moooooo\" of ecstacy in unison, gasping into each other's mouths as you climax and lactate. It takes several minutes before you come to your senses...");
					doLust(-Math.floor(sen/2), 2, 3);
					/*if (malonPreg >= 100) { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23, 51);	}
					else { doLust(-Math.floor(sen/2), 2, 2, 5, 27, 53, 23); }*/
					doNext();
					doListen = function():void{
						textL("You both sigh as you try to stand up. The milk everywhere doesn't exactly help, flowing down from your bodies and making the ground even more slippery. Yet, you manage to lean against each other and eventually stand, giving each other one last kiss before parting.");
						textLP("\r\r\"I'm surprised...\" Malon can't help but comment. \"You... You actually made a lot more milk than me... And it felt fantastic~\" She blushes at the thought, her long erect nipples pratically bare through the soaking wet white shirt. Then she looks around. \"Though... I guess we're worse than the cows... Not that I'm embarassed about that anymore but... We made quite a mess!\"\r\rWith a giggle, she steps over and grabs some empty milk jugs. She strategically places them on the floor, laying them down sideways. \"Howabout we just say some cows kicked over some 'filled' jugs,\" She says with a wink.\r\rYou aren't one to object and quickly depart in the opposite direction as Malon to ensure nobody notices what has transpired...");
						if (checkItem(215))	{ 
							textLP(" However, you notice a warmth from the pendant Malon had given you. Inspecting it, you notice it has been turned almost completely white, but somewhat pearlescant. A sort of milky complexion that looks like it's slowly flowing around the pendant, though nothing actually moves. Whatever the case may be, things seem lighter now, like you're able to, well, support your milky habits more easily...");
							loseManyItem(215, 1);
							itemAdd(252);
						}
						hrs = 4;
						doSexP(20);
						nipplePlay += 25;
						doEnd();
					}
				}
				else {
					textL("Nah. Instead you pocket the stray bottle before you get caught and head back to Softlik.");
					itemAdd(500);
					hrs = 2;
					doEnd();
				}
			}
		}
		else {
			textLP("Pocketing it before being caught, you head back to Softlik.");
			itemAdd(500);
			hrs = 2;
			doEnd();
		}
	}
}