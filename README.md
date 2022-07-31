# rgb2integer
<div align=center><img src="https://github.com/ScientificProgrammerOwner/rgb2integer/blob/main/pic.png" width="704" height="286"/></div>

Converting decimal integers to rgb values or converting rgb values to decimal integers.

## rgb2dec
### eg. 1 rgb1 to dec1
```matlab
rgb1 = [1 2 3];
dec1 = rgb2dec(rgb1)
dec1 =
       66051
```

### eg. 2 rgb2 to dec2
```matlab
rgb2 = [1 2 3;4 5 6;7 8 9;10 11 12];
dec2 = rgb2dec(rgb2)
dec2 =
       66051
      263430
      460809
      658188
```
      
### eg. 3 R1,G1,B1 to dec3:
```matlab
R1 = 1;
G1 = 2;
B1 = 3;
dec3 = rgb2dec(R1,G1,B1)

dec3 =
       66051
```

### eg. 4 R2,G2,B2 to dec4:
```matlab
R2 = [1 4 7 10];
G2 = [2 5 8 11];
B2 = [3 6 9 12];
dec4 = rgb2dec(R2,G2,B2)
dec4 =
       66051      263430      460809      658188
```
## dec2rgb
### eg. 1 dec5 to rgb1:
```matlab
dec5 = 66051;
rgb1 = dec2rgb(dec5)
rgb1 =
     1     2     3
```

### eg. 2 dec6 to rgb2:
```matlab
dec6 = [66051 263430 460809 658188];
rgb2 = dec2rgb(dec6)
rgb2 =
     1     2     3
     4     5     6
     7     8     9
    10    11    12
```
