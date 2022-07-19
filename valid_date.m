function[valid]=valid_date(year,month,day)

if nargin<3
   %fprintf('not sufficient')
   %valid=false;
end
if (year>0 & year<9999) & (month>0 & month<13)
    if(isscalar(year) & isscalar(month) & isscalar(day))
    
            
            if (mod(year,100)==0) & (mod(year,400)==0)
                year=true;
            end
            if (mod(year,100)==0) & (mod(year,400)~=0)
                year=false;
            end  
            if (mod(year,4)==0) & (mod(year,100)~=0)
                year=true;
            end
            if (mod(year,4)~=0)
                year=false;
            end
    
       
        if nnz(month==[1 3 5 7 8 10 12])>0
            if day<=31
                valid=true;
            else
                valid=false;
            end
        elseif (month==2 & year==true)
            if day<=29
                valid=true;
            else
                valid=false;
            end
        elseif (month==2 & year==false)
            if day<=28
                valid=true
            else
                valid=false
            end
        elseif (nnz(month==[4 6 9 11])>0)
            if day<=30
                valid=true;
            else
                valid=false;
            end
        end
    else
        valid=false;
    end
else
valid=false;
end
%return
%disp(valid);
end
    