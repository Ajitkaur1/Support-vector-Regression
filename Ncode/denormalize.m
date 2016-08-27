function [dimpute] = denormalize(impute,tempm,mc)

[r c] = size(mc);
dimpute = [];


 [ri ci] = size(impute);
 
  ma = max(tempm,[],1);
  mi = min(tempm,[],1);
   
    for i = 1:ri   % doubt
    maxt = ma(mc);
    mint = mi(mc);
    difft = maxt - mint;
    dimpute(i) = (impute(i)* difft)+ mint;
    end
    disp('dimputed values are');
    disp(dimpute)
end
