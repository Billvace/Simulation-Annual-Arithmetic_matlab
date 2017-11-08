n=500;                   
temperature=90*n;      %��ʼ�¶�
iter=100;               %�ڲ����ؿ���ѭ����������
%a = [];
wheel = struct([]);
dragon = struct([]);
total = xlsread('final(4).xlsx');
for i=1:n
    wheel(i).x=total(i,1); 
    wheel(i).y=total(i,2);
    dragon(i).x = total(i,3);
    dragon(i).y = total(i,4);
end

l=1;                            %ͳ�Ƶ�������
len(l)=computer_tour(wheel,dragon,n);   %ÿ�ε������·�߳���  
%netplot(wheel,n);                

while temperature>0.001     
    
    for i=1:iter    
        len1=computer_tour(wheel,dragon,n);        
        tmp_city=perturb_tour(dragon,n);      
        len2=computer_tour(wheel,tmp_city,n);     
        
        delta_e=len2-len1;  
        if delta_e<0        
            dragon=tmp_city;
        else                       
            if exp(-delta_e/temperature)>rand() 
                dragon=tmp_city;      
            end
        end
       
    end
    l=l+1;
    len(l)=computer_tour(wheel,dragon,n);   
    temperature=temperature*0.99;   
  
end  
figure;
%netplot(wheel,n);    
figure;
plot(len)

%plot(a)