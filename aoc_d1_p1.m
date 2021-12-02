  #Code to solve Advent of Code 2021, Day 1, Part 1

clear;
clc;

  #Load input file to data vector
fil_id = fopen("aoc_d1_input.txt",'r');
d1p1_vect = fscanf(fil_id, '%f');

  #Determine vector size
vect_size = size(d1p1_vect,1);

  #Establish tally variable
tally = 0;

  #Loop to step through values
for (count = 2:2000)
  if (d1p1_vect(count) > d1p1_vect(count-1))
    tally = tally + 1;
  else
    tally = tally;
  endif
endfor

  #Show answer
disp("The number of increasing measurements is: ");
disp(tally);

  #Clean up
fclose(fil_id); 