# 生活中的步速

1976年Marc和Helen Bornstein研究了人们在生活中的步速。研究发现，城市越大人们的脚步就越匆忙，下表是15个城市的人口数量(P)和步速(V)。 

| 城市                       | 人口(P)   | 平均步速(V ft/s) |
|----------------------------|:----------|:-----------------|
| (1) Brno, Czechoslovakia   | 341,948   | 4.81             |
| (2) Prague, Czechoslovakia | 1,092,759 | 5.88             |
| (3) Corte, Corsica         | 5,491     | 3.31             |
| (4) Bastia, France         | 49,375    | 4.9              |
| (5) Munich, Germany        | 1,340,000 | 5.62             |
| (6) Psychro, Crete         | 365       | 2.76             |
| (7) Itea, Greece           | 2,500     | 2.27             |
| (8) Iraklion, Greece       | 78,200    | 3.85             |
| (9) Athens, Greece         | 867,023   | 5.21             |
| (10) Safed, Israel         | 14,000    | 3.7              |
| (11) Dimona, Israel        | 23,700    | 3.27             |
| (12) Netanya, Israel       | 70,700    | 4.31             |
| (13) Jerusalem, Israel     | 304,500   | 4.42             |
| (14) New Haven, U.S.A.     | 138,000   | 4.39             |
| (15) Brooklyn, U.S.A.      | 2,602,000 | 5.05             |

在[pace_of_life.m](./pace_of_life.m)文件中完成下述功能：

1. 用模型V = CP<sup>a</sup>来拟合城市的步速（提示：可通过变换logV = a * logP + logC来拟合模型）
2. 在同一幅图里面画出下列子图(P作为横轴)，说明该模型是否合理？：
    - logV和logP的关系图
    - V/P关系图，以及上述城市实际的V/P点、拟合的V/P点