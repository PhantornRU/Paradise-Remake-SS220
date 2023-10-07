/obj/item/clothing/under/rank/medical/intern
	icon = 'modular_ss220/jobs/icons/clothing/uniforms.dmi'
	icon_override = 'modular_ss220/jobs/icons/clothing/mob/uniform.dmi'
	//lefthand_file = 'icons/mob/inhands/clothing_lefthand.dmi'
	//righthand_file = 'icons/mob/inhands/clothing_righthand.dmi'
	sprite_sheets = null //если не сработает icon_override, то использовать: (и снизу тоже у зеленки)
	// sprite_sheets = list(
	// 	"Human" = 'modular_ss220/jobs/icons/clothing/mob/uniform.dmi',
	// 	)

	name = "intern jumpsuit"
	icon_state = "intern_s"
	item_color = "intern"

/obj/item/clothing/under/rank/medical/intern/skirt
	name = "intern jumpskirt"
	icon_state = "internf_s"
	item_color = "internf"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/medical/intern/assistant
	name = "medical assistant jumpsuit"
	icon_state = "med_ass_s"
	item_color = "med_ass"

/obj/item/clothing/under/rank/medical/intern/assistant/skirt
	name = "medical assistant jumpskirt"
	icon_state = "med_ass_f_s"
	item_color = "med_ass_f"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/medical/scrubs/green/light
	name = "light green medical scrubs"
	desc = "It's made of a special fiber that provides minor protection against biohazards. This one is in light green."
	icon = 'modular_ss220/jobs/icons/clothing/uniforms.dmi'
	icon_override = 'modular_ss220/jobs/icons/clothing/mob/uniform.dmi'
	icon_state = "scrubsgreen"
	item_color = "scrubsgreen"

/obj/item/clothing/head/surgery/green/light
	name = "light green surgical cap"
	desc = "A cap surgeons wear during operations. Keeps their hair from tickling your internal organs. This one is light green."
	icon = 'modular_ss220/jobs/icons/clothing/hats.dmi'
	icon_override = 'modular_ss220/jobs/icons/clothing/mob/head.dmi'
	icon_state = "surgcap_green"
	item_color = "surgcap_green"
