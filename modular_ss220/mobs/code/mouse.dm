// /mob/proc/become_mouse()
	// вместо этого:
	// var/mob/living/simple_animal/mouse/host = new(vent_found.loc)
	// это:
	// var/choosen_type = prob(90) ? /mob/living/simple_animal/mouse : /mob/living/simple_animal/mouse/rat
	// var/mob/living/simple_animal/mouse/host = new choosen_type(vent_found.loc)




// /mob/proc/safe_respawn(var/MP)

// 	if(ispath(MP, /mob/living/simple_animal/cock))
// 		return 1
// 	if(ispath(MP, /mob/living/simple_animal/goose))
// 		return 1
// 	if(ispath(MP, /mob/living/simple_animal/turkey))
// 		return 1
// 	if(ispath(MP, /mob/living/simple_animal/mouse/hamster))
// 		return 1
// 	if(ispath(MP, /mob/living/simple_animal/mouse/rat))
// 		return 1

// 	if(ispath(MP, /mob/living/simple_animal/possum))
// 		return 1
// 	if(ispath(MP, /mob/living/simple_animal/pet/slugcat))
// 		return 1
// 	if(ispath(MP, /mob/living/simple_animal/frog))
// 		return 1



/obj/effect/decal/remains/mouse
	name = "remains"
	desc = "Некогда бывшая мышь. Её останки. Больше не будет пищать..."
	icon = 'icons/mob/animal.dmi'
	icon_state = "mouse_skeleton"
	anchored = FALSE
	move_resist = MOVE_FORCE_EXTREMELY_WEAK

/obj/effect/decal/remains/mouse/water_act(volume, temperature, source, method)
	. = ..()








/mob/living/simple_animal/mouse/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/squeak, list("[squeak_sound]" = 1), 100, extrarange = SHORT_RANGE_SOUND_EXTRARANGE) //as quiet as a mouse or whatever

/mob/living/simple_animal/mouse
	tts_seed = "Gyro"
	var/squeak_sound = 'sound/creatures/mouse_squeak.ogg'
	talk_sound = list('sound/creatures/rat_talk.ogg')
	damaged_sound = list('sound/creatures/rat_wound.ogg')
	death_sound = 'sound/creatures/rat_death.ogg'
	blood_volume = BLOOD_VOLUME_SURVIVE
	//var/non_standard = FALSE //for no "mouse_" with mouse_color

/mob/living/simple_animal/mouse/New()
	..()
	pixel_x = rand(-6, 6)
	pixel_y = rand(0, 10)

	color_pick()

/mob/living/simple_animal/mouse/proc/color_pick()
	if(!mouse_color)
		mouse_color = pick( list("brown","gray","white") )
	icon_state = "mouse_[mouse_color]"
	icon_living = "mouse_[mouse_color]"
	icon_dead = "mouse_[mouse_color]_dead"
	icon_resting = "mouse_[mouse_color]_sleep"
	update_appearance(UPDATE_DESC)





/mob/living/simple_animal/mouse/splat(var/obj/item/item = null, var/mob/living/user = null)

	//icon_dead = "mouse_[mouse_color]_splat"
	//icon_state = "mouse_[mouse_color]_splat"

	if(non_standard)
		var/temp_state = initial(icon_state)
		icon_dead = "[temp_state]_splat"
		icon_state = "[temp_state]_splat"
	else
		icon_dead = "mouse_[mouse_color]_splat"
		icon_state = "mouse_[mouse_color]_splat"

	if(prob(50))
		var/turf/location = get_turf(src)
		add_splatter_floor(location)
		if(item)
			item.add_mob_blood(src)
		if(user)
			user.add_mob_blood(src)


/mob/living/simple_animal/mouse/death(gibbed)
	if(gibbed)
		make_remains()

	// Only execute the below if we successfully died
	playsound(src, squeak_sound, 40, 1)
	. = ..(gibbed)
	if(!.)
		return FALSE
	layer = MOB_LAYER
	if(client)
		client.time_died_as_mouse = world.time



/mob/living/simple_animal/mouse/proc/make_remains()
	var/obj/effect/decal/remains = new /obj/effect/decal/remains/mouse(src.loc)
	remains.pixel_x = pixel_x
	remains.pixel_y = pixel_y


// /mob/living/simple_animal/mouse/emote(act, m_type = 1, message = null, force)

// 		if("help")
// 			to_chat(src, "scream, squeak")
// 			playsound(src, damaged_sound, 40, 1)

/mob/living/simple_animal/mouse/white
	tts_seed = "Meepo"

/mob/living/simple_animal/mouse/brown
	tts_seed = "Clockwerk"

/mob/living/simple_animal/mouse/brown/Tom
	tts_seed = "Arthas"
	maxHealth = 10
	health = 10





/mob/living/simple_animal/mouse/fluff/clockwork
	name = "Chip"
	real_name = "Chip"
	mouse_color = "clockwork"
	icon_state = "mouse_clockwork"
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "stamps on"
	gold_core_spawnable = NO_SPAWN
	can_collar = 0
	butcher_results = list(/obj/item/stack/sheet/metal = 1)
	maxHealth = 20
	health = 20








/mob/living/simple_animal/mouse/rat
	name = "rat"
	real_name = "rat"
	desc = "Крыса. Рожа у неё хитрая и знакомая..."
	squeak_sound = 'sound/creatures/rat_squeak.ogg'
	icon_state 		= "rat_gray"
	icon_living 	= "rat_gray"
	icon_dead 		= "rat_gray_dead"
	icon_resting 	= "rat_gray_sleep"
	non_standard = TRUE
	mouse_color = null
	maxHealth = 15
	health = 15

/mob/living/simple_animal/mouse/rat/color_pick()
	if(!mouse_color)
		mouse_color = pick(list("gray","white","irish"))
		icon_state 		= "rat_[mouse_color]"
		icon_living 	= "rat_[mouse_color]"
		icon_dead 		= "rat_[mouse_color]_dead"
		icon_resting 	= "rat_[mouse_color]_sleep"

/mob/living/simple_animal/mouse/rat/pull_constraint(atom/movable/AM, show_message = FALSE)
	return TRUE

/mob/living/simple_animal/mouse/rat/gray
	name = "gray rat"
	real_name = "gray rat"
	desc = "Серая крыса. Не яркий представитель своего вида."
	mouse_color = "gray"

/mob/living/simple_animal/mouse/rat/white
	name = "white rat"
	real_name = "white rat"
	desc = "Типичный представитель лабораторных крыс."
	icon_state 		= "rat_white"
	icon_living 	= "rat_white"
	icon_dead 		= "rat_white_dead"
	icon_resting 	= "rat_white_sleep"
	mouse_color = "white"

/mob/living/simple_animal/mouse/rat/irish
	name = "irish rat"		//Да, я знаю что это вид. Это каламбурчик.
	real_name = "irish rat"
	desc = "Ирландская крыса. На космической станции?! На этот раз им точно некуда бежать!"
	icon_state 		= "rat_irish"
	icon_living 	= "rat_irish"
	icon_dead 		= "rat_irish_dead"
	icon_resting 	= "rat_irish_sleep"
	mouse_color = "irish"

#define MAX_HAMSTER 50
GLOBAL_VAR_INIT(hamster_count, 0)

/mob/living/simple_animal/mouse/hamster
	name = "хомяк"
	real_name = "хомяк"
	desc = "С надутыми щечками."
	icon_state = "hamster"
	icon_living = "hamster"
	icon_dead = "hamster_dead"
	icon_resting = "hamster_rest"
	gender = MALE
	non_standard = TRUE
	speak_chance = 0
	childtype = list(/mob/living/simple_animal/mouse/hamster/baby)
	animal_species = /mob/living/simple_animal/mouse/hamster
	holder_type = /obj/item/holder/hamster
	gold_core_spawnable = FRIENDLY_SPAWN
	tts_seed = "Gyro"
	maxHealth = 10
	health = 10

/mob/living/simple_animal/mouse/hamster/color_pick()
	return

/mob/living/simple_animal/mouse/hamster/New()
	gender = prob(80) ? MALE : FEMALE
	desc += MALE ? " Самец!" : " Самочка! Ох... Нет... "
	GLOB.hamster_count++
	. = ..()

/mob/living/simple_animal/mouse/hamster/Destroy()
	GLOB.hamster_count--
	. = ..()

/mob/living/simple_animal/mouse/hamster/death(gibbed)
	if(!gibbed)
		GLOB.hamster_count--
	. = ..()

/mob/living/simple_animal/mouse/hamster/pull_constraint(atom/movable/AM, show_message = FALSE)
	return TRUE

/mob/living/simple_animal/mouse/hamster/Life(seconds, times_fired)
	..()
	if(GLOB.hamster_count < MAX_HAMSTER)
		make_babies()

/mob/living/simple_animal/mouse/hamster/baby
	name = "хомячок"
	real_name = "хомячок"
	desc = "Очень миленький! Какие у него пушистые щечки!"
	tts_seed = "Meepo"
	turns_per_move = 2
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat = 1)
	response_help  = "полапал"
	response_disarm = "аккуратно отодвинул"
	response_harm   = "наступил на"
	attacktext = "толкается"
	transform = matrix(0.7, 0, 0, 0, 0.7, 0)
	health = 3
	maxHealth = 3
	var/amount_grown = 0
	can_hide = 1
	can_collar = 0
	holder_type = /obj/item/holder/hamster

/mob/living/simple_animal/mouse/hamster/baby/start_pulling(atom/movable/AM, state, force = pull_force, show_message = FALSE)
	if(show_message)
		to_chat(src, "<span class='warning'>Вы слишком малы чтобы что-то тащить.</span>")
	return

/mob/living/simple_animal/mouse/hamster/baby/Life(seconds, times_fired)
	. =..()
	if(.)
		amount_grown++
		if(amount_grown >= 100)
			var/mob/living/simple_animal/A = new /mob/living/simple_animal/mouse/hamster(loc)
			if(mind)
				mind.transfer_to(A)
			qdel(src)

/mob/living/simple_animal/mouse/hamster/baby/Crossed(AM as mob|obj, oldloc)
	if(ishuman(AM))
		if(!stat)
			var/mob/M = AM
			to_chat(M, "<span class='notice'>[bicon(src)] раздавлен!</span>")
			death()
			splat(user = AM)
	..()
