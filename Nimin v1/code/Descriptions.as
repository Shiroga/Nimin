/**********************
 *General Descriptions*
 **********************/

//plural determines what to use in a sentence when regarding 1 or many vaginas or cocks. 
//Odds are cocks, evens are vaginas
//1 & 2 - Give s when multiple - "Your cock" vs "Your cocks"
//3 & 4 - Give s when singular, usually for verbs - "The single thing shudders" vs "The many things shudder"
//5 - 14 - Referring to many or one for various cases, see below
//15 - add "es" for multiple penis to get penises
//16 - pussy vs pussies
function plural(topic:int):String{
	var tempStr:String = "";
	if (topic == 1 && cockTotal > 1) { tempStr = "s";}
	if (topic == 2 && vagTotal > 1) { tempStr = "s";}
	if (topic == 3 && cockTotal < 2) { tempStr = "s";}
	if (topic == 4 && vagTotal < 2) { tempStr = "s";}
	if (topic == 5 && cockTotal < 2) { tempStr = "its";}
	if (topic == 5 && cockTotal > 1) { tempStr = "their";}
	if (topic == 6 && vagTotal < 2) { tempStr = "its";}
	if (topic == 6 && vagTotal > 1) { tempStr = "their";}
	if (topic == 7 && cockTotal < 2) { tempStr = "it's";}
	if (topic == 7 && cockTotal > 1) { tempStr = "they're";}
	if (topic == 8 && vagTotal < 2) { tempStr = "it's";}
	if (topic == 8 && vagTotal > 1) { tempStr = "they're";}
	if (topic == 9 && cockTotal < 2) { tempStr = "it";}
	if (topic == 9 && cockTotal > 1) { tempStr = "them";}
	if (topic == 10 && vagTotal < 2) { tempStr = "it";}
	if (topic == 10 && vagTotal > 1) { tempStr = "them";}
	if (topic == 11 && cockTotal < 2) { tempStr = "it";}
	if (topic == 11 && cockTotal > 1) { tempStr = "they";}
	if (topic == 12 && vagTotal < 2) { tempStr = "it";}
	if (topic == 12 && vagTotal > 1) { tempStr = "they";}
	if (topic == 13 && cockTotal < 2) { tempStr = "is";}
	if (topic == 13 && cockTotal > 1) { tempStr = "are";}
	if (topic == 14 && vagTotal < 2) { tempStr = "is";}
	if (topic == 14 && vagTotal > 1) { tempStr = "are";}
	if (topic == 15 && cockTotal > 1) { tempStr = "es";}
	if (topic == 16 && vagTotal < 2) { tempStr = "y";}
	if (topic == 16 && vagTotal > 1) { tempStr = "ies";}
	return tempStr;
}

//When you want to refer to a single organ, whether or not you have multiple
//"Grabbing one of your cocks" vs "Grabbing your cock"
function oneYour(topic:int):String{
	var tempStr:String = "ONE YOUR ERROR "+cockTotal+" "+vagTotal;
	if (topic == 1) {
		if (cockTotal > 1) { tempStr = "one of your"; }
		if (cockTotal == 1) { tempStr = "your"; }
	}
	if (topic == 2) {
		if (vagTotal > 1) { tempStr = "one of your"; }
		if (vagTotal == 1) { tempStr = "your"; }
	}
	return tempStr;
}

function bodyDesc():String{
	var tempStr:String = "BODY ERROR "+gender+" "+body;
	/*if (body == 7) { tempStr = "childish"; }
	if (body == 13) { tempStr = "womanly"; }
	if (body == 14) { tempStr = "feminine"; }
	if (body == 15) { tempStr = "femme-boyish"; }
	if (body == 16) { tempStr = "voluptuous"; }
	if (body == 19) { tempStr = "masculine"; }
	if (body == 20) { tempStr = "manly"; }
	if (body >25 ) { tempStr = "musclebound"; }*/
	
	if (gender == 1){
		if (body > 11 && body <= 17){
			if (hips > 3 && breastSize > 4)	{ tempStr = "shemale";	}
			else if (hips > 2){ tempStr = "femme-boyish"; }
			else { tempStr = "boyish"; }
		}
		else if (body > 17 && body <= 25) { tempStr = "manly"; }
		else if (body <= 11) { tempStr = "childish"; }
		else if (body > 25) { tempStr = "musclebound"; }
	}
	else if (gender == 2){
		if (body > 9 && body <= 14){ tempStr = "girly"; } 
		if (body > 14 && body <= 20){
			if (hips > 4 || butt > 4 || breastSize >4) { tempStr = "voluptuous"; }
			else { tempStr = "womanly"; }
		}
		if (body <= 10)	{ tempStr = "childish"; }
		if (body > 17 && breastSize <= 2) { tempStr = "cunt-boy"; }
		else if (body > 20) { tempStr = "musclebound"; }
	}
	else if (gender == 3) {
		if (body > 11 && body <= 23){
			if (hips > 2 && breastSize > 2) { tempStr = "feminine"; }
			else { tempStr = "masculine"; }
		}
		else if (body <= 11) { tempStr = "childish"; }
		else if (body > 23) { tempStr = "musclebound"; }
	}
	else if (gender == 0) {
		if (body > 11 && body <= 15){ tempStr = "teenage"; }
		else if (body > 15 && body <= 23){ tempStr = "fully grown"; }
		else if (body <= 11) { tempStr = "childish"; }
		else if (body > 23) { tempStr = "musclebound"; }
	}
	
	return tempStr;
}

function tailDesc():String{
	var chance:int = percent();
	var tempStr:String = "TAIL ERROR "+tail;
	if (chance <= 100){
		if (tail == 2){ tempStr = "equine";	}
		if (tail == 3){ tempStr = "wolfish"; }
		if (tail == 4){ tempStr = "cat-like"; }
		if (tail == 5){ tempStr = "bovine"; }
		if (tail == 6){ tempStr = "reptillian"; }
		if (tail == 7){ tempStr = "bunny"; }
		if (tail == 8){ tempStr = "mousy"; }
		if (tail == 9){ tempStr = "birdy"; }
		if (tail == 10){ tempStr = "piggy"; }
		if (tail == 11){ tempStr = "skunky"; }
		if (tail == 12){ tempStr = "thick ovipositor"; }
		if (tail == 1002){ tempStr = humanTaurTailDesc(); }
	}
	if (chance <= 50){
		if (tail == 2){ tempStr = "bristly"; }
		if (tail == 3){ tempStr = "fluffy";	}
		if (tail == 4){ tempStr = "lithe";	}
		if (tail == 5){ tempStr = "skinny, bristly-tipped"; }
		if (tail == 6){ tempStr = "thick, sleek"; }
		if (tail == 7){ tempStr = "poofy puff-ball"; }
		if (tail == 8){ tempStr = "thin, naked"; }
		if (tail == 9){ tempStr = "feathery"; }
		if (tail == 10){ tempStr = "short, curly"; }
		if (tail == 11){ tempStr = "big striped fluffy"; }
		if (tail == 12){ tempStr = "wide bulbous"; }
		if (tail == 1002){ tempStr = humanTaurTailDesc(); }
	}
	return tempStr;
}

function humanTaurTailDesc():String  {
	var tempStr:String = "";

	if (hairstyleLength(hair)) {
		if (hairLength == 2) { tempStr = "short ";	}
		if (hairLength == 4) { tempStr = "";	}
		if (hairLength == 6) { tempStr = "long ";	}
		if (hairLength == 8) { tempStr = "very long ";	}
		if (hairLength == 10) { tempStr = "ground-dragging ";	}
	}

	tempStr += hairC();

	if (hair == 0){ tempStr = "hairy"; }
	if (hair == 1){ tempStr = "wavy haired"; }
	if (hair == 2){ tempStr = "pigtailed"; }
	if (hair == 3){ tempStr = "ponytailed"; }
	if (hair == 4){ tempStr = "straight haired"; }
	if (hair == 5){ tempStr = "stubbly haired"; }
	if (hair == 6){ tempStr = "mohawked"; }
	if (hair == 7){ tempStr = "bunned"; }
	if (hair == 8){ tempStr = "curly haired"; }
	if (hair == 9){ tempStr = "braided pigtailed"; }
	if (hair == 10){ tempStr = "braided ponytailed "; }
	if (hair == 11){ tempStr = "braided"; }
	if (hair == 12){ tempStr = "spiky haired"; }
	if (hair == 13){ tempStr = "stiff haired"; }
	if (hair == 14){ tempStr = "poofball"; }

	return tempStr;
}


function earDesc():String{
	var chance:int = percent();
	var tempStr:String = "EAR ERROR "+ears;
	if (chance <= 100){
		if (ears == 1){ tempStr = "Hugging the sides of your head, you have small rounded ears that can easily be hidden by your hair, like that of a human's";	}
		if (ears == 2){ tempStr = "Atop your head, you have large tear-drop shaped ears that flick every now and then, able to hear quite well, like that of a horse's";	}
		if (ears == 3){ tempStr = "Atop your head, you have small triangular ears that stand perk, like that of a wolf's"; }
		if (ears == 4){ tempStr = "Atop your head, you have small triangular ears that stand perk, like that of a cat's"; }
		if (ears == 5){ tempStr = "Standing out perpendicular from the sides of your head, you have large oval ears that that droop slightly from their size, like that of a cow's"; }
		if (ears == 6){ tempStr = "On the sides of your head, you have sleek holes for ears, like many lizards have"; }
		if (ears == 7){ tempStr = "Atop your head, you have long ears that stand high and vigilant, like that of a rabbit's"; }
		if (ears == 8){ tempStr = "Standing out perpendicular the sides of your head, large rounded ears practically flap when they twitch, looking like you glued discs to the sides of your head, like that of a mouse's"; }
		if (ears == 9){ tempStr = "On the sides of your head, have flat patches of feathers covering your holes, like a bird's"; }
		if (ears == 10){ tempStr = "Standing out perpendicular from the sides of your head, you have triangular ears that fold near the ends and droop down from their length, like that of a pig's"; }
		if (ears == 11){ tempStr = "Atop your head, you have small round ears that stand perk, like that of a skunk's"; }
		if (ears == 12){ tempStr = "Hugging the sides of your head, you have long pointy ears with wavy-shaped lobes, colored vibrantly like the wings of a butterfly";}
	}
	return tempStr;
}

function faceDesc():String{
	var tempStr:String = "";
	if (faceType == 10) { tempStr += ", your face round with a moderate-sized nose"; }
	if (faceType == 20) { tempStr += ", your face slightly longer than normal with large confident eyes"; }
	if (faceType == 21) { tempStr += ", your face having a wide and strong muzzle with large confident eyes"; }
	if (faceType == 30) { tempStr += ", your face looking slightly fierce with sharp teeth and focused eyes"; }
	if (faceType == 31) { tempStr += ", your face having a narrow and toothy muzzle with focused eyes"; }
	if (faceType == 40) { tempStr += ", your face somewhat flat with a small button nose"; }
	if (faceType == 41) { tempStr += ", your face somewhat flat with a small button nose, long whiskers, and a general catty grin"; }
	if (faceType == 50) { tempStr += ", your face seemingly docile with a broad nose and slightly gentle eyes"; }
	if (faceType == 51) { tempStr += ", your face having a broad muzzle and calm gentle eyes"; }
	if (faceType == 60) { tempStr += ", your face somewhat flat with a nose that is mostly a slight bump with two slits for nostrils"; }
	if (faceType == 61) { tempStr += ", your face narrowing down a short muzzle with only slits for nostrils"; }
	if (faceType == 70) { tempStr += ", your face somewhat flat with a twitchy button nose and large friendly eyes"; }
	if (faceType == 71) { tempStr += ", your face somewhat flat with a twitchy button nose and whiskers, slightly buck-toothed, and your eyes large and friendly"; }
	if (faceType == 80) { tempStr += ", your face somewhat narrowed with a curious button nose, your eyes careful of their surroundings"; }
	if (faceType == 81) { tempStr += ", your face somewhat narrowed with a curious button nose, your eyes careful of their surroundings while your buck-teeth chitter as the whiskers on your puffy cheeks twitch"; }
	if (faceType == 90) { tempStr += ", your face rather awake with your large hooked nose and constantly alert eyes"; }
	if (faceType == 91) { tempStr += ", your face narrowing down to a razor-sharp beak that makes up your nose and mouth while your eyes are constantly watchful"; }
	if (faceType == 100) { tempStr += ", your face rather round and somewhat pudgy"; }
	if (faceType == 101) { tempStr += ", your face rather round and somewhat pudgy with a large upturned nose"; }
	if (faceType == 102) { tempStr += ", your face rather round and somewhat pudgy with a large upturned nose and pointed tusks that grow up from the sides of your mouth to nearly obstruct your vision"; }
	if (faceType == 110) { tempStr += ", your face somewhat long with a small button nose and cute eyes"; }
	if (faceType == 111) { tempStr += ", your face somewhat long with a small button nose, long whiskers, and cute gentle eyes"; }
	if (faceType == 120) { tempStr += ", your face somewhat flat with a chitinous bandage over the bridge of your nose and large gazing eyes"; }
	if (faceType == 121) { tempStr += ", your face somewhat flat with a chitinous bandage over the bridge of your nose and large nectar-sucking lips that offset your large darkened eyes"; }
	return tempStr;
}

function boobDesc():String{
	var chance:int = percent();
	var bust:float = bustRatio();
	var tempStr:String = "BOOB ERROR "+bust;

	if (chance <= 100){
		if (bust <= 1.03){ tempStr = "flat"; }
		else if (bust <= 1.07){ tempStr = "nearly flat"; }
		else if (bust <= 1.125){ tempStr = "perky"; }
		else if (bust <= 1.2){ tempStr = "bouncy"; }
		else if (bust <= 1.3){ tempStr = "jiggly"; }
		else if (bust <= 1.45){ tempStr = "swinging"; }
		else if (bust <= 1.66){ tempStr = "swaying"; }
		else if (bust <= 2){ tempStr = "huge"; }
		else if (bust <= 2.4){ tempStr = "impressive"; }
		else if (bust <= 2.9){ tempStr = "immense"; }
		else if (bust <= 3.6){ tempStr = "humongous"; }
		else if (bust <= 4.5){ tempStr = "massive"; }
		else if (bust <= 6){ tempStr = "enormous"; }
		else if (bust <= 8){ tempStr = "gigantic"; }
		else if (bust <= 11){ tempStr = "gargantuan"; }
		else if (bust <= 15){ tempStr = "tremendous"; }
		else if (bust <= 20){ tempStr = "colossal"; }
		else if (bust <= 30){ tempStr = "monstrous"; }
		else { tempStr = "kaiju"; }
	}
	if (chance > 50){
		if (bust <= 1.03){ tempStr = ""; }
		else if (bust <= 1.07){ tempStr = "tiny"; }
		else if (bust <= 1.125){ tempStr = "palmable"; }
		else if (bust <= 1.2){ tempStr = "hand-filling"; }
		else if (bust <= 1.3){ tempStr = "ample"; }
		else if (bust <= 1.45){ tempStr = "arm-filling"; }
		else if (bust <= 1.66){ tempStr = "head-sized"; }
		else if (bust <= 2){ tempStr = "belly-resting"; }
		else if (bust <= 2.4){ tempStr = "belly-covering"; }
		else if (bust <= 2.9){ tempStr = "hip-reaching"; }
		else if (bust <= 3.6){ tempStr = "thigh-hitting"; }
		else if (bust <= 4.5){ tempStr = "knee-bouncing"; }
		else if (bust <= 6){ tempStr = "floor-touching"; }
		else if (bust <= 8){ tempStr = "ground-dragging"; }
		else if (bust <= 11){ tempStr = "bed-sized"; }
		else if (bust <= 15){ tempStr = "road-clearing"; }
		else if (bust <= 20){ tempStr = "room-filling"; }
		else if (bust <= 30){ tempStr = "building-sized"; }
		else { tempStr = "mobile-landmark"; }
	}


	return tempStr;
}

function udderDesc():String{
	var chance:int = percent();
	var tempStr:String = "udder ERROR "+(udderSize/2);
	if (chance <= 100){
		if (udderSize/2 <= 2){ tempStr = "nearly flat"; }
		if (udderSize/2 > 2 && udderSize/2 <= 8){ tempStr = "noticeable"; }
		if (udderSize/2 > 8 && udderSize/2 <= 20){ tempStr = "large"; }
		if (udderSize/2 > 20 && udderSize/2 <= 40){ tempStr = "huge"; }
		if (udderSize/2 > 40 && udderSize/2 <= 76){ tempStr = "humongous"; }
		if (udderSize/2 > 76 && udderSize/2 <= 146){ tempStr = "massive"; }
		if (udderSize/2 > 146 && udderSize/2 <= 210){ tempStr = "gargantuan"; }
		if (udderSize/2 > 210 && udderSize/2 <= 280){ tempStr = "tremendous"; }
		if (udderSize/2 > 280 && udderSize/2 <= 560){ tempStr = "colossal"; }
		if (udderSize/2 > 560){ tempStr = "ridiculously huge"; }
	}
	if (chance > 50){
		if (udderSize/2 <= 2){ tempStr = "tiny"; }
		if (udderSize/2 > 2 && udderSize/2 <= 8){ tempStr = "palmable"; }
		if (udderSize/2 > 8 && udderSize/2 <= 20){ tempStr = "ample"; }
		if (udderSize/2 > 20 && udderSize/2 <= 40){ tempStr = "head-sized"; }
		if (udderSize/2 > 40 && udderSize/2 <= 76){ tempStr = "hefty"; }
		if (udderSize/2 > 76 && udderSize/2 <= 146){ tempStr = "beachball-sized"; }
		if (udderSize/2 > 146 && udderSize/2 <= 210){ tempStr = "normally back-breaking"; }
		if (udderSize/2 > 210 && udderSize/2 <= 280){ tempStr = "view-obscuring"; }
		if (udderSize/2 > 280 && udderSize/2 <= 560){ tempStr = "bed-sized"; }
		if (udderSize/2 > 560){ tempStr = "road-filling"; }
	}
	return tempStr;
}

function teatDesc():String{
	var chance:int = percent();
	var tempStr:String = "TEAT ERROR "+teatSize;
	if (chance <= 100){
		if (teatSize <= 2){ tempStr = "normal"; }
		if (teatSize > 2 && teatSize <= 5){ tempStr = "noticeable"; }
		if (teatSize > 5 && teatSize <= 9){ tempStr = "blatant"; }
		if (teatSize > 9 && teatSize <= 30){ tempStr = "normal-for-a-cow"; }
		if (teatSize > 30 && teatSize <= 50){ tempStr = "cock-like"; }
		if (teatSize > 50 && teatSize <= 100){ tempStr = "horsecock-like"; }
		if (teatSize > 100 && teatSize <= 140){ tempStr = "arm-length"; }
		if (teatSize > 140 && teatSize <= 300){ tempStr = "street-clearing"; }
		if (teatSize > 300){ tempStr = "obscene"; }
	}
	if (chance > 50){
		if (teatSize <= 2){ tempStr = ""; }
		if (teatSize > 2 && teatSize <= 5){ tempStr = "perky"; }
		if (teatSize > 5 && teatSize <= 9){ tempStr = "hypnotizing"; }
		if (teatSize > 9 && teatSize <= 30){ tempStr = "long"; }
		if (teatSize > 30 && teatSize <= 50){ tempStr = "huge"; }
		if (teatSize > 50 && teatSize <= 100){ tempStr = "enormous"; }
		if (teatSize > 100 && teatSize <= 140){ tempStr = "extreme"; }
		if (teatSize > 140 && teatSize <= 300){ tempStr = "ridiculous"; }
		if (teatSize > 300){ tempStr = "obscene"; }
	}
	return tempStr;
}

function buttDesc():String{
	var chance:int = percent();
	var tempStr:String = "BUTT ERROR "+butt;
	if (chance <= 100){
		if (butt*buttMod <= 2){ tempStr = "flat"; }
		if (butt*buttMod > 2 && butt*buttMod <= 5){ tempStr = "tight"; }
		if (butt*buttMod > 5 && butt*buttMod <= 15){ tempStr = "ample"; }
		if (butt*buttMod > 15 && butt*buttMod <= 30){ tempStr = "large"; }
		if (butt*buttMod > 30 && butt*buttMod <= 50){ tempStr = "huge"; }
		if (butt*buttMod > 50 && butt*buttMod <= 80){ tempStr = "grand"; }
		if (butt*buttMod > 80 && butt*buttMod <= 130){ tempStr = "jumbo"; }
		if (butt*buttMod > 130 && butt*buttMod <= 175){ tempStr = "giant"; }
		if (butt*buttMod > 175){ tempStr = "ginormous"; }
	}
	if (chance > 50){
		if (butt*buttMod <= 2){ tempStr = "boney"; }
		if (butt*buttMod > 2 && butt*buttMod <= 5){ tempStr = "firm"; }
		if (butt*buttMod > 5 && butt*buttMod <= 15){ tempStr = "grope-able"; }
		if (butt*buttMod > 15 && butt*buttMod <= 30){ tempStr = "jiggly"; }
		if (butt*buttMod > 30 && butt*buttMod <= 50){ tempStr = "pillow-like"; }
		if (butt*buttMod > 50 && butt*buttMod <= 80){ tempStr = "wobbling"; }
		if (butt*buttMod > 80 && butt*buttMod <= 130){ tempStr = "swaying"; }
		if (butt*buttMod > 130 && butt*buttMod <= 175){ tempStr = "bouncing"; }
		if (butt*buttMod > 175){ tempStr = "constantly quivering"; }
	}
	return tempStr;
}

function vulvaDesc():String{
	var chance:int = percent();
	var tempStr:String = "VULVA ERROR "+vulvaSize;
	if (chance <= 100){
		if (vulvaSize <= 2){ tempStr = "tiny"; }
		if (vulvaSize > 2 && vulvaSize <=8){ tempStr = "plush"; }
		if (vulvaSize > 8 && vulvaSize <=16){ tempStr = "plump"; }
		if (vulvaSize > 16 && vulvaSize <=24){ tempStr = "huge"; }
		if (vulvaSize > 24 && vulvaSize <=36){ tempStr = "enormous"; }
		if (vulvaSize > 36 && vulvaSize <=54){ tempStr = "gigantic"; }
		if (vulvaSize > 54 && vulvaSize <=84){ tempStr = "humongous"; }
		if (vulvaSize > 84 && vulvaSize <=124){ tempStr = "tremendous"; }
		if (vulvaSize > 124 && vulvaSize <=160){ tempStr = "colossal"; }
		if (vulvaSize > 160){ tempStr = "ridiculous"; }
	}
	if (chance > 50){
		if (vulvaSize == 2){ tempStr = "childlike"; }
		if (vulvaSize > 2 && vulvaSize <=8){ tempStr = "dainty"; }
		if (vulvaSize > 8 && vulvaSize <=16){ tempStr = "kissable"; }
		if (vulvaSize > 16 && vulvaSize <=24){ tempStr = "groin-filling"; }
		if (vulvaSize > 24 && vulvaSize <=36){ tempStr = "thigh-spreading"; }
		if (vulvaSize > 36 && vulvaSize <=54){ tempStr = ""+legDesc(1)+"-"+legVerb(2)+""; }
		if (vulvaSize > 54 && vulvaSize <=84){ tempStr = "ground-scraping"; }
		if (vulvaSize > 84 && vulvaSize <=124){ tempStr = "person-sized"; }
		if (vulvaSize > 124 && vulvaSize <=160){ tempStr = "room-sized"; }
		if (vulvaSize > 160){ tempStr = "building-sized"; }
	}
	return tempStr;
}

function cockDesc():String{
	var chance:int = percent();
	var tempCock:int = (cockSize*cockSizeMod);
	var tempStr:String = "COCK ERROR "+tempCock;
	if (chance <= 100){
		if (tempCock <= 8){ tempStr = "puny"; }
		if (tempCock > 8 && tempCock <= 12){ tempStr = "average-sized"; }
		if (tempCock > 12 && tempCock <= 24){ tempStr = "big"; }
		if (tempCock > 24 && tempCock <= 32){ tempStr = "large"; }
		if (tempCock > 32 && tempCock <= 56){ tempStr = "huge"; }
		if (tempCock > 56 && tempCock <= 72){ tempStr = "enormous"; }
		if (tempCock > 72 && tempCock <= 100){ tempStr = "gigantic"; }
		if (tempCock > 100 && tempCock <= 152){ tempStr = "humongous"; }
		if (tempCock > 152 && tempCock <= 304){ tempStr = "tremendous"; }
		if (tempCock > 304 && tempCock <= 608){ tempStr = "colossal"; }
		if (tempCock > 608 && tempCock <= 1200){ tempStr = "ridiculous"; }
		if (tempCock > 1200){ tempStr = "impossibly-ginormous"; }
	}
	if (chance > 50){
		if (tempCock <= 8){ tempStr = "infantile"; }
		if (tempCock > 8 && tempCock <= 12){ tempStr = "hand-length"; }
		if (tempCock > 12 && tempCock <= 24){ tempStr = "larger than normal"; }
		if (tempCock > 24 && tempCock <= 32){ tempStr = "foot-long"; }
		if (tempCock > 32 && tempCock <= 56){ tempStr = "thigh-slapping"; }
		if (tempCock > 56 && tempCock <= 72){ tempStr = "knee-knocking"; }
		if (tempCock > 72 && tempCock <= 100){ tempStr = "leg-sized"; }
		if (tempCock > 100 && tempCock <= 152){ tempStr = "person-sized"; }
		if (tempCock > 152 && tempCock <= 304){ tempStr = "car-sized"; }
		if (tempCock > 304 && tempCock <= 608){ tempStr = "bus-sized"; }
		if (tempCock > 608 && tempCock <= 1200){ tempStr = "building-sized"; }
		if (tempCock > 1200){ tempStr = "landscape-filling"; }
	}
	return tempStr;
}

function ballDesc():String{
	var chance:int = percent();
	var tempStr:String = "BALLS ERROR "+ballSize;
	if (chance <= 50){
		if (ballRatio() < 0.009) { tempStr = "puny"; }
		else if (ballRatio() < 0.016) { tempStr = "small"; }
		else if (ballRatio() < 0.033) { tempStr = "sizeable"; }
		else if (ballRatio() < 0.066) { tempStr = "big"; }
		else if (ballRatio() < 0.1) { tempStr = "large"; }
		else if (ballRatio() < 0.15) { tempStr = "impressive"; }
		else if (ballRatio() < 0.2) { tempStr = "hefty"; }
		else if (ballRatio() < 0.3) { tempStr = "huge"; }
		else if (ballRatio() < 0.45) { tempStr = "giant"; }
		else if (ballRatio() < 0.7) { tempStr = "tremendous"; }
		else if (ballRatio() < 1) { tempStr = "massive"; }
		else if (ballRatio() < 1.5) { tempStr = "intimidating"; }
		else if (ballRatio() < 2.5) { tempStr = "frighteningly large"; }
		else if (ballRatio() < 4.0) { tempStr = "impossibly large"; }
		else if (ballRatio() < 7) { tempStr = "colossal"; }
		else if (ballRatio() < 11) { tempStr = "threateningly big"; }
		else if (ballRatio() < 20) { tempStr = "awe-inspiring"; }
		else { tempStr = "force-of-destruction"; }
	}
	else {
		if (ballRatio() < 0.009) { tempStr = "hard-to-find"; }
		else if (ballRatio() < 0.016) { tempStr = "barely grabable"; }
		else if (ballRatio() < 0.033) { tempStr = "graspable"; }
		else if (ballRatio() < 0.066) { tempStr = "hand-filling"; }
		else if (ballRatio() < 0.1) { tempStr = "crotch-filling"; }
		else if (ballRatio() < 0.15) { tempStr = "thigh-slapping"; }
		else if (ballRatio() < 0.2) { tempStr = "thigh-filling"; }
		else if (ballRatio() < 0.3) { tempStr = "knee-knocking"; }
		else if (ballRatio() < 0.45) { tempStr = "shin-slapping"; }
		else if (ballRatio() < 0.7) { tempStr = "ground-dragging"; }
		else if (ballRatio() < 1) { tempStr = "hippity-hop"; }
		else if (ballRatio() < 1.5) { tempStr = "larger-than-yourself"; }
		else if (ballRatio() < 2.5) { tempStr = "cover-granting"; }
		else if (ballRatio() < 4.0) { tempStr = "room-sized"; }
		else if (ballRatio() < 7) { tempStr = "building-sized"; }
		else if (ballRatio() < 11) { tempStr = "mobile-hill"; }
		else if (ballRatio() < 20) { tempStr = "sky-scraping"; }
		else { tempStr = "sub-celestial"; }
	}

	return tempStr;
}

function nipDesc():String{
	var chance:int = percent();
	var tempStr:String = "NIPPLE ERROR "+nippleSize;
	if (chance <= 100 || nipBreastRatio() == 0.0){
		if (nipTallRatio() <= 0.002 ) { tempStr = "tiny"; }
		else if (nipTallRatio() <= 0.004 ) { tempStr = "small"; }
		else if (nipTallRatio() <= 0.008 ) { tempStr = "protruding"; }
		else if (nipTallRatio() <= 0.016 ) { tempStr = "thimble-sized"; }
		else if (nipTallRatio() <= 0.035 ) { tempStr = "thumb-sized"; }
		else if (nipTallRatio() <= 0.07 ) { tempStr = "grabbable"; }
		else if (nipTallRatio() <= 0.15 ) { tempStr = "strokeable"; }
		else if (nipTallRatio() <= 0.3 ) { tempStr = "forearm-sized"; }
		else if (nipTallRatio() <= 0.6 ) { tempStr = "arm-length"; }
		else if (nipTallRatio() <= 1.2 ) { tempStr = "person-sized"; }
		else if (nipTallRatio() <= 2.5 ) { tempStr = "pole-like"; }
		else if (nipTallRatio() <= 5 ) { tempStr = "tree-sized"; }
		else if (nipTallRatio() <= 10 ) { tempStr = "road-clearing"; }
		else if (nipTallRatio() <= 20 ) { tempStr = "path-scouting"; }
		else { tempStr = "sky-touching"; }
	}
	else if (chance > 50){
		if (nipBreastRatio() <= .06) { tempStr = "flat";	}
		else if (nipBreastRatio() <= .125) { tempStr = "";	}
		else if (nipBreastRatio() <= .25) { tempStr = "perky";	}
		else if (nipBreastRatio() <= .5) { tempStr = "pokey";	}
		else if (nipBreastRatio() <= 1) { tempStr = "far-standing";	}
		else if (nipBreastRatio() <= 2) { tempStr = "drooping";	}
		else if (nipBreastRatio() <= 4) { tempStr = "flopping";	}
		else if (nipBreastRatio() <= 8) { tempStr = "chest-crowding"; }
		else if (nipBreastRatio() <= 16) { tempStr = "breast-hiding"; }
		else { tempStr = "overshadowing"; }
		if (nipType == 2 && lust < 50) { tempStr = "sunken ";	}
	}
	chance = percent();
	if (nipType == 1) { 
		if (chance <= 50) { tempStr = tempStr + " quad-"; }
		else { tempStr = "quartets of "+tempStr; }
	}
	return tempStr;
}

function clitDesc():String{
	var chance:int = percent();
	var tempStr:String = "CLIT ERROR "+clitSize;
	if (chance <= 100){
		if (clitSize <= 2){ tempStr = "tiny"; }
		if (clitSize > 2 && clitSize <= 3){ tempStr = "nibble-able"; }
		if (clitSize > 3 && clitSize <= 6){ tempStr = "protruding"; }
		if (clitSize > 6 && clitSize <= 12){ tempStr = "blatant"; }
		if (clitSize > 12 && clitSize <= 25){ tempStr = "suckable"; }
		if (clitSize > 25 && clitSize <= 50){ tempStr = "cock-like"; }
		if (clitSize > 50 && clitSize <= 100){ tempStr = "horsecock-like"; }
		if (clitSize > 100 && clitSize <= 140){ tempStr = "arm-length"; }
		if (clitSize > 140 && clitSize <= 300){ tempStr = "person-sized"; }
		if (clitSize > 300){ tempStr = "obscene"; }
	}
	if (chance > 50){
		if (clitSize <= 2){ tempStr = "small"; }
		if (clitSize > 2 && clitSize <= 3){ tempStr = "pinchable"; }
		if (clitSize > 3 && clitSize <= 6){ tempStr = "flickable"; }
		if (clitSize > 6 && clitSize <= 12){ tempStr = "panty-tenting"; }
		if (clitSize > 12 && clitSize <= 25){ tempStr = "stroke-able"; }
		if (clitSize > 25 && clitSize <= 50){ tempStr = "huge"; }
		if (clitSize > 50 && clitSize <= 100){ tempStr = "gigantic"; }
		if (clitSize > 100 && clitSize <= 140){ tempStr = "doorway-smacking"; }
		if (clitSize > 140 && clitSize <= 300){ tempStr = "snuggle-able"; }
		if (clitSize > 300){ tempStr = "obscene"; }
	}
	return tempStr;
}



function hipDesc():String{
	var chance:int = percent();
	var tempStr:String = "HIP ERROR "+hips;
	if (chance <= 100){
		if (hips*hipMod <= 3){ tempStr = "narrow"; }
		if (hips*hipMod > 3 && hips*hipMod <= 8){ tempStr = "unnoticeable"; }
		if (hips*hipMod > 8 && hips*hipMod <= 16){ tempStr = "wide"; }
		if (hips*hipMod > 16 && hips*hipMod <= 28){ tempStr = "endowed"; }
		if (hips*hipMod > 28 && hips*hipMod <= 40){ tempStr = "protruding"; }
		if (hips*hipMod > 40 && hips*hipMod <= 55){ tempStr = "cow-like"; }
		if (hips*hipMod > 55 && hips*hipMod <= 75){ tempStr = "shelf-like"; }
		if (hips*hipMod > 75 && hips*hipMod <= 100){ tempStr = "doorway-jamming"; }
		if (hips*hipMod > 100){ tempStr = "perpetually-swaying"; }

	}
	if (chance > 50){
		if (hips*hipMod <= 3){ tempStr = "prepubescent"; }
		if (hips*hipMod > 3 && hips*hipMod <= 8){ tempStr = "average"; }
		if (hips*hipMod > 8 && hips*hipMod <= 16){ tempStr = "child-bearing"; }
		if (hips*hipMod > 16 && hips*hipMod <= 28){ tempStr = "especially fertile"; }
		if (hips*hipMod > 28 && hips*hipMod <= 40){ tempStr = "hypnotizing"; }
		if (hips*hipMod > 40 && hips*hipMod <= 55){ tempStr = "blatantly obvious"; }
		if (hips*hipMod > 55 && hips*hipMod <= 75){ tempStr = "excessively wide"; }
		if (hips*hipMod > 75 && hips*hipMod <= 100){ tempStr = "greatly protruding"; }
		if (hips*hipMod > 100){ tempStr = "gigantic"; }

	}
	return tempStr;
}

function bellyDesc():String{
	var chance:int = percent();
	var tempBelly:float = waistRatio();

	var tempStr:String = "BELLY ERROR "+(tempBelly);

	if (waistFromPregnancy() > waistFromFat()){
		if (tempBelly <= 1.125) { tempStr = "flat"; }
		else if (tempBelly <= 1.2) { tempStr = "hardly noticeable"; }
		else if (tempBelly <= 1.3) { tempStr = "slightly bulging"; }
		else if (tempBelly <= 1.45) { tempStr = "obviously swollen"; }
		else if (tempBelly <= 1.66) { tempStr = "significantly protruding"; }
		else if (tempBelly <= 2) { tempStr = "cradleable"; }
		else if (tempBelly <= 2.4) { tempStr = "huggable"; }
		else if (tempBelly <= 2.9) { tempStr = "unbalancing"; }
		else if (tempBelly <= 3.6) { tempStr = "too-large-to-reach-around"; }
		else if (tempBelly <= 4.5) { tempStr = "knee-knocking"; }
		else if (tempBelly <= 6) { tempStr = "path-clearing"; }
		else if (tempBelly <= 8) { tempStr = "ground-scraping"; }
		else if (tempBelly <= 11) { tempStr = "view-blocking"; }
		else if (tempBelly <= 15) { tempStr = "double-your-height"; }
		else if (tempBelly <= 20) { tempStr = "room-sized"; }
		else { tempStr = "breeding-factory"; }

		if (chance <= 50 && tempBelly > 11) {	tempStr += " pregnant-looking";	}
		else if (tempBelly > 11) { tempStr += " gravid"; }
	}
	else {
		if (tempBelly <= 1.125) { tempStr = "flat"; }
		else if (tempBelly <= 1.2) { tempStr = "chubby"; }
		else if (tempBelly <= 1.3) { tempStr = "porky"; }
		else if (tempBelly <= 1.45) { tempStr = "multi-rolled"; }
		else if (tempBelly <= 1.66) { tempStr = "pillow-like"; }
		else if (tempBelly <= 2) { tempStr = "morbidly obese"; }
		else if (tempBelly <= 2.4) { tempStr = "bed-like"; }
		else if (tempBelly <= 2.9) { tempStr = "fat-encompassing"; }
		else if (tempBelly <= 3.6) { tempStr = "item-losing"; }
		else if (tempBelly <= 4.5) { tempStr = "bed-sized"; }
		else if (tempBelly <= 6) { tempStr = "impossibly large"; }
		else if (tempBelly <= 8) { tempStr = "blob-like"; }
		else if (tempBelly <= 11) { tempStr = "limb-engulfing"; }
		else { tempStr = "gigantic blubbery mass of"; }

		if (chance <= 50  && tempBelly > 1.45) { tempStr += " jiggly"; }
		else if (tempBelly > 1.45) { tempStr  += " meaty"; }

	}


	return tempStr;
}

function skinDesc():String{
	var tempStr:String = "SKIN ERROR "+skinType;
	if (skinType == 1){ tempStr = "skin";}
	if (skinType == 2){ tempStr = "fur";}
	if (skinType == 3){ tempStr = "scales";}
	if (skinType == 4){ tempStr = "feathers";}
	if (skinType == 5){ tempStr = "chitin";}
	if (snuggleBall == true) { tempStr = "plush and snuggly "+tempStr; }

	if (skinColor > 0 )	{ tempStr = ""+skinC()+""+tempStr; }
	return tempStr;
}

function skinC():String{
	var tempStr:String = "SKIN COLOR ERROR "+skinColor
	if (skinColor == 0) { tempStr = ""; }
	if (skinColor == 1) { tempStr = "black "; }
	if (skinColor == 2) { tempStr = "blonde "; }
	if (skinColor == 3) { tempStr = "red "; }
	if (skinColor == 4) { tempStr = "brown "; }
	if (skinColor == 5) { tempStr = "coral pink "; }
	if (skinColor == 6) { tempStr = "auburn "; }
	if (skinColor == 7) { tempStr = "brown "; }
	if (skinColor == 8) { tempStr = "grey "; }
	if (skinColor == 9) { tempStr = "white "; }

	return tempStr;
}

function legDesc(part:int):String {
	//legType 0 = normal bipedal
	var tempStr:String = "LEG ERROR PART "+part+" TYPE "+legType;
	if (part == 1) { //leg
		tempStr = "leg"
	}
	if (part == 2) { //legs
		tempStr = "legs";
	}
	if (part == 3) { //thigh
		tempStr = "thigh";
	}
	if (part == 4) { //thighs
		tempStr = "thighs";
	}
	if (part == 5) { //knee
		tempStr = "knee";
	}
	if (part == 6) { //knees
		tempStr = "knees";
	}
	if (part == 7) { //ankle
		tempStr = "ankle";
	}
	if (part == 8) { //ankles
		tempStr = "ankles";
	}
	if (part == 9) { //foot
		tempStr = "foot";
		if (legType == 1) { tempStr = "paw"; }
		if (legType == 1001) { tempStr = "hoof"; }
		if (checkItem(102))	{ tempStr = "hoof"; }
	}
	if (part == 10) { //feet
		tempStr = "feet";
		if (legType == 1) { tempStr = "paws"; }
		if (legType == 1001) { tempStr = "hooves"; }
		if (checkItem(102))	{ tempStr = "hooves"; }
	}
	if (part == 11)	{ //verb plural
		tempStr = "";
	}
	return tempStr;
}

function legVerb(part:int):String {
	var tempStr:String = "LEG VERB ERROR "+part+" TYPE "+legType;
	if (part == 1) {
		tempStr = "spreading";
	}
	if (part == 2) {
		tempStr = "spread wide";
	}
	if (part == 3) {
		tempStr = "spread";
	}
	if (part == 4) {
		tempStr = "clench";
	}
	if (part == 5) {
		tempStr = "straddling";
	}


	return tempStr;
}

function legWhere(part:int):String {
	//part 1 = between/above
	//part 2 = between/over
	var tempStr:String = "LEG WHERE ERROR "+part+" TYPE "+legType;
	if (part == 1) {
		tempStr = "between";
		if (legType == 1001) { tempStr = "behind"; }
	}
	if (part == 2) {
		tempStr = "between";
	}
	return tempStr;
}

function legPlural(which:int):String{
	var tempStr:String = "LEG PLURAL ERROR TYPE "+legType;
	if (which == 1)	{
		tempStr = "";
	}
	if (which == 2) {
		tempStr = "are"; 
	}
	return tempStr;
}


/*function weaponName():String{
	//ID here refers to "weapon" variable
	var tempStr:String = "WEAPON ERROR "+weapon;
	if (weapon == 1) { tempStr = itemName(32); }
	if (weapon == 4) { tempStr = "saber"; }
	if (weapon == 5) { tempStr = "whip"; }
	if (weapon == 5.89) { tempStr = "warhammer"; }
	if (weapon == 7.7) { tempStr = "dagger"; }
	if (weapon == 10) { tempStr = "fists"; }
	return tempStr;
}

function weaponAttack():String{
	//ID here refers to "weapon" variable
	var tempStr:String = "WEAPON ATTACK ERROR "+weapon;
	if (weapon == 1) { tempStr = itemName(32); }
	if (weapon == 4) { tempStr = "slash"; }
	if (weapon == 5) { tempStr = "lash"; }
	if (weapon == 5.89) { tempStr = "swing"; }
	if (weapon == 7.7) { tempStr = "lunge"; }
	if (weapon == 10) { tempStr = "swing"; }
	return tempStr;
}*/

function regionName(tempInt:int):String{
	var tempStr:String = "REGION ERROR "+currentZone;
	if (tempInt == 1) { tempStr = "Softlik"; }
	if (tempInt == 2) { tempStr = "Firmshaft"; }
	if (tempInt == 3) { tempStr = "Tieden"; }
	if (tempInt == 4) { tempStr = "Siz'Calit"; }
	if (tempInt == 6) { tempStr = "Oviasis"; }
	if (tempInt == 12) { tempStr = "Sanctuary"; }
	return tempStr;
}

function raceName():String{
	var tempStr:String = "RACE ERROR "+race;
	if (race == 1) { tempStr = "Human"; }
	if (race == 2) { tempStr = "Equan"; }
	if (race == 3) { tempStr = "Lupan"; }
	if (race == 4) { tempStr = "Felin"; }
	if (race == 6) { tempStr = "Lizan"; }
	return tempStr;
}

function domName():String{
	var tempStr:String = "DOMINANT ERROR "+dominant;
	if (dominant == 1) { tempStr = "human"; }
	if (dominant == 2) { tempStr = "horse"; }
	if (dominant == 3) { tempStr = "wolf"; }
	if (dominant == 4) { tempStr = "cat"; }
	if (dominant == 5) { tempStr = "cow"; }
	if (dominant == 6) { tempStr = "lizard"; }
	if (dominant == 7) { tempStr = "bunny"; }
	if (dominant == 8) { tempStr = "mouse"; }
	if (dominant == 9) { tempStr = "bird"; }
	if (dominant == 10) { tempStr = "pig"; }
	if (dominant == 11) { tempStr = "skunk"; }
	if (dominant == 12) { tempStr = "bug"; }
	return tempStr;
}

function genName():String{
	var tempStr:String = "GENDER ERROR "+gender;
	if (gender == 0) { tempStr = "n androgynous"; }
	if (gender == 1) { tempStr = " male"; }
	if (gender == 1 && hips > 3 && breastSize > 4)	{ tempStr = " female";	}
	if (gender == 2) { tempStr = " female"; }
	if (gender == 2 && body > 17 && breastSize <= 2) { tempStr = " male"; }
	if (gender == 3) { tempStr = " herm"; }
	return tempStr;
}
