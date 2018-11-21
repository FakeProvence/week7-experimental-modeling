% 1. 用模型V = CP<sup>a</sup>来拟合城市的步速（提示：可通过变换logV = a * logP + logC来拟合模型）
% 2. 在同一幅图里面画出下列子图(P作为横轴)，说明该模型是否合理？：
%     - logV和logP的关系图
%     - V/P关系图，以及上述城市实际的V/P点、拟合的V/P点

% 加载数据
load pace.mat;

logv = log(V);
logp = log(P);

% fit line
[a, c] = fit_line(logp, logv);

subplot(1, 2, 1);
hold on;
t = linspace(min(logp), max(logp), 100);
plot(logp, logv, 'rs', 'MarkerFaceColor', 'r');
plot(logp, a * logp + c, 'bo', 'MarkerFaceColor', 'b');
plot(t, a * t + c, 'b-');
title('城市步速');
xlabel('log(P)');
ylabel('log(V)');

subplot(1, 2, 2);
hold on;
t = linspace(min(P), max(P), 100);
plot(P, V, 'rs', 'MarkerFaceColor', 'r');
plot(P, exp(c) * P.^a, 'bo', 'MarkerFaceColor', 'b');
plot(t, exp(c) * t.^a, 'b-');
title('城市步速');
xlabel('P');
ylabel('V');
