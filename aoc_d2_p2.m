#Code to solve Advent of Code 2021, Day 2, Part 1

clear;
clc;

#import file
fil_id = fopen("aoc_d2_input.txt");
d2 = textscan(fil_id, '%s');
d2_cell = cell2mat(d2);

#count directional elements
d2_size = size(d2_cell,1);

#initialize matrix
d2_dat = zeros (d2_size/2,3);

#populate matrix - values
for x = 1:(d2_size/2)
  a=(2*x)-1;
  b=(2*x);
  d2_dat(x,1) = length(d2_cell{a,1});
  d2_dat(x,2) = str2num(d2_cell{b,1});
  endfor
#

#initialize position
horiz = 0;
depth = 0;
aim = 0;

#cumulative position changes
for y = 1:(d2_size/2)
  if d2_dat(y,1) == 7
    horiz = horiz + d2_dat(y,2);
    depth = depth + aim*d2_dat(y,2);
    aim = aim;
    
  elseif d2_dat(y,1) == 2
    horiz = horiz;
    #depth = depth - d2_dat(y,2);
    aim = aim - d2_dat(y,2);
    
   elseif d2_dat(y,1) == 4
    horiz = horiz;
    #depth = depth + d2_dat(y,2);
    aim = aim + d2_dat(y,2);
    
  else
    disp("Error in data at location: ");
    disp(y);
    
  endif
 
endfor
#

#show final values
disp("Final horizontal position:");
disp(horiz);
disp("Final depth:");
disp(depth);

mult = horiz * depth;

disp("Location multiplied:");
disp(mult);

  #Clean up
fclose(fil_id); 