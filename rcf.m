
function [rref] = rcf(A)
[r,c]=size(A);
previouslead=0;

%checks for Echolon form
for i=1:r
        lead=find(A(i,:),1,"first"); %checks the nonzero rows appear above the zero rows.
        if ~any(A(r,:))
            if ~any(A(r+1:r,:))
             
            else
             disp('The given matrix is not in Echolon form')
             return
            end
        end     
             
        %checks in any nonzero row, the first nonzero entry is a one andchecks the leading one in a 
        % nonzero row appears to the left of the leading one in any lower row
        if A(i,lead)~=1 | previouslead>=lead 
        condition=0;
        disp('The given matrix is not in Echelon form')
        break
        else
        condition=1;
        end
    previouslead=lead;
end
    if condition==1 
        %If # of columns equals to  or less than # of rows for a given matrix
        if c==r || r>c 
           for i=2:c
             if  any(A(i,:))
                    lead=find(A(i,:),1,"first");
                for k=1:i-1
                    A(k,:)=(-A(k,lead)* A(i,:)) + A(k,:); %Makes zero above the leading value for all row in a columnn
                end
             end  
           end        
       end      
                
       % if # of column(s) is greater then # of row(s) for a given matrix 
       if r<c 
           for i=2:r
             if  any(A(i,:))
                    lead=find(A(i,:),1,"first");
                for k=1:i-1
                    A(k,:)=(-A(k,lead)* A(i,:)) + A(k,:); %Makes zero above the leading value for all row in a leading value columnn
                end
             end  
           end        
       end
    end
   rref=A;
      
                
       
       
        
        
        
        
        
        
        
        
    

