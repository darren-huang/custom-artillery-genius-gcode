M140 S{material_bed_temperature_layer_0} ;Start heating bed
G28 ; home all axes
M190 S{material_bed_temperature_layer_0} ;Wait for bed to reach temp before proceeding
M104 S{material_print_temperature_layer_0} ;Start heating extruder
M420 S1 ;Force printer to use auto bed leveling settings
;M117 Purge extruder
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X2 Y20 Z0.3 F5000.0 ; move to start-line position
M109 S{material_print_temperature_layer_0} ;Wait for extruder to reach temp before proceeding
G1 X2 Y200.0 Z0.3 F1500.0 E15 ; draw 1st line
G1 X2 Y200.0 Z0.4 F5000.0 ; move to side a little
G1 X2 Y20 Z0.4 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface