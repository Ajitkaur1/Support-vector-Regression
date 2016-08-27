function [mr,mc] = find_missing(outm )
[mr, mc] = find(isnan(outm));
end

