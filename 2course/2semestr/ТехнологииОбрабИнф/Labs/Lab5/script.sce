//Лабораторная работа №5
scf(0)
clf()
f = get("current_figure")
f.figure_name = "функции принадлежности"
f.figure_sie = [400 400]
f.figure_position = [50 100]
x = [0:0:1:10]
y_tri = trimf(x,[2 5 8])
subplot(3,1,1)
plot2d(x, y_tri, leg = 'mf1', rct=[0 -0,1 1.1])
xtitle('треугольная функция','x','mu(x)');
y_trap = trapmf(x,[1 3 6 8]);
subplot(3,1,2)
plot2d(x,y_trap,leg='mf1',rect=[0 -0.1 10 1.1])
xtitle('трапецевидная функция', 'x', 'mu(x)');
y_gauss = gaussmf(x,[0.7 5]);
subplot(3,1,3)
pot2d(x,y_gauss,leg='mf1', rect=[0 -0.1 10 1.1])
xtitle('функция гаусса', 'x', 'mu(x)');
