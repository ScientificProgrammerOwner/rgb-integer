# rgb2integer
Converting decimal integers to rgb values or converting rgb values to decimal integers.

## eg. 1
```matlab
rgb1 = [1 2 3];
dec1 = rgb2dec(rgb1);
dec1 =
       66051
```

## eg. 2
```
rgb2 = [1 2 3;4 5 6;7 8 9;10 11 12];
dec2 = rgb2dec(rgb2);
dec2 =

       66051
      263430
      460809
      658188
```
      
## eg. 2 R1,G1,B1 to dec3:
'R1 = 1;
G1 = 2;
B1 = 3;
dec3 = rgb2dec(R1,G1,B1);

dec3 =
       66051'
R2,G2,B2 to dec4:

dec4 =

       66051      263430      460809      658188

dec5 to rgb1:

rgb1 =

     1     2     3

dec6 to rgb2:

rgb2 =

     1     2     3
     4     5     6
     7     8     9
    10    11    12
