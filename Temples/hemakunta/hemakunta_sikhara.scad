include<../basicFunctions/sikhara.scad>;
include<../basicFunctions/kuta.scad>;
include<../basicFunctions/vimana.scad>;
include<../basicFunctions/lugged_vimana.scad>;
include<../basicFunctions/triangles.scad>;

temple_profile = [ [0,0],[4,0],[4,-2],[8,-2],[8,-4],[14,-4],[14,-2],[18,-2],[18,0],
                   [22,0],[22,4],[24,4],[24,8],[26,8],[26,14],[24,14],[24,18],[22,18],
                   [22,22],[18,22],[18,24],[14,24],[14,26],[8,26],[8,24],[4,24],[4,22],
                   [0,22],[0,18],[-2,18],[-2,14],[-4,14],[-4,8],[-2,8],[-2,4],[0,4] ];
temple_center_offset = [ -11,-11,0 ];

//Main spire
sikhara_num_storeys = 5; //ie. Bhumis
sikhara_height = 175; //Make sure that height is an integral multiple of number of storeys
sikhara_curvature = 700; //Radius of curvature for the largest segments
sikhara_profile = temple_profile*3;
sikhara_offset = temple_center_offset*3;
sikhara_base_length = 10*sqrt(2)*3;

sikhara(sikhara_profile, sikhara_offset ,sikhara_height, sikhara_num_storeys, sikhara_curvature, sikhara_base_length );

//Main spire top
vimana_base_rad = 18;
vimana_base_height = 8;
vimana_cone_height = 8;
vimana_cone_rad = 8;
vimana_cone_scale = 0.4;
vimana_sphere_rad=3;

num_lugs = 20;
lug_thickness = 1;
lug_retract_distance = 2.5;

translate([0,0,sikhara_height])
lugged_vimana(vimana_base_rad,vimana_base_height, vimana_cone_height, vimana_cone_rad, vimana_sphere_rad, vimana_cone_scale, num_lugs, lug_thickness,lug_retract_distance );

//4 secondary spires
secondary_sikhara_num_storeys = 5;
secondary_sikhara_height = 100;
secondary_sikhara_curvature = 400;
secondary_sikhara_profile = temple_profile*1.6;
secondary_sikhara_offset = temple_center_offset*1.6;
secondary_sikhara_baselength = 10*sqrt(2)*1.6;

translate([50,0,0])
sikhara( secondary_sikhara_profile , secondary_sikhara_offset ,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_baselength );

translate([-50,0,0])
sikhara( secondary_sikhara_profile , secondary_sikhara_offset ,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_baselength );

translate([0,50,0])
sikhara( secondary_sikhara_profile , secondary_sikhara_offset ,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_baselength );

translate([0,-50,0])
sikhara( secondary_sikhara_profile , secondary_sikhara_offset ,secondary_sikhara_height, secondary_sikhara_num_storeys, secondary_sikhara_curvature, secondary_sikhara_baselength );

//Secondary spire tops
secondary_vimana_base_rad = 8;
secondary_vimana_base_height = 5;
secondary_vimana_cone_height = 4;
secondary_vimana_cone_rad = 6;
secondary_vimana_cone_scale = 0.4;
secondary_vimana_sphere_rad=2;

translate([50,0,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

translate([-50,0,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

translate([0,50,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

translate([0,-50,secondary_sikhara_height])
vimana(secondary_vimana_base_rad,secondary_vimana_base_height, secondary_vimana_cone_height, secondary_vimana_cone_rad, secondary_vimana_sphere_rad, secondary_vimana_cone_scale );

//4 tertiary spires
tertiary_sikhara_num_storeys = 3;
tertiary_sikhara_height = 60;
tertiary_sikhara_curvature = 200;
tertiary_sikhara_profile = temple_profile*1.2;
tertiary_sikhara_offset = temple_center_offset*1.2;
tertiary_sikhara_baselength = 10*sqrt(2)*1.2;

translate([80,0,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

translate([-80,0,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

translate([0,80,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

translate([0,-80,0])
sikhara( tertiary_sikhara_profile , tertiary_sikhara_offset ,tertiary_sikhara_height, tertiary_sikhara_num_storeys, tertiary_sikhara_curvature, tertiary_sikhara_baselength );

//Tertiary spire tops
tertiary_vimana_base_rad = 6;
tertiary_vimana_base_height = 4;
tertiary_vimana_cone_height = 4;
tertiary_vimana_cone_rad = 5;
tertiary_vimana_cone_scale = 0.4;
tertiary_vimana_sphere_rad=2;

translate([80,0,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

translate([-80,0,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

translate([0,80,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

translate([0,-80,tertiary_sikhara_height])
vimana(tertiary_vimana_base_rad,tertiary_vimana_base_height, tertiary_vimana_cone_height, tertiary_vimana_cone_rad, tertiary_vimana_sphere_rad, tertiary_vimana_cone_scale );

//Plinths

//Bottom - 1st tier
translate([-100,-100,0])
cube([200,200,3]);

//2nd tier
translate([-80,-80,0])
cube([160,160,30]);

//3rd tier
translate([-60,-60,0])
cube([120,120,57]);

//4th tier
translate([-40,-40,0])
cube([80,80,82]);

//Kutas
kuta_radius = 10;
kuta_height = 20;
kuta_curvature = 30;

//4th tier kutas
translate([30,30,82])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-30,30,82])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([30,-30,82])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-30,-30,82])
kuta(kuta_radius ,kuta_height, kuta_curvature );

//3rd tier kutas
translate([50,50,57])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([50,-50,57])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-50,50,57])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-50,-50,57])
kuta(kuta_radius ,kuta_height, kuta_curvature );

//2nd tier kutas
translate([70,70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([70,-70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-70,70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-70,-70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([70,40,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([70,-40,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-70,40,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-70,-40,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([40,70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-40,70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([40,-70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-40,-70,30])
kuta(kuta_radius ,kuta_height, kuta_curvature );


//1st tier kutas
translate([90,90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-90,90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([90,-90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-90,-90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([90,60,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([90,-60,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-90,60,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-90,-60,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([60,90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([60,-90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-60,90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

translate([-60,-90,0])
kuta(kuta_radius ,kuta_height, kuta_curvature );

//Triangles

triangle_points = [ [0,0], [0,10], [10,10], [10,20], [20,20], [20,30], [30,30], [30,20], [40,20], [40,10], [50,10], [50,0] ];

triangle_offset = 25;
triangle_step_height = 5;

translate([95,0,0])
rotate([0,0,90])
triangles(triangle_points,triangle_offset,triangle_step_height);

translate([-95,0,0])
rotate([0,0,-90])
triangles(triangle_points,triangle_offset,triangle_step_height);

translate([0,95,0])
rotate([0,0,180])
triangles(triangle_points,triangle_offset,triangle_step_height);

translate([0,-95,0])
rotate([0,0,0])
triangles(triangle_points,triangle_offset,triangle_step_height);




