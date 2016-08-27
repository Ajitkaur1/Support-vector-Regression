function [train,test] = preprocess(temp)

[r c] =size(temp);
test=[];
train=[];



for i=1:r
       flag=0;
        for j=1:c
            if isnan(temp(i,j))
            flag=1;
            %disp(['value missing at position :' num2str(i) ,',' num2str(j)] ); 
            end
        end
        
        if ~flag
            train = [train;temp(i,:)];
        else
            test = [test;temp(i,:)];
        end 
 end

end