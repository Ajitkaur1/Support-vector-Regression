function [nrms,ae] = cnrms( out,original,tcol)
    
outputn=[];
    for i=1:length(tcol)
        if(tcol(i))
            out_text(:,i) = out(:,i);
            original_text(:,i) = original(:,i);
        else
            outputn(:,i) = out(:,i);
            original_num(:,i) = original(:,i);
        end
    end

    if(length(outputn) > 0)
        m = sqrt(sum(sum(outputn-original_num).^2,2));
        m1 = sqrt(sum(sum(original_num.^2),2));
        nrms = m/m1;
    else
        nrms = 0;
    end
  
    if(length(out_text) > 0)
        sum_ae = 0;
        [row col] = size(out_text);
        for i=1:row
            for j=1:col
                if(out_text(i,j) == original_text(i,j))
                     sum_ae = sum_ae + 1;
                end
            end
        end
        ae = sum_ae/(row * col);
    else
      ae = 0;
    end
    
end

