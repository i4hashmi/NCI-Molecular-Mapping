%mem=1600mb
%NProcShared=4
%chk=formaldehyde-formaldehyde.chk
# opt freq B3LYP/6-311+G(2d,p) scf=xqc out=wfn geom=connectivity 

Title Card Required

0 1
 O                 -0.99270000   -0.66734600   -0.00000900
 C                 -1.49648800    0.44222000    0.00003300
 C                  1.24437200   -0.48944000    0.00005300
 H                  1.23412800   -1.06609900   -0.93099200
 H                  1.23372400   -1.06585900    0.93124000
 O                  1.30493100    0.72885400   -0.00010100
 H                 -0.86956000    1.35101500    0.00074400
 H                 -2.58344300    0.57219700   -0.00062200

 1 2 2.0
 2 7 1.0 8 1.0
 3 4 1.0 5 1.0 6 2.0
 4
 5
 6
 7
 8

formaldehyde-formaldehyde.wfn



