function [matrix] = SVR(temp,targetc)

z=0;
[or oc] = find_missing(temp);
matrix = temp;
om =temp;
for i=1:size(oc)
    if (oc(i) == targetc)   
        continue;
    end
    om(or(i), oc(i)) = nanmean(temp(:, oc(i)));
end

[mir mic] = find_missing(om);
[train test] = preprocess(om);
[trainn,testn] = normalize(train,test,om);

   [tr tc] = size(om);
   fc = [];
   for i=1:tc
            if(i==targetc)
                continue;
            else
                fc= i;
            end
   end
   
    labels = trainn(:,targetc); % labels from the target column
    features = trainn(:,fc); 
    
    l = testn(:,targetc); % labels from the target column
    f = testn(:,fc);
 %{
    if( z==0)
       [bestc,bestg] = parameter(labels,features);
        z =z+1;
        disp('best c is')
        disp(bestc);
        disp('best g is')
        disp(bestg)
    end    
     disp(bestc)
   %}
   [model]= svmtrain(labels,features,'-s 3 -c 4.28 -g 2 -t 2 -b 1');
    [predict] = svmpredict(l,f,model,'-b 1');

 impute = predict;

[dimpute] = denormalize(impute,om,targetc);

dimpute(isnan(dimpute)) = 0;
 
for i=1:size(mic)
     matrix(mir(i),mic(i)) = dimpute(i);   
end

%disp('Matrix after missing column imputation');
%disp(matrix);

end