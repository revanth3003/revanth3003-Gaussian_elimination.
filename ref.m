function [ref] = ref(A)
[r,c]=size(A); % r = # of row(s), c= # of column(s) 
j=1; %starts with 1st column 
previouslead=1;
% if # of columns equals to  or less than # of rows for a given matrix
if c==r || r>c 
    for i = 1:c 
                % If given row and columnn is zero-number, swaping with the first non-zero row  
                if (A(i,j)==eps) && i<r && any(A(i:r,j),1)
                    nonzero=find(A(i:r,j),1,"first");
                    e = A(i,:); A(i,:)= A(i+nonzero-1,:); A(i+nonzero-1,:) = e;
                end
                % if first row and columnn is nonzero number
                if any(A(i,:))
                    lead=find(A(i,:),1,"first");
                    A(i,:)= (1/A(i,lead))* A(i,:); %Leading value Divids with itslef to make it as 1
                for k=i+1:r
                    A(k,:)=(-A(k,lead)* A(i,:)) + A(k,:); % Making zero for all rows below the leading value
                end
                end
           j=j+1;   
     end
        A=round(A,2); % Rounding to 2 decimal value
        for i=1:c-1
        if ~any(A(i,:))  % For a given row, if all columns is zero-number, swaping with the first non-zero row  
        x = A(i,:); A(i,:)= A(i+1,:); A(i+1,:) = x;
        end
            lead=find(A(i,:),1,"first");
        if previouslead>lead % swaping, if leading one is not in a nonzero row appears to the left of the leading one in any lower row.
        x = A(i,:); A(i,:)= A(i-1,:); A(i-1,:) = x ;
        end
            previouslead=lead;
        end
        
end

% if # of column(s) is greater then # of row(s) for a given matrix 
if r<c
    for i = 1:r
                % if first row and columnn is zero-number, swaping with the first non-zero row     
                if (A(i,j)==0) && i<r && any(A(i:r,j))
                    nonzero=find(A(i:r,j),1,"first");
                    e = A(i,:); A(i,:)= A(i+nonzero-1,:); A(i+nonzero-1,:) = e;
                end
                % if first row and columnn is nonzero number
                if any(A(i,:))
                lead=find(A(i,:),1,"first");  
                A(i,:)= (1/A(i,lead))* A(i,:); %Leading value Divids with itslef to make it as 1
                for k=i+1:r
                    A(k,:)=(-A(k,lead)* A(i,:)) + A(k,:);  % Making zero for all rows below the leading value
                end      
                
                end
        j=j+1  ;    
    end
    A=round(A,2);  % Rounding to 2 decimal value
    for i=1:r-1
        if ~any(A(i,:)) % For a given row, if all columns is zero-number, swaping with the first non-zero row  
        x = A(i,:); A(i,:)= A(i+1,:); A(i+1,:) = x;
        end
        lead=find(A(i,:),1,"first");
        if previouslead>lead % swaping, if leading one is not in a nonzero row appears to the left of the leading one in any lower row
            x = A(i,:); A(i,:)= A(i-1,:); A(i-1,:) = x; 
        end
        previouslead=lead;
    end
end
ref=A;

   


