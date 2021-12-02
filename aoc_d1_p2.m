#Code to solve Advent of Code 2021, Day 1, Part 2

clear;
clc;

  #Load input file to data vector
fil_id = fopen("aoc_d1_input.txt",'r');
d1p2_vect = fscanf(fil_id, '%f');

  #Determine vector size
vect_size = size(d1p2_vect,1);
last = vect_size -1;

  #Establish tally variable
tally_2 = 0;

  #Loop to step through values
for (count = 3:last)
  sum_prev = d1p2_vect(count-2) + d1p2_vect(count-1) + d1p2_vect(count);
  sum_curr = d1p2_vect(count-1) + d1p2_vect(count) + d1p2_vect(count+1);
  if (sum_curr > sum_prev)
    tally_2 = tally_2 + 1;
  else
    tally_2 = tally_2;
  endif
endfor

  #Show answer
disp("The number of increasing sums is: ");
disp(tally_2);

  #Clean up
fclose(fil_id);  