/obj/machinery/computer/card/ui_data(mob/user)
	var/list/data = ..()

	if(mode == IDCOMPUTER_SCREEN_TRANSFER) // JOB TRANSFER
		if(modify && scan && !target_dept)
			var/list/list_skins = GLOB.card_skins_ss220 + (is_centcom() ? GLOB.card_skins_donor_ss220 : list())
			data["card_skins"] |= format_card_skins(list_skins)
			data["jobs_security"] = GLOB.service_positions - (is_centcom() ? GLOB.security_donor_jobs : list())
			data["jobs_service"] = GLOB.service_positions - (is_centcom() ? GLOB.service_donor_jobs : list())

	return data

/obj/machinery/computer/card/ui_act(action, params)
	. = ..()
	switch(action)
		if("skin")
			if(!modify)
				return FALSE
			var/skin = params["skin_target"]
			var/list/list_skins = GLOB.card_skins_ss220 + (is_centcom() ? GLOB.card_skins_donor_ss220 : list())
			if(!skin || !(skin in list_skins))
				return FALSE

			modify.icon_state = skin
			return TRUE

/obj/machinery/computer/card/format_job_slots(check_department, is_admin)
	var/list/formatted = ..()

	// Убираем JOB'ки из консоли ГП, если она не ЦКшная.
	for(var/i in formatted)
		if(i["title"] in get_donor_ranks_for_choose())
			formatted.Remove(list(i))
		if(is_centcom())
			continue
		if(i["title"] in GLOB.all_donor_jobs)
			formatted.Remove(list(i))

	return formatted
