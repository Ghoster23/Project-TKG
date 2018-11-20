/// scr_string_split(:string, delimiter:string):array<string>
//script made by 
var s = argument[0], d = argument[1];
var rl = ds_list_create();
var p = string_pos(d, s);
var dl = string_length(d);
ds_list_clear(rl);
if (dl) while (p) {
    p -= 1;
    ds_list_add(rl, string_copy(s, 1, p));
    s = string_delete(s, 1, p + dl);
    p = string_pos(d, s);
}
ds_list_add(rl, s);
// create an array and store results:
var rn = ds_list_size(rl), rw;
if (os_browser != browser_not_a_browser) {
    rw[0] = rl[|0]; // initial allocation
    for (p = 1; p < rn; p++) rw[p] = rl[|p];
} else {
    p = rn; while (--p >= 0) rw[p] = rl[|p];
}

ds_list_destroy(rl);
return rw;

