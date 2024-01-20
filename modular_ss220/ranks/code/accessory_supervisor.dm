// =================================
// Звания наблюдателей за станцией
// =================================
// BlueShield
/obj/item/clothing/accessory/rank/blueshield
	icon_state = "holobadge_rank_officer"
	item_state = "gold_id"
	item_color = "holobadge_rank_officer"
	exp_types = list(EXP_TYPE_SECURITY, EXP_TYPE_COMMAND)
	rank_exp_order_dict = list(
		// Блющилд имеет сумму опытов, от того и начинает с нуля.
		"Рядовой" = 0,
		"Рядовой I кл." = 5,
		"Ефрейтор" = 15,
		"Мл.Сержант" = 30,
		"Сержант" = 50,
		"Ст.Сержант" = 100,
		"Старшина" = 150,
		"Прапорщик" = 200,
		"Ст.Прапорщик" = 300,
		"Мл.Лейтенант" = 400,
		"Лейтенант" = 500,
		"Ст.Лейтенант" = 600,
		"Капитан" = 700,
		"Майор" = 900,

		// Блющилд дослужился до 1000? Шо ж... А теперь пускай попробует это!
		"Гвардии Рядовой" = 1000,
		"Гвардии Ефрейтор" = 1250,
		"Гвардии Сержант" = 1500,
		"Гвардии Старшина" = 1750,
		"Гвардии Прапорщик" = 2000,
		"Гвардии Лейтенант" = 2250,
		"Гвардии Капитан" = 2500,
		"Гвардии Майор" = 3000,
	)
