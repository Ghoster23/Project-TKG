///string_keycheck(key);

//Checks the given key and returns it as a string. Also detects vk_constants.

// vk_constants
//Left
if argument0 = (vk_left)
{
    return "<-";
}

//Right
if argument0 = (vk_right)
{
    return "->";
}

//Up
if argument0 = (vk_up)
{
    return "^\n|";
}

//Down
if argument0 = (vk_down)
{
    return "|\nv";
}

//Enter
if argument0 = (vk_enter)
{
    return "<_|";
}

//Escape
if argument0 = (vk_escape)
{
    return "Esc";
}

//Space
if argument0 = (vk_space)
{
    return "|___|";
}

//Shift
if argument0 = (vk_shift) or argument0 = (vk_lshift) or argument0 = (vk_rshift)
{
    return "Shf";
}

//Control
if argument0 = (vk_control) or argument0 = (vk_rcontrol) or argument0 = (vk_lcontrol)
{
    return "Ctrl";
}

//Alt
if argument0 = (vk_alt) or argument0 = (vk_ralt) or argument0 = (vk_lalt)
{
    return "Alt";
}

//Backspace
if argument0 = (vk_backspace)
{
    return "<==";
}

//Tab
if argument0 = (vk_tab)
{
    return "|<--\n-->|";
}

//Home
if argument0 = (vk_home)
{
    return "Home";
}

//End
if argument0 = (vk_end)
{
    return "End";
}

//Delete
if argument0 = (vk_delete)
{
    return "Del";
}

//Insert
if argument0 = (vk_insert)
{
    return "Ins";
}

//Page Up
if argument0 = (vk_pageup)
{
    return "Pg ^";
}

//Page Down
if argument0 = (vk_pagedown)
{
    return "Pg v";
}

//Pause
if argument0 = (vk_pause)
{
    return "Pause";
}

//Printscreen
if argument0 = (vk_printscreen)
{
    return "Printscreen";
}

//F1
if argument0 = (vk_f1)
{
    return "F1";
}

//F2
if argument0 = (vk_f2)
{
    return "F2";
}

//F3
if argument0 = (vk_f3)
{
    return "F3";
}

//F4
if argument0 = (vk_f4)
{
    return "F4";
}

//F5
if argument0 = (vk_f5)
{
    return "F5";
}

//F6
if argument0 = (vk_f6)
{
    return "F6";
}

//F7
if argument0 = (vk_f7)
{
    return "F7";
}

//F8
if argument0 = (vk_f8)
{
    return "F8";
}

//F9
if argument0 = (vk_f9)
{
    return "F9";
}

//F10
if argument0 = (vk_f10)
{
    return "F10";
}

//F11
if argument0 = (vk_f11)
{
    return "F11";
}

//F12
if argument0 = (vk_f12)
{
    return "F12";
}

//Numpad 0
if argument0 = (vk_numpad0)
{
    return "Nmp 0";
}

//Numpad 1
if argument0 = (vk_numpad1)
{
    return "Nmp 1";
}

//Numpad 2
if argument0 = (vk_numpad2)
{
    return "Nmp 2";
}

//Numpad 3
if argument0 = (vk_numpad3)
{
    return "Nmp 3";
}

//Numpad 4
if argument0 = (vk_numpad4)
{
    return "Nmp 4";
}

//Numpad 5
if argument0 = (vk_numpad5)
{
    return "Nmp 5";
}

//Numpad 6
if argument0 = (vk_numpad6)
{
    return "Nmp 6";
}

//Numpad 7
if argument0 = (vk_numpad7)
{
    return "Nmp 7";
}

//Numpad 8
if argument0 = (vk_numpad8)
{
    return "Nmp 8";
}

//Numpad 9
if argument0 = (vk_numpad9)
{
    return "Nmp 9";
}

//Multiply
if argument0 = (vk_multiply)
{
    return "Nmp *";
}

//Divide
if argument0 = (vk_divide)
{
    return "Nmp /";
}

//Add
if argument0 = (vk_add)
{
    return "Nmp +";
}

//Subtract
if argument0 = (vk_subtract)
{
    return "Nmp -";
}

//Decimal
if argument0 = (vk_decimal)
{
    return "Nmp .";
}

if argument0 == (mb_left){
	return "Ms 1";
}

if argument0 == (mb_right){
	return "Ms 2";
}

if argument0 == (mb_middle){
	return "Ms 3";
}

// Printable characters.
return chr(argument0);