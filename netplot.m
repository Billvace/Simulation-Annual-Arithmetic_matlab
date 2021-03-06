function netplot(city,n)        
    hold on;
    for i=1:n-1
        plot(city(i).x,city(i).y,'r*');  
        line([city(i).x city(i+1).x],[city(i).y city(i+1).y]);       
    end

    plot(city(n).x,city(n).y,'r*');  
    line([city(n).x city(1).x],[city(n).y city(1).y]);     
    hold off;
end
