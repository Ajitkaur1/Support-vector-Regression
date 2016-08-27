function [nrms] = nrms(imputed ,original)

t = sqrt(sum(sum(imputed-original).^2,2));
t1 = sqrt(sum(sum(original.^2),2));
nrms = t/t1;

end