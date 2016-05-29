include<../basicFunctions/jangha.scad>;

temple_profile = [ [0,0],[0,20],[20,20],[20,0] ];
temple_mid_profile = [ [5,5],[5,15],[15,15],[15,5] ];
temple_center_offset = [ -10,-10,0 ];

jangha_height_array = [ 5, 1, 5, 1, 5, 2];
jangha_size_array = [ 1, 0.9, 1, 0.9, 1, 1.1 ];
jangha_diagonal_array = [ 0, 0, 0, 0, 0, 1]; //1st element must be 0

jangha(temple_profile,temple_mid_profile , temple_center_offset, jangha_height_array, jangha_size_array,jangha_diagonal_array );


