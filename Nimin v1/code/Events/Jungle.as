function doJungle():void{
	var chance:int = eventSelect("Jungle");
	//Found Valley
	if (chance  == 1) {
		textL("You trip on a vine and start rolling down a hill!");
		doNext();
		doListen = function():void{
			textL("And keep rolling...");
			doNext();
			doListen = function():void{
				textL("And rolling...");
				doNext();
				doListen = function():void{
					textL("And rolling...");
					doNext();
					doListen = function():void{
						textL("Oh god, when will it end!");
						doNext();
						doListen = function():void{
							textL("Rolling, rolling, rolling...");
							doNext();
							doListen = function():void{
								textL("You black out for a moment from all the spinning.");
								doNext();
								doListen = function():void{
									textL("CRASH!");
									doNext();
									doListen = function():void{
										textL("You wake up feeling... rather nice. Despite having fallen for so long, you have landed in a fluffy bed of flowers. You stand, trying to get your bearings. You quickly realize, however, that... you've never seen this place before. A large valley spreads out before you, filled with various lush vegetation of all sorts of bright and lively colors. Tall hills surround it, masking this precious valley from any sort of civilization. If you hadn't accidentally tripped, you would have likely never found it...\r\rTaking caution, you climb your way back out, finding your way back to town. Now that you know about the valley, you think you can return quite easily.");
										foundValley = true;
										hrs += 3;
										doEnd();
									}
								}
							}
						}
					}
				}
			}
		}
	}
	else if (chance == 2){
		textL("You hear ominous swishing through the trees around you...");
		if (percent() < (10+runMod)){
			textLP("\r\rYet you manage to run off before anything can catch you.");
			hrs = 1;
			doEnd();
		}
		else if (bustRatio() <= 1.07){
			textLP("\r\rPeach-colored tentacles lash out at you from the tree-branches above, catching you by surprise. They flail around your chest, feeling about and groping it roughly.\r\rHowever, the tentacles seem to be uninterested and disappear as quick as they came, leaving you with a rather tender chest and wasted time.");
			doHP(-Math.floor((percent()/10)+2));
			hrs = 1;
			doEnd();
		}
		else if (milkEngorgement >= 400 && milkEngorgementLevel > 0) {
			textL("\r\rA mass of peach-colored tentacles falls from the tree-branches above. Some of the tentacles waver out towards you, mostly aiming at your "+boobDesc()+" chest. They seem rather non-threatening, however, as the mass rolls back and forth on the forest floor, almost as though it were a stumbling drunk.\r\rDo you allow the tentacles to come closer?");
			buttonConfirm();
			doListen = function():void{
				if (buttonChoice == 6){
					textL("Cautiously standing still, you wait as the tentacles come right up to your breasts. They caress your "+nipDesc()+"nipples, seemingly able to smell the milk within your breasts, and they wiggle even more like a drunk... It seems as though the creature smelled your large amount of milk production as you approached and became intoxicated by it.\r\r\rDo you let the creature indulge itself?");
					buttonConfirm();
					doListen = function():void{
						if (buttonChoice == 6) {
							textL("You pull your "+clothesTop()+" "+pullUD(1)+", letting your "+boobDesc()+" chest bob out, practically inviting it to partake of your motherly liquid. Not to forsake such an opportunity, the tentacled mass rolls up to you, the tentacles squirming about your "+nipDesc()+"nipples until they stand hard and erect. Yet, the tentacles pull away, caressing and hugging your body as the main mass comes right up to you.\r\rThe mass of tentacles part, revealing a feminine face, slender and beautiful, with eyes closed. The tentacles dance atop her head, seemingly replacing her hair. Looking down, you can see more of her lithe body, thin with milky skin. Two breasts, barely handfuls, wobble upon her chest as tentacles, particularly thinner than the rest, dance about where her nipples would be. Overall, she seems quite short, maybe 4 feet tall at most, while the mass of tentacles could easily reah 6 feet in height.");
							doNext();
							doListen = function():void{
								textL("The fair face moves up to one of your "+boobDesc()+" breasts, the little mouth yawning wide to fit one of your "+nipDesc()+"nipples. She latches on the best she can, suckling intently from your chest. You let out a gasp as her expert suckling makes your body grow warm, a delightful tingling sensation making you quiver. Milk gushes from your tits as she gulps it down. Tentacles much thicker than the rest droop from her hair, their tips opening into soft maws that suckle from and kiss the "+skinDesc()+" of your breasts, leaving none unattended. It doesn't take long before your body is wracked by an intense boobgasm...");
								doNext();
								doListen = function():void{
									textL("Gasping for air as you come down from your climax, the feminine face and all the tentacles collapse, leaving hardly any milk still dribbling from your "+nipDesc()+"nipples. Checking the creature, she seems to have passed out in a drunken slumber. Her face seems content, with a small smile, her tentacles writhing lazily about her. Two tentacles in particular look surprisingly active, though. Her small breasts jiggle about as their tentacle-nipples stiffen and soften. They shiver as you run your hands along them, several feet long before you reach their tips. Short, narrow needles protrude from the tips of these tentacle-nipples and they dribble some pearlescant fluid excessivly. You take an empty vial from your bag and gather some of the fluid before heading on your way...");
									doSexP(20);
									nipplePlay += 7;
									doLust(-Math.floor(breastSize*sen/20), 0, 3);
									milkAmount(1);
									itemAdd(201);					
									hrs = 2;
									doEnd();
								}
							}
						}
						if (buttonChoice == 7) {
							textL("You take the opportunity to run from the tentacles before the creature can come to its senses, easily avoiding it.");
							doSexP(7);
							hrs = 1;
							doEnd();
						}
					}
				}
				if (buttonChoice == 7) {
					textL("You take the opportunity to run from the tentacles before the creature can come to its senses, easily avoiding it.");
					doSexP(4);
					hrs = 1;
					doEnd();
				}
			}
		}
		else{
			textLP("\r\rPeach-colored tentacles lash out at you from the tree-branches above, catching you by surprise. They flail around your "+boobDesc()+" chest, feeling about and scratching it roughly. They pull back for a moment, but before you can recoup from your confused stupor, even more come flying out from the trees, this time whipping around your wrists and "+legDesc(8)+".\r\rStruggle as you may, you can't seem to wrench yourself free. You can only watch in fear as more tentacles pull your "+clothesTop()+" away and roam about your "+boobDesc()+" breasts. They poke and tease at your "+nipDesc()+"nipples, causing them to stand hard and erect. Then, short narrow needles draw out of two narrow tentacles. They drip with some sort of pearlescant fluid and they plunge gently into each of your "+boobTotal+" fleshy masses...");
			doNext();
			doListen = function():void{
				boobChange(1);
				textL("A sudden feeling of warmth overcomes you. Your breasts feel especially hot, heaving with your breath. Staring dazedly, they even seem to grow slightly in size as the tentacles grope and massage them pleasurably.\r\rA moment later, your head jerks back as an intense feeling of fullness and swelling engulfs your sensitive tits. You recoil and watch streams of white liquid spew from your throbbing, "+nipDesc()+"nipples. Milk gushes before you, sprinkling over the ground as much thicker tentacles draw close. Their tips open into wet soft maws, showering themselves in the white rain, gulping the streams down all the way to the source. Each one latches onto your lactating breasts, sucking your "+nipDesc()+" nipples deep, drinking and suckling...\r\rYou feel slightly light-headed from the fuzzy warmth that engulfs you, the pleasurable slurping of the hungry tentacles draining you dry. Eventually, the tantalizing efforts make your body quiver, wracked by a steady orgasm from your "+boobDesc()+" breasts while the tentacles lap up the last of the fluids...");
				doNext();
				doListen = function():void{
					textL("A few minutes later, the tentacles retract from whence they came, leaving you to collapse to your "+legDesc(6)+". Your breasts still feel larger than before, especially when you stretch your "+clothesTop()+" back into place, along with a constant subtle warmth still emanating within. Wet blotches seep across the fabric, your "+nipDesc()+"nipples still dribbling with milk");
					if (lactation <= 0) { textLP(", but eventually dry back up as they were before, though slightly tingly"); }
					textLP("...");
					milkAmount(1);
					nipplePlay += 20;
					milkCPoisonNip += 5;
					doSexP(10);
					doLust(-Math.floor(breastSize*sen/20), 0, 3);
					doHP(-Math.floor(percent()/10));
					hrs = 2;
					doEnd();
				}
			}
		}
	}
	else if (chance == 3){
		textL("Walking through the jungle, you begin to hear footsteps mix with your own... As you pause to listen in, a creature jumps out before you! A lone wolf, it growls, ready to attack. And judging by the red rod that bobs beneath its belly, it's probably male, and probably frustrated after some failed encounter with a female...");
		doNext();
		doListen = function():void{
			enemyID = 201;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}
	}
	else if (chance == 4){
		textL("Walking through the jungle, you begin to hear footsteps mix with your own... As you pause to listen in, a creature jumps out before you! A lone wolf, it growls, ready to attack. The red rod that bobs beneath its belly indicate it is male, yet it doesn't carry itself like it would dominate a female. Rather, it looks like it is vicious enough to dominate other males, and maybe only males...");
		doNext();
		doListen = function():void{
			enemyID = 202;
			currentState = 2;
			enemyBaseStats();
			eMaxHP = eHP;
			doBattle();
		}
	}
	else if (chance == 5){
		textL("Within the jungle, you come across a rather tender looking tree. Fruits of a rather... vulgar shape hang from its branches. You pluck one and take it back with you.");
		itemAdd(210);
		hrs = 2;
		doEnd();
	}
	else if (chance == 6){
		textL("Making your way through the foliage the best you can, you stop as something glimmers as you kick it aside. Picking it up, it's actually a rather shiny rock that seems to naturally attract your attention. You pick it up and slip it into your bag in case you want to stare at it more later.");
		itemAdd(239);
		hrs = 2;
		doEnd();
	}
	else if (chance == 7){
		textL("After a few hours of being lost and randomly wandering through the massive amount of vegetation, you come across a path. Would you like to follow it?");
		buttonConfirm();
		doListen = function():void{
			if (buttonChoice == 6){
				if (firstExplore == false) {
					textL("You take a deep breath. You're finally doing it, you're actually going beyond your home. There's a sense of nervousness from the unknown, but at the same time a since of exhiliration, like you're actually going to do something important. And for the first time since you've started having those dreams, you don't feel anxious about your life. You step forward with a sense of relief.\r\r");
					firstExplore = true;
				}
				else { textL(""); }
				if (currentZone == 3){
					textLP("Following the path, you begin to see various wooden structures built amongst the canopy. Rope-bridges and circular huts everywhere, with lithe cat-like people walking about or jumping from branch to branch. The path leads you right to one of the few spiraling ramps that encircles the trees, bringing you up to the tree-born city.\r\rYou have now entered the Felin home-city of Siz'Calit! Although, looking behind you, there seems to be no sign of the path you just took. Getting back might be a bit difficult...");
					regionChange(4);
					if (foundSizCalit == false) { foundSizCalit = true; }
					hrs = 4;
					doEnd();
				}
				else if (currentZone == 4){
					textLP("Following the path, the vegetation grows slightly sparser as you come upon a large clearing. Most of the clearing has been walled off by tree-trunks lashed together with rope. You hear some vicious growls, but also plenty of coherent speech, echoing from behind the wall. A whole bustling city. The path you followed brings you right to the front gates, where furry wolf-like guards kindly greet you and allow you to pass.\r\rYou have now entered the Lupan home-city of Tieden! Although, looking behind you, there seems to be no sign of the path you just took. Getting back might be a bit difficult...");
					regionChange(3);
					if (foundTieden == false) { foundTieden = true; }
					hrs = 4;
					doEnd();
				}
			}
			else {
				textL("You return from whence you came.");
				hrs = 1;
				doEnd();
			}
		}
	}
}