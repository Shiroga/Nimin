function doDesert():void{
	var chance:int = eventSelect("Desert");
	if (chance == 1){
		textL("You have encountered a sand witch!\r\r\r\rIt looks so tasty and full of ham, sitting on a plate on the sand in the middle of nowhere. You have no idea who could have possibly left it or if it's even worth tasting, considering who knows how long it has been sitting out in the sun like this...\r\rWill you eat it?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				chance = percent();
				if (chance <= 15){
					textL("You munch on the sandvich, enjoying its meaty goodness, letting it fill your stomach, so moist and delicious. However, an odd gurgling inside makes you worry...");
					if (boobTotal == 2)	{
						textLP("\r\rYour chest, close beneath your nipples, begins to tickle. A new pair of sensitive areolas form amongst your "+skinDesc()+", creating an extra row of breasts beneath the originals.");
						if (bustRatio() > 1.03)	{ textLP(" The new nipples protrude as fleshy mounds form from beneath them. The new boobs wobble as they grow to the same size of your original pair, lifting the originals slightly with their girth.	When you head back to town, you'll be covering your extra indecency with your arms the best you can while you head for the tailor to update your "+clothesTop()+" accordingly."); }
					}
					if (boobTotal == 6)	{
						textLP("\r\rYour belly tickles");
						if (bustRatio() > 1.03){ textLP(", growing much lighter"); }
						textLP(". Checking, you catch your bottom set of nipples disappear flat into your "+skinDesc()+", while your middle pair swells to match the first, leaving you with two sets of equally sized breasts, the top resting upon the bottom.");
					}
					if (boobTotal == 8) {
						textLP("\r\rYour belly tickles");
						if (bustRatio() > 1.03){ textLP(", growing much lighter"); }
						textLP(". Checking, you catch your two lowest sets of nipples disappear flat into your "+skinDesc()+", while the other two pairs swell slightly, leaving you with two sets of breasts larger than before.");
					}
					boobTotal = 4;
					fourBoobAffinity = 100;
					hrs = 2;
					doEnd();
				}
				else if (chance <= 35) {
					if (cockTotal > 0 && vagTotal < (cockTotal + 1) ) {
						textL("You munch on the sandvich, delighting in the flappy meat on your tongue, letting it fill your stomach, so moist and delicious. However, an odd gurgling inside makes you worry...");
						vagChange(0, (cockTotal - vagTotal + 1));
						textLP("\r\rOne more vagina than you have cock"+plural(1)+". Why that is will forever be a mystery...\r\rWhatever this strange lunch may have been for, it's gone now and you're left heading back with a bit more than you intended.");
						hrs = 2;
						doEnd();
					}
					else {
						textL("You munch on the sandvich, delighting in the flappy meat on your tongue, letting it fill your stomach, so moist and delicious. However, an odd gurgling inside makes you worry...");
						vagChange(0, 1);
						textLP("\r\rMaybe you were enjoying the licking of tasty flaps of meat a little too much?...\r\rWhatever this strange lunch may have been for, it's gone now and you're left heading back with a bit more than you intended.");
						hrs = 2;
						doEnd();
					}
				}
				else if (chance <= 55) {
					textL("You nibble on the sandvich, the protein so filling. However, your chest quickly begins to feel warm, your "+nipDesc()+"nipples standing erect and burning beneath your "+clothesTop()+". Your hands quickly reach up to touch them and cup them just in time for milk to begin gushing out across the sand!\r\rThe springs of white fluid spew from your breasts, your "+clothesTop()+" rapidly becoming soaked while small rivers begin to form amongst the sand. You collapse to your "+legDesc(6)+", pulling "+pullUD(1)+" your "+clothesTop()+" to squeeze and pump your poor nipples as they fill the area with sustenance.\r\rWithin a few minutes, you have made several puddles around the dunes surrounding you, while your mammary glands come to a halt. You rub them gently, feeling their sensitivity arouse you a little, completely confused as to what just happened. The milking has stopped for now, but you still feel a bit... abundant nevertheless. You quickly toss your clothes back on and hurry away from the moist scene, unsure what the sandvich was possibly intended for.");
					milkMod += 15;
					doLust(20, 0);
					stats(0,0,0,2*boobTotal);
					hrs = 3;
					doEnd();
				}
				else if (chance <= 75)	{
					textL("You nom the sandvich to death, feeling it make you strong!");
					hrs = 2;
					doHP(150);
					doEnd();
				}
				else {
					textL("You take a bit of the sandvich and... urk! You suddenly feel green in the face as you realize a sandvich sitting out in the sun with this kind of heat... wouldn't have worked out very well. Once you finish expelling the rather spoiled goods, you drudge back to town feeling quite weak.");
					HP = 1;
					hrs = 4;
					doHP(0);
					doEnd();
				}
			}
			else {
				textL("Thinking it best to leave strange meats to themselves, you turn your back to the sandvich and walk away, feeling it taunting you from behind as you leave.");
				hrs = 1;
				doEnd();
			}
		}
	}
	else if (chance == 2){
		textL("Out of the corner of your eye, you spot a fluttering flash in the distance. Turning to view it more clearly, you can see it's literally flying over the sand, just a couple feet in the air. It seems to be scanning the ground for something, muzzle moving from side to side as it goes, sniffing away at the sandy dunes. A humanoid shape wrapped in a white hooded cloak, the most you can manage to make out are some long fuzzy ears, a lizard-like tail, some slight curvature to the apparently feminine figure, and large feathery wings that flutter gracefully to keep her aloft.");
		
		if (pheromone > 0 && checkMagicItem())	{
			textLP("\r\rShortly after you begin watching her, a wind picks up from behind you and heads in her direction. She pauses and sniffs at the air a few times, picking up an odd scent that seems to make her act a little funny. As she follows her nose towards its source, she sways back and forth a little, her hips twisting around as her thighs begin to rub together. She has to land on her sandle-protected paws as her wings fold inward, three finger-like talons at the ends of them awkwardly roaming about her breasts and down to her groin, functioning as hands. It seems her wings are her arms, being attached at her shoulders like a bird's.\r\rOnce she gets close enough, you can see more under her cloak. A fennec-like face matches the fuzzy ears above, which each seem to be larger than her head, and a hot blush seems to have washed across her cheeks that almost matches her auburn hair. Soft fur nearly covers her body, parted in front by the large belly-scales that plate across her chest and stomach, from her slightly elongated neck down to the tip of her tail. Supple draconic spikes peek out several inches along her spine, all the way down to the tip of her tail where they gently bend back and forth as her tail swishes from side to side anxiously. The clasp of her cloak manages to hide her otherwise naked breasts, a nice pair that matches her lithe frame, though with the way she fumbles to fondle herself she threatens to undo the clasp at any moment. Her lower bits are covered by a jeweled loin-cloth - a relatively scant outfit for the torrid weather - which seems to be... tenting as her other hand works at herself beneath.\r\rJust over 7 feet in height, she bends forward as her short muzzle follows the scent right up to you, immediately nuzzling against your body. The wing at her bosom stops playing with herself to hug around you, the fingers digging into your back tenderly as she tries to hold you close.\r\r\"You... You smell sooo good~\" A long tongue reaches out to lick up your chest, the pheromone that exudes from you enrapturing her keen senses while her tail wraps around your "+legDesc(2)+". \"I don't even think I've ever...\"\r\rHer sentence simply trails off as her hips push into you, a phallic object peaking in her loin cloth and running up your side, pre smearing along its path. You can feel a feminine attribute press against your thigh as she slowly begins to gyrate on it, her other wing also encompassing you to surround you with her vibrant feathers.");
			textLP(" She gasps again and again as she tries to speak, but her words are lost to the smothering lust. Her talons pick at your "+clothesBottom()+", trying to burrow her way in for a more intimate connection, but her lack of mental coherence makes the effort futile.\r\rHowever, as her nuzzling brings her muzzle closer to your pack, she begins to sniff again. Her voice wavers much less as she speaks; not undone by the lust this time, \"M-Magic?\"\r\rShe firmly presses into you as her muzzle dives into your pack for an even bigger whiff. \"Y-Yes, something neat in there...\" The sudden distraction seems to have helped her mind gain focus, able to make her think more clearly despite the thing that throbs against you. She leans back to look you directly in the eyes. Fear fills her own eyes, her normally shy and meek demeanor commanding her to flee, but even deeper beyond that you can see a lonely longing inside. Her cheeks more flushed with embarrassment than arousal now, the situation already quite shameful and far out of her usual comfort zone, she takes a deep breath and ventures a chance.\r\r\"Would... Would you like to come to my home?\"");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					textL("Her eyes light up, her muzzle rushing in to kiss you. Lips locked for a moment, her eyes spring open as she catches her eagerness early. \"Heh, sorry... Umm... Hope you like flying?\"\r\rHer tail readjusts itself for a better grip around your "+buttDesc()+" rump. And since her winged arms will be occupied with flying, her legs wind up cradling your back as she begins to take off, positioning you much lower down her body. You get a mighty whiff of arousal as pre drools over your lips, your face mashed up against the tip of the large erection in her loin cloth... Nevertheless, she avoids humping you too much as she focuses on remaining balanced in flight, giving you a chance to twist around and watch the sand fly by below. The two of you go higher and higher, giving you a fantastic view of the desert. You spot Oviasis in the distance and can clearly see the path to your destination: a large dune about 2 hours away on foot. You wouldn't have given much attention such a dune in your usual exploration, since it looks like many many many of the others, but as you fly over to the opposite side you can make out a large jutting stone overhanging a cave.\r\rThe strange woman takes you down and lands you gently atop the sand, giving you a good view of the outside of 'her place'. A simple tunnel burrowing into the ground beneath the rock, the entrance is decorated with all sorts of crystalline chimes that softly ring out with a slight breeze. There's also some painted barriers to keep the sand out as well as a large barrel of water and towels to allow somebody to remove any sand from themselves as well. Otherwise, you can't quite tell what's in the tunnel.\r\r\"Well, umm... This is my home!\"");
					doNext();
					doListen = function():void{
						textL("Her eagerness kicks in once again as she grabs your hand and pulls you along. Inside numerous torches line the walls and keep it well lit, though that doesn't help give you any idea where you're going. You pass through several forks in the tunnel, this underground network seemingly quite large, with few markings to help guide you through. Nevertheless, you quickly find yourself in what appears to be a bedroom. Various outfits glitter with jewels along one wall while another has a large bed of fluffy sheets and another leads to more tunnels. You don't exactly have time to look around though, as she pulls you right to the bed and gently pushes you onto the plush sheets.\r\rTaking the hint, you work at removing your clothes as she hastily begins to drop her own. Then undone clasp falls away with the rest of her cloak, her average-sized breasts standing perk with nipples standing beyond the soft smooth scales. Her frame is rather small, despite her height, her body being quite thin and lithe, with her lush fur masking the toned muscles underneath. Then her hands fiddle with her loin cloth for a bit, gasping when the air touches her nude genitals as the cloth falls away. Hefty testicles squirm with seed beneath a sheath that hugs around the large erection. Slick and smooth, the shaft runs straight to the rounded rim of a thick head which tapers to a point that drools with pre. And between her thighs more slick lubricant runs down her fur, a distinctly feminine aspect hidden behind the big balls.");
						if (cockTotal > 0) {
							textLP("\r\rShe crawls up your "+legDesc(2)+", licking at "+oneYour(1)+" own "+cockDesc()+" phallic endowment"+plural(1)+", making sure it's nice and stiff. Climbing up onto the bed with you, she carefully lines up over the tip of your ");
							if (moistCalc(1) < 5)	{ textLP("slick");	}
							else if (moistCalc(1) < 9)	{ textLP("drooling"); }
							else { textLP("pre-flooding"); }
							textLP(" appendage and slowly squats down onto it. The tips of her wings hold her testicles up to allow for a smooth landing upon your manhood and is prompt to let them knock against you as 'slow' just isn't going to cut it. In her pheromone induced state, the arousal having been overhwelming this whole time, she falls down onto the rod, ");
							if (cockSize*cockSizeMod < 36) { textLP("easily engulfing your whole length"); }
							else if (cockSize*cockSizeMod < 66)	{ textLP("her pussy squeezing around your thick girth as it seems to barely manage to swallow your entire length");	}
							else { textLP("her pussy seemingly having trouble taking in your massive girth, your size much greater than her hole, yet her slit stretches more and more, her hips somehow widening to take you in, and even her belly bulges with scales easily spreading to take in all your cock-flesh"); }
							textLP(", until her smooth scrotum finally slaps against your groin. She reaches down with her wings and her hands grab onto your "+boobDesc()+" chest for balance as her legs begin to powerfully pump. Up and down she goes, wildly riding your bronco as it bucks inside of her in turn, her eyes looking distant as she pants and gasps, so lost with lust. Strands of pre fling about as her own stiff appendage swings about, swatting you again and again with wet splashes as it whacks against your front. You struggle a little to hold onto her thighs so you aren't sucked up into her by your cock from her voracious efforts and quite quickly you begin to feel that oh-so-familiar pressure beginning to build.\r\rWith a loud erotic vulpine howl, this strange woman shudders as she feels you spew within.");
							var getCum:int = cumAmount();
							if (getCum < 1000)	{ textLP(" Your hot load churns about her tunnel as you spray about, not a single drop slipping from her slit as her womb drinks it in."); }
							else if (getCum < 5000) { textLP(" Your hot load forces her belly to visibly distend as you spray within, the grand amount of spunk churning around and drowning your gushing head, yet hardly any seems to spill from her slit as her womb drinks it in, thirsty for seed."); }
							else { textLP(" Your hot load forces her belly to expand, inflating as you spray within, the massive amount of spunk audibly churning within. However, only a fraction of the stuff spews back out through her slit, as her womb seems to gulp it down as though it were desperately thirsty for seed."); }
							textLP(" Her own eruption begins, the bobbing cock launching thick threads of white creamy cum over your body, whipping them up and down as she continues to bounce upon you. Eventually, her legs give out from the intense orgasm and she falls forward with her wings outspread to shelter you both within her embrace, forcing your cock to bend and eventually fly out from her heated cunt to let it drizzle on the floor");
							if (knot == true) { textLP(", making her yelp in suprise as your swollen knot stretches her for a moment and pops out."); }
							textLP(". She continues to spurt a bit of cum between the two of you, the smell of sex rapidly intensifying within the feather confines, her orgasm shortly diminshing as the scent overpowers your pheromones...");
							doLust(-Math.floor(sen/2), 2, 1);
							silPreg = 1;
						}
						else if (vagTotal > 0 && vagLimit() > 28) {
							textLP("\r\rShe crawls up your "+legDesc(2)+", licking at "+oneYour(2)+" own "+vulvaDesc()+" slit"+plural(2)+", making sure it's moist and large enough to fit. Climbing up onto the bed with you, she carefully lines up the tip of her male endowment with your female honey-hole, carefully wedging the head through your supple folds. However, your warmth around her genitals is too much, the intense arousal this entire time from your pheromones getting the best of her senses. She plows into your passage, ");
							if (tallness/2 < vagSize*vagSizeMod) { textLP("pushing your belly out from within, "); }
							textLP("until her balls slam against your "+buttDesc()+" rear beneath. Straddling her own scrotum to grind her hidden slit against as she moves, she begins to thrust through your tender flesh, making her moan and whine from the fantastic sensations your pussy provides. Her wings curl around to embrace you and steady herself, trapping you both within a dome made by her feathers. The heat rapidly begins to build as she pounds into you vigorously, panting and moaning as she begins to drool from the overwhelming lust.\r\rIt doesn't take long before she let's out a loud erotic vulpine howl. Hot spunk floods through your womb, gushing and churning as she presses her breasts against your "+boobDesc()+" chest. Her eyes clench as you climax as well, your walls chewing upon her erection and making her twitch sporadically. The hot heavy feeling of your pussy around her cock proves to be too much, forcing her to pull out to let the cooler air kiss her wet shlong as it finishes its explosion between the two of you, spitting across her scales and fur and your "+skinDesc()+". The smell of sex rapidly intensifies within the feather confines, her orgasm shortly diminshing as the scent overpowers your pheromones...");
							doImpregnate(dominant);
						}
						else {
							if (vagTotal > 0) { textLP("\r\rNoticing she is far too large for you and still having the sense to not hurt you,");	}
							else { textLP("\r\rNoticing a lack of any genitals to use,"); }
							textLP(" she opts to simply lay down over you, straddling one of your thighs. Her balls push to either side as her slit behind presses against your "+skinDesc()+", her rod pushing across your belly. Her hands reach out to hug your head while her wings raise up, trapping you both within a dome made by her feathers. The heat rapidly begins to build between you two as she begins to grind vigorously, desparate to finally climax after having been so dreadfully aroused since she first caught onto your pheromones. Moaning and gasping aginst your face, she curls her back again and again to thrust her thick cock across your groin, threads of pre ");
							if (udders == true)	{ textLP(" smearing all over your udder."); }
							else { textLP(" trailing up and down your belly."); }
							textLP("\r\rIt doesn't take long before she lets out a low erotic vulpine howl. Hot spunk spews up between the two of you, trapped by her wings and raining down upon you. Her thighs clamp around your "+legDesc(1)+", her clitoris pulsing upon you "+skinDesc()+" as the backside of her testicles are flooded with fem-cum. The smell of sex intensifies within the feathered confines, her orgasm quickly diminishing as the scent overpowers your pheromones...");
						}
						doNext();
						doListen = function():void{
							textL("This strange girl collapses on top of you, huffing and panting and ignoring the sticky mess. Her eyelids droop heavily, the expression on her face so ecstatic yet so exhausted from just the single orgasm, as though a much greater weight had finally been lifted from her, beyond that in her loins.\r\rIt takes her nearly an hour of laying on top of you, nuzzling and licking at you the whole while, before her mind finally returns to her. She blinks, as though finally realizing what just happened, and blushes heavily. Rolling off onto the bed beside you, she gasps. There's a bit of fear in her voice, as though her self-conscious self was regaining, and she turns away.\r\r\"I-I'm so sorry!,\" she spouts meekly. However, she turns back to look you in the eye, a sense of wonder and relief shining in her own. \"Th-Though... It was really nice to have some company for once.\" She smiles.");
							if (cockTotal > 0) { textLP(" She then looks down at her belly and rubs it with a hand, relishing the feeling of your seed in her womb. \"That was a lot more... fulfilling than I had imagined it would be.\" A glow seems to fill her expression as she croons over it.");	}
							textLP("\r\r\"Anyways, let me help clean you up, I see I've made a bit of a mess...\" Again she blushes, though this time it's more from embarrassment at how much of a mess she made between the two of you rather than her shy nature. She lifts herself from the bed, her wings trying to cover her nude front in an attempt at modesty as she heads off into the tunnels to grab some towels. Her tail, on the other hand, is so happy from the experience that it lifts high, giving you a good view of her tight rump anyways. When she soon returns, she has somehow donned a new outfit in the time away, a simple robe of silken cloth that looks more suited for sleepwear than to go out into the desert in, especially with the way it hugs her curves and bulges leaving little to the imagination. Which, of course, in turn makes her blush again, her large ears turning red, as she realizes the indecency of the outfit while you stare at her. It's not something she had worn around others before and she hadn't thought about it...\r\rEventually, she helps clean up the majority of spunk from your body, rubbing your down from head to toe and trying not to focus too much on your naughty bits.\r\rOnce you're all cleaned up, she leads you back to the entrance to her den, knowing she somewhat interrupted your exploration. You note that the tunnel system seems quite extensive for just a single inhabitant, yet there is no sign of others...\r\r\"Well, umm... Thank you for coming to my place. You're welcome back any time. I... I do hope to see you again.\" She smiles awkwardly.\r\rYou give her a hug before you leave, being wrapped up in her feathers once more. And as you turn and step out from the rock overhang, she calls out for one last thing.\r\r\"Oh yeah! Hi, my name is Silandrias! What's yours?\".");
							hrs = 5;
							silRep = 1;
							doEnd();
						}
					}
				}
				else {
					textL("Your rejection falls harshly upon her, her ears pinning back against her hood and her tail swinging in between her legs. She jumps away from you, her wings flap around you as they release and snap back to cover herself. She steps backwards, her eyes peering through a couple feathers with tears welling up as she hides behind them, and she gulps to speak, \"Oh... I-I'm so sorry for what happened then!\"\r\rHer sandles kick up the sand as she turns to run away and after a few yards her wings unfurl for a speedier retreat.\r\r\rUnsure of who this stranger was or what exactly happened, it's the last you've seen of her.");
					silRep = -1;
					hrs = 2;
					doEnd();
				}
			}
		}
		else if (pheromone > 0)	{
			textLP("\r\rShortly after you begin watching her, a wind picks up from behind you and heads in her direction. She pauses and sniffs at the air a few times, picking up an odd scent that seems to make her act a little funny. As she follows her nose towards its source, she sways back and forth a little, her hips twisting around as her thighs begin to rub together. She has to land on her sandle-protected paws as her wings fold inward, three finger-like talons at the ends of them awkwardly roaming about her breasts and down to her groin, functioning as hands. It seems her wings are her arms, being attached at her shoulders like a bird's.\r\rOnce she gets close enough, you can see more under her cloak. A fennec-like face matches the fuzzy ears above, which each seem to be larger than her head, and a hot blush seems to have washed across her cheek that almost matches her auburn hair. Soft fur nearly covers her body, parted in front by the large belly-scales that plate across her chest and stomach, from her slightly elongated neck down to the tip of her tail. Supple draconic spikes peek out several inches along her spine, all the way down to the tip of her tail where they gently bend back and forth as her tail swishes from side to side anxiously. The clasp of her cloak manages to hide her otherwise naked breasts, a nice pair that matches her lithe frame, though with the way she fumbles to fondle herself she threatens to undo the clasp at any moment. Her lower bits are covered by a jeweled loin-cloth - a relatively scant outfit for the torrid weather - which seems to be... tenting as her other hand works at herself beneath.\r\rJust over 7 feet in height, she bends forward as her short muzzle follows the scent right up to you, immediately nuzzling against your body. The wing at her bosom stops playing with herself to hug around you, the fingers digging into your back tenderly as she tries to hold you close.\r\r\"You... You smell sooo good~\" A long tongue reaches out to lick up your chest, the pheromone that exudes from you enrapturing her keen senses while her tail wraps around your "+legDesc(2)+". \"I don't even think I've ever...\"\r\rHer sentence simply trails off as her hips push into you, a phallic object peaking in her loin cloth and running up your side, pre smearing along its path. You can feel a feminine attribute press against your thigh as she slowly begins to gyrate on it, her other wing also encompassing you to surround you with her vibrant feathers.");
			textLP(" She gasps again and again as she tries to speak, but her words are lost to the smothering lust. Her talons pick at your "+clothesBottom()+", trying to burrow her way in for a more intimate connection, but her lack of mental coherence makes the effort futile.\r\rYou can begin to see tears well up in her eyes from her failing efforts, her hips grinding so harshly in desperation that you can feel the hard erection throb in preparation for an unrequited premature explosion. She whines and whimpers meekly as she begins to twitch.");
			doNext();
			doListen = function():void{
				textL("Wads of white spunk spew through this strange woman's loin cloth. It smatters across your body and paints her thighs as much runs down the inside of the cloth. Plenty of it washes up through her cleavage, finally undoing the clasp with the slick lubrication and making her nipples shine with the moisture as they're freed. She coos and shudders for a few more moments, the cum running out as it continues to pump, her other genitals making a mess upon your "+legDesc(1)+". Her head hangs low as she tries to regain her breathing, her mind slowly returning.\r\rThe smell of her own naughtiness fills her nose. Realizing what she had just dowe, she looks up at you with eyes wide in fear. Stricken with embarrassment, her normally shy demeanor takes charge as she jumps back from you, her wings flapping around you as they let go and snap back around herself to cover the mess she's made of herself.\r\r\"I-I'm so sorry!\" She turns away and begins to run across the sand, her tail slinking between her legs. Just a few yards away, she kicks up into the air, her wings unfurling and taking her to the air for a speedier retreat. Wads of gooey stuff spills across the desert where she takes off, with more being flung around by the flapping of her wings, leaving a short trail before she disappears into the distance.\r\r\rLeft alone and covered in a stranger's lewd fluids, you're not quite sure how to react... You wipe some of it off, but the hot air quickly takes care of the rest. A little dazed, you turn and head back to town for now.");
				doLust(Math.floor(lib/4), 0);
				hrs = 2;
				doEnd();
			}
		}
		else if (checkMagicItem())	{
			textLP("\r\rShortly after you begin watching her, a wind picks up from behind you and heads in her direction. She pauses and sniffs at the air a few times, picking up a scent and slowly moving towards you as she uses her nose to follow it, not yet noticing your actual presence just yet.\r\rAs she moves closer, you can see more under her robe. A fennec-like face matches the fuzzy ears above, which each seem to be larger than her head, and long auburn hair. Soft fur nearly covers her body, parted down her front by the large belly-scales that plate across her chest and stomach, from her slightly elongated neck down to the tip of her tail. Supple draconic spikes peek out several inches along her spine, all the way down to the tip of her tail where they gently bend back and forth as her tail swishes from side to side anxiously. Her wings and arms are one in the same, each tipped with three finger-like talons that make up her hands. The clasp of her cloak manages to hide her otherwise naked breasts, a nice pair that matches her lithe frame, while her lower bits are covered by a jeweled loin-cloth - a relatively scant outfit for the torrid weather.\r\rAnd as she finally closes in on you, her paw-like feet touch down on the sand, little sandles protecting them from being burned. Just over 7 feet in height, she ducks down as her short muzzle continues to sniff about. She sniffs right up your "+legDesc(2)+" and at your pack, quietly speaking to herself in a feminine voice.\r\r\"Ooo, definitely some magic emanating from here. I wonder what it could be? Crafted? Naturally imbued? A weapon? Or maybe a charm? It's been a few weeks since I've found anything neat around here to add to my collection, I can't wait to see it!\" Her fingers dig into your pack and start to shuffle around for the magical goody, but slowly comes to a stop as she looks up. It wasn't until now that she realizes that it has been attached to a person this whole time - you. She hops back with a blush, her head ducking between her shoulders with embarrassment. \"Oh dear, I'm so sorry! I-I was just hunting for magical treasures!...\" Her toes burrow awkwardly in the sand as she stands there. \"Umm... Bye!\"\r\rAs quickly as she appeared, she turns and dashes off upon her wings,");
			textLP(" her shyness getting the best off her.\r\rNot quite sure what just happened, you turn and head back for now.");
			hrs = 2;
			doEnd();
		}
		else {
			textLP("\r\rNot long after you begin staring at her, she catches you out of the corner of her eye as well. She looks at you for only a moment, realizing you're gawking at her, and comes to an abrupt halt, her chest bouncing from the stop. Meekly, she slowly flits backwards and then flies up over a dune, shyly avoiding your presence as she disappears.\r\rWith no sign of her anymore, you shrug and move along.");
			hrs = 1;
			doEnd();
		}
	}
	else if (chance == 3) {
		textL("Through the barren desert, it's hard to see over the sandy dunes. Which is unfortunate, because as you finally manage to climb over one, you come face to face with a strange creature...\r\rA serpentine form, covered completely in forest-green scales, with a long powerful tail for legs, its upper body resembles that of human. Well, a woman, to be more exact, as a simple silken shawl dangles softly over an amply laden chest, nipples barely showing through, and a matching sash hanging from its curvy feminine hips that hides its feminine sex. But a long forked tongue hissing out of her mouth, rainbow colored wings folded upon her back, , and reaching around 13 feet in height with even more in length, this naga is neither and both human and snake. And it doesn't take well to surprises or strangers, instantly lashing out at you.");
		doNext();
		doListen = function():void{
			enemyID = 306;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}

	}
	else if (chance == 4){
		textL("Walking across the hot sand, you hear wind picking up nearby. Afraid it may be a sandstorm, you begin to rush for cover behind a dune but come to a halt as you spot a column of whirling sand coming towards you. No matter which way you run, the dust devil matches your movements, as though it had a sort of intelligence. Any plants it touches in its path are quickly sucked dry, left as shriveled shrunken husks. A desiccating dust devil, this sentient creature seeks out warm moisture to continue its life, even if it means sucking it from the living. And it seems to have you in its sights.");
		doNext();
		doListen = function():void{
			enemyID = 102;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}
	}
	else if (chance == 5){
		textL("While roaming about the desert, a sudden sandstorm kicks up around you, greatly obscuring your view. Maybe you should turn back and head out of the desert before you get lost. Would you like to press on?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				if (firstExplore == false) {
					textL("You take a deep breath. You're finally doing it, you're actually going beyond your home. There's a sense of nervousness from the unknown, but at the same time a since of exhiliration, like you're actually going to do something important. And for the first time since you've started having those dreams, you don't feel anxious about your life. You step forward with a sense of relief.\r\r");
					firstExplore = true;
				}
				else { textL(""); }
				if (currentZone == 6){
					if (percent() <= 50){
						textLP("You put your shoulder to the wind and press on, having no idea where you're going as your path is completely hidden by the blowing sand. Eventually, however, you break through the desert to large fields of swaying grass, free from the storm, and signs of civilization come into view. Large tents flutter in the breeze, made from canvas held up by rocks and logs, with a few smaller brick buildings here and there. You can hear the soft clapping of hard feet everywhere, as you spot several large horse-like people walk and dash about.\r\rYou have now entered the Equan home-city of Firmshaft! Although, looking behind you, there seems to be no sign of the path you just took. Getting back might be a bit difficult...");
						regionChange(2);
						if (foundFirmshaft == false) { foundFirmshaft = true; }
						hrs = 4;
						doEnd();
					}
					else {
						textLP("You put your shoulder to the wind and press on, having no idea where you're going as your path is completely hidden by the blowing sand. Eventually, however, you break through the desert into a dense vegetation with trees surrounding you, protecting you from the storm. You begin to see various wooden structures built amongst the canopy as you continue. Rope-bridges and circular huts everywhere, with lithe cat-like people walking about or jumping from branch to branch. The path leads you right to one of the few spiraling ramps that encircles the trees, bringing you up to the tree-born city.\r\rYou have now entered the Felin home-city of Siz'Calit! Although, looking behind you, there seems to be no sign of the path you just took. Getting back might be a bit difficult...");
						regionChange(4);
						if (foundSizCalit == false) { foundSizCalit = true; }
						hrs = 4;
						doEnd();
					}						
				}
				else if (currentZone == 2 || currentZone == 4){
					textLP("You put your shoulder to the wind and press on, having no idea where you're going as your path is completely hidden by the blowing sand. Eventually, however, you break through into an area sheltered from the wind by large rock formations. As you blink and brush the sand from your eyes, you're left in awe by the paradise before you.\r\rAn oasis somewhere within the desert, hidden within a ring of tall rock formations and mountains, you can see the water sparkle from here and the palm trees sway lazily around it. And all along the rocks, built into caves and sprawled across the beaches, reptillian people have made their home here, relaxing and enjoying their gorgeous habitat.\r\rYou have now entered the Lizan home-city of Oviasis! Though thanks to the storm you have no idea how you got here or how to get back...");
					regionChange(6);
					if (foundOviasis == false) { foundOviasis = true; }
					hrs = 4;
					doEnd();
				}
			}
			else {
				textL("You return from whence you came, avoiding any unwanted sand in your cracks.");
				hrs = 1;
				doEnd();
			}
		}
	}
	else if (chance == 6) { 
		if (hour > 8 && hour <= 20)	{
			textL("The hot sun beating down upon the arid sand is nearly stifling.");
			if (skinType == 3)	{
				textLP(" However, your scaley exterior was made to protect you from such circumstances, conserving your moisture and reflecting much of the rays to prevent you from getting too hot.");
			}
			else if (bodyOil > 0) {
				textLP(" However, the oil that covers your body reflects most of the bad rays and helps retain some of your moisture, preventing you from becoming too hot.");
			}
			else if (milkEngorgement > 400 && milkEngorgementLevel > 2) {
				textLP(" However, the leaking of your breasts provides you with a steady supply of excess milk to sip as you explore, preventing you from becoming dehydrated.");
			}
			else if (udderEngorgement > 400 && udderEngorgementLevel > 2 && udders == true) {
				textLP(" However, the leaking of your udder provides you with a steady supply of excess milk to sip as you explore, preventing you from becoming dehydrated.");
			}
			else if (moistCalc(1) > 7 && cockTotal > 0)	{
				textLP(" However, you cup your hands over the tip"+plural(1)+" of your slime-dripping cock"+plural(1)+" so you can gulp down some of the thick liquid, replenishing some of your water to prevent dehydration.");
			}
			else if (moistCalc(2) > 7 && vagTotal > 0)	{
				textLP(" However, you cup your hands over your slime-dripping "+vulvaDesc()+" vulva so you can gulp down some of the thick liquid, replenishing some of your water to prevent dehydration.");
			}
			else{
				textLP(" So much so that you wind up with a touch of heat exhaustion, making you tired and aching.");
				exhaustion += 5;
				stats(0,0,-1,0);
				doHP(-Math.floor((30+Math.floor(str/2)+HPMod)/6));
			}
			hrs = 2;
			doEnd();
		}
		else {
			textL("The desert night with the dry air is bitterly cold.");
			if (skinType == 2) {
				textLP(" However, your coat of fur helps insulate you, keeping you plenty warm.");
			}
			else if (attireTop == 6) {
				textLP(" However, the latex suit you wear helps insulate you, keeping you plenty warm.");
			}
			else if (bustRatio() > 1.45 || (boobTotal > 2 && bustRatio() > 1.3))	{
				textLP(" However, your masses of plentiful breast-flesh provides enough warmth to not freeze.");
			}
			else if (pregnancyTime > 200) {
				textLP(" However, the "+bellyDesc()+" belly you wield and the life within emanates so much heat to stave off freezing.");
			}
			else if ((cockSize*cockSizeMod > 60 && cockTotal > 0) || (cockSize*cockSizeMod > 45 && cockTotal > 2))	{
				textLP(" However, you hold close your "+cockDesc()+" appendage"+plural(1)+", providing you with enough warmth to not freeze");
			}
			else {
				textLP(" So cold that your muscles grow exhausted.");
				stats(-1,0,0,0);
				doHP(-Math.floor((30+Math.floor(str/2)+HPMod)/3.5));
			}
			hrs = 2;
			doEnd();
		}
	}
}