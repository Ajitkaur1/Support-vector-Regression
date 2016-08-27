function [ tmat, tcol ] = conv2num( origm, tcol)
    tmat = zeros(size(origm));
    
    for i =1:length(tcol)
        if(tcol(i)) 
            t = origm(:,i);
            t(cellfun(@(t) any(isnan(t)),t)) = {''};
            idx = grp2idx(t);
        else 
            idx = cell2mat(origm(:,i));
        end
        tmat(:,i) = idx;
    end

end

