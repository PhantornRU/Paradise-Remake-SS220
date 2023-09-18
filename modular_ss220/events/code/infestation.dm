#define VERM_MICE 		0
#define VERM_LIZARDS 	1
#define VERM_SPIDERS 	2
#define VERM_RATS 	 	3
#define VERM_SNAIL 	 	4
#define VERM_FROG 	 	5

/datum/event/infestation
	announceWhen = 10
	endWhen = 11
	var/location
	var/locstring
	var/vermin
	var/vermstring

/datum/event/infestation/start()
	location = rand(0,9)
	var/list/turf/simulated/floor/turfs = list()
	var/spawn_area_type
	switch(location)
		if(LOC_KITCHEN)
			spawn_area_type = /area/crew_quarters/kitchen
			locstring = "кухне"
		if(LOC_ATMOS)
			spawn_area_type = /area/atmos
			locstring = "атмосферике"
		if(LOC_INCIN)
			spawn_area_type = /area/maintenance/incinerator
			locstring = "мусоросжигателе"
		if(LOC_CHAPEL)
			spawn_area_type = /area/chapel/main
			locstring = "церкви"
		if(LOC_LIBRARY)
			spawn_area_type = /area/library
			locstring = "библиотеке"
		if(LOC_HYDRO)
			spawn_area_type = /area/hydroponics
			locstring = "гидропонике"
		if(LOC_VAULT)
			spawn_area_type = /area/security/nuke_storage
			locstring = "хранилище"
		if(LOC_CONSTR)
			spawn_area_type = /area/construction
			locstring = "стройплощадке"
		if(LOC_TECH)
			spawn_area_type = /area/storage/tech
			locstring = "техническом хранилище"
		if(LOC_ARMORY)
			spawn_area_type = /area/security/securearmoury
			locstring = "оружейной"

	for(var/areapath in typesof(spawn_area_type))
		var/area/A = locate(areapath)
		for(var/turf/simulated/floor/F in A.contents)
			if(turf_clear(F))
				turfs += F

	var/list/spawn_types = list()
	var/max_number
	vermin = rand(0,5)
	switch(vermin)
		if(VERM_MICE)
			spawn_types = list(/mob/living/simple_animal/mouse/gray, /mob/living/simple_animal/mouse/brown, /mob/living/simple_animal/mouse/white)
			max_number = 12
			vermstring = "мышей"
		if(VERM_LIZARDS)
			max_number = 6
			if(prob(70))
				spawn_types = list(/mob/living/simple_animal/lizard)
				vermstring = "ящериц"
			else
				spawn_types = list(/mob/living/simple_animal/lizard/axolotl)
				vermstring = "аксолотлей"
		if(VERM_SPIDERS)
			spawn_types = list(/obj/structure/spider/spiderling)
			max_number = 3
			vermstring = "пауков"
		if(VERM_RATS)
			max_number = 8
			if(prob(70))
				spawn_types = list(/mob/living/simple_animal/mouse/rat)
				vermstring = "крыс"
			else
				if(prob(50))
					spawn_types = list(/mob/living/simple_animal/mouse/rat/white)
					vermstring = "лабораторных крыс"
				else
					spawn_types = list(/mob/living/simple_animal/mouse/rat/irish)
					vermstring = "ирландских крыс"
		if(VERM_SNAIL)
			spawn_types = list(/mob/living/simple_animal/snail)
			max_number = 6
			vermstring = "улиток"
		if(VERM_FROG)
			max_number = 6
			if(prob(85))
				spawn_types = list(/mob/living/simple_animal/frog)
				vermstring = "лягушек"
			else
				spawn_types = list(/mob/living/simple_animal/frog/toxic)
				vermstring = "токсичных лягушек"

	var/amount_to_spawn = rand(2, max_number)
	while(length(turfs) && amount_to_spawn > 0)
		var/turf/simulated/floor/T = pick_n_take(turfs)
		amount_to_spawn--

		if(vermin == VERM_SPIDERS)
			var/obj/structure/spider/spiderling/S = new(T)
			S.amount_grown = -1
		else
			var/spawn_type = pick(spawn_types)
			new spawn_type(T)


/datum/event/infestation/announce()
	GLOB.event_announcement.Announce("Биосканеры фиксируют размножение [vermstring] в [locstring]. Избавьтесь от них, прежде чем это начнет влиять на продуктивность станции.", "ВНИМАНИЕ: НЕОПОЗНАННЫЕ ФОРМЫ ЖИЗНИ")

#undef VERM_MICE
#undef VERM_LIZARDS
#undef VERM_SPIDERS
#undef VERM_RATS
#undef VERM_SNAIL
#undef VERM_FROG
