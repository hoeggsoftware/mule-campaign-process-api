var names = ["Ivory","Cosette","Giavanna","Hollis","Joni","Mackenzy","November","Analiz","Kaleesi","Jasper","Bertha","Liya","Aysia","Kyrie","Caspian","Siddharth","Hadlie","Loren","Whitley","Magdalyn","Caydon","Aiven","Mela","Alexi","Dale","Hailee","Saryah","Keanu","Mace","Karoline","Julieta","Maelee","Sutton","Lillian","Fitzgerald","Jemma","Tre","Anela","Maahi","Galileo","Ashtyn","Christon","Brylen","Jameis","Shrihan","Artur","Zion","Laci","Kyree","Avila","Giancarlo","Geronimo","Bodey","Adyson","Jovani","Tierney","Janya","Grayden","Leasia","Annabel","Karter","Tyshawn","Graeson","Amado","Austin","Jamaya","Xitlaly","Mehdi","Arizona","Aalayah","Leonie","Jacory","Marwan","Shelly","Ever","Corah","Cayleb","Elie","Kaisyn","Wynter","Melany","Madelyne","Sol","Lennyn","Aaminah","Kaydee","Octavio","Khalessi","Kynnedi","Elija","Michal","Alessio","Daxx","Alahni","Kirill","Evan","Tasneem","Dahlia","Kaan","Kalvin","Jianna","Jourdan","Noland","Leela","Coleson","Bodhi","Alma","Montana","Sharon","Addisen","Keylin","Pressley","Letty","Clarke","Raj","Zephyr","Rowen","Ameerah","Rida","Juanpablo","Nada","Lipa","Randall","Hershy","Deonna","Ameya","Legaci","Jacolby","Summit","Romel","Jasiel","Laron","Jules","Janiya","Arian","Joslynn","Maleia","Aaiden","Chavy","Magaly","Ensley","Ameer","Amera","Muriel","Zavian","Brittany","Analee","Rina","Prestyn","Macoy","Meadow","Elsa","Vania","Donte","Dariel","Arely","Kinzie","Zen","Jermiah","Adel","Keysha","Alise","Naiomi","Lincoln","Iyanna","Carys","Inaya","Arantza","Clifford","Journie","Levy","Taylor","Andrew","Abygail","Dior","Erma","Braedyn","Sinai","Jeancarlos","Blakelyn","Jencarlos","Nakiyah","Bralyn","Kellen","Gavriel","Deklen","Darek","Annora","Royale","Demarcus","Weslynn","Amaiah","Markel","Breyden","Hayat","Esmeralda","Davin","Destiney","Saleh","Ferris"]
var characterNames = ["Gauwalt Shylle","Wine","Ornmulf","Johny Love","Drewill","Sige","Dige","Thaethelm","Igmaelm","Cyne","Quendra","Eanwid","Mery","Eril Righte","Wynflu","Batha","Aeswild","Eadburh","Eneth Hyne","Elyn","Ziri","Gamah","Linarv","Khari","Thari","Fari","Urin","Lili","Shakun","Disanz","Ukhud","Fari","Thunda","Bali","Arkur","Turi","Bori","Disanz","Thari","Thudu","Ahtadhor","Elelron","Egamron","Golinar","Ithil","Golasaer","Fineli","Alaglor","Finore","Bore","Edherwel","Nimrode","Nerdiser","Arweldas","Tatie","Nelotie","Galenwe","Inden","Elerwen","Celotie","Nielip","Ewip","Giliam","Symond Holte","Ewis Hammayc","Ancis","Holme Banksi","Fastrim","Fortolm","Berter","Mina","Andina","Joane","Atet","Arion","Adan Bolge","Lily","Bera","Pearly","Bely","Lilia","Lilia Buck","Celia","Enel","Alyn","Lyse","Bellia","Joane","Ruba","Sane Bene","Masym","Geoffry","Kalard","Eras Cane","Sumbrim","Anson Fairbagg","Isunda","Mado","Affer","Artis Neve","Enelen","Idrinyel","Laserie","Ithreldas","Nimlaser","Atielen","Galalwe","Nerwingilm","Imlodel","Galenwe","Findire","Elelwel","Finroneth","Golinael","Ladheli","Finerdher","Oror","Carufing","Ladore","Eleneth","Throinain","Zuri","Kamah","Thrazig","Tharkam","Mali","Bori","Glatur","Khundu","Thori","Arund","Duri","Alin","Dwali","Banain","Kilmin","Gwali","Gili","Duli","Minan","Ecil","Jane Potte","Mary","Eodgith","Bruna","Burha","Kater","Efrin","Cwynna","Saeburg","Piersym Dere","Sige","Munde","Cytio","Stery Bexley","Geoffry","Bedre","Warder","Rewis Erif","Wida"]

fun randomNums(p) =
	random() match {
		case x if (x < p) -> randomInt(9) as String ++ randomNums(p)
		else -> ""
	}

fun generateName() = 
	names[randomInt(sizeOf(names))] ++ randomNums(0.25)

fun generateCharacterName() = characterNames[randomInt(sizeOf(characterNames))]

fun generateCharacters(count) = (1 to count) map do {
	var level = round(sampleChiSquare(9))
	---
	{
		name: generateCharacterName(),
		level: level,
		max_health: round((randomInt(level) + 10) * 1.5),
		strength: round((randomInt(level) + 6) * 0.8),
		dexterity: round((randomInt(level) + 6) * 0.8),
		constitution: round((randomInt(level) + 6) * 0.8),
		wisdon: round((randomInt(level) + 6) * 0.8),
		intelligence: round((randomInt(level) + 6) * 0.8),
		charisma: round((randomInt(level) + 6) * 0.8)
	}
}

fun generateCampaigns(count, characters) = (1 to count) map {}

fun roundN(num, places) =
	num * (10 pow places) / (10 pow places)

fun sampleChiSquare(desiredMean) =
	// chi squared k=2 (need to check this)
	((random() pow 2) + (random() pow 2) + (1/3)) * desiredMean
