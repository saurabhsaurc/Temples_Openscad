include<../basicFunctions/pitha.scad>;

temple_profile = [ [0,0],[4,0],[4,-2],[8,-2],[8,-4],[14,-4],[14,-2],[18,-2],[18,0],
                   [22,0],[22,4],[24,4],[24,8],[26,8],[26,14],[24,14],[24,18],[22,18],
                   [22,22],[18,22],[18,24],[14,24],[14,26],[8,26],[8,24],[4,24],[4,22],
                   [0,22],[0,18],[-2,18],[-2,14],[-4,14],[-4,8],[-2,8],[-2,4],[0,4] ];
temple_center_offset = [ -11,-11,0 ];

pitha_height_array = [ 1,2,1,3,1,1,1];
pitha_size_array = [ 1.4,1.3,1.2,1.15,1.2,1,1.1];
pitha_diagonal_array = [ 0, 1, 0, 0,0,0,0]; //1st element must be 0

temple_mid_profile = [ [5,5],[5,16],[16,16],[16,5] ];

pitha(temple_profile,temple_mid_profile, temple_center_offset, pitha_height_array, pitha_size_array,pitha_diagonal_array );


