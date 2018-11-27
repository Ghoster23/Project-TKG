#region Types
enum item_type{
	unique_consumable,
	food,
	potion,
	chess_piece,
	constellation,
	tl_n_wep,
	active,
	equipable,
	drop,
	heart,
	currency,
	count
}
#endregion

#region Unique Consumables
enum unique_consume{
	map,
	count
}
#endregion

#region Food
enum food{
	cookie,
	apple,
	count
}
#endregion

#region Potions
enum potions{
	regeneration,
	seeall,
	ohko,
	cure,
	compass,
	immunity,
	count,
}
#endregion

#region Chess Pieces
enum chessP {
	pawn,
	tower,
	knight,
	bishop,
	queen,
	king,
	count
}
#endregion

#region Constellation
enum constellation{
	pisces,
	andromeda,
	count
}
#endregion

#region Tools and Weapons
enum tl_n_wep {
	wood_stick,
	wood_sword,
	wood_sword_f,
	wood_baton,
	wood_mace,
	pickaxe,
	bow,
	jason_greatsword,
	luna_umbrella,
	count
}
#endregion

#region Equipables
enum equips{
	crown_of_thorns,
	rod_of_asclepius,
	styxs_water,
	sages_phylactery,
	ring_of_dispel,
	league_boots,
	unicorn_blood,
	staff_of_moses,
	sandals_of_hermes,
	shield_of_zeus,
	crystal_bubble,
	count
}
#endregion

#region Drops
enum drops{
	slm_ball,
	bat_wing,
	ench_cloth,
	bone,
	count
}
#endregion

#region Actives
enum active {
	frozone,
	count
}
#endregion

enum heart{
	heart     ,
	armor     ,
	container ,
	count     
}