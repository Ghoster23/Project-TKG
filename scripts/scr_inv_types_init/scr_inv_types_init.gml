enum item_type{
	unique_consumable = 0,
	potion            = 1,
	chess_piece       = 2,
	constellation     = 3,
	weapon            = 4,
	tool              = 5,
	equipable         = 6
}

stack_size[item_type.unique_consumable] = 1;
stack_size[item_type.potion]            = 1;
stack_size[item_type.chess_piece]       = 1;
stack_size[item_type.constellation]     = 1;
stack_size[item_type.weapon]            = 1;
stack_size[item_type.tool]              = 1;
stack_size[item_type.equipable]         = 1;