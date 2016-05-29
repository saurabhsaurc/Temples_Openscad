include<../basicFunctions/sikhara.scad>;
include<../basicFunctions/vimana.scad>;
include<../basicFunctions/lugged_vimana.scad>;

temple_profile = [ [0,0],[10,0],[10,-5],[40,-5],[40,0],
                   [50,0],[50,10],[55,10],[55,40],[50,40],
                   [50,50],[40,50],[40,55],[10,55],[10,50],
                   [0,50],[0,40],[-5,40],[-5,10],[0,10] ];
temple_center_offset = [ -25,-25,0 ];

//Main spire
sikhara_num_storeys = 10; //ie. Bhumis
sikhara_height = 100; //Make sure that height is an integral multiple of number of storeys
sikhara_curvature = 250; //Radius of curvature for the largest segments
sikhara_base_length = 25*sqrt(2);

sikhara(temple_profile, temple_center_offset,sikhara_height, sikhara_num_storeys, sikhara_curvature, sikhara_base_length);

//Main spire top
vimana_base_rad = 10;
vimana_base_height = 8;
vimana_cone_height = 5;
vimana_cone_rad = 5;
vimana_cone_scale = 0.4;
vimana_sphere_rad=2;

num_lugs = 20;
lug_thickness = 1;
lug_retract_distance = 3;

translate([0,0,sikhara_height])
lugged_vimana(vimana_base_rad,vimana_base_height, vimana_cone_height, vimana_cone_rad, vimana_sphere_rad, vimana_cone_scale, num_lugs, lug_thickness,lug_retract_distance );

//4 secondary spires

secondary_temple_profile = 0.5*temple_profile;
secondary_temple_center_offset = 0.5*temple_center_offset;

secondary_sikhara_num_storeys = 5; //ie. Bhumis
secondary_sikhara_height = 50; //Make sure that height is an integral multiple of number of storeys
secondary_sikhara_curvature = 125; //Radius of curvature for the largest segments
secondary_sikhara_base_length = 0.5*25*sqrt(2);

translate([0,30,0])
sikhara(secondary_temple_profile, secondary_temple_center_offset,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_base_length);

translate([0,-30,0])
sikhara(secondary_temple_profile, secondary_temple_center_offset,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_base_length);

translate([30,0,0])
sikhara(secondary_temple_profile, secondary_temple_center_offset,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_base_length);

translate([-30,0,0])
sikhara(secondary_temple_profile, secondary_temple_center_offset,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_base_length);

//Secondary spire tops
secondary_vimana_base_rad = 5;
secondary_vimana_base_height = 4;
secondary_vimana_cone_height = 3;
secondary_vimana_cone_rad = 3;
secondary_vimana_cone_scale = 0.4;
secondary_vimana_sphere_rad=1.5;

translate([30,0,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

translate([0,30,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

translate([-30,0,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

translate([0,-30,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

//4 tertiary spires
tertiary_sikhara_num_storeys = 3;
tertiary_sikhara_height = 30;
tertiary_sikhara_curvature = 80;
tertiary_sikhara_profile = temple_profile*0.35;
tertiary_sikhara_offset = temple_center_offset*0.35;
tertiary_sikhara_baselength = 25*sqrt(2)*0.35;

translate([25,25,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

translate([25,-25,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

translate([-25,25,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

translate([-25,-25,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

//Tertiary spire tops
tertiary_vimana_base_rad = 4;
tertiary_vimana_base_height = 4;
tertiary_vimana_cone_height = 3;
tertiary_vimana_cone_rad = 3;
tertiary_vimana_cone_scale = 0.4;
tertiary_vimana_sphere_rad=1;

translate([25,25,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

translate([-25,25,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

translate([25,-25,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

translate([-25,-25,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

//Plinth
plinth_profile =1.5*temple_profile;
plinth_offset = 1.5*temple_center_offset;

linear_extrude(height=5,scale=0.95)
translate(plinth_offset)
polygon(points=plinth_profile);

//entrance
entrance_profile = [ [0,0],[0,30],[30,30],[30,0] ];
entrance_offset = [ -15,-15,0 ];

entrance_num_storeys = 5; //ie. Bhumis
entrance_height = 20; //Make sure that height is an integral multiple of number of storeys
entrance_curvature = 30; //Radius of curvature for the largest segments
entrance_base_length = 10*sqrt(2);

translate([55,0,0])
sikhara( entrance_profile , entrance_offset ,entrance_height, entrance_num_storeys,entrance_curvature, entrance_height, entrance_base_length );

//sikhara( entrance_profile, entrance_offset , entrance_height, entrance_num_storeys, entrance_curvature, entrance_base_length);





