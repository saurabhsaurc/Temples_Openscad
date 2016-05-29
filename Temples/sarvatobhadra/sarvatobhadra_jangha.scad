include<../basicFunctions/jangha.scad>;
include<../basicFunctions/doorway.scad>;

temple_profile = [ [0,0],[10,0],[10,-5],[40,-5],[40,0],
                   [50,0],[50,10],[55,10],[55,40],[50,40],
                   [50,50],[40,50],[40,55],[10,55],[10,50],
                   [0,50],[0,40],[-5,40],[-5,10],[0,10] ];
temple_center_offset = [ -25,-25,0 ];
temple_mid_profile = [ [5,5],[5,70],[70,70],[70,5] ];

jangha_height_array = [ 5, 10, 5, 10, 5, 5];
jangha_size_array = [ 1, 0.97, 1, 0.97, 1, 1.05 ];
jangha_diagonal_array = [ 0, 0, 0, 0, 0, 1]; //1st element must be 0

jangha(temple_profile*1.5,temple_mid_profile , temple_center_offset*1.5, jangha_height_array, jangha_size_array,jangha_diagonal_array );

translate([43,0,0])
doorway(15,2);


