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

x = -30:.1:30
y = (10.4*x^2+6.4*x+4)
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
