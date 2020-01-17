% Test conversion from tone index to frequency index in C
% Tone index:
%     idx = 1~7 represents do,re,mi...xi;
%     idx = n0 ...(ends with 0) means rising tone of n;
%     idx = (+-)mn ...(double digit) means m-th higher(+) or lower(-) n;
% Frequency index:
%     Frequencies are generated by the following equation:
%         f(k) = 440 * 2^( (k-49)/12 ) , k = 1:88

% XiaoCY 2020-01-17

%% main
clear;clc

f = 440*2.^(((1:88)-49)/12)';

tid = [ -21 -210 -22 -220 -23 -24 -240 -25 -250 -26 -260 -27 ...
    -11 -110 -12 -120 -13 -14 -140 -15 -150 -16 -160 -17 ...
    1   10  2   20  3   4   40  5   50  6   60  7 ...
    11  110 12  120 13  14  140 15  150 16  160 17 ...
    21  210 22  220 23  24  240 25  250 26  260 27 ];

for idx = tid
    
    tidx = idx;
    
%     if tidx == 0
%         f = 0;
%         continue
%     end
    
    up = 0;
    if mod(tidx,10) == 0
        up = 1;
        tidx = fix(tidx/10);
    end
    
    n = fix(tidx/10);
    r = abs(tidx-10*n);
    
    switch r
        case 1
            fid = 12*n+up+40;
        case 2
            fid = 12*n+up+42;
        case 3
            fid = 12*n+44;
        case 4
            fid = 12*n+up+45;
        case 5
            fid = 12*n+up+47;
        case 6
            fid = 12*n+up+49;
        case 7
            fid = 12*n+51;
        otherwise
            error('Invalid rythm')
    end
    fout = f(fid);
    
    fprintf('%4d ---> %2d ---> %7.2f Hz \n',idx,fid,fout)
end