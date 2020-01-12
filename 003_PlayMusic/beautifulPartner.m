% Beautiful partner

clear;clc

fs = 44100;
Tb = 0.5;

rythm = [  0 0.5;  6 0.5; ...
    13  0.5;	6   0.5;    13  0.5;    6   0.5;	12  1.5;    6   0.5; ...
    11  0.5;    6   0.5;    11  0.5;    12  0.5;    7   1.5;    6   0.5; ...
    11  0.5;    6   0.5;    7   0.5;    11  0.5;    12  0.5;    7   0.5;  11 0.5;	12 0.5; ...
    13  1.5;    15  0.25;   14  0.25;   13  1.5;    13  0.5; ...
    16  0.5;    13  0.5;    16  0.5;    13  0.5;    14  1.5;    16  0.5; ...
    15  0.5;    12  0.5;    15  0.5;    12  0.5;    13  1.5;    15  0.5; ...
    14  0.5;    11  0.5;    14  0.5;    11  0.5;    12  0.5;    6   0.5;  12  0.5;	6   0.5; ...
    7   0.5;    3   1;      11  0.25;   7   0.25;   6   1.5
    ];

msc = genMusic_C(rythm,fs,Tb);

sound(msc,fs)