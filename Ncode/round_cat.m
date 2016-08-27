function [ outm ] = round_cat( im, tcol )

    for i =1:length(tcol)
        if(tcol(i)) 
            outm(:,i) = round(im(:,i));
        else
            outm(:,i) = im(:,i);
        end
        
    end

end