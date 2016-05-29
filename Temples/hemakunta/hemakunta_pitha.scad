include<../basicFunctions/pitha.scad>;
include<../basicFunctions/staircase.scad>;

stair_side_profile = [ [0,0],[52,0],[52,4],[0,15] ];

stair_width = 40;
num_stairs = 6;
stair_step_height = 1.5;
stair_step_width = 8;

translate([100,0,0])
staircase( stair_side_profile, stair_width, num_stairs, stair_step_height, stair_step_width );

translate([0,100,0])
rotate([0,0,90])
staircase( stair_side_profile, stair_width, num_stairs, stair_step_height, stair_step_width );

translate([0,-100,0])
rotate([0,0,-90])
staircase( stair_side_profile, stair_width, num_stairs, stair_step_height, stair_step_width );

translate([-100,0,0])
rotate([0,0,180])
staircase( stair_side_profile, stair_width, num_stairs, stair_step_height, stair_step_width );

square_side = 100;
temple_profile = [ [0,0],[0,2*square_side],[2*square_side,2*square_side],[2*square_side,0] ];
temple_mid_profile = [ [10,10],[190,10],[190,190],[10,190] ];
temple_center_offset = [ -square_side,-square_side,0 ];

pitha_height_array = [ 2, 1.5, 1, 2, 1.5, 1];
pitha_size_array = [ 1.4, 1.3, 1.2, 1.1, 1.03, 1.0 ];
pitha_diagonal_array = [ 0, 1, 0, 0, 0, 0]; //1st element must be 0

pitha(temple_profile,temple_mid_profile, temple_center_offset,pitha_height_array, pitha_size_array,pitha_diagonal_array );


