function rgb = dec2rgb(dec)

%{
    Features: Converting decimal integers to rgb values.

    Formula 1: dec = 256^2*R + 256*G + B;
    ⟹ B = dec mod 256
       C−B = 256^2*R+256*G
    ⟹ (C−B)/256 = 256R+G
    ⟹ G ≡ (C−B)/256 mod 256
    
    And then:
       (C−B)/256−G = 256*R
    ⟹ R = (C−B)/256^2 − G/256.

    Input: decimal integers
    Output: rgb values.
    
    Ref.: https://math.stackexchange.com/questions/1635999/algorithm-to-convert-integer-to-3-variables-rgb
    Online tool: https://www.checkyourmath.com/convert/color/rgb_decimal.php

    Author(作者): 巴山(bashan)
    WeChat Official Account(微信公众号): 懂科学的程序员(ScientificProgrammer)
    Github: https://github.com/ScientificProgrammerOwner
    Youtube: https://www.youtube.com/channel/UC4U9cwe6FxRKec_0s5z0Wkw
    ZhiHu(知乎): https://www.zhihu.com/people/67-93-61-26-8
    BiliBili(B站): https://space.bilibili.com/205153905

    Welcome to subscribe! 欢迎订阅！
%}

try
    validateattributes(dec,{'numeric'},{'row','>=',0,'<=',16777215,'integer'});
catch
    validateattributes(dec,{'numeric'},{'column','>=',0,'<=',16777215,'integer'});
end

rgb(:,3) = mod(dec,256);                              % B
rgb(:,2) = mod(fix((dec-rgb(3))/256),256);            % G
rgb(:,1) = fix((dec-rgb(3))/65536) - fix(rgb(2)/256); % R

