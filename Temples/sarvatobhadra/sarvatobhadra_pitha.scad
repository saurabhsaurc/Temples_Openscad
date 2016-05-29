include<../basicFunctions/pitha.scad>;
include<../basicFunctions/staircase.scad>;
include<../basicFunctions/stambha.scad>;

temple_profile = [ [0,0],[10,0],[10,-5],[40,-5],[40,0],
                   [50,0],[50,10],[55,10],
                   [55,15],[75,15],[75,35],[55,35],
                   [55,40],[50,40],
                   [50,50],[40,50],[40,55],[10,55],[10,50],
                   [0,50],[0,40],[-5,40],[-5,10],[0,10] ];
temple_center_offset = [ -25,-25,0 ];
temple_mid_profile = [ [5,5],[5,70],[70,70],[70,5] ];

pitha_height_array = [ 2, 2, 1.5, 2, 1.5];
pitha_size_array = [ 1.3, 1.2, 1.05, 1.1, 1 ];
pitha_diagonal_array = [ 0, 1, 0, 0, 0]; //1st element must be 0

pitha(temple_profile*1.5, temple_mid_profile, temple_center_offset*1.5,pitha_height_array, pitha_size_array,pitha_diagonal_array );

stair_side_profile = [ [0,0],[25,0],[25,4],[0,14] ];

stair_width = 15;
num_stairs = 7;
stair_step_height = 1.5;
stair_step_width = 3;

translate([80,0,0])
staircase( stair_side_profile, stair_width, num_stairs, stair_step_height, stair_step_width );

stambha_radius = 2;
stambha_height = 40;

translate([60,-12,9])
stambha(stambha_radius,stambha_height);

translate([60,12,9])
stambha(stambha_radius,stambha_height);



