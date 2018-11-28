% 分别用高阶多项式模型、低阶多项式以及三次样条来模拟明信片的价格模型，在同一张图里分别画出三种模型。

% 加载数据
load 'price.mat';

% 对price进行处理，同一年的取平均值
[Y2, IC, IA] = unique(Y);
n = length(Y2);
P2 = zeros(1, n);

for i = 1:n
    P2(i) = mean(P(Y == Y2(i)));
end

Y = Y2 - 1898;
P = P2;

% 下面进行拟合
ph = sym_lagrange(Y, P);
pl = polyfit(Y, P, 2);   %这里采用二次模型

yh = subs(ph, Y);     %高阶拟合点
yl = polyval(pl, Y);     %低阶拟合点

t = linspace(min(Y), max(Y), 100);
th = subs(ph, t);     %高阶拟合曲线
tl = polyval(pl, t);     %低阶拟合曲线
tt = spline(Y, P, t);    %三次样条插值

subplot(2, 2, 1);
hold on;
plot(Y + 1898, P, 'rs', 'MarkerFaceColor', 'r'); 
plot(Y + 1898, yh, 'bo', 'MarkerFaceColor', 'b');
plot(t + 1898, th, 'b-');
legend('实际值', '高阶拟合点', '高阶拟合曲线');
title('高阶多项式拟合');
xlabel('year');
ylabel('price');

subplot(2, 2, 2);
hold on;
plot(Y + 1898, P, 'rs', 'MarkerFaceColor', 'r');
plot(Y + 1898, yl, 'bo', 'MarkerFaceColor', 'b');
plot(t + 1898, tl, 'b-');
legend('实际值', '低阶拟合点', '低阶拟合曲线');
title('低阶多项式拟合');
xlabel('year');
ylabel('price');

subplot(2, 1, 2);
hold on;
plot(Y + 1898, P, 'rs', 'MarkerFaceColor', 'r');
plot(t + 1898, tt, 'b-');
legend('实际值', '三次样条插值');
title('三次样条插值');
xlabel('year');
ylabel('price');
