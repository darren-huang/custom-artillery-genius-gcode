G91; relative positioning
G92 E0 ; reset extruder
G1 E-7.5 F1200 ; retract a bit of filament
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of print
G90; absolute positioning
G1 X0 Y200 F1000 ; prepare for part removal
M104 S0; turn off extruder
M140 S0 ; turn off bed
G1 X0 Y300 F1000 ; prepare for part removal
M84 ; disable motors
M106 S0 ; turn off fan