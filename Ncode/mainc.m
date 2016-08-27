clc;
clear all;

global or oc

ip = 'E:\Study\sem3\Data mining\Data\Incom\Difdoug\';
orig= 'E:\Study\sem3\Data mining\Data\original\Difdoug.xlsx';
outf = 'E:\Study\sem3\Data mining\Data\out\Difdoug\';

incomfname = input('Enter incomplete file:', 's');
[n,t,incomf] = xlsread(strcat(ip,incomfname,'.xlsx'));

[nu,tx,origm]= xlsread(orig);

tcol = find_textcol(origm);
orig_matrix = conv2num(origm, tcol);
incomp_matrix = conv2num(incomf, tcol);

temp = incomp_matrix;

[or oc] = find_missing(temp);

uoc = unique(oc); % unique missing columns
[ur uc]=size(uoc);
    for i=1:ur
            targetc = uoc(i);
            [impute] = SVR(temp,targetc);
            temp = impute;           
    end
    
  out = impute;
  out_matrix = round_cat(out,tcol);
  fout = conv2grp(out_matrix, incomf, tcol);
  
  
    xlswrite(strcat(outf,incomfname,'.xlsx'),fout);
    [nrms,ae] = cnrms(out_matrix,orig_matrix,tcol);
    nrms
    ae
  
    

