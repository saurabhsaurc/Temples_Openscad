include<../basicFunctions/sikhara.scad>;

temple_profile = [ [0,0],[4,0],[4,-2],[8,-2],[8,-4],[14,-4],[14,-2],[18,-2],[18,0],
                   [22,0],[22,4],[24,4],[24,8],[26,8],[26,14],[24,14],[24,18],[22,18],
                   [22,22],[18,22],[18,24],[14,24],[14,26],[8,26],[8,24],[4,24],[4,22],
                   [0,22],[0,18],[-2,18],[-2,14],[-4,14],[-4,8],[-2,8],[-2,4],[0,4] ];
temple_center_offset = [ -11,-11,0 ];

sikhara_num_storeys = 5; //ie. Bhumis
sikhara_height = 40; //Make sure that height is an integral multiple of number of storeys
sikhara_curvature = 100; //Radius of curvature for the largest segments
sikhara_base_length = 10*sqrt(2);

sikhara(temple_profile, temple_center_offset,sikhara_height, sikhara_num_storeys, sikhara_curvature, sikhara_base_length);



