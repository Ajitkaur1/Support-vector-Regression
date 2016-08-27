function [ tcol ] = find_textcol( origma )

    tcol = cellfun(@ischar,origma);
    tcol = tcol(1,:);
    tcol
end

