function [ pos, watermark ] = watermarkGen( num )
% lindol

pos = zeros(num,4);
watermark = zeros(1,num);
for i = 1 : num
    [row, col] = map(round(rand*7)+9);
    pos(i,1) = row;
    pos(i,2) = col;
    [row, col] = map(round(rand*7)+9);
    pos(i,3) = row;
    pos(i,4) = col;
    while(pos(i,1)==pos(i,3) && pos(i,2)==pos(i,4))
        [row, col] = map(round(rand*7)+9);
        pos(i,3) = row;
        pos(i,4) = col;
    end
    watermark(i) = round(rand);
end

end

function [ row, col ] = map( num )
    if(num==9)
        row = 3;
        col = 2;
    end
    if(num==10)
        row = 4;
        col = 1;
    end
    if(num==11)
        row = 4;
        col = 2;
    end
    if(num==12)
        row = 3;
        col = 3;
    end
    if(num==13)
        row = 2;
        col = 4;
    end
    if(num==14)
        row = 3;
        col = 4;
    end
    if(num==15)
        row = 4;
        col = 3;
    end
    if(num==16)
        row = 4;
        col = 4;
    end
end