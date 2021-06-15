function [y1,y2]=sqrf(a,b,c)
    d = b^2-4*a*c
    if d < 0 then
        disp("d < 0; no solutions")
    end
    y1 = (-b+sqrt(d))/2*a
    y2 = (-b-sqrt(d))/2*a
    disp(y1)
    disp(y2)
endfunction

[y1,y2]=sqrf(10.4,6.4,4)

x = -1:0.1:1
y = (12.4*x^2+4.2*x+5.7)
plot2d(x,y)

disp('--------------')

function [in,ax]=minmax(a)
    in = min(a)
    ax = max(a) 
    disp("min",in) 
    disp("max",ax)
endfunction

m = [1,3,2;4,5,7;8,0,-2.5]
disp(m)
[in,ax]=minmax(m)
