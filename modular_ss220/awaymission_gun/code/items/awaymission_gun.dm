/obj/item/gun/energy/laser/awaymission_aeg
	name = "Wireless Energy Gun"
	desc = "An energy gun that recharges wirelessly during away missions. Does not work outside the gate."
	icon = 'modular_ss220/awaymission_gun/icons/items/energy.dmi'
	lefthand_file = 'modular_ss220/awaymission_gun/icons/inhands/lefthand.dmi'
	righthand_file = 'modular_ss220/awaymission_gun/icons/inhands/righthand.dmi'
	icon_state = "laser_gate"
	item_state = "nucgun"
	force = 10
	origin_tech = "combat=5;magnets=3;powerstorage=4"
	selfcharge = TRUE // Selfcharge is enabled and disabled, and used as the away mission tracker
	can_charge = 0
	emagged = FALSE

/obj/item/gun/energy/laser/awaymission_aeg/Initialize(mapload)
	. = ..()
	// Force update it incase it spawns outside an away mission and shouldnt be charged
	onTransitZ(new_z = loc.z)

/obj/item/gun/energy/laser/awaymission_aeg/onTransitZ(old_z, new_z)
	if(emagged)
		return

	if(is_away_level(new_z))
		if(ismob(loc))
			to_chat(loc, "<span class='notice'>Ваш [src.name] активируется, начиная потреблять энергию от ближайшего беспроводного источника питания.</span>")
		selfcharge = TRUE
	else
		if(selfcharge)
			if(ismob(loc))
				to_chat(loc, "<span class='danger'>Ваш [src.name] деактивируется, так как он находится вне зоны действия источника питания.</span>")
			cell.charge = 0
			selfcharge = FALSE
			update_icon()

/obj/item/gun/energy/laser/awaymission_aeg/emag_act(mob/user)
	. = ..()
	if (emagged)
		return

	if(user)
		user.visible_message("<span class='warning'>От [src.name] летят искры!</span>", "<span class='notice'>Вы взломали [src.name], что привело к перезаписи протоколов безопасности. Устройство может быть использовано вне ограничений.</span>")
	playsound(src.loc, 'sound/effects/sparks4.ogg', 30, 1)
	do_sparks(5, 1, src)

	emagged = TRUE
	selfcharge = TRUE

/obj/item/gun/energy/laser/awaymission_aeg/emp_act(severity)
	. = ..()
	emag_act()

// GUNS
/obj/item/gun/energy/laser/awaymission_aeg/rnd
	name = "Exploreverse Mk I"
	desc = "Первый прототип оружия с миниатюрным реактором для исследований в крайне отдаленных секторах. \
	\nДанную модель невозможно подключить к зарядной станции, во избежание истощения подключенных источников питания, \
	в связи с протоколами безопасности, опустошающие заряд при нахождении вне предназначенных мест использования устройств."
	origin_tech = "combat=3;magnets=3;powerstorage=4"
	force = 10

/obj/item/gun/energy/laser/awaymission_aeg/rnd/mk2
	name = "Exploreverse Mk II"
	desc = "Второй прототип оружия с миниатюрным реактором и ручным восполнением для исследований в крайне отдаленных секторах. \
	\nДанная модель оснащена системой ручного восполнения энергии типа \"Za.E.-8 A.L'sya\", \
	позволяющий в короткие сроки восполнить необходимую электроэнергию с помощью ручного труда, личной энергии и дергания за рычаг подключенного к системе зарядки. \
	\nСистему автозарядки невозможно использовать, в связи с протоколами безопасности, \
	опустошающие заряд при нахождении вне предназначенных мест использования устройств. \
	\nТеперь еще более нелепый дизайн с торчащими проводами!"
	icon_state = "laser_gate_mk2"
	origin_tech = "combat=5;magnets=3;powerstorage=5;programming=3;engineering=5"
	force = 10

/obj/item/gun/energy/laser/awaymission_aeg/rnd/mk2/attack_self(mob/living/user)
	. = ..()
	if(!emagged)
		user.visible_message("<span class='warning'>[user.name] усердно давит на рычаг зарядки [src.name], но он не поддается!</span>", "<span class='notice'>Вы пытаетесь надавить на рычаг зарядки [src.name], но он заблокирован.</span>")
		return

	playsound(src.loc, 'sound/effects/sparks4.ogg', 10, 1)
	do_sparks(3, 1, src)

	cell.give(25)
	user.adjust_nutrition(-2)
