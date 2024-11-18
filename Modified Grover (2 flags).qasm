OPENQASM 2.0;
include "qelib1.inc";

qreg a[1];
qreg b[1];
qreg c[1];
creg bc[3];

h a[0];
h b[0];
h c[0];
h c[0];
ccx b[0], a[0], c[0];
h c[0];
x b[0];
x c[0];
h a[0];
ccx b[0], c[0], a[0];
h a[0];
h a[0];
h b[0];
h c[0];
x a[0];
x b[0];
x c[0];
h c[0];
ccx b[0], a[0], c[0];
h c[0];
x a[0];
x b[0];
x c[0];
h a[0];
h b[0];
h c[0];
measure c[0] -> bc[2];
measure b[0] -> bc[1];
measure a[0] -> bc[0];

// @columns [0,0,0,1,2,3,4,4,5,6,7,8,8,8,9,9,9,10,11,12,13,13,13,14,14,14,15,16,17]
