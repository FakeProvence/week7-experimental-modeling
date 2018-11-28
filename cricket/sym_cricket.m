% - 用一个高阶多项式来拟合该模型
% - 如果用低阶多项式来拟合该模型，应采用什么模型？
% - 在同一个图里面画出：高阶多项式拟合曲线、低阶多项式拟合曲线以及原始数据点。

% 加载数据
load 'cricket_chirps';

% 高阶多项式
ph = sym_lagrange(X, Y);
% 线性模型
pl = polyfit(X, Y, 1);

yh = subs(ph, X);    %高阶拟合点
yl = polyval(pl, X);    %低阶拟合点

t = linspace(min(X), max(X), 100);
th = subs(ph, t);    %高阶拟合曲线
tl = polyval(pl, t);    %低阶拟合曲线

subplot(2, 1, 1);
hold on;
plot(X, Y, 'rs', 'MarkerFaceColor', 'r');
plot(X, yh, 'bo', 'MarkerFaceColor', 'b');
plot(t, th, 'b-');
legend('实际值', '高阶拟合点', '高阶拟合曲线');
title('用高阶多项式拟合模型');
xlabel('x');
ylabel('y');

subplot(2, 1, 2);
hold on;
plot(X, Y, 'rs', 'MarkerFaceColor', 'r');
plot(X, yl, 'bo', 'MarkerFaceColor', 'b');
plot(t, tl, 'b-');
legend('实际值', '低阶拟合点', '低阶拟合曲线');
title('用低阶多项式拟合模型');
xlabel('x');
ylabel('y');