{
var name = "";

if(argument1 == 1){
	name += "Black ";
}else if(argument1 == 2){
	name += "White ";
}

switch(argument0) {
	case chessP.pawn:
		return name + "Pawn";
	break;
	case chessP.tower:
		return name + "Tower";
	break;
	case chessP.knight:
		return name + "Knight";
	break;
	case chessP.bishop:
		return name + "Bishop";
	break;
	case chessP.queen:
		return name + "Queen";
	break;
	case chessP.king:
		return name + "King";
	break;
	default:
		return "???";
	break;
}
}