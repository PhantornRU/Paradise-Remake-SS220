/mob/living/simple_animal
	tts_seed = "Kleiner"
	var/list/talk_sound = null //The sound played when talk
	var/list/damaged_sound = null


/mob/living/simple_animal/say(message, verb, sanitize, ignore_speech_problems, ignore_atmospherics)
	if(..() && length(src.talk_sound))
		playsound(src, pick(src.talk_sound), 75, TRUE)

/mob/living/simple_animal/attacked_by(obj/item/I, mob/living/user)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/attack_hand(mob/living/carbon/human/M)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/attack_animal(mob/living/simple_animal/M)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/attack_alien(mob/living/carbon/alien/humanoid/M)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/attack_larva(mob/living/carbon/alien/larva/L)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/attack_slime(mob/living/simple_animal/slime/M)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/attack_robot(mob/living/user)
	if(..() && length(src.damaged_sound))
		playsound(src, pick(src.damaged_sound), 40, 1)

/mob/living/simple_animal/start_pulling(atom/movable/AM, state, force = pull_force, show_message = FALSE)
	if(pull_constraint(AM, show_message))
		return ..()

/mob/living/simple_animal/proc/pull_constraint(atom/movable/AM, show_message = FALSE)
	return TRUE












/mob/living/simple_animal/pet
	attacktext = "кусает"
	attack_sound = 'sound/weapons/bite.ogg'



//Cats
/mob/living/simple_animal/pet/cat
	holder_type = /obj/item/holder/cat2

/mob/living/simple_animal/pet/cat/Runtime
	holder_type = /obj/item/holder/cat

/mob/living/simple_animal/pet/cat/cak
	holder_type = /obj/item/holder/cak

/mob/living/simple_animal/pet/cat/white
	holder_type = /obj/item/holder/cak

/mob/living/simple_animal/pet/cat/birman
	holder_type = /obj/item/holder/crusher

/mob/living/simple_animal/pet/cat/white
	name = "white"
	desc = "Белоснежная шерстка. Плохо различается на белой плитке, зато отлично виден в темноте!"
	icon_state = "penny"
	icon_living = "penny"
	icon_dead = "penny_dead"
	icon_resting = "penny_rest"
	icon_sit = "rest"
	gender = MALE
	holder_type = /obj/item/holder/cak

/mob/living/simple_animal/pet/cat/birman
	name = "birman"
	desc = "Священная порода Бирма"
	icon_state = "crusher"
	icon_living = "crusher"
	icon_dead = "crusher_dead"
	icon_resting = "crusher_rest"
	icon_sit = "rest"
	gender = MALE
	holder_type = /obj/item/holder/cak

/mob/living/simple_animal/pet/cat/spacecat
	name = "spacecat"
	desc = "Space Kitty!!"
	icon_state = "spacecat"
	icon_living = "spacecat"
	icon_dead = "spacecat_dead"
	icon_resting = "spacecat_rest"
	unsuitable_atmos_damage = 0
	minbodytemp = TCMB
	maxbodytemp = T0C + 40
	holder_type = /obj/item/holder/spacecat

/mob/living/simple_animal/pet/cat/fat
	name = "FatCat"
	desc = "Упитана. Счастлива."
	icon = 'icons/mob/iriska.dmi'
	icon_state = "iriska"
	icon_living = "iriska"
	icon_dead = "iriska_dead"
	icon_resting = "iriska"
	gender = FEMALE
	mob_size = MOB_SIZE_LARGE	//THICK!!!
	//canmove = FALSE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 8)
	tts_seed = "Huntress"
	maxHealth = 40	//Sooooo faaaat...
	health = 40
	speed = 10		// TOO FAT
	wander = 0		// LAZY
	can_hide = 0
	resting = TRUE

/mob/living/simple_animal/pet/cat/fat/handle_automated_action()
	return





/mob/living/simple_animal/cockroach
	death_sound = 'sound/creatures/crack_death2.ogg'


/mob/living/simple_animal/crab
	death_sound = 'sound/creatures/crack_death2.ogg'
	holder_type = /obj/item/holder/crab
	mob_size = MOB_SIZE_SMALL

/mob/living/simple_animal/crab/royal
	name = "королевский краб"
	desc = "Величественный королевский краб."
	icon_state = "royalcrab"
	icon_living = "royalcrab"
	icon_dead = "royalcrab_dead"
	response_help  = "с уважением гладит"
	response_disarm = "с уважением отталкивает"
	response_harm   = "топчет без уважения"
	health = 50
	maxHealth = 50
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 3)

/mob/living/simple_animal/crab/evil
	holder_type = /obj/item/holder/evilcrab







/mob/living/simple_animal/pet/dog
	tts_seed = "Stetmann"
	maxHealth = 50
	health = 50
	melee_damage_type = STAMINA
	melee_damage_lower = 6
	melee_damage_upper = 10
	attacktext = "кусает"
	var/growl_sound = list('sound/creatures/dog_grawl1.ogg','sound/creatures/dog_grawl2.ogg') //Used in emote.

	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/dog = 4)
	collar_type = "dog"



		// if("growl")
		// 	message = "growls!"
		// 	m_type = 2 //audible
		// 	playsound(src, pick(src.growl_sound), 75, TRUE)
		// if("help")
		// 	to_chat(src, "scream, bark, growl")


/mob/living/simple_animal/pet/dog/corgi
	holder_type = /obj/item/holder/corgi

	holder_type = /obj/item/holder/old_corgi

/mob/living/simple_animal/pet/dog/corgi/narsie
	//tts_seed = "Mannoroth"
	holder_type = /obj/item/holder/narsian
	maxHealth = 300
	health = 300
	melee_damage_type = STAMINA	//Пади ниц!
	melee_damage_lower = 50
	melee_damage_upper = 100

/mob/living/simple_animal/pet/dog/corgi/ratvar
	name = "Cli-k"
	desc = "It's a coolish Ian that clicks!"
	icon = 'icons/mob/clockwork_mobs.dmi'
	icon_state = "clik"
	icon_living = "clik"
	icon_dead = "clik_dead"
	faction = list("neutral", "clockwork_cult")
	gold_core_spawnable = NO_SPAWN
	nofur = TRUE
	unique_pet = TRUE
	maxHealth = 100
	health = 100

/mob/living/simple_animal/pet/dog/corgi/ratvar/update_corgi_fluff()
	..()
	speak = list("V'z fuvavat jneevbe!", "CLICK!", "KL-KL-KLIK")
	speak_emote = list("growls", "barks ominously")
	emote_hear = list("barks echoingly!", "woofs hauntingly!", "yaps in an judicial manner.", "mutters something unspeakable.")
	emote_see = list("communes with the unnameable.", "seeks the light in souls.", "shakes.")

/mob/living/simple_animal/pet/dog/corgi/ratvar/ratvar_act()
	adjustBruteLoss(-maxHealth)


/mob/living/simple_animal/pet/dog/corgi/puppy
	// tts_seed = "Jaina"
	maxHealth = 20
	health = 20
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/corgi = 1)

/mob/living/simple_animal/pet/dog/corgi/puppy/void
	// tts_seed = "Kael"
	holder_type = /obj/item/holder/void_puppy
	maxHealth = 60
	health = 60

/mob/living/simple_animal/pet/dog/corgi/puppy/slime
	name = "\improper slime puppy"
	real_name = "slimy"
	desc = "Крайне склизкий. Но прикольный!"
	icon_state = "slime_puppy"
	icon_living = "slime_puppy"
	icon_dead = "slime_puppy_dead"
	nofur = TRUE
	holder_type = /obj/item/holder/slime_puppy
	minbodytemp = 250 //Weak to cold
	maxbodytemp = INFINITY

/mob/living/simple_animal/pet/dog/corgi/Lisa
	// tts_seed = "Luna"
	holder_type = /obj/item/holder/lisa

/mob/living/simple_animal/pet/dog/corgi/borgi
	// tts_seed = "Glados"
	holder_type = /obj/item/holder/borgi

/mob/living/simple_animal/pet/dog/pug
	// tts_seed = "Kleiner"
	holder_type = /obj/item/holder/pug
	maxHealth = 30
	health = 30


/mob/living/simple_animal/pet/dog/bullterrier
	name = "\improper bullterrier"
	real_name = "bullterrier"
	desc = "Кого-то его мордочка напоминает..."
	icon = 'icons/mob/pets.dmi'
	icon_state = "bullterrier"
	icon_living = "bullterrier"
	icon_dead = "bullterrier_dead"
	//tts_seed = "Kleiner"
	holder_type = /obj/item/holder/bullterrier

/mob/living/simple_animal/pet/dog/tamaskan
	name = "\improper tamaskan"
	real_name = "tamaskan"
	desc = "Хорошая семейная собака. Уживается с другими собаками и ассистентами."
	icon = 'icons/mob/pets.dmi'
	icon_state = "tamaskan"
	icon_living = "tamaskan"
	icon_dead = "tamaskan_dead"
	//tts_seed = "Kleiner"
	holder_type = /obj/item/holder/bullterrier

/mob/living/simple_animal/pet/dog/german
	name = "\improper german"
	real_name = "german"
	desc = "Немецкая овчарка с помесью двортерьера. Судя по крупу - явно не породистый."
	icon = 'icons/mob/pets.dmi'
	icon_state = "german"
	icon_living = "german"
	icon_dead = "german_dead"
	//tts_seed = "Kleiner"

/mob/living/simple_animal/pet/dog/brittany
	name = "\improper brittany"
	real_name = "brittany"
	desc = "Старая порода, которую любят аристократы."
	icon = 'icons/mob/pets.dmi'
	icon_state = "brittany"
	icon_living = "brittany"
	icon_dead = "brittany_dead"





/mob/living/simple_animal/hostile/retaliate/goat
	tts_seed = "Muradin"

	attacktext = "бодает"
	death_sound = 'sound/creatures/goat_death.ogg'



/mob/living/simple_animal/cow
	tts_seed = "Cairne"

	attacktext = "бодает"
	death_sound = 'sound/creatures/cow_death.ogg'
	damaged_sound = list('sound/creatures/cow_damaged.ogg')
	talk_sound = list('sound/creatures/cow_talk1.ogg', 'sound/creatures/cow_talk2.ogg')


/mob/living/simple_animal/chick
	tts_seed = "Meepo"

	attacktext = "клюёт"
	death_sound = 'sound/creatures/mouse_squeak.ogg'
	holder_type = /obj/item/holder/chick

			// new()
			// var/mob/living/simple_animal/A
			// if(prob(5))
			// 	A = new /mob/living/simple_animal/cock(loc)
			// else
			// 	A = new /mob/living/simple_animal/chicken(loc)


/mob/living/simple_animal/chicken
	tts_seed = "Windranger"

	death_sound = 'sound/creatures/chicken_death.ogg'
	damaged_sound = list('sound/creatures/chicken_damaged1.ogg', 'sound/creatures/chicken_damaged2.ogg')
	talk_sound = list('sound/creatures/chicken_talk.ogg')
	holder_type = /obj/item/holder/chicken

/mob/living/simple_animal/cock
	name = "Петух"
	desc = "Гордый и важный вид."
	gender = MALE
	icon_state = "cock"
	icon_living = "cock"
	icon_dead = "cock_dead"
	speak = list("Cluck!","BWAAAAARK BWAK BWAK BWAK!","Bwaak bwak.")
	speak_emote = list("clucks","croons")
	emote_hear = list("clucks")
	emote_see = list("pecks at the ground","flaps its wings viciously")
	tts_seed = "pantheon"
	density = 0
	speak_chance = 2
	turns_per_move = 3
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 4)
	response_help  = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm   = "kicks the"
	melee_damage_type = STAMINA
	melee_damage_lower = 2
	melee_damage_upper = 6
	attacktext = "клюёт"
	death_sound = 'sound/creatures/chicken_death.ogg'
	damaged_sound = list('sound/creatures/chicken_damaged1.ogg', 'sound/creatures/chicken_damaged2.ogg')
	talk_sound = list('sound/creatures/chicken_talk.ogg')
	health = 30
	maxHealth = 30
	ventcrawler = 2
	pass_flags = PASSTABLE | PASSMOB
	mob_size = MOB_SIZE_SMALL
	can_hide = 1
	can_collar = 1
	gold_core_spawnable = FRIENDLY_SPAWN
	footstep_type = FOOTSTEP_MOB_CLAW
	holder_type = /obj/item/holder/cock


/mob/living/simple_animal/pig
	tts_seed = "Anubarak"

	attacktext = "лягает"
	death_sound = 'sound/creatures/pig_death.ogg'
	talk_sound = list('sound/creatures/pig_talk1.ogg', 'sound/creatures/pig_talk2.ogg')
	damaged_sound = list()



/mob/living/simple_animal/turkey

	death_sound = 'sound/creatures/duck_quak1.ogg'


/mob/living/simple_animal/goose

	desc = "Прекрасная птица для набива подушек и страха детишек."
	icon_resting = "goose_rest"
	melee_damage_type = STAMINA
	melee_damage_lower = 2
	melee_damage_upper = 8
	attacktext = "щипает"
	death_sound = 'sound/creatures/duck_quak1.ogg'
	talk_sound = list('sound/creatures/duck_talk1.ogg', 'sound/creatures/duck_talk2.ogg', 'sound/creatures/duck_talk3.ogg', 'sound/creatures/duck_quak1.ogg', 'sound/creatures/duck_quak2.ogg', 'sound/creatures/duck_quak3.ogg')
	damaged_sound = list('sound/creatures/duck_aggro1.ogg', 'sound/creatures/duck_aggro2.ogg')


/mob/living/simple_animal/goose/gosling
	name = "gosling"
	desc = "Симпатичный гусенок. Скоро он станей грозой всей станции."
	icon_state = "gosling"
	icon_living = "gosling"
	icon_dead = "gosling_dead"
	icon_resting = "gosling_rest"
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 3)
	melee_damage_lower = 0
	melee_damage_upper = 0
	health = 20
	maxHealth = 20


/mob/living/simple_animal/seal
	tts_seed = "Narrator"

	death_sound = 'sound/creatures/seal_death.ogg'





















/mob/living/simple_animal/pet/dog/fox
	tts_seed = "Barney"
	yelp_sound = 'sound/creatures/fox_yelp.ogg' //Used on death.
	holder_type = /obj/item/holder/fox

/mob/living/simple_animal/pet/dog/fox/forest
	name = "forest fox"
	desc = "Лесная дикая лисица. Может укусить."
	icon_state = "fox_forest"
	icon_living = "fox_forest"
	icon_dead = "fox_forest_dead"
	icon_resting = "fox_forest_rest"
	melee_damage_type = BRUTE
	melee_damage_lower = 6
	melee_damage_upper = 12

/mob/living/simple_animal/pet/dog/fox/fennec
	name = "фенек"
	desc = "Миниатюрная лисичка с ооочень большими ушами. Фенек, фенек, зачем тебе такие большие уши? Чтобы избегать дормитория?"
	icon_state = "fennec"
	icon_living = "fennec"
	icon_dead = "fennec_dead"
	icon_resting = "fennec_rest"	//fennec_sit ?
	see_in_dark = 10
	holder_type = /obj/item/holder/fennec



























/mob/living/simple_animal/frog
	name = "лягушка"
	real_name = "лягушка"
	desc = "Выглядит грустным не по средам и когда её не целуют."
	icon_state = "frog"
	icon_living = "frog"
	icon_dead = "frog_dead"
	icon_resting = "frog"
	speak = list("Квак!","КУААК!","Квуак!")
	speak_emote = list("квак","куак","квуак")
	emote_hear = list("квак","куак","квуак")
	emote_see = list("лежит расслабленная", "увлажнена", "издает гортанные звуки", "лупает глазками")
	var/squeak_sound = 'sound/creatures/frog_scream1.ogg'
	var/scream_sound = 'sound/creatures/frog_scream2.ogg'
	talk_sound = list('sound/creatures/frog_talk1.ogg', 'sound/creatures/frog_talk2.ogg')
	damaged_sound = list('sound/creatures/frog_damaged.ogg')
	death_sound = 'sound/creatures/frog_death.ogg'
	tts_seed = "pantheon"
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 10
	maxHealth = 10
	health = 10
	blood_volume = BLOOD_VOLUME_SURVIVE
	butcher_results = list(/obj/item/reagent_containers/food/snacks/monstermeat/lizardmeat = 1)
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "stamps on"
	density = 0
	ventcrawler = 2
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	mob_size = MOB_SIZE_TINY
	layer = MOB_LAYER
	atmos_requirements = list("min_oxy" = 16, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 223		//Below -50 Degrees Celcius
	maxbodytemp = 323	//Above 50 Degrees Celcius
	universal_speak = 0
	can_hide = 1
	holder_type = /obj/item/holder/frog
	can_collar = 1
	gold_core_spawnable = FRIENDLY_SPAWN

/mob/living/simple_animal/frog/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/squeak, list("[squeak_sound]" = 1, "[scream_sound]" = 1), 50, extrarange = SHORT_RANGE_SOUND_EXTRARANGE) //as quiet as a frog or whatever

/mob/living/simple_animal/frog/attack_hand(mob/living/carbon/human/M as mob)
	if(M.a_intent == INTENT_HELP)
		get_scooped(M)
	..()

/mob/living/simple_animal/frog/Crossed(AM as mob|obj, oldloc)
	if(ishuman(AM))
		if(!stat)
			var/mob/M = AM
			to_chat(M, "<span class='notice'>[bicon(src)] квакнул!</span>")
	..()

/mob/living/simple_animal/frog/toxic
	name = "яркая лягушка"
	real_name = "яркая лягушка"
	desc = "Уникальная токсичная раскраска. Лучше не трогать голыми руками."
	icon_state = "rare_frog"
	icon_living = "rare_frog"
	icon_dead = "rare_frog_dead"
	icon_resting = "rare_frog"
	var/toxin_per_touch = 5
	var/toxin_type = "toxin"
	gold_core_spawnable = HOSTILE_SPAWN
	holder_type = /obj/item/holder/frog/toxic

/mob/living/simple_animal/frog/toxic/attack_hand(mob/living/carbon/human/H as mob)
	if(!istype(H.gloves, /obj/item/clothing/gloves))
		to_chat(H, "<span class='warning'>Дотронувшись до [src.name], ваша кожа начинает чесаться!</span>")
		toxin_affect(H)
		if(H.a_intent == INTENT_DISARM || H.a_intent == INTENT_HARM)
			..()
	else
		..()

/mob/living/simple_animal/frog/toxic/Crossed(AM as mob|obj, oldloc)
	if(ishuman(AM))
		var/mob/living/carbon/human/H = AM
		if(!istype(H.shoes, /obj/item/clothing/shoes))
			toxin_affect(H)
			to_chat(H, "<span class='warning'>Ваши ступни начинают чесаться!</span>")
	..()

/mob/living/simple_animal/frog/toxic/proc/toxin_affect(mob/living/carbon/human/M as mob)
	if(M.reagents && !toxin_per_touch == 0)
		M.reagents.add_reagent(toxin_type, toxin_per_touch)






/mob/living/simple_animal/lizard
	tts_seed = "Ladyvashj"
	death_sound = 'sound/creatures/lizard_death.ogg'


/mob/living/simple_animal/lizard/axolotl
	name = "Аксолотль"
	desc = "Маленький милый аксолотль."
	icon = 'icons/mob/animal.dmi'
	icon_state = "axolotl"
	icon_living = "axolotl"
	icon_dead = "axolotl-dead"
	holder_type = /obj/item/holder/axolotl








/mob/living/simple_animal/moth
	name = "моль"
	desc = "Смотря на эту моль становится понятно куда пропали шубы перевозимые СССП."
	icon = 'icons/mob/animal.dmi'
	icon_state = "moth"
	icon_living = "moth"
	icon_dead = "moth_dead"
	turns_per_move = 1
	emote_see = list("flutters")
	response_help = "shoos"
	response_disarm = "brushes aside"
	response_harm = "squashes"
	speak_chance = 0
	maxHealth = 15
	health = 15
	see_in_dark = 100
	friendly = "nudges"
	density = 0
	flying = TRUE
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	ventcrawler = 2
	mob_size = MOB_SIZE_TINY
	butcher_results = list(/obj/item/reagent_containers/food/snacks/monstermeat/xenomeat = 1)
	gold_core_spawnable = FRIENDLY_SPAWN
	holder_type = /obj/item/holder/moth
	tts_seed = "Tychus"

/mob/living/simple_animal/mothroach
	name = "mothroach"
	desc = "Мотылёк. Обожает светочи."
	icon = 'icons/mob/pets.dmi'
	icon_state = "mothroach"
	icon_living = "mothroach"
	icon_dead = "mothroach_dead"
	icon_resting = "mothroach_sleep"
	response_help  = "pets"
	response_disarm = "bops"
	response_harm   = "kicks"
	faction = list("neutral")
	maxHealth = 15
	health = 15
	see_in_dark = 30
	turns_per_move = 10
	emote_see = list("flutters")
	response_help = "shoos"
	response_disarm = "brushes aside"
	response_harm = "squashes"
	friendly = "nudges"
	density = 0
	gold_core_spawnable = FRIENDLY_SPAWN
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	butcher_results = list(/obj/item/reagent_containers/food/snacks/monstermeat/xenomeat = 1)
	holder_type = /obj/item/holder/mothroach
	tts_seed = "Tychus"










/mob/living/simple_animal/possum
	name = "possum"
	desc = "The opossum is a small, scavenging marsupial of the order Didelphimorphia, previously \
	endemic to the Americas of Earth, but now inexplicably found across settled space. Nobody is \
	entirely sure how they travel to such disparate locations, with the leading theories including \
	smuggling, cargo stowaways, fungal spore reproduction, teleportation, or unknown quantum effects."
	icon = 'icons/mob/pets.dmi'
	icon_state = "possum"
	icon_living = "possum"
	icon_dead = "possum_dead"
	icon_resting = "possum_sleep"
	var/icon_harm = "possum_aaa"
	response_help  = "pets"
	response_disarm = "bops"
	response_harm   = "kicks"
	speak = list("Hsss...", "Hisss...")
	speak_emote = list("Hsss", "Hisss")
	emote_hear = list("Aaaaa!", "Ahhss!")
	emote_see = list("shakes its head.", "chases its tail.", "shivers.")
	tts_seed = "Clockwerk"
	faction = list("neutral")
	maxHealth = 30
	health = 30
	blood_volume = BLOOD_VOLUME_NORMAL
	melee_damage_type = STAMINA
	melee_damage_lower = 3
	melee_damage_upper = 8
	attacktext = "кусает"
	attack_sound = 'sound/weapons/bite.ogg'
	see_in_dark = 5
	speak_chance = 1
	turns_per_move = 10
	gold_core_spawnable = FRIENDLY_SPAWN
	footstep_type = FOOTSTEP_MOB_CLAW
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 2)
	holder_type = /obj/item/holder/possum

/mob/living/simple_animal/possum/attackby(obj/item/O, mob/living/user)
	icon_state = icon_harm
	. = ..()

/mob/living/simple_animal/possum/attack_hand(mob/living/carbon/human/M)
	switch(M.a_intent)
		if(INTENT_HELP)
			icon_state = initial(icon_state)
		if(INTENT_HARM, INTENT_DISARM, INTENT_GRAB)
			icon_state = icon_harm
	. = ..()

/mob/living/simple_animal/possum/Poppy
	name = "Ключик"
	desc = "Маленький работяга. Его жилетка подчеркивает его рабочие... лапы. Тот еще трудяга. Очень не любит ассистентов в инженерном отделе. И Полли. Интересно, почему?"
	icon_state = "possum_poppy"
	icon_living = "possum_poppy"
	icon_dead = "possum_poppy_dead"
	icon_resting = "possum_poppy_sleep"
	icon_harm = "possum_poppy_aaa"
	holder_type = /obj/item/holder/possum/poppy
	maxHealth = 50
	health = 50








/mob/living/simple_animal/pet/sloth
	tts_seed = "Peon"
	holder_type = /obj/item/holder/sloth



/mob/living/simple_animal/pet/sloth/paperwork
	name = "Paperwork"
	desc = "Cargo's pet sloth. About as useful as the rest of the techs."
	unique_pet = TRUE
	gold_core_spawnable = NO_SPAWN
	icon_state = "cool_sloth"
	icon_living = "cool_sloth"
	icon_dead = "cool_sloth_dead"




















































/mob/living/simple_animal/pet/slugcat
	name = "Слизнекот"
	desc = "Удивительное существо, напоминающая кота и слизня в одном обличии. Гордость ксенобиологии. Крайне ловкое и умное, родом с планеты с опасной средой обитания. Обожает копья, не стоит давать ему его в лапки. На нем отлично смотрятся шляпы."
	icon_state = "slugcat"
	icon_living = "slugcat"
	icon_dead = "slugcat_dead"
	icon_resting = "slugcat_rest"
	gender = MALE
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 8
	health = 100
	maxHealth = 100
	blood_volume = BLOOD_VOLUME_NORMAL
	melee_damage_type = STAMINA
	melee_damage_lower = 0
	melee_damage_upper = 0
	attacktext = "бьет"
	mob_size = MOB_SIZE_SMALL
	pass_flags = PASSTABLE
	ventcrawler = VENTCRAWLER_ALWAYS
	can_collar = 1
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 5)
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "kicks"
	gold_core_spawnable = FRIENDLY_SPAWN
	footstep_type = FOOTSTEP_MOB_SLIME
	tts_seed = "Narrator"
	faction = list("slime","neutral")
	//holder_type = /obj/item/holder/cat2

	//Шляпы для слизнекота!
	var/obj/item/inventory_head
	var/obj/item/inventory_hand

	var/hat_offset_y = -8
	var/hat_offset_y_rest = -19
	var/hat_icon_file = 'icons/mob/head.dmi'
	var/hat_icon_state
	var/hat_alpha
	var/hat_color

/mob/living/simple_animal/pet/slugcat/New()
	..()
	regenerate_icons()


/mob/living/simple_animal/pet/slugcat/attackby(obj/item/W, mob/user, params)
	if(stat != DEAD)
		if(istype(W, /obj/item/clothing/head) && user.a_intent == INTENT_HELP)
			place_on_head(user.get_active_hand(), user)
			return
		if(istype(W, /obj/item/twohanded/spear) && user.a_intent != INTENT_HARM)
			place_to_hand(user.get_active_hand(), user)
			return

	. = ..()

/mob/living/simple_animal/pet/slugcat/death(gibbed)
	drop_hat()
	drop_hand()
	. = ..()

/mob/living/simple_animal/pet/slugcat/Topic(href, href_list)
	if(..())
		return 1

	if(!(iscarbon(usr) || usr.incapacitated() || !Adjacent(usr)))
		usr << browse(null, "window=mob[UID()]")
		usr.unset_machine()
		return

	if (stat == DEAD)
		return 0

	if(href_list["remove_inv"])
		var/remove_from = href_list["remove_inv"]
		switch(remove_from)
			if("head")
				remove_from_head(usr)
			if("hand")
				remove_from_hand(usr)
		show_inv(usr)

	else if(href_list["add_inv"])
		var/add_to = href_list["add_inv"]
		switch(add_to)
			if("head")
				place_on_head(usr.get_active_hand(), usr)
			if("hand")
				place_to_hand(usr.get_active_hand(), usr)
		show_inv(usr)

	if(usr != src)
		return 1

/mob/living/simple_animal/pet/slugcat/regenerate_icons()
	overlays.Cut()
	..()

	if(inventory_hand)
		if(istype(inventory_hand, /obj/item/twohanded/spear))
			speared()

	if(inventory_head)
		var/image/head_icon

		if(!hat_icon_state)
			hat_icon_state = inventory_head.icon_state
		if(!hat_alpha)
			hat_alpha = inventory_head.alpha
		if(!hat_color)
			hat_color = inventory_head.color

		head_icon = get_hat_overlay()

		add_overlay(head_icon)

/mob/living/simple_animal/pet/slugcat/StartResting(updating = 1)
	if(inventory_head || inventory_hand)
		hat_offset_y = hat_offset_y_rest
		drop_hand()
		regenerate_icons()
	. = ..()

/mob/living/simple_animal/pet/slugcat/StopResting(updating = 1)
	if(inventory_head)
		hat_offset_y = initial(hat_offset_y)
		regenerate_icons()
	. = ..()

/mob/living/simple_animal/pet/slugcat/proc/speared()
	icon_state = "slugcat_spear"

	var/obj/item/twohanded/spear = inventory_hand

	attacktext = "бьет копьем"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	melee_damage_type = BRUTE
	melee_damage_lower = spear.force_unwielded
	melee_damage_upper = spear.force_wielded
	armour_penetration = spear.armour_penetration
	obj_damage = spear.force

/mob/living/simple_animal/pet/slugcat/proc/unspeared()
	icon_state = "slugcat"
	attacktext = initial(attacktext)
	attack_sound = initial(attack_sound)
	melee_damage_type = initial(melee_damage_type)
	melee_damage_lower = initial(melee_damage_lower)
	melee_damage_upper = initial(melee_damage_upper)
	armour_penetration = initial(armour_penetration)
	obj_damage = initial(obj_damage)

/mob/living/simple_animal/pet/slugcat/proc/get_hat_overlay()
	if(hat_icon_file && hat_icon_state)
		var/image/slugI = image(hat_icon_file, hat_icon_state)
		slugI.alpha = hat_alpha
		slugI.color = hat_color
		slugI.pixel_y = hat_offset_y
		//slugI.transform = matrix(1, 0, 1, 0, 1, 0)
		return slugI

/mob/living/simple_animal/pet/slugcat/show_inv(mob/user)
	if(user.incapacitated() || !Adjacent(user))
		return
	user.set_machine(src)

	var/dat = 	{"<meta charset="UTF-8"><div align='center'><b>Inventory of [name]</b></div><p>"}
	dat += "<br><B>Head:</B> <A href='?src=[UID()];[inventory_head ? "remove_inv=head'>[inventory_head]" : "add_inv=head'>Nothing"]</A>"
	dat += "<br><B>Hand:</B> <A href='?src=[UID()];[inventory_hand ? "remove_inv=hand'>[inventory_hand]" : "add_inv=hand'>Nothing"]</A>"

	var/datum/browser/popup = new(user, "mob[UID()]", "[src]", 440, 250)
	popup.set_content(dat)
	popup.open()

/mob/living/simple_animal/pet/slugcat/proc/place_on_head(obj/item/item_to_add, mob/user)
	if(!item_to_add)
		user.visible_message("<span class='notice'>[user] похлопывает по голове [src].</span>", "<span class='notice'>Вы положили руку на голову [src].</span>")
		if(flags_2 & HOLOGRAM_2)
			return 0
		return 0

	if(!istype(item_to_add, /obj/item/clothing/head))
		to_chat(user, "<span class='warning'>[item_to_add] нельзя надеть на голову [src]!</span>")
		return 0

	if(inventory_head)
		if(user)
			to_chat(user, "<span class='warning'>Нельзя надеть больше одного головного убора на голову [src]!</span>")
		return 0

	if(user && !user.unEquip(item_to_add))
		to_chat(user, "<span class='warning'>[item_to_add] застрял в ваших руках, вы не можете его надеть на голову [src]!</span>")
		return 0

	user.visible_message("<span class='notice'>[user] надевает [item_to_add] на голову [real_name].</span>",
		"<span class='notice'>Вы надеваете [item_to_add] на голову [real_name].</span>",
		"<span class='italics'>Вы слышите как что-то нацепили.</span>")
	item_to_add.forceMove(src)
	inventory_head = item_to_add
	regenerate_icons()

	return 1

/mob/living/simple_animal/pet/slugcat/proc/remove_from_head(mob/user)
	if(inventory_head)
		if(inventory_head.flags & NODROP)
			to_chat(user, "<span class='warning'>[inventory_head.name] застрял на голове [src]! Его невозможно снять!</span>")
			return TRUE

		to_chat(user, "<span class='warning'>Вы сняли [inventory_head.name] с головы [src].</span>")
		user.put_in_hands(inventory_head)

		null_hat()

		regenerate_icons()
	else
		to_chat(user, "<span class='warning'>На голове [src] нет головного убора!</span>")
		return FALSE

	return TRUE

/mob/living/simple_animal/pet/slugcat/proc/drop_hat()
	if(inventory_head)
		unEquip(inventory_head)
		null_hat()
		regenerate_icons()

/mob/living/simple_animal/pet/slugcat/proc/null_hat()
	inventory_head = null
	hat_icon_state = null
	hat_alpha = null
	hat_color = null

/mob/living/simple_animal/pet/slugcat/proc/place_to_hand(obj/item/item_to_add, mob/user)
	if(!item_to_add)
		user.visible_message("<span class='notice'>[user] пощупал лапки [src].</span>", "<span class='notice'>Вы пощупали лапки [src].</span>")
		if(flags_2 & HOLOGRAM_2)
			return 0
		return 0

	if(resting)
		to_chat(user, "<span class='warning'>[src] спит и не принимает [item_to_add]!</span>")
		return 0

	if(!istype(item_to_add, /obj/item/twohanded/spear))
		to_chat(user, "<span class='warning'>[src] не принимает [item_to_add]!</span>")
		return 0

	if(inventory_hand)
		if(user)
			to_chat(user, "<span class='warning'>Лапки [src] заняты [inventory_hand.name]!</span>")
		return 0

	if(user && !user.unEquip(item_to_add))
		to_chat(user, "<span class='warning'>[item_to_add] застрял в ваших руках, вы не можете его дать [src]!</span>")
		return 0

	user.visible_message("<span class='notice'>[real_name] выхватывает [item_to_add] с рук [user].</span>",
		"<span class='notice'>[real_name] выхватывает [item_to_add] с ваших рук.</span>",
		"<span class='italics'>Вы видите довольные глаза.</span>")
	move_item_to_hand(item_to_add)

	return 1

/mob/living/simple_animal/pet/slugcat/proc/move_item_to_hand(obj/item/item_to_add)
	item_to_add.forceMove(src)
	inventory_hand = item_to_add
	regenerate_icons()

/mob/living/simple_animal/pet/slugcat/proc/remove_from_hand(mob/user)
	if(inventory_hand)
		if(inventory_hand.flags & NODROP)
			to_chat(user, "<span class='warning'>[inventory_hand.name] застрял в лапах [src]! Его невозможно отнять!</span>")
			return TRUE

		to_chat(user, "<span class='warning'>Вы забрали [inventory_hand.name] с лап [src].</span>")
		user.put_in_hands(inventory_hand)

		null_hand()

		regenerate_icons()
	else
		to_chat(user, "<span class='warning'>В лапах [src] нечего отбирать!</span>")
		return FALSE

	return TRUE

/mob/living/simple_animal/pet/slugcat/proc/drop_hand()
	if(inventory_hand)
		unEquip(inventory_hand)
		null_hand()
		regenerate_icons()

/mob/living/simple_animal/pet/slugcat/proc/null_hand()
	unspeared()
	inventory_hand = null





































/mob/living/simple_animal/snail
	name = "space snail"
	desc = "Маленькая космо-улиточка со своим космо-домиком. Прочная, тихая и медленная."
	icon_state = "snail"
	icon_living = "snail"
	icon_dead = "snail-dead"
	tts_seed = "Ladyvashj"
	health = 100
	maxHealth = 100
	speed = 10
	attacktext = "толкает"
	death_sound = 'sound/creatures/crack_death1.ogg'
	response_help  = "pets"
	response_disarm = "shoos"
	response_harm   = "stomps on"
	ventcrawler = 2
	density = 0
	pass_flags = PASSTABLE | PASSMOB
	mob_size = MOB_SIZE_SMALL
	gender = NEUTER
	can_hide = 1
	butcher_results = list(/obj/item/reagent_containers/food/snacks/salmonmeat/snailmeat = 1, /obj/item/stack/ore/tranquillite = 1)
	can_collar = 1
	gold_core_spawnable = FRIENDLY_SPAWN
	stop_automated_movement_when_pulled = 0
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	faction = list("slime", "neutral")
	reagents = new()
	holder_type = /obj/item/holder/snail

/mob/living/simple_animal/snail/Process_Spacemove(var/movement_dir = 0)
	return 1

/mob/living/simple_animal/snail/Move(atom/newloc, direct, movetime)
	var/oldLoc = src.loc
	. = ..()
	if(.)
		make_lube(oldLoc)

/mob/living/simple_animal/snail/proc/make_lube(atom/oldLoc)
	if(oldLoc != src.loc)
		reagents.add_reagent("lube",10)
		reagents.reaction(oldLoc, REAGENT_TOUCH, 10)	//10 is the multiplier for the reaction effect. probably needed to wet the floor properly.
		reagents.remove_any(10)

/mob/living/simple_animal/turtle
	name = "yeeslow"
	desc = "Большая космочерепаха. Прочная, тихая и медленная. Но почему она склизкая?"
	icon = 'icons/mob/animal.dmi'
	icon_state = "yeeslow"
	icon_living = "yeeslow"
	icon_dead = "yeeslow-dead"
	icon_resting = "yeeslow_scared"
	tts_seed = "Ladyvashj"
	health = 500
	maxHealth = 500
	speed = 20
	attacktext = "толкает"
	death_sound = 'sound/creatures/crack_death1.ogg'
	response_help  = "pets"
	response_disarm = "shoos"
	response_harm   = "stomps on"
	ventcrawler = 0
	density = 1
	pass_flags = PASSTABLE | PASSGRILLE
	status_flags = CANPARALYSE | CANPUSH
	mob_size = MOB_SIZE_SMALL
	butcher_results = list(/obj/item/reagent_containers/food/snacks/salmonmeat/turtlemeat = 10, /obj/item/stack/ore/tranquillite = 5)
	footstep_type = FOOTSTEP_MOB_SLIME
	holder_type = /obj/item/holder/turtle




















/mob/living/simple_animal/hostile/retaliate/poison/snake

	attacktext = "кусает"
	attack_sound = 'sound/weapons/bite.ogg'
	death_sound = 'sound/creatures/snake_death.ogg'
	tts_seed = "Ladyvashj"
	holder_type = /obj/item/holder/snake




/mob/living/simple_animal/hostile/bear
	blood_volume = BLOOD_VOLUME_NORMAL
	attacktext = "терзает"
	death_sound = 'sound/creatures/bear_death.ogg'
	talk_sound = list('sound/creatures/bear_talk1.ogg', 'sound/creatures/bear_talk2.ogg', 'sound/creatures/bear_talk3.ogg')
	damaged_sound = list('sound/creatures/bear_onerawr1.ogg', 'sound/creatures/bear_onerawr2.ogg', 'sound/creatures/bear_onerawr3.ogg')
	var/trigger_sound = 'sound/creatures/bear_rawr.ogg'


/mob/living/simple_animal/hostile/bear/handle_automated_movement()
	if(..())
		playsound(src, src.trigger_sound, 40, 1)

// /mob/living/simple_animal/hostile/bear/Move()
// 			icon_state = "[icon_living]"
// 			icon_state = "[icon_living]floor"

/mob/living/simple_animal/hostile/bear/brown
	icon_state = "brownbear"
	icon_living = "brownbear"
	icon_dead = "brownbear_dead"
	icon_gib = "brownbear_gib"

/mob/living/simple_animal/hostile/feral_cat
	blood_volume = BLOOD_VOLUME_NORMAL
	attacktext = "рвёт"


/mob/living/simple_animal/hostile/poison/giant_spider
	tts_seed = "Anubarak"
	attacktext = "кусает"
	death_sound = 'sound/creatures/spider_death.ogg'
	talk_sound = list('sound/creatures/spider_talk1.ogg', 'sound/creatures/spider_talk2.ogg')
	damaged_sound = list('sound/creatures/spider_attack1.ogg', 'sound/creatures/spider_attack2.ogg')




/mob/living/simple_animal/hostile/headslug
	attacktext = "грызёт"
	holder_type = /obj/item/holder/headslug

















/mob/living/simple_animal/hostile/lizard
	name = "игуана"
	desc = "Грациозный предок космодраконов. Её взгляд не вызывает никаких враждебных подозрений... Но она по прежнему хочет съесть вас."
	icon_state = "iguana"
	icon_living = "iguana"
	icon_dead = "iguana_dead"
	speak = list("RAWR!","Rawr!","GRR!","Growl!")
	speak_emote = list("growls", "roars")
	emote_hear = list("rawrs","grumbles","grawls")
	emote_see = list("stares ferociously", "stomps")
	tts_seed = "Shaker"
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list(/obj/item/reagent_containers/food/snacks/monstermeat/lizardmeat = 3, /obj/item/stack/sheet/animalhide/lizard = 1)
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "hits"
	stop_automated_movement_when_pulled = 0
	speed = 2
	maxHealth = 40
	health = 40
	blood_volume = BLOOD_VOLUME_NORMAL
	obj_damage = 60
	melee_damage_lower = 20
	melee_damage_upper = 30
	attacktext = "терзает"
	attack_sound = 'sound/weapons/bite.ogg'
	death_sound = 'sound/creatures/lizard_death_big.ogg'
	talk_sound = list('sound/creatures/lizard_angry1.ogg', 'sound/creatures/lizard_angry2.ogg', 'sound/creatures/lizard_angry3.ogg')
	damaged_sound = list('sound/creatures/lizard_damaged.ogg')
	footstep_type = FOOTSTEP_MOB_CLAW

	minbodytemp = 250 //Weak to cold
	maxbodytemp = T0C + 200

	gold_core_spawnable = HOSTILE_SPAWN

/mob/living/simple_animal/hostile/lizard/gator
	name = "аллигатор"
	desc = "Величавый аллигатор, так и норовящийся оторвать от вас самый лакомый кусочек. Или кусок. Не путать с крокодилом!"
	icon_state = "gator"
	icon_living = "gator"
	icon_dead = "gator_dead"
	butcher_results = list(/obj/item/reagent_containers/food/snacks/monstermeat/lizardmeat = 7, /obj/item/stack/sheet/animalhide/lizard = 5)
	speed = 4
	maxHealth = 200
	health = 200
	obj_damage = 80
	melee_damage_lower = 30
	melee_damage_upper = 80

/mob/living/simple_animal/hostile/lizard/croco
	name = "крокодил"
	desc = "Не стоит сувать голову ему в пасть! Это негативно сказывается на умственных способностях"
	icon_state = "steppy"
	icon_living = "steppy"
	icon_dead = "steppy_dead"
	butcher_results = list(/obj/item/reagent_containers/food/snacks/monstermeat/lizardmeat = 5, /obj/item/stack/sheet/animalhide/lizard = 3)
	maxHealth = 100
	health = 100
	obj_damage = 80
	melee_damage_lower = 20
	melee_damage_upper = 50

/mob/living/simple_animal/hostile/lizard/croco/Gena
	name = "Гена"
	desc = "Крокодил обожающий музыкальные инструменты и плюшевые игрушки. Пожевать."
	faction = list("neutral")












/mob/living/simple_animal/hostile/retaliate/syndirat
	name = "Синди-мышь"
	desc = "Мышь на службе синдиката?"
	icon = 'icons/mob/syndirat.dmi'
	icon_state = "syndirat"
	icon_living = "syndirat"
	icon_dead = "syndirat_dead"
	icon_resting = "syndirat_sleep"
	response_help  = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm   = "stamps on the"
	health = 50
	maxHealth = 50
	speak_chance = 2
	turns_per_move = 5
	pull_force = 1000
	density = 0
	ventcrawler = 2
	can_hide = 1
	can_collar = 1
	pass_flags = PASSTABLE | PASSGRILLE | PASSMOB
	see_in_dark = 6
	speak = list("Слава Синдикату!","Смерть НаноТрейзен!", "У вас есть сыр?")
	speak_emote = list("squeeks","squeaks","squiks")
	emote_hear = list("squeeks","squeaks","squiks")
	emote_see = list("runs in a circle", "shakes", "scritches at something")
	mob_size = MOB_SIZE_TINY // If theyre not at least small it doesnt seem like the treadmill works or makes sound
	pass_flags = PASSTABLE
	stop_automated_movement = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	ranged =  1
	projectiletype = /obj/item/projectile/beam/disabler

	attack_sound = 'sound/weapons/punch1.ogg'
	talk_sound = list('sound/creatures/rat_talk.ogg')
	damaged_sound = list('sound/creatures/rat_wound.ogg')
	death_sound = 'sound/creatures/rat_death.ogg'

	harm_intent_damage = 5
	melee_damage_lower = 5
	melee_damage_upper = 5
	var/chew_probability = 1
	var/squeak_sound = 'sound/creatures/mousesqueak.ogg'
	var/squeak_sound = 'sound/creatures/mouse_squeak.ogg'

/mob/living/simple_animal/hostile/retaliate/syndirat/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/squeak, list('sound/creatures/mousesqueak.ogg' = 1), 100, extrarange = SHORT_RANGE_SOUND_EXTRARANGE) //as quiet as a mouse or whatever
	AddComponent(/datum/component/squeak, list('sound/creatures/mouse_squeak.ogg' = 1), 100, extrarange = SHORT_RANGE_SOUND_EXTRARANGE) //as quiet as a mouse or whatever

/mob/living/simple_animal/hostile/retaliate/syndirat/handle_automated_action()
	if(prob(chew_probability) && isturf(loc))
		var/turf/simulated/floor/F = get_turf(src)
		if(istype(F) && !F.intact)
			var/obj/structure/cable/C = locate() in F
			if(C && prob(15))
				if(C.avail())
					visible_message("<span class='warning'>[src] chews through [C]. It's toast!</span>")
					playsound(src, 'sound/effects/sparks2.ogg', 100, 1)
					toast() // mmmm toasty.
				else
					visible_message("<span class='warning'>[src] chews through [C].</span>")
				investigate_log("was chewed through by a mouse at [COORD(F)]", INVESTIGATE_WIRES)
				C.deconstruct()
/mob/living/simple_animal/hostile/retaliate/syndirat/proc/toast()
	add_atom_colour("#3A3A3A", FIXED_COLOUR_PRIORITY)
	desc = "It's toast."
	death()
/mob/living/simple_animal/hostile/retaliate/syndirat/handle_automated_speech()
	..()
	if(prob(speak_chance) && !incapacitated())
		playsound(src, squeak_sound, 100, 1)
/mob/living/simple_animal/hostile/retaliate/syndirat/handle_automated_movement()
	. = ..()
	if(resting)
		if(prob(1))
			StopResting()
		else if(prob(5))
			custom_emote(2, "snuffles")
	else if(prob(0.5))
		StartResting()
/mob/living/simple_animal/hostile/retaliate/syndirat/Crossed(AM as mob|obj, oldloc)
	if(ishuman(AM))
		if(!stat)
			var/mob/M = AM
			to_chat(M, "<span class='notice'>[bicon(src)] Squeek!</span>")
	..()
/mob/living/simple_animal/hostile/retaliate/syndirat/emote(act, m_type = 1, message = null, force)
	if(stat != CONSCIOUS)
		return
	var/on_CD = 0
	act = lowertext(act)
	switch(act)
		if("squeak")		//Mouse time
			on_CD = handle_emote_CD()
		else
			on_CD = 0
	if(!force && on_CD == 1)
		return
	switch(act)
		if("squeak")
			message = "[pick(emote_hear)]!"
			m_type = 2 //audible
			playsound(src, squeak_sound, 40, 1)
		if("help")
			to_chat(src, "scream, squeak")
	..()








/mob/living/simple_animal/hostile/retaliate/clown/goblin
	holder_type = /obj/item/holder/clowngoblin






/mob/living/simple_animal/hostile/poison/terror_spider
	tts_seed = "Anubarak"
	attacktext = "кусает"
	death_sound = 'sound/creatures/terrorspiders/death.ogg'
	damaged_sound = list('sound/creatures/spider_attack1.ogg', 'sound/creatures/spider_attack2.ogg')
	talk_sound = list('sound/creatures/spider_talk1.ogg', 'sound/creatures/spider_talk2.ogg')





/mob/living/simple_animal/parrot
	holder_type = /obj/item/holder/parrot




//code/modules/station_goals/bluespace_tap.dm
		// /obj/item/dnainjector/morph = 5,
		// /obj/item/dnainjector/regenerate = 5,
		// /mob/living/simple_animal/pet/dog/corgi/ = 5,

		// /mob/living/simple_animal/pet/dog/brittany = 2,
		// /mob/living/simple_animal/pet/dog/german = 2,
		// /mob/living/simple_animal/pet/dog/tamaskan = 2,
		// /mob/living/simple_animal/pet/dog/bullterrier = 2,

		// /mob/living/simple_animal/pet/cat = 5,

		// /mob/living/simple_animal/pet/cat/cak = 2,
		// /mob/living/simple_animal/pet/cat/white = 2,
		// /mob/living/simple_animal/pet/cat/birman = 2,
		// /mob/living/simple_animal/pet/cat/spacecat = 2,

		// /mob/living/simple_animal/pet/dog/fox/ = 5,

		// /mob/living/simple_animal/pet/dog/fox/forest = 2,
		// /mob/living/simple_animal/pet/dog/fox/fennec = 2,
		// /mob/living/simple_animal/possum = 2,

		// /mob/living/simple_animal/pet/penguin = 5,
		// /mob/living/simple_animal/pig = 5,
		// /obj/item/slimepotion/sentience = 5,



