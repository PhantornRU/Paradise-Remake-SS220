/obj/item/clothing/shoes/magboots/vox
	name = "vox magclaws"
	desc = "Тяжелые бронированные налапочники для когтистых лап причудливой формы."
	item_state = "boots-vox"
	icon_state = "boots-vox"
	icon = 'modular_ss220/antagonists/icons/clothing/obj_shoes.dmi'
	species_restricted = list("Vox")
	sprite_sheets = list(
		"Vox" = 'modular_ss220/antagonists/icons/clothing/mob/vox/feet.dmi')
	w_class = WEIGHT_CLASS_NORMAL
	armor = list(MELEE = 15, BULLET = 15, LASER = 15, ENERGY = 15, BOMB = 50, RAD = 0, FIRE = 115, ACID = 50)
	strip_delay = 7 SECONDS
	resistance_flags = NONE

/obj/item/clothing/shoes/magboots/vox/combat
	name = "vox combat magclaws"
	desc = "Боевые бронированные налапочники для когтистых лап причудливой формы с улучшенным сцеплением с поверхностью."
	item_state = "boots-vox-combat"
	icon_state = "boots-vox-combat"
	permeability_coefficient = 0.01
	armor = list(MELEE = 50, BULLET = 30, LASER = 30, ENERGY = 30, BOMB = 80, RAD = 50, FIRE = 450, ACID = 50)
	strip_delay = 10 SECONDS
	slowdown_active = SHOES_SLOWDOWN+0.5

/obj/item/clothing/shoes/magboots/vox/scout
	name = "vox scout magclaws"
	desc = "Легкие налапочники для когтистых лап причудливой формы с продвинутым сцеплением с поверхностью для ускорение передвижения."
	item_state = "boots-vox-combat"
	icon_state = "boots-vox-combat"
	slowdown_active = -2
