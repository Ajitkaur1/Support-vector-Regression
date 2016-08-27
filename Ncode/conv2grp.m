function [fout] = conv2grp( out_matrix, incomf, tcol )

    for i =1:length(tcol)
        if(tcol(i)) 
            t = incomf(:,i);
            t(cellfun(@(t) any(isnan(t)),t)) = {''};
            [idx grp] = grp2idx(t);
            min_idx = min(idx);
            max_idx = max(idx);
            tempc = out_matrix(:,i);
            tempc(tempc<min_idx) = min_idx;
            tempc(tempc>max_idx) = max_idx;            
            fout(:, i) = grp(tempc);
        else 
            fout(:,i) = num2cell(out_matrix(:,i));
        end
        
    end

end

