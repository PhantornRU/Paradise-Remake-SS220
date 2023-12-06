/datum/job/donor/vip_guest
	title = "VIP Corporate Guest"
	ru_title = "VIP Гость"
	alt_titles = list("VIP Персона", "VIP Гость NT", "VIP Персона NT", "Гость Корпорации NT")
	relate_job = "Vip"
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_LIBRARY, ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_EVA)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_LIBRARY, ACCESS_HEADS, ACCESS_RC_ANNOUNCE, ACCESS_EVA)
	hidden_from_job_prefs = TRUE
	outfit = /datum/outfit/job/donor/vip_guest
	important_information = "Ваша должность нацелена на свободный РП-отыгрыш и не разрешает нарушать правила сервера. \
	\nВы ВИП ПЕРСОНА. Данная роль нацелена на ваше пребывания на станции в качестве особого гостя. К вам особое отношение, \
	вы являетесь одним из любимцев корпорации НаноТрейзен. Чем вы занимаетесь? А какая разница. Вы очень важная персона."

/datum/outfit/job/donor/vip_guest
	name = "VIP Гость"
	jobtype = /datum/job/donor/vip_guest

	uniform = /obj/item/clothing/under/suit/really_black
	glasses = /obj/item/clothing/glasses/monocle
	gloves = /obj/item/clothing/gloves/color/black
	shoes = /obj/item/clothing/shoes/centcom
	head = /obj/item/clothing/head/that
	l_hand = /obj/item/cane
	l_pocket = /obj/item/melee/classic_baton/telescopic
	box = /obj/item/storage/box/engineer
	id = /obj/item/card/id/vip_guest
	backpack_contents = list(
		/obj/item/stack/spacecash/c10000 = 1,
		/obj/item/implanter/death_alarm = 1,
		/obj/item/lighter/zippo/engraved = 1,
	)

	implants = list(/obj/item/implant/mindshield,
		/obj/item/implant/death_alarm
	)


/datum/job/donor/banker
	title = "Banker"
	ru_title = "Банкир"
	alt_titles = list("Корпорат", "Бизнесмен", "Банкир NT", "Корпорат NT", "Бизнесмен NT")
	relate_job = "Vip"
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_LIBRARY, ACCESS_EVA)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_LIBRARY, ACCESS_EVA)
	hidden_from_job_prefs = TRUE
	outfit = /datum/outfit/job/donor/banker
	important_information = "Ваша должность нацелена на свободный РП-отыгрыш и не разрешает нарушать правила сервера. \
	\nВы БАНКИР. Вы крайне богаты и нацелены открыть здесь свое дело. Банк, мастерские, возможно нанять собственных работников. \
	Корпорация НаноТрейзен не против, ведь вы приносите для неё деньги. Так за работу!"

/datum/outfit/job/donor/banker
	name = "Банкир"
	jobtype = /datum/job/donor/banker

	uniform = /obj/item/clothing/under/suit/really_black
	suit = /obj/item/clothing/suit/victcoat
	glasses = /obj/item/clothing/glasses/monocle
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/centcom
	head = /obj/item/clothing/head/fedora
	l_hand = /obj/item/cane
	l_pocket = /obj/item/melee/classic_baton/telescopic
	back = /obj/item/storage/backpack/satchel
	l_ear = /obj/item/radio/headset/headset_service
	box = /obj/item/storage/box/engineer
	id = /obj/item/card/id/banker
	backpack_contents = list(
		//15k
		/obj/item/stack/spacecash/c10000 = 1,
		/obj/item/stack/spacecash/c1000 = 5,

		/obj/item/implanter/death_alarm = 1,
		/obj/item/lighter/zippo/engraved = 1,
		/obj/item/clothing/under/rank/procedure/lawyer/black = 1,
	)

	implants = list(/obj/item/implant/mindshield,
		/obj/item/implant/death_alarm
	)


/datum/job/donor/seclown
	title = "Security Clown"
	//ru_title = "Клоун Службы Безопасности" // чтобы скрываться среди СБ-ух при поиске
	alt_titles = list("Clown Warden", "Clown Detective", "Honkective", "Honkden", "Clown Cadet", "Клоун Службы Безопасности", "Клоун-Детектив", "Клоун-Смотритель", "Хонкектив", "Клоун Кадет")
	relate_job = "Security Officer"
	supervisors = "the head of security"
	department_head = list("Head of Security")
	job_department_flags = DEP_FLAG_SECURITY
	access = list(ACCESS_CLOWN, ACCESS_THEATRE, ACCESS_MAINT_TUNNELS, ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT)
	minimal_access = list(ACCESS_CLOWN, ACCESS_THEATRE, ACCESS_MAINT_TUNNELS, ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT)
	hidden_from_job_prefs = TRUE
	outfit = /datum/outfit/job/donor/seclown
	important_information = "Ваша должность нацелена на свободный РП-отыгрыш и не разрешает нарушать правила сервера. \
	\nВы КЛОУН СЛУЖБЫ БЕЗОПАСНОСТИ. Данная роль нацелена на обеспечения сотрудников службы безопасности ментальным здоровьем и \
	поддерживать моральный облик вашего отдела. Вы не имеете права выступать против вашего отдела, ведь вас тренировали для этого. \
	Корпорация NT вложило много денег чтобы сделать из клоуна... вас. Так не подведите её. Вы то, что можно назвать корпоративным клоуном. \
	Ваша душа принадлежит NT, но ваше сердце по прежнему верно Хонкомаме. \
	\nВ вас присутствует ген клоуна. Не занимайтесь охотой антагонистов если есть действующие сотрудники службы безопасности. \
	Вы не являетесь офицером. Вы по прежнему клоун с полномочиями и гигантскими обязанностями. Это непростая роль, ведь вы из-за своего положения \
	не можете творить множество вещей и действий нарушающие Космический Закон."

/datum/outfit/job/donor/seclown
	name = "Security Clown"
	jobtype = /datum/job/donor/seclown

	uniform = /obj/item/clothing/under/rank/civilian/clown
	suit = /obj/item/clothing/suit/armor/vest/warden
	shoes = /obj/item/clothing/shoes/clown_shoes
	head = /obj/item/clothing/head/officer
	mask = /obj/item/clothing/mask/gas/clown_hat
	gloves = /obj/item/clothing/gloves/color/red
	l_pocket = /obj/item/bikehorn
	suit_store = /obj/item/gun/energy/clown
	l_ear = /obj/item/radio/headset/headset_service
	r_ear = /obj/item/radio/headset/headset_sec/alt
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	pda = /obj/item/pda/clown
	id = /obj/item/card/id/seclown
	backpack_contents = list(
		/obj/item/reagent_containers/food/snacks/grown/banana = 1,
		/obj/item/stamp/clown = 1,
		/obj/item/toy/crayon/rainbow = 1,
		/obj/item/storage/fancy/crayons = 1,
		/obj/item/reagent_containers/spray/waterflower = 1,
		/obj/item/reagent_containers/food/drinks/bottle/bottleofbanana = 1,
		/obj/item/instrument/bikehorn = 1,
		/obj/item/flash = 1,
		/obj/item/restraints/handcuffs/toy = 1,
	)

	implants = list(/obj/item/implant/sad_trombone, /obj/item/implant/mindshield)

	backpack = /obj/item/storage/backpack/clown
	satchel = /obj/item/storage/backpack/clown
	dufflebag = /obj/item/storage/backpack/duffel/clown

/datum/job/donor/seclown/make_alt_title(mob/living/carbon/human/H)
	if(H.mind)
		H.real_name
		var/clown_name = pick(GLOB.clown_names)
		var/newname = clean_input("Выберите имя для вашего Клоуна Службы Безопасности.", "Изменение Имени", clown_name, H)
		if(newname)
			H.rename_character(H.real_name, newname)
		else
			H.rename_character(H.real_name, clown_name)

	. = ..()

/datum/outfit/job/donor/seclown/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(visualsOnly)
		return

	if(ismachineperson(H))
		var/obj/item/organ/internal/cyberimp/brain/clown_voice/implant = new
		implant.insert(H)

	H.dna.SetSEState(GLOB.clumsyblock, TRUE)
	singlemutcheck(H, GLOB.clumsyblock, MUTCHK_FORCED)
	H.dna.default_blocks.Add(GLOB.clumsyblock)
	if(!ismachineperson(H))
		H.dna.SetSEState(GLOB.comicblock, TRUE)
		singlemutcheck(H, GLOB.comicblock, MUTCHK_FORCED)
		H.dna.default_blocks.Add(GLOB.comicblock)
	H.check_mutations = TRUE
	H.add_language("Clownish")
	H.AddComponent(/datum/component/slippery, H, 8 SECONDS, 100, 0, FALSE, TRUE, "slip", TRUE)
