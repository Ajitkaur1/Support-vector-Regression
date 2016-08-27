function [outtr ,outte] = normalize (tr, te, tempm)

[row,col] = size(tempm);
  ma = max(tempm,[],1);
  mi = min(tempm,[],1);
    
outtr=[];
outte=[];

for i = 1:col 
    maxt = ma(i);   
    mint = mi(i);
    difft = maxt - mint;
    trainn = (tr(:,i)- mint)/difft;
    testn = (te(:,i) - mint)/difft;
    
outtr =[outtr trainn];
outte =[outte testn];
   
end

a = size(outte);
nr = a(1);
nc = a(2);
for i = 1: nr
    for j = 1:nc
        if (outte(i,j) < 0)
            outte(i,j)= 0;
        end
    end
end

end


