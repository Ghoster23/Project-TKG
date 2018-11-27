///@description Reads and places its STRING entries into a ds_grid
///@param file_name
///@param ds_grid
///@param lines
///@param columns
///@param file_start_line
///@param grid_start_line
{
var file_name = argument0;          //file name, should include .csv ex: "stats.csv"
var ds_grid   = argument1;		    //ds_grid that should have already been created and passed on t
var lines     = argument2;          //number of lines to copy
var collums   = argument3;          //number of collums to copy
var file_start_line = argument4;    //line from which to start reading from file (leave at 0 for default)
var grid_start_line = argument5;    //line from which to start writing to grid   (leave at 0 for default)

//open file
var file_read=file_text_open_read(working_directory + string(file_name));

//jump to the right line if necessary
if (file_start_line!=0){
	repeat (file_start_line){
		file_text_readln(file_read);
	}
}

//ready to parse through the lines
var j=0, i=0, index, count, line = "", content = "";

//iterate through lines
repeat(lines){
	line  = file_text_read_string(file_read);
	index = 1;
	count = 0;

	for(i = 0; i < collums; i++){
		//if its between "" aka a string
		if(string_char_at(line,index) == chr(34)){
			//if its the last collum
			if (i == collums-1){
				content = string_copy(line,index+1,string_length(line)-(index+1));
			}
			else{
				//keep pacing throught the letters until you find aspas again
				index += 1;
				
				while(string_char_at(line,index) != chr(34)){
					index++;
					count++;
				}
				
				//when you do, copy it to content
				content=string_copy(line,index-count,count);
				index+=2;
				count=0;
			}
		}
		
		//if its not aka value
		else{
			if (i == collums-1){
				content=real(string_copy(line,index,string_length(line)-(index)));
			}
			else{
				//keep pacing throught the letters until you find a ;
				var c = string_char_at(line,index);
				
				while(c != chr(59)){
					index++;
					count++;
					c = string_char_at(line,index);
				}	
				content=real(string_copy(line,index-count,count));
				index+=1;
				count=0;
			}
		}
		
		//add content to grid (with account for offset)
		ds_grid_add(ds_grid,i,j+grid_start_line,content);
	
	}

	//next line
	j++;
	file_text_readln(file_read);

}

//close the file his job is done :3
file_text_close(file_read);

//done
return ds_grid;
}