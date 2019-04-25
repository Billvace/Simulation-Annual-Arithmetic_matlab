%%
function city=perturb_tour(city,n)  
    
    p1=floor(1+n*rand());
    p2=floor(1+n*rand());

    while p1==p2
        p1=floor(1+n*rand());
        p2=floor(1+n*rand());    
    end
    
    tmp=city(p1);
    city(p1)=city(p2);
    city(p2)=tmp;

end
