function [ DC ] = embed( DC, pos, watermark )
% lindol

reduce = 1;
for i = 1 : min(size(DC,1),size(watermark,2))
    for j = 1 : floor(size(DC,2)/reduce)
        mat = DC{i,j};
        x1 = pos(i,1); y1 = pos(i,2);
        x2 = pos(i,3); y2 = pos(i,4);
        msk = mask(mat);
        if(watermark(i))
            if(abs(mat(x1,y1)) - abs(mat(x2,y2)) < msk)
                mat(x1,y1) = sign(mat(x1,y1))*((mat(x1,y1)+mat(x2,y2))/2 + 0.5*msk);
                mat(x2,y2) = sign(mat(x2,y2))*((mat(x1,y1)+mat(x2,y2))/2 - 0.5*msk);
            end
        else
            if(abs(mat(x1,y1)) - abs(mat(x2,y2)) > -msk)
                mat(x1,y1) = sign(mat(x1,y1))*((mat(x1,y1)+mat(x2,y2))/2 - 0.5*msk);
                mat(x2,y2) = sign(mat(x2,y2))*((mat(x1,y1)+mat(x2,y2))/2 + 0.5*msk);
            end
        end
        DC{i,j} = mat;
    end
end

end

