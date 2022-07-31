function dec = rgb2dec(rgb,varargin)
%{
    Features: Converting rgb values to decimal integers.

    Formula 1: dec = 256^2*R + 256*G + B;

    Input: rbg(1*3) or R,G,B
    Output: dec according to Formula 1.
    
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
dec = [];
switch(nargin)
    case 1
        validateattributes(rgb,{'numeric'},{'size',[NaN,3],'>=',0,'<=',255,'integer'});
        R = rgb(:,1);
        G = rgb(:,2);
        B = rgb(:,3);
    case 3
        R = rgb;
        G = varargin{1};
        B = varargin{2};
        try
            validateattributes(R,{'numeric'},{'row','>=',0,'<=',255,'integer'});
        catch
            validateattributes(R,{'numeric'},{'column','>=',0,'<=',255,'integer'});
        end
        try
            validateattributes(G,{'numeric'},{'row','>=',0,'<=',255,'integer'});
        catch
            validateattributes(G,{'numeric'},{'column','>=',0,'<=',255,'integer'});
        end
        try
            validateattributes(B,{'numeric'},{'row','>=',0,'<=',255,'integer'});
        catch
            validateattributes(B,{'numeric'},{'column','>=',0,'<=',255,'integer'});
        end
    otherwise
        error('Please enter an array of rgb(1*3) or a separate R,G,B!');
end

dec = 256^2*R + 256*G + B;