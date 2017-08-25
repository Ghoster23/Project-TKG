/// @description proper view
window_set_size( 1344, 832 );

global.frozen=false

///currently selected block (0,0) - (terrain,space)
global.selected_block[0]=0
global.selected_block[1]=0

//asign id to each square
id_counter = 0

for(i=0;i<9;i+=1){
    for(j=0;j<19;j+=1){
        global.square_ID[id_counter]=instance_create_layer(32+j*32,96+i*32,"Instances",square_obj)
        global.square_ID[id_counter].self_ID = id_counter;
        global.square_ID[id_counter].block_ID[0]=0
        global.square_ID[id_counter].block_ID[0]=0
        id_counter+=1
    }
}


global.new_room_saved=true;
global.lvl_room_type=0;
global.lvl_room_number=0;

global.room_file_read=file_text_open_read(working_directory + "roomtype0.csv");
global.lvl_numrooms=file_text_read_real(global.room_file_read);




