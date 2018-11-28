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
var column   = argument3;          //number of column to copy
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
var j=0, i=0, index, line = "", content = "", length = 0, c = "", stop = "\"";

//iterate through lines
repeat(lines){
	line = file_text_read_string(file_read);
	
	index = 0;

	for(i = 0; i < column; i++){
		var last_c = (i == column - 1);
		
		//Read the string
		content = "";
		length  = 0;
		index++;
		c = string_char_at(line,index);
				
		while(c != ";" and c != ""){
			content += c;
			length  += 1;
			index++;
			c = string_char_at(line,index);
		}
		
		if(content == ""){
			ds_grid_add(ds_grid,i,j+grid_start_line,0);
		}else {
			var first = string_char_at(content,0);
			
			switch(first){
				case "\"":
					content = string_copy(content,2,length-2);
					ds_grid_add(ds_grid,i,j+grid_start_line,content);
				break;
			
				default:
					ds_grid_add(ds_grid,i,j+grid_start_line,content);
				break;
			}
		}
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