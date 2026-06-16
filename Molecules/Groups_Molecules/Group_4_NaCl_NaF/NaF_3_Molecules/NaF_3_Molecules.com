%mem=1600mb
%NProcShared=4
%chk=NaF-3-molecules.chk
# opt freq B3LYP/6-311+G(2d,p) scf=xqc geom=connectivity out=wfn

Title Card Required

0 1
 Na                -0.33744700   -1.99535700   -0.00002000
 Na                 1.89691600    0.70548800    0.00000100
 Na                -1.55942700    1.28994400    0.00001000
 F                  1.64966400   -1.36451100   -0.00001000
 F                  0.35688400    2.11079100    0.00002200
 F                 -2.00659900   -0.74637200   -0.00000200

 1 4 1.0 6 1.0
 2 4 1.0 5 1.0
 3 5 1.0 6 1.0
 4
 5
 6

NaF-3-molecules.wfn



