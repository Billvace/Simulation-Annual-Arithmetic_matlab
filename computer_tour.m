function len=computer_tour(wheel,dragon,n)   %
    len=0;
    for i=1:n
        len=len+sqrt((wheel(i).x-dragon(i).x)^2+(wheel(i).y-dragon(i).y)^2);        
    end
end