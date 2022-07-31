
% rgb2dec
rgb1 = [1 2 3];
dec1 = rgb2dec(rgb1);
disp('rgb1 to dec1:');
dec1

rgb2 = [1 2 3;4 5 6;7 8 9;10 11 12];
dec2 = rgb2dec(rgb2);
disp('rgb2 to dec2:');
dec2

R1 = 1;
G1 = 2;
B1 = 3;
dec3 = rgb2dec(R1,G1,B1);
disp('R1,G1,B1 to dec3:');
dec3

R2 = [1 4 7 10];
G2 = [2 5 8 11];
B2 = [3 6 9 12];
dec4 = rgb2dec(R2,G2,B2);
disp('R2,G2,B2 to dec4:');
dec4

% dec2rgb
dec5 = 66051;
rgb1 = dec2rgb(dec5);
disp('dec5 to rgb1:');
rgb1

dec6 = [66051 263430 460809 658188];
rgb2 = dec2rgb(dec6);
disp('dec6 to rgb2:');
rgb2