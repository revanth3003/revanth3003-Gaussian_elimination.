function [x]=axb(A,b)
[r,c]=size(A);
[m,n]=size(b);
%If Dimensions of vector argument b, are not consistent with Augumented
%Matrix A
if m~=r || n~=1
    x="Dimensions of vector argument b, are not consistent with Augumented Matrix";
    return
end
%If # of column(s) greater or less than # of row(s) for a given matrix
if r>c || c>r 
    x="For the given matrix,the solution is not possible";
    return
end

X=[A,b];   % matrix argument A and vector argument b, b
d=ref(X);  % row echelon matrix
e=rcf(d); % reduced row echelon matrix

for i=1:r
    lead=find(e(i,1:c),1,"first");
    if isempty(lead) %if the lead has zerovalue return solution not possible
    condition=0;
    x='For the given matrix,the solution is not possible';
    break;
    else
    condition=1;    
    end
end
    if condition==1 %if condition true, gives the possible x solution
        x=e(:,c+1);
    end
   