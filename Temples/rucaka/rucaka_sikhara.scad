include<../basicFunctions/sikhara.scad>;

temple_profile = [ [0,0],[0,20],[20,20],[20,0] ];
temple_center_offset = [ -10,-10,0 ];

sikhara_num_storeys = 4; //ie. Bhumis
sikhara_height = 40; //Make sure that height is an integral multiple of number of storeys
sikhara_curvature = 100; //Radius of curvature for the largest segments
sikhara_base_length = 10*sqrt(2);

sikhara(temple_profile, temple_center_offset,sikhara_height, sikhara_num_storeys, sikhara_curvature, sikhara_base_length);


