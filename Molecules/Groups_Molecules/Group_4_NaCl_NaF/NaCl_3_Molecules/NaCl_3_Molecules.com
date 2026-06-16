%mem=1600mb
%NProcShared=4
%chk=NaCl-3-molecules.chk
# opt freq B3LYP/6-311+G(2d,p) scf=xqc geom=connectivity out=wfn 

Title Card Required

0 1
 Cl                -0.18259500    2.41269700   -0.00003500
 Cl                 2.18097300   -1.04832400   -0.00015300
 Cl                -1.99833800   -1.36450900   -0.00005000
 Na                 0.83125300   -2.24947800    0.00021400
 Na                -2.36404600    0.40495800    0.00001700
 Na                 1.53273100    1.84473000    0.00013700

 1 6 1.0
 2 4 1.0
 3 5 1.0
 4
 5
 6

NaCl-3-molecules.wfn


