include<../basicFunctions/pitha.scad>;

temple_profile = [ [0,0],[0,20],[20,20],[20,0] ];
temple_mid_profile = [ [5,5],[5,15],[15,15],[15,5] ];
temple_center_offset = [ -10,-10,0 ];

pitha_height_array = [ 2, 1.5, 1, 2, 1.5, 1];
pitha_size_array = [ 1.8, 1.7, 1.5, 1.4, 1.4, 1.2 ];
pitha_diagonal_array = [ 0, 1, 0, 0, 0, 0]; //1st element must be 0

pitha(temple_profile, temple_mid_profile, temple_center_offset,pitha_height_array, pitha_size_array,pitha_diagonal_array );


