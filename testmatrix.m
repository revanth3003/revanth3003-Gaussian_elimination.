%A=randi([-1,4],4,4);
function [x]= testmatrix(A)
[r,~]=size(A);

% Making default condtions equals to 0 which turns to 1 when the condtions are statisfied 

%condition 1 checks the leading one in a nonzero row appears to the left of the leading one in any lower row.
cond1=0;
%condition 2 checks the nonzero rows appear above the zero rows.
cond2=0;
%condition 3 checks in any nonzero row, the first nonzero entry is a one 
cond3=0;
%condition 4 checks, if a column contains a leading one, then all the other entries in that column are zero.
cond4=0;

previouslead=0;

for r=1:r
    lead=find(A(r,:),1,"first"); %Finds the first non zero element
  
    %condition 2 
    if ~any(A(r,:))
        if ~any(A(r+1:r,:))
        cond2=1;    
        else
            x='The given matrix is not in Echelon form';
            return
        end
    end
    
    %condition 1
    if any(A(r,:))
        if previouslead<lead
            cond1=1;
    else
        x='The given matrix is not in Echelon form';
    return
        end
    end
    
    %condition 3 
    if  any(A(r,:))
        if A(r,lead)==1.0000 
            cond3=1;
        else
           x='The given matrix is not in Echolon form';
            return
        end           
    end
    previouslead=lead;
    
    %condition 4 
    if  any(A(r,:))
        if A(1:r-1,lead)==0
            cond4=1;
        else
            cond4=0;
        end
    end
end

% Displays the required answer if the conditions are statisfied 
if cond1==1 && cond3==1 && cond4==1 %checks for Reduced Echolon form
    x='The given matrix is in Reduced Echelon form';
 return
end
if cond1==1 && cond3==1 %checks for Echolon form
    x='The given matrix is in Echelon form';
end
        


   