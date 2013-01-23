/obj/item/clothing/shoes/black
	name = "black shoes"
	icon_state = "black"
	color = "black"
	desc = "A pair of black shoes."

	cold_protection = FEET
	min_cold_protection_temperature = SHOE_MIN_COLD_PROTECITON_TEMPERATURE
	heat_protection = FEET
	max_heat_protection_temperature = SHOE_MAX_HEAT_PROTECITON_TEMPERATURE

	redcoat
		color = "redcoat"	//Exists for washing machines. Is not different from black shoes in any way.

/obj/item/clothing/shoes/brown
	name = "brown shoes"
	desc = "A pair of brown shoes."
	icon_state = "brown"
	color = "brown"

	captain
		color = "captain"	//Exists for washing machines. Is not different from brown shoes in any way.
	hop
		color = "hop"		//Exists for washing machines. Is not different from brown shoes in any way.
	ce
		color = "chief"		//Exists for washing machines. Is not different from brown shoes in any way.
	rd
		color = "director"	//Exists for washing machines. Is not different from brown shoes in any way.
	cmo
		color = "medical"	//Exists for washing machines. Is not different from brown shoes in any way.
	cmo
		color = "cargo"		//Exists for washing machines. Is not different from brown shoes in any way.

/obj/item/clothing/shoes/blue
	name = "blue shoes"
	icon_state = "blue"
	color = "blue"
	g_amt = 3260
	m_amt = 3350

/obj/item/clothing/shoes/green
	name = "green shoes"
	icon_state = "green"
	color = "green"
	g_amt = 3700
	m_amt = 1250

/obj/item/clothing/shoes/yellow
	name = "yellow shoes"
	icon_state = "yellow"
	color = "yellow"
	g_amt = 3400
	m_amt = 3450

/obj/item/clothing/shoes/purple
	name = "purple shoes"
	icon_state = "purple"
	color = "purple"
	g_amt = 3100
	m_amt = 3650

/obj/item/clothing/shoes/brown
	name = "brown shoes"
	icon_state = "brown"
	color = "brown"
	g_amt = 3000
	m_amt = 3250

/obj/item/clothing/shoes/red
	name = "red shoes"
	desc = "Stylish red shoes."
	icon_state = "red"
	color = "red"
	g_amt = 3250
	m_amt = 3250

/obj/item/clothing/shoes/white
	name = "white shoes"
	icon_state = "white"
	permeability_coefficient = 0.25
	color = "white"
	g_amt = 3600
	m_amt = 3250

/obj/item/clothing/shoes/rainbow
	name = "rainbow shoes"
	desc = "Very gay shoes."
	icon_state = "rain_bow"
	color = "rainbow"
	g_amt = 3300
	m_amt = 3250

/obj/item/clothing/shoes/orange
	name = "orange shoes"
	icon_state = "orange"
	var/chained = 0
	color = "orange"
	g_amt = 3500
	m_amt = 3250

/obj/item/clothing/shoes/orange/attack_self(mob/user as mob)
	if (src.chained)
		src.chained = null
		src.slowdown = SHOES_SLOWDOWN
		new /obj/item/weapon/handcuffs( user.loc )
		src.icon_state = "orange"
	return

/obj/item/clothing/shoes/orange/attackby(H as obj, loc)
	..()
	if ((istype(H, /obj/item/weapon/handcuffs) && !( src.chained )))
		//H = null
		del(H)
		src.chained = 1
		src.slowdown = 15
		src.icon_state = "orange1"
	return