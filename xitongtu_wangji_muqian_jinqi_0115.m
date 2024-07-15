clear all;
close all;
clc;

fnshp_L='D:\matlab_code\china_map1\maps\bou2_4l.shp';%ShapeType: 'PolyLine'
fnshp_P='D:\matlab_code\china_map1\maps\bou2_4p.shp';%ShapeType: 'Polygon'
% infoL = shapeinfo(fnshp_L);
% infoP = shapeinfo(fnshp_P);
% readL=shaperead(fnshp_L);
% readP=shaperead(fnshp_P);
% mapshow(readL);

% mapshow(readP);
% % title('区域交通系统');
% xlabel('longitude');
% ylabel('latitude');
% hold on;
% axis([110,110.5,20.02,20.30]);
S1 = shaperead(fnshp_P);
n=1;
while (n>=1 && n<=numel(S1))
    sname=S1(n).NAME;
    if ( ~strcmp(sname,'广东省'))
        S1(n)=[];
        n=n-1;
    end
        n=n+1;
end
mapshow(S1);
hold on
S2 = shaperead(fnshp_P);
n=1;
while (n>=1 && n<=numel(S2))
    sname=S2(n).NAME;
    if ( ~strcmp(sname,'海南省'))
        S2(n)=[];
        n=n-1;
    end
        n=n+1;
end
mapshow(S2);
hold on
axis([110,110.5,20.02,20.30]);
%画出普铁北港泊位
%普铁北港泊位4定点分别为（20.23298，110.12947）、（20.23302，110.13107）、（20,22577，110.13102）、（20.22627、110.12948）
fill([110.12647,110.12648,110.12802,110.12817,110.12647],[20.23298,20.22627,20.22577,20.23302,20.23298],'b')
hold on 
plot([110.12457,110.13107],[20.23298,20.23298],'b','linewidth', 5)

%画出普铁南港泊位
%普铁南港泊位定点分别为（20.04025，110.15362）、（20.03855，110.15303）
plot([110.14782,110.14693],[20.04400,20.03855],'b','linewidth', 5)
hold on;
plot([110.14300,110.14750],[20.04200,20.04200],'b','linewidth', 3)
hold on;

%画出定线制范围图
fill([110.373,110.2805,110.28166666666667,110.37383333333334,110.373],[20.198,20.184333333333335,20.177666666666667,20.1915,20.198],'r')
hold on 
fill([110.22116666666666,110.16783333333333,110.16883333333334,110.22233333333334,110.22116666666666],[20.175166666666666,20.167,20.1605,20.1685,20.175166666666666],'r')
hold on 
fill([110.087,110.06433333333334,110.06533333333333,110.088,110.087],[20.154333333333334,20.151,20.144333333333332,20.147833333333335,20.154333333333334],'r')
hold on 
fill([110.3691666,110.276333,110.27683333,110.369666,110.3691666],[20.2225,20.2085,20.2053333,20.219166,20.2225],'r')
hold on 
fill([110.248,110.24083333333333,110.243,110.25033333,110.248],[20.213,20.212,20.2003333,20.2013333,20.213],'r')
hold on
fill([110.21666666,110.1636666,110.16416666,110.21733333,110.21666666],[20.1998333,20.191666666,20.18866666,20.1966666,20.1998333],'r')
hold on 
fill([110.0831666,110.0605,110.0611666,110.0836666,110.0831666],[20.179,20.176,20.17266666,20.175833333,20.179],'r')
hold on
fill([110.377166666,110.286,110.286666,110.3776666,110.377166666],[20.1698333,20.156,20.1528333,20.16666666,20.1698333],'r')
hold on 
fill([110.2591666,110.252,110.25416666,110.26133333,110.2591666],[20.1521666,20.1511666,20.1393333,20.1405,20.1521666],'r')
hold on 
fill([110.2263333,110.1723333,110.173,110.2268333,110.2263333],[20.1468333,20.138833333333,20.13583333,20.1438333,20.1468333],'r')
hold on 
fill([110.09133333333334,110.06866666666667,110.06916666666666,110.075,110.09133333333334],[20.126333333333335,20.122833333333332,20.1195,20.123,20.126333333333335],'r')
hold on 

theta=0:2*pi/3600:2*pi;
Circle1=110.04083333333334+0.0336*cos(theta);
Circle2=20.144833333333334+0.0336*sin(theta);
plot(Circle1,Circle2,'m--','Linewidth',2);
hold on 
theta=0:2*pi/3600:2*pi;
Circle3=110.39666666666666+0.0336*cos(theta);
Circle4=20.198+0.0336*sin(theta);
plot(Circle3,Circle4,'m--','Linewidth',2);

theta=0:2*pi/3600:2*pi;
Circle5=110.25116666666666+0.0336/5*cos(theta);
Circle6=20.176+0.0336/5*sin(theta);
plot(Circle5,Circle6,'m--','Linewidth',2);
fill(Circle5,Circle6,'r')

theta=0:2*pi/3600:2*pi;
Circle7=110.13883333333334+0.0336/5*cos(theta);
Circle8=20.159166666666668+0.0336/5*sin(theta);
plot(Circle7,Circle8,'m--','Linewidth',2);
fill(Circle7,Circle8,'r')

%画出北港泊位
plot([110.13402,110.13402],[20.23142,20.2378],'b', 'linewidth', 3)
plot([110.13802,110.13802],[20.23142,20.2378],'b', 'linewidth', 3)
plot([110.14202,110.14202],[20.23142,20.2378],'b', 'linewidth', 3)
plot([110.14602,110.14602],[20.23142,20.2378],'b', 'linewidth', 3)
plot([110.15002,110.15002],[20.23142,20.2378],'b', 'linewidth', 3)
hold on 
plot([110.13202,110.1502],[20.23680,20.23680],'b', 'linewidth', 4)
hold on
%画出南港泊位
plot([110.14800,110.14950],[20.04500,20.05500],'b','linewidth',5)
hold on;
plot([110.14400,110.14850],[20.04600,20.04600],'b', 'linewidth', 2)
plot([110.14400,110.14880],[20.04800,20.04800],'b', 'linewidth', 2)
plot([110.14400,110.14900],[20.05000,20.05000],'b', 'linewidth', 2)
plot([110.14400,110.14920],[20.05200,20.05200],'b', 'linewidth', 2)
plot([110.14400,110.14940],[20.05400,20.05400],'b', 'linewidth', 2)
hold on 


%将24小时按秒排序
T=1:1:86400;
% %船舶回旋半径为设为R，R为0.5海里
% R= 0.1/60;
% 
% %初始化船舶1位置
% t11 = 0:2*pi/20:1.2*pi;
% x0_ship1=110.13602;
% y0_ship1=20.23342;
% x1_ship1=x0_ship1+R*cos(t11);
% y1_ship1=y0_ship1+R*sin(t11);
% plot(x1_ship1, y1_ship1, 'm--', 'linewidth', 2);%绘制ship1的离泊曲线
% hold on 

xt0_ship1=110.13802;
yt0_ship1=20.23342;

%绘制ship1直线航路
k1=2.5;
x1=linspace(xt0_ship1,110.1180,20);
b1=yt0_ship1-k1*xt0_ship1;
y2_ship1=k1*x1+b1;
% plot(x1, y2_ship1, 'm--', 'linewidth', 1);
% hold on 
k2=-10.5;
x2=linspace(110.1180,110.130,20);
b2=y2_ship1(length(x1))-k2*x1(length(x1));
y3_ship1=k2*x2+b2;
% plot(x2, y3_ship1, 'm--', 'linewidth', 1);
% hold on 
k3=-0.5;
x3=linspace(110.130,110.148,20);
b3=y3_ship1(length(x2))-k3*x2(length(x2));
y4_ship1=k3*x3+b3;
% plot(x3, y4_ship1, 'm--', 'linewidth', 1);
% hold on 
% xtn_ship1=x2(length(x2));
% ytn_ship1=y3_ship1(length(x2));

% %求靠泊航路回旋圆心
% circlex_ship1=xtn_ship1+R*cos(2*pi);
% circley_ship1=ytn_ship1+R*sin(2*pi);
% t13 = 1.05*pi:(2-1.05)*pi/20:2*pi;
% x3_ship1=circlex_ship1+R*cos(t13);
% y4_ship1=circley_ship1+R*sin(t13);
% plot(x3_ship1, y4_ship1, 'm--', 'linewidth', 2);%绘制ship1的靠泊曲线
% hold on 
%南北向轮渡航行轨迹
x_bn=[x1-0.001,x2-0.001,x3-0.001];
y_bn=[y2_ship1,y3_ship1,y4_ship1];
 plot(x_bn, y_bn, 'm--', 'linewidth', 2);
 hold on 
% plot(x_bn,y_bn);
% hold on ;
x_nb=fliplr(x_bn-0.002);
y_nb=fliplr(y_bn);
plot(x_nb,y_nb,'m--', 'linewidth', 2);
hold on ;
%南北轮渡班次加载
gaotie_bn1_x=[linspace(10000,10001,495),x_bn,linspace(10000,10001,2000)];
gaotie_bn1_y=[linspace(10000,10001,495),y_bn,linspace(10000,10001,2000)];
gaotie_bn2_x=[linspace(10000,10001,510),x_bn,linspace(10000,10001,2000)];
gaotie_bn2_y=[linspace(10000,10001,510),y_bn,linspace(10000,10001,2000)];
gaotie_bn3_x=[linspace(10000,10001,525),x_bn,linspace(10000,10001,2000)];
gaotie_bn3_y=[linspace(10000,10001,525),y_bn,linspace(10000,10001,2000)];
gaotie_bn4_x=[linspace(10000,10001,540),x_bn,linspace(10000,10001,2000)];
gaotie_bn4_y=[linspace(10000,10001,540),y_bn,linspace(10000,10001,2000)];
gaotie_bn5_x=[linspace(10000,10001,550),x_bn,linspace(10000,10001,2000)];
gaotie_bn5_y=[linspace(10000,10001,550),y_bn,linspace(10000,10001,2000)];
gaotie_bn6_x=[linspace(10000,10001,560),x_bn,linspace(10000,10001,2000)];
gaotie_bn6_y=[linspace(10000,10001,560),y_bn,linspace(10000,10001,2000)];
gaotie_bn7_x=[linspace(10000,10001,570),x_bn,linspace(10000,10001,2000)];
gaotie_bn7_y=[linspace(10000,10001,570),y_bn,linspace(10000,10001,2000)];
gaotie_bn8_x=[linspace(10000,10001,580),x_bn,linspace(10000,10001,2000)];
gaotie_bn8_y=[linspace(10000,10001,580),y_bn,linspace(10000,10001,2000)];
gaotie_bn9_x=[linspace(10000,10001,590),x_bn,linspace(10000,10001,2000)];
gaotie_bn9_y=[linspace(10000,10001,590),y_bn,linspace(10000,10001,2000)];
gaotie_bn10_x=[linspace(10000,10001,600),x_bn,linspace(10000,10001,2000)];
gaotie_bn10_y=[linspace(10000,10001,600),y_bn,linspace(10000,10001,2000)];
gaotie_bn11_x=[linspace(10000,10001,615),x_bn,linspace(10000,10001,2000)];
gaotie_bn11_y=[linspace(10000,10001,615),y_bn,linspace(10000,10001,2000)];
gaotie_bn12_x=[linspace(10000,10001,630),x_bn,linspace(10000,10001,2000)];
gaotie_bn12_y=[linspace(10000,10001,630),y_bn,linspace(10000,10001,2000)];
gaotie_bn13_x=[linspace(10000,10001,645),x_bn,linspace(10000,10001,2000)];
gaotie_bn13_y=[linspace(10000,10001,645),y_bn,linspace(10000,10001,2000)];
gaotie_bn14_x=[linspace(10000,10001,660),x_bn,linspace(10000,10001,2000)];
gaotie_bn14_y=[linspace(10000,10001,660),y_bn,linspace(10000,10001,100000)];
gaotie_bn15_x=[linspace(10000,10001,680),x_bn,linspace(10000,10001,100000)];
gaotie_bn15_y=[linspace(10000,10001,680),y_bn,linspace(10000,10001,100000)];
gaotie_bn16_x=[linspace(10000,10001,700),x_bn,linspace(10000,10001,100000)];
gaotie_bn16_y=[linspace(10000,10001,700),y_bn,linspace(10000,10001,100000)];
gaotie_bn17_x=[linspace(10000,10001,720),x_bn,linspace(10000,10001,100000)];
gaotie_bn17_y=[linspace(10000,10001,720),y_bn,linspace(10000,10001,100000)];
gaotie_bn18_x=[linspace(10000,10001,740),x_bn,linspace(10000,10001,100000)];
gaotie_bn18_y=[linspace(10000,10001,740),y_bn,linspace(10000,10001,100000)];
gaotie_bn19_x=[linspace(10000,10001,760),x_bn,linspace(10000,10001,100000)];
gaotie_bn19_y=[linspace(10000,10001,760),y_bn,linspace(10000,10001,100000)];
gaotie_bn20_x=[linspace(10000,10001,780),x_bn,linspace(10000,10001,100000)];
gaotie_bn20_y=[linspace(10000,10001,780),y_bn,linspace(10000,10001,100000)];
gaotie_bn21_x=[linspace(10000,10001,800),x_bn,linspace(10000,10001,100000)];
gaotie_bn21_y=[linspace(10000,10001,800),y_bn,linspace(10000,10001,100000)];
gaotie_bn22_x=[linspace(10000,10001,820),x_bn,linspace(10000,10001,100000)];
gaotie_bn22_y=[linspace(10000,10001,820),y_bn,linspace(10000,10001,100000)];
gaotie_bn23_x=[linspace(10000,10001,840),x_bn,linspace(10000,10001,100000)];
gaotie_bn23_y=[linspace(10000,10001,840),y_bn,linspace(10000,10001,100000)];
gaotie_bn24_x=[linspace(10000,10001,860),x_bn,linspace(10000,10001,100000)];
gaotie_bn24_y=[linspace(10000,10001,860),y_bn,linspace(10000,10001,100000)];
gaotie_bn25_x=[linspace(10000,10001,880),x_bn,linspace(10000,10001,100000)];
gaotie_bn25_y=[linspace(10000,10001,880),y_bn,linspace(10000,10001,100000)];
gaotie_bn26_x=[linspace(10000,10001,900),x_bn,linspace(10000,10001,100000)];
gaotie_bn26_y=[linspace(10000,10001,900),y_bn,linspace(10000,10001,100000)];
gaotie_bn27_x=[linspace(10000,10001,920),x_bn,linspace(10000,10001,100000)];
gaotie_bn27_y=[linspace(10000,10001,920),y_bn,linspace(10000,10001,100000)];
gaotie_bn28_x=[linspace(10000,10001,940),x_bn,linspace(10000,10001,100000)];
gaotie_bn28_y=[linspace(10000,10001,940),y_bn,linspace(10000,10001,100000)];
gaotie_bn29_x=[linspace(10000,10001,960),x_bn,linspace(10000,10001,100000)];
gaotie_bn29_y=[linspace(10000,10001,960),y_bn,linspace(10000,10001,100000)];
gaotie_bn30_x=[linspace(10000,10001,980),x_bn,linspace(10000,10001,100000)];
gaotie_bn30_y=[linspace(10000,10001,980),y_bn,linspace(10000,10001,100000)];
gaotie_bn31_x=[linspace(10000,10001,1000),x_bn,linspace(10000,10001,100000)];
gaotie_bn31_y=[linspace(10000,10001,1000),y_bn,linspace(10000,10001,100000)];
gaotie_bn32_x=[linspace(10000,10001,1020),x_bn,linspace(10000,10001,100000)];
gaotie_bn32_y=[linspace(10000,10001,1020),y_bn,linspace(10000,10001,100000)];
gaotie_bn33_x=[linspace(10000,10001,1035),x_bn,linspace(10000,10001,100000)];
gaotie_bn33_y=[linspace(10000,10001,1035),y_bn,linspace(10000,10001,100000)];
gaotie_bn34_x=[linspace(10000,10001,1050),x_bn,linspace(10000,10001,100000)];
gaotie_bn34_y=[linspace(10000,10001,1050),y_bn,linspace(10000,10001,100000)];
gaotie_bn35_x=[linspace(10000,10001,1065),x_bn,linspace(10000,10001,100000)];
gaotie_bn35_y=[linspace(10000,10001,1065),y_bn,linspace(10000,10001,100000)];
gaotie_bn36_x=[linspace(10000,10001,1080),x_bn,linspace(10000,10001,100000)];
gaotie_bn36_y=[linspace(10000,10001,1080),y_bn,linspace(10000,10001,100000)];
gaotie_bn37_x=[linspace(10000,10001,1095),x_bn,linspace(10000,10001,100000)];
gaotie_bn37_y=[linspace(10000,10001,1095),y_bn,linspace(10000,10001,100000)];
gaotie_bn38_x=[linspace(10000,10001,1110),x_bn,linspace(10000,10001,100000)];
gaotie_bn38_y=[linspace(10000,10001,1110),y_bn,linspace(10000,10001,100000)];
gaotie_bn39_x=[linspace(10000,10001,1125),x_bn,linspace(10000,10001,100000)];
gaotie_bn39_y=[linspace(10000,10001,1125),y_bn,linspace(10000,10001,100000)];
gaotie_bn40_x=[linspace(10000,10001,1140),x_bn,linspace(10000,10001,100000)];
gaotie_bn40_y=[linspace(10000,10001,1140),y_bn,linspace(10000,10001,100000)];
gaotie_bn41_x=[linspace(10000,10001,1152),x_bn,linspace(10000,10001,100000)];
gaotie_bn41_y=[linspace(10000,10001,1152),y_bn,linspace(10000,10001,100000)];
gaotie_bn42_x=[linspace(10000,10001,1164),x_bn,linspace(10000,10001,100000)];
gaotie_bn42_y=[linspace(10000,10001,1164),y_bn,linspace(10000,10001,100000)];
gaotie_bn43_x=[linspace(10000,10001,1176),x_bn,linspace(10000,10001,100000)];
gaotie_bn43_y=[linspace(10000,10001,1176),y_bn,linspace(10000,10001,100000)];
gaotie_bn44_x=[linspace(10000,10001,1188),x_bn,linspace(10000,10001,100000)];
gaotie_bn44_y=[linspace(10000,10001,1188),y_bn,linspace(10000,10001,100000)];
gaotie_bn45_x=[linspace(10000,10001,1200),x_bn,linspace(10000,10001,100000)];
gaotie_bn45_y=[linspace(10000,10001,1200),y_bn,linspace(10000,10001,100000)];
gaotie_bn46_x=[linspace(10000,10001,1210),x_bn,linspace(10000,10001,100000)];
gaotie_bn46_y=[linspace(10000,10001,1210),y_bn,linspace(10000,10001,100000)];
gaotie_bn47_x=[linspace(10000,10001,1220),x_bn,linspace(10000,10001,100000)];
gaotie_bn47_y=[linspace(10000,10001,1220),y_bn,linspace(10000,10001,100000)];
gaotie_bn48_x=[linspace(10000,10001,1230),x_bn,linspace(10000,10001,100000)];
gaotie_bn48_y=[linspace(10000,10001,1230),y_bn,linspace(10000,10001,100000)];
gaotie_bn49_x=[linspace(10000,10001,1240),x_bn,linspace(10000,10001,100000)];
gaotie_bn49_y=[linspace(10000,10001,1240),y_bn,linspace(10000,10001,100000)];
gaotie_bn50_x=[linspace(10000,10001,1250),x_bn,linspace(10000,10001,100000)];
gaotie_bn50_y=[linspace(10000,10001,1250),y_bn,linspace(10000,10001,100000)];
gaotie_bn51_x=[linspace(10000,10001,1260),x_bn,linspace(10000,10001,100000)];
gaotie_bn51_y=[linspace(10000,10001,1260),y_bn,linspace(10000,10001,100000)];
gaotie_bn52_x=[linspace(10000,10001,1275),x_bn,linspace(10000,10001,100000)];
gaotie_bn52_y=[linspace(10000,10001,1275),y_bn,linspace(10000,10001,100000)];
gaotie_bn53_x=[linspace(10000,10001,1290),x_bn,linspace(10000,10001,100000)];
gaotie_bn53_y=[linspace(10000,10001,1290),y_bn,linspace(10000,10001,100000)];
gaotie_bn54_x=[linspace(10000,10001,1305),x_bn,linspace(10000,10001,100000)];
gaotie_bn54_y=[linspace(10000,10001,1305),y_bn,linspace(10000,10001,100000)];
gaotie_bn55_x=[linspace(10000,10001,1320),x_bn,linspace(10000,10001,100000)];
gaotie_bn55_y=[linspace(10000,10001,1320),y_bn,linspace(10000,10001,100000)];
gaotie_bn56_x=[linspace(10000,10001,1340),x_bn,linspace(10000,10001,100000)];
gaotie_bn56_y=[linspace(10000,10001,1340),y_bn,linspace(10000,10001,100000)];
gaotie_bn57_x=[linspace(10000,10001,1360),x_bn,linspace(10000,10001,100000)];
gaotie_bn57_y=[linspace(10000,10001,1360),y_bn,linspace(10000,10001,100000)];
gaotie_bn58_x=[linspace(10000,10001,1380),x_bn,linspace(10000,10001,100000)];
gaotie_bn58_y=[linspace(10000,10001,1380),y_bn,linspace(10000,10001,100000)];
gaotie_bn59_x=[linspace(10000,10001,1410),x_bn,linspace(10000,10001,100000)];
gaotie_bn59_y=[linspace(10000,10001,1410),y_bn,linspace(10000,10001,100000)];
gaotie_bn60_x=[linspace(10000,10001,1440),x_bn,linspace(10000,10001,100000)];
gaotie_bn60_y=[linspace(10000,10001,1440),y_bn,linspace(10000,10001,100000)];

gaotie_nb1_x=[linspace(10000,10001,360),x_nb,linspace(10000,10001,100000)];
gaotie_nb1_y=[linspace(10000,10001,360),y_nb,linspace(10000,10001,100000)];
gaotie_nb2_x=[linspace(10000,10001,375),x_nb,linspace(10000,10001,100000)];
gaotie_nb2_y=[linspace(10000,10001,375),y_nb,linspace(10000,10001,100000)];
gaotie_nb3_x=[linspace(10000,10001,395),x_nb,linspace(10000,10001,100000)];
gaotie_nb3_y=[linspace(10000,10001,395),y_nb,linspace(10000,10001,100000)];
gaotie_nb4_x=[linspace(10000,10001,420),x_nb,linspace(10000,10001,100000)];
gaotie_nb4_y=[linspace(10000,10001,420),y_nb,linspace(10000,10001,100000)];
gaotie_nb5_x=[linspace(10000,10001,430),x_nb,linspace(10000,10001,100000)];
gaotie_nb5_y=[linspace(10000,10001,430),y_nb,linspace(10000,10001,100000)];
gaotie_nb6_x=[linspace(10000,10001,440),x_nb,linspace(10000,10001,100000)];
gaotie_nb6_y=[linspace(10000,10001,440),y_nb,linspace(10000,10001,100000)];
gaotie_nb7_x=[linspace(10000,10001,450),x_nb,linspace(10000,10001,100000)];
gaotie_nb7_y=[linspace(10000,10001,450),y_nb,linspace(10000,10001,100000)];
gaotie_nb8_x=[linspace(10000,10001,460),x_nb,linspace(10000,10001,100000)];
gaotie_nb8_y=[linspace(10000,10001,460),y_nb,linspace(10000,10001,100000)];
gaotie_nb9_x=[linspace(10000,10001,470),x_nb,linspace(10000,10001,100000)];
gaotie_nb9_y=[linspace(10000,10001,470),y_nb,linspace(10000,10001,100000)];
gaotie_nb10_x=[linspace(10000,10001,480),x_nb,linspace(10000,10001,100000)];
gaotie_nb10_y=[linspace(10000,10001,480),y_nb,linspace(10000,10001,100000)];
gaotie_nb11_x=[linspace(10000,10001,495),x_nb,linspace(10000,10001,100000)];
gaotie_nb11_y=[linspace(10000,10001,495),y_nb,linspace(10000,10001,100000)];
gaotie_nb12_x=[linspace(10000,10001,510),x_nb,linspace(10000,10001,100000)];
gaotie_nb12_y=[linspace(10000,10001,510),y_nb,linspace(10000,10001,100000)];
gaotie_nb13_x=[linspace(10000,10001,525),x_nb,linspace(10000,10001,100000)];
gaotie_nb13_y=[linspace(10000,10001,525),y_nb,linspace(10000,10001,100000)];
gaotie_nb14_x=[linspace(10000,10001,540),x_nb,linspace(10000,10001,100000)];
gaotie_nb14_y=[linspace(10000,10001,540),y_nb,linspace(10000,10001,100000)];
gaotie_nb15_x=[linspace(10000,10001,560),x_nb,linspace(10000,10001,100000)];
gaotie_nb15_y=[linspace(10000,10001,560),y_nb,linspace(10000,10001,100000)];
gaotie_nb16_x=[linspace(10000,10001,580),x_nb,linspace(10000,10001,100000)];
gaotie_nb16_y=[linspace(10000,10001,580),y_nb,linspace(10000,10001,100000)];
gaotie_nb17_x=[linspace(10000,10001,600),x_nb,linspace(10000,10001,100000)];
gaotie_nb17_y=[linspace(10000,10001,600),y_nb,linspace(10000,10001,100000)];
gaotie_nb18_x=[linspace(10000,10001,620),x_nb,linspace(10000,10001,100000)];
gaotie_nb18_y=[linspace(10000,10001,620),y_nb,linspace(10000,10001,100000)];
gaotie_nb19_x=[linspace(10000,10001,640),x_nb,linspace(10000,10001,100000)];
gaotie_nb19_y=[linspace(10000,10001,640),y_nb,linspace(10000,10001,100000)];
gaotie_nb20_x=[linspace(10000,10001,660),x_nb,linspace(10000,10001,100000)];
gaotie_nb20_y=[linspace(10000,10001,660),y_nb,linspace(10000,10001,100000)];
gaotie_nb21_x=[linspace(10000,10001,680),x_nb,linspace(10000,10001,100000)];
gaotie_nb21_y=[linspace(10000,10001,680),y_nb,linspace(10000,10001,100000)];
gaotie_nb22_x=[linspace(10000,10001,700),x_nb,linspace(10000,10001,100000)];
gaotie_nb22_y=[linspace(10000,10001,700),y_nb,linspace(10000,10001,100000)];
gaotie_nb23_x=[linspace(10000,10001,720),x_nb,linspace(10000,10001,100000)];
gaotie_nb23_y=[linspace(10000,10001,720),y_nb,linspace(10000,10001,100000)];
gaotie_nb24_x=[linspace(10000,10001,740),x_nb,linspace(10000,10001,100000)];
gaotie_nb24_y=[linspace(10000,10001,740),y_nb,linspace(10000,10001,100000)];
gaotie_nb25_x=[linspace(10000,10001,760),x_nb,linspace(10000,10001,100000)];
gaotie_nb25_y=[linspace(10000,10001,760),y_nb,linspace(10000,10001,100000)];
gaotie_nb26_x=[linspace(10000,10001,780),x_nb,linspace(10000,10001,100000)];
gaotie_nb26_y=[linspace(10000,10001,780),y_nb,linspace(10000,10001,100000)];
gaotie_nb27_x=[linspace(10000,10001,800),x_nb,linspace(10000,10001,100000)];
gaotie_nb27_y=[linspace(10000,10001,800),y_nb,linspace(10000,10001,100000)];
gaotie_nb28_x=[linspace(10000,10001,820),x_nb,linspace(10000,10001,100000)];
gaotie_nb28_y=[linspace(10000,10001,820),y_nb,linspace(10000,10001,100000)];
gaotie_nb29_x=[linspace(10000,10001,840),x_nb,linspace(10000,10001,100000)];
gaotie_nb29_y=[linspace(10000,10001,840),y_nb,linspace(10000,10001,100000)];
gaotie_nb30_x=[linspace(10000,10001,860),x_nb,linspace(10000,10001,100000)];
gaotie_nb30_y=[linspace(10000,10001,860),y_nb,linspace(10000,10001,100000)];
gaotie_nb31_x=[linspace(10000,10001,880),x_nb,linspace(10000,10001,100000)];
gaotie_nb31_y=[linspace(10000,10001,880),y_nb,linspace(10000,10001,100000)];
gaotie_nb32_x=[linspace(10000,10001,900),x_nb,linspace(10000,10001,100000)];
gaotie_nb32_y=[linspace(10000,10001,900),y_nb,linspace(10000,10001,100000)];
gaotie_nb33_x=[linspace(10000,10001,915),x_nb,linspace(10000,10001,100000)];
gaotie_nb33_y=[linspace(10000,10001,915),y_nb,linspace(10000,10001,100000)];
gaotie_nb34_x=[linspace(10000,10001,930),x_nb,linspace(10000,10001,100000)];
gaotie_nb34_y=[linspace(10000,10001,930),y_nb,linspace(10000,10001,100000)];
gaotie_nb35_x=[linspace(10000,10001,945),x_nb,linspace(10000,10001,100000)];
gaotie_nb35_y=[linspace(10000,10001,945),y_nb,linspace(10000,10001,100000)];
gaotie_nb36_x=[linspace(10000,10001,960),x_nb,linspace(10000,10001,100000)];
gaotie_nb36_y=[linspace(10000,10001,960),y_nb,linspace(10000,10001,100000)];
gaotie_nb37_x=[linspace(10000,10001,975),x_nb,linspace(10000,10001,100000)];
gaotie_nb37_y=[linspace(10000,10001,975),y_nb,linspace(10000,10001,100000)];
gaotie_nb38_x=[linspace(10000,10001,990),x_nb,linspace(10000,10001,100000)];
gaotie_nb38_y=[linspace(10000,10001,990),y_nb,linspace(10000,10001,100000)];
gaotie_nb39_x=[linspace(10000,10001,1005),x_nb,linspace(10000,10001,100000)];
gaotie_nb39_y=[linspace(10000,10001,1005),y_nb,linspace(10000,10001,100000)];
gaotie_nb40_x=[linspace(10000,10001,1020),x_nb,linspace(10000,10001,100000)];
gaotie_nb40_y=[linspace(10000,10001,1020),y_nb,linspace(10000,10001,100000)];
gaotie_nb41_x=[linspace(10000,10001,1032),x_nb,linspace(10000,10001,100000)];
gaotie_nb41_y=[linspace(10000,10001,1032),y_nb,linspace(10000,10001,100000)];
gaotie_nb42_x=[linspace(10000,10001,1044),x_nb,linspace(10000,10001,100000)];
gaotie_nb42_y=[linspace(10000,10001,1044),y_nb,linspace(10000,10001,100000)];
gaotie_nb43_x=[linspace(10000,10001,1056),x_nb,linspace(10000,10001,100000)];
gaotie_nb43_y=[linspace(10000,10001,1056),y_nb,linspace(10000,10001,100000)];
gaotie_nb44_x=[linspace(10000,10001,1068),x_nb,linspace(10000,10001,100000)];
gaotie_nb44_y=[linspace(10000,10001,1068),y_nb,linspace(10000,10001,100000)];
gaotie_nb45_x=[linspace(10000,10001,1080),x_nb,linspace(10000,10001,100000)];
gaotie_nb45_y=[linspace(10000,10001,1080),y_nb,linspace(10000,10001,100000)];
gaotie_nb46_x=[linspace(10000,10001,1090),x_nb,linspace(10000,10001,100000)];
gaotie_nb46_y=[linspace(10000,10001,1090),y_nb,linspace(10000,10001,100000)];
gaotie_nb47_x=[linspace(10000,10001,1100),x_nb,linspace(10000,10001,100000)];
gaotie_nb47_y=[linspace(10000,10001,1100),y_nb,linspace(10000,10001,100000)];
gaotie_nb48_x=[linspace(10000,10001,1110),x_nb,linspace(10000,10001,100000)];
gaotie_nb48_y=[linspace(10000,10001,1110),y_nb,linspace(10000,10001,100000)];
gaotie_nb49_x=[linspace(10000,10001,1120),x_nb,linspace(10000,10001,100000)];
gaotie_nb49_y=[linspace(10000,10001,1120),y_nb,linspace(10000,10001,100000)];
gaotie_nb50_x=[linspace(10000,10001,1130),x_nb,linspace(10000,10001,100000)];
gaotie_nb50_y=[linspace(10000,10001,1130),y_nb,linspace(10000,10001,100000)];
gaotie_nb51_x=[linspace(10000,10001,1140),x_nb,linspace(10000,10001,100000)];
gaotie_nb51_y=[linspace(10000,10001,1140),y_nb,linspace(10000,10001,100000)];
gaotie_nb52_x=[linspace(10000,10001,1155),x_nb,linspace(10000,10001,100000)];
gaotie_nb52_y=[linspace(10000,10001,1155),y_nb,linspace(10000,10001,100000)];
gaotie_nb53_x=[linspace(10000,10001,1170),x_nb,linspace(10000,10001,100000)];
gaotie_nb53_y=[linspace(10000,10001,1170),y_nb,linspace(10000,10001,100000)];
gaotie_nb54_x=[linspace(10000,10001,1185),x_nb,linspace(10000,10001,100000)];
gaotie_nb54_y=[linspace(10000,10001,1185),y_nb,linspace(10000,10001,100000)];
gaotie_nb55_x=[linspace(10000,10001,1200),x_nb,linspace(10000,10001,100000)];
gaotie_nb55_y=[linspace(10000,10001,1200),y_nb,linspace(10000,10001,100000)];
gaotie_nb56_x=[linspace(10000,10001,1220),x_nb,linspace(10000,10001,100000)];
gaotie_nb56_y=[linspace(10000,10001,1220),y_nb,linspace(10000,10001,100000)];
gaotie_nb57_x=[linspace(10000,10001,1240),x_nb,linspace(10000,10001,100000)];
gaotie_nb57_y=[linspace(10000,10001,1240),y_nb,linspace(10000,10001,100000)];
gaotie_nb58_x=[linspace(10000,10001,1260),x_nb,linspace(10000,10001,100000)];
gaotie_nb58_y=[linspace(10000,10001,1260),y_nb,linspace(10000,10001,100000)];
gaotie_nb59_x=[linspace(10000,10001,1290),x_nb,linspace(10000,10001,100000)];
gaotie_nb59_y=[linspace(10000,10001,1290),y_nb,linspace(10000,10001,100000)];
gaotie_nb60_x=[linspace(10000,10001,1320),x_nb,linspace(10000,10001,100000)];
gaotie_nb60_y=[linspace(10000,10001,1320),y_nb,linspace(10000,10001,100000)];

h=cell(60,1);
hh=cell(60,1);
for i =1:60
    h{i}=plot(10000,10000,'^','MarkerSize',10);
    hh{i}=plot(10000,10000,'^','MarkerSize',10);
end

putie=(xlsread('putie1.csv'));
putie1=(xlsread('putie.csv'));
hanglu0=(xlsread('D:\matlab_code\dragon\0.csv'));
hanglu1=(xlsread('D:\matlab_code\dragon\1.csv'));
hanglu2=(xlsread('D:\matlab_code\dragon\2.csv'));
hanglu3=(xlsread('D:\matlab_code\dragon\3.csv'));
hanglu4=(xlsread('D:\matlab_code\dragon\4.csv'));
hanglu5=(xlsread('D:\matlab_code\dragon\5.csv'));
plot(hanglu0(:,5),hanglu0(:,4), 'm--', 'linewidth', 1);
plot(hanglu1(:,5),hanglu1(:,4), 'm--', 'linewidth', 1);
plot(hanglu2(:,5),hanglu2(:,4), 'm--', 'linewidth', 1);
plot(hanglu3(:,5),hanglu3(:,4), 'm--', 'linewidth', 1);
plot(hanglu4(:,5),hanglu4(:,4), 'm--', 'linewidth', 1);
plot(hanglu5(:,5),hanglu5(:,4), 'm--', 'linewidth', 1);

putie_yt=20.0431:(20.2276-20.0431)/90:20.2276;
putie_xt=interp1(putie(:,5),putie(:,6),putie_yt,'nearest');
plot(putie_xt,putie_yt,'b--', 'linewidth', 1);
hold on 

putie_yt2=putie_yt;
putie_xt2=putie_xt-0.002;
plot(putie_xt2,putie_yt2,'r--', 'linewidth', 1);
hold on

%普铁班次叠加

putie_bn1_x = [linspace(10000,10001,23),putie_xt2,linspace(10000,10001,100000)];
putie_bn1_y = [linspace(10000,10001,23),putie_yt2,linspace(10000,10001,100000)];
putie_bn2_x = [linspace(10000,10001,140),putie_xt2,linspace(10000,10001,100000)];
putie_bn2_y = [linspace(10000,10001,140),putie_yt2,linspace(10000,10001,100000)];
putie_bn3_x = [linspace(10000,10001,165),putie_xt2,linspace(10000,10001,100000)];
putie_bn3_y = [linspace(10000,10001,165),putie_yt2,linspace(10000,10001,100000)];
putie_bn4_x = [linspace(10000,10001,256),putie_xt2,linspace(10000,10001,100000)];
putie_bn4_y = [linspace(10000,10001,256),putie_yt2,linspace(10000,10001,100000)];
putie_bn5_x = [linspace(10000,10001,352),putie_xt2,linspace(10000,10001,100000)];
putie_bn5_y = [linspace(10000,10001,352),putie_yt2,linspace(10000,10001,100000)];
putie_bn6_x = [linspace(10000,10001,450),putie_xt2,linspace(10000,10001,100000)];
putie_bn6_y = [linspace(10000,10001,450),putie_yt2,linspace(10000,10001,100000)];
putie_bn7_x = [linspace(10000,10001,542),putie_xt2,linspace(10000,10001,100000)];
putie_bn7_y = [linspace(10000,10001,542),putie_yt2,linspace(10000,10001,100000)];
putie_bn8_x = [linspace(10000,10001,646),putie_xt2,linspace(10000,10001,100000)];
putie_bn8_y = [linspace(10000,10001,646),putie_yt2,linspace(10000,10001,100000)];
putie_bn9_x = [linspace(10000,10001,757),putie_xt2,linspace(10000,10001,100000)];
putie_bn9_y = [linspace(10000,10001,757),putie_yt2,linspace(10000,10001,100000)];
putie_bn10_x = [linspace(10000,10001,874),putie_xt2,linspace(10000,10001,100000)];
putie_bn10_y = [linspace(10000,10001,874),putie_yt2,linspace(10000,10001,100000)];
putie_bn11_x = [linspace(10000,10001,980),putie_xt2,linspace(10000,10001,100000)];
putie_bn11_y = [linspace(10000,10001,980),putie_yt2,linspace(10000,10001,100000)];
putie_bn12_x = [linspace(10000,10001,1096),putie_xt2,linspace(10000,10001,100000)];
putie_bn12_y = [linspace(10000,10001,1096),putie_yt2,linspace(10000,10001,100000)];
putie_bn13_x = [linspace(10000,10001,1182),putie_xt2,linspace(10000,10001,100000)];
putie_bn13_y = [linspace(10000,10001,1182),putie_yt2,linspace(10000,10001,100000)];
putie_bn14_x = [linspace(10000,10001,1285),putie_xt2,linspace(10000,10001,100000)];
putie_bn14_y = [linspace(10000,10001,1285),putie_yt2,linspace(10000,10001,100000)];

putie_nb1_x = [linspace(10000,10001,85),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb1_y = [linspace(10000,10001,85),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb2_x = [linspace(10000,10001,195),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb2_y = [linspace(10000,10001,195),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb3_x = [linspace(10000,10001,300),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb3_y = [linspace(10000,10001,300),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb4_x = [linspace(10000,10001,395),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb4_y = [linspace(10000,10001,395),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb5_x = [linspace(10000,10001,498),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb5_y = [linspace(10000,10001,498),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb6_x = [linspace(10000,10001,590),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb6_y = [linspace(10000,10001,590),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb7_x = [linspace(10000,10001,710),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb7_y = [linspace(10000,10001,710),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb8_x = [linspace(10000,10001,822),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb8_y = [linspace(10000,10001,822),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb9_x = [linspace(10000,10001,921),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb9_y = [linspace(10000,10001,921),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb10_x = [linspace(10000,10001,1044),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb10_y = [linspace(10000,10001,1044),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb11_x = [linspace(10000,10001,1162),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb11_y = [linspace(10000,10001,1162),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb12_x = [linspace(10000,10001,1242),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb12_y = [linspace(10000,10001,1242),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb13_x = [linspace(10000,10001,1324),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb13_y = [linspace(10000,10001,1324),fliplr(putie_yt),linspace(10000,10001,100000)];
putie_nb14_x = [linspace(10000,10001,1414),fliplr(putie_xt),linspace(10000,10001,100000)];
putie_nb14_y = [linspace(10000,10001,1414),fliplr(putie_yt),linspace(10000,10001,100000)];

A=cell(14,1);
B=cell(14,1);
for i =1:14
    A{i}=plot(10000,10000,'^','MarkerSize',10);
    B{i}=plot(10000,10000,'^','MarkerSize',10);
end
% %地方轮渡航线
% difang_xt0_ship1=110.14602;
% difang_yt0_ship1=20.23642;
% 
% %绘制ship1直线航路
% k1=1.8;
% difang_x1=linspace(difang_xt0_ship1,110.118,20);
% b1=difang_yt0_ship1-k1*difang_xt0_ship1;
% difang_y2_ship1=k1*difang_x1+b1;
% % plot(x1, y2_ship1, 'm--', 'linewidth', 1);
% % hold on 
% k2=-14;
% difang_x2=linspace(110.118,110.1275,20);
% b2=difang_y2_ship1(length(difang_x1))-k2*difang_x1(length(difang_x1));
% difang_y3_ship1=k2*difang_x2+b2;
% % plot(x2, y3_ship1, 'm--', 'linewidth', 1);
% % hold on 
% k3=-0.1;
% difang_x3=linspace(110.1275,110.148,20);
% b3=difang_y3_ship1(length(difang_x2))-k3*difang_x2(length(difang_x2));
% difang_y4_ship1=k3*difang_x3+b3;
% 
% %地方轮渡航行轨迹
% difang_x_bn=[difang_x1,difang_x2,difang_x3];
% difang_y_bn=[difang_y2_ship1,difang_y3_ship1,difang_y4_ship1];
%  plot(difang_x_bn, difang_y_bn, 'm--', 'linewidth', 2);
%  hold on 
% % plot(x_bn,y_bn);
% % hold on ;
% difang_x_nb=fliplr(difang_x_bn-0.001);
% difang_y_nb=fliplr(difang_y_bn);
% plot(difang_x_nb,difang_y_nb,'m--', 'linewidth', 2);
% hold on ;
% E=cell(72,1);
% F=cell(72,1);
% for i =1:72
%     E{i}=plot(10000,10000,'^','MarkerSize',10);
%     F{i}=plot(10000,10000,'^','MarkerSize',10);
% end
% for i = 1:72
%    n2=0:20:1440;
%    eval(['EE',num2str(i),'=[linspace(10000,10001,n2(i)),difang_x_bn,linspace(10000,10001,2000)]']); 
%    eval(['EEE',num2str(i),'=[linspace(10000,10001,n2(i)),difang_y_bn,linspace(10000,10001,2000)]']);
%    eval(['FF',num2str(i),'=[linspace(10000,10001,n2(i)),difang_x_nb,linspace(10000,10001,2000)]']); 
%    eval(['FFF',num2str(i),'=[linspace(10000,10001,n2(i)),difang_y_nb,linspace(10000,10001,2000)]']);
% end



%东西向船舶生成
% n=80;
%自东向西
course1 = 261*pi/180;
course2 = 81*pi/180;
y_dx = normrnd(20.205,0.003,1,1000);
x_dx = 110.3400;
x1_dx=cell(1000,1);
y1_dx=cell(1000,1);
for i=1:1000;
    [x1_dx{i} y1_dx{i}] =path_dx(x_dx,y_dx(i));
end
for i = 1:1000
   n2=10:5:5005;
   eval(['CC',num2str(i),'=[linspace(10000,10001,n2(i)),x1_dx{i}]']); 
   eval(['CCC',num2str(i),'=[linspace(10000,10001,n2(i)),y1_dx{i}]']);
end
C=cell(1000,1);
for i =1:1000
    C{i}=plot(10000,10000,'<','MarkerSize',10);
end
%自西向东    
y_xd = normrnd(20.1350,0.003,1,1000);
x_xd= 110.0691;
x1_xd=cell(1000,1);
y1_xd=cell(1000,1);
for i=1:1000;
    [x1_xd{i} y1_xd{i}] =path_xd(x_xd,y_xd(i));
end
for i = 1:1000;
   n3=10:5:5005;
   eval(['DD',num2str(i),'=[linspace(10000,10001,n3(i)),x1_xd{i}]']); 
   eval(['DDD',num2str(i),'=[linspace(10000,10001,n3(i)),y1_xd{i}]']);
end
D=cell(1000,1);
for i =1:1000;
    D{i}=plot(10000,10000,'>','MarkerSize',10);
end


for i = 1:2000   
       set(h{1},'Xdata' ,gaotie_bn1_x(i), 'Ydata' ,gaotie_bn1_y(i));
       set(h{2},'Xdata' ,gaotie_bn2_x(i), 'Ydata' ,gaotie_bn2_y(i));
       set(h{3},'Xdata' ,gaotie_bn3_x(i), 'Ydata' ,gaotie_bn3_y(i));
       set(h{4},'Xdata' ,gaotie_bn4_x(i), 'Ydata' ,gaotie_bn4_y(i));
       set(h{5},'Xdata' ,gaotie_bn5_x(i), 'Ydata' ,gaotie_bn5_y(i));
       set(h{6},'Xdata' ,gaotie_bn6_x(i), 'Ydata' ,gaotie_bn6_y(i));
       set(h{7},'Xdata' ,gaotie_bn7_x(i), 'Ydata' ,gaotie_bn7_y(i));
       set(h{8},'Xdata' ,gaotie_bn8_x(i), 'Ydata' ,gaotie_bn8_y(i));
       set(h{9},'Xdata' ,gaotie_bn9_x(i), 'Ydata' ,gaotie_bn9_y(i));
       set(h{10},'Xdata' ,gaotie_bn10_x(i), 'Ydata' ,gaotie_bn10_y(i));
       set(h{11},'Xdata' ,gaotie_bn11_x(i), 'Ydata' ,gaotie_bn11_y(i));
       set(h{12},'Xdata' ,gaotie_bn12_x(i), 'Ydata' ,gaotie_bn12_y(i));
       set(h{13},'Xdata' ,gaotie_bn13_x(i), 'Ydata' ,gaotie_bn13_y(i));
       set(h{14},'Xdata' ,gaotie_bn14_x(i), 'Ydata' ,gaotie_bn14_y(i));
       set(h{15},'Xdata' ,gaotie_bn15_x(i), 'Ydata' ,gaotie_bn15_y(i));
       set(h{16},'Xdata' ,gaotie_bn16_x(i), 'Ydata' ,gaotie_bn16_y(i));
       set(h{17},'Xdata' ,gaotie_bn17_x(i), 'Ydata' ,gaotie_bn17_y(i));
       set(h{18},'Xdata' ,gaotie_bn18_x(i), 'Ydata' ,gaotie_bn18_y(i));
       set(h{19},'Xdata' ,gaotie_bn19_x(i), 'Ydata' ,gaotie_bn19_y(i));
       set(h{20},'Xdata' ,gaotie_bn20_x(i), 'Ydata' ,gaotie_bn20_y(i));
       set(h{21},'Xdata' ,gaotie_bn21_x(i), 'Ydata' ,gaotie_bn21_y(i));
       set(h{22},'Xdata' ,gaotie_bn22_x(i), 'Ydata' ,gaotie_bn22_y(i));
       set(h{23},'Xdata' ,gaotie_bn23_x(i), 'Ydata' ,gaotie_bn23_y(i));
       set(h{24},'Xdata' ,gaotie_bn24_x(i), 'Ydata' ,gaotie_bn24_y(i));
       set(h{25},'Xdata' ,gaotie_bn25_x(i), 'Ydata' ,gaotie_bn25_y(i));
       set(h{26},'Xdata' ,gaotie_bn26_x(i), 'Ydata' ,gaotie_bn26_y(i));
       set(h{27},'Xdata' ,gaotie_bn27_x(i), 'Ydata' ,gaotie_bn27_y(i));
       set(h{28},'Xdata' ,gaotie_bn28_x(i), 'Ydata' ,gaotie_bn28_y(i));
       set(h{29},'Xdata' ,gaotie_bn29_x(i), 'Ydata' ,gaotie_bn29_y(i));
       set(h{30},'Xdata' ,gaotie_bn30_x(i), 'Ydata' ,gaotie_bn30_y(i));
       set(h{31},'Xdata' ,gaotie_bn31_x(i), 'Ydata' ,gaotie_bn31_y(i));
       set(h{32},'Xdata' ,gaotie_bn32_x(i), 'Ydata' ,gaotie_bn32_y(i));
       set(h{33},'Xdata' ,gaotie_bn33_x(i), 'Ydata' ,gaotie_bn33_y(i));
       set(h{34},'Xdata' ,gaotie_bn34_x(i), 'Ydata' ,gaotie_bn34_y(i));
       set(h{35},'Xdata' ,gaotie_bn35_x(i), 'Ydata' ,gaotie_bn35_y(i));
       set(h{36},'Xdata' ,gaotie_bn36_x(i), 'Ydata' ,gaotie_bn36_y(i));
       set(h{37},'Xdata' ,gaotie_bn37_x(i), 'Ydata' ,gaotie_bn37_y(i));
       set(h{38},'Xdata' ,gaotie_bn38_x(i), 'Ydata' ,gaotie_bn38_y(i));
       set(h{39},'Xdata' ,gaotie_bn39_x(i), 'Ydata' ,gaotie_bn39_y(i));
       set(h{40},'Xdata' ,gaotie_bn40_x(i), 'Ydata' ,gaotie_bn40_y(i));
       set(h{41},'Xdata' ,gaotie_bn41_x(i), 'Ydata' ,gaotie_bn41_y(i));
       set(h{42},'Xdata' ,gaotie_bn42_x(i), 'Ydata' ,gaotie_bn42_y(i));
       set(h{43},'Xdata' ,gaotie_bn43_x(i), 'Ydata' ,gaotie_bn43_y(i));
       set(h{44},'Xdata' ,gaotie_bn44_x(i), 'Ydata' ,gaotie_bn44_y(i));
       set(h{45},'Xdata' ,gaotie_bn45_x(i), 'Ydata' ,gaotie_bn45_y(i));
       set(h{46},'Xdata' ,gaotie_bn46_x(i), 'Ydata' ,gaotie_bn46_y(i));
       set(h{47},'Xdata' ,gaotie_bn47_x(i), 'Ydata' ,gaotie_bn47_y(i));
       set(h{48},'Xdata' ,gaotie_bn48_x(i), 'Ydata' ,gaotie_bn48_y(i));
       set(h{49},'Xdata' ,gaotie_bn49_x(i), 'Ydata' ,gaotie_bn49_y(i));
       set(h{50},'Xdata' ,gaotie_bn50_x(i), 'Ydata' ,gaotie_bn50_y(i));
       set(h{51},'Xdata' ,gaotie_bn51_x(i), 'Ydata' ,gaotie_bn51_y(i));
       set(h{52},'Xdata' ,gaotie_bn52_x(i), 'Ydata' ,gaotie_bn52_y(i));
       set(h{53},'Xdata' ,gaotie_bn53_x(i), 'Ydata' ,gaotie_bn53_y(i));
       set(h{54},'Xdata' ,gaotie_bn54_x(i), 'Ydata' ,gaotie_bn54_y(i));
       set(h{55},'Xdata' ,gaotie_bn55_x(i), 'Ydata' ,gaotie_bn55_y(i));
       set(h{56},'Xdata' ,gaotie_bn56_x(i), 'Ydata' ,gaotie_bn56_y(i));
       set(h{57},'Xdata' ,gaotie_bn57_x(i), 'Ydata' ,gaotie_bn57_y(i));
       set(h{58},'Xdata' ,gaotie_bn58_x(i), 'Ydata' ,gaotie_bn58_y(i));
       set(h{59},'Xdata' ,gaotie_bn59_x(i), 'Ydata' ,gaotie_bn59_y(i));
       set(h{60},'Xdata' ,gaotie_bn60_x(i), 'Ydata' ,gaotie_bn60_y(i));
  
       set(hh{1},'Xdata' ,gaotie_nb1_x(i), 'Ydata' ,gaotie_nb1_y(i));
       set(hh{2},'Xdata' ,gaotie_nb2_x(i), 'Ydata' ,gaotie_nb2_y(i));
       set(hh{3},'Xdata' ,gaotie_nb3_x(i), 'Ydata' ,gaotie_nb3_y(i));
       set(hh{4},'Xdata' ,gaotie_nb4_x(i), 'Ydata' ,gaotie_nb4_y(i));
       set(hh{5},'Xdata' ,gaotie_nb5_x(i), 'Ydata' ,gaotie_nb5_y(i));
       set(hh{6},'Xdata' ,gaotie_nb6_x(i), 'Ydata' ,gaotie_nb6_y(i));
       set(hh{7},'Xdata' ,gaotie_nb7_x(i), 'Ydata' ,gaotie_nb7_y(i));
       set(hh{8},'Xdata' ,gaotie_nb8_x(i), 'Ydata' ,gaotie_nb8_y(i));
       set(hh{9},'Xdata' ,gaotie_nb9_x(i), 'Ydata' ,gaotie_nb9_y(i));
       set(hh{10},'Xdata' ,gaotie_nb10_x(i), 'Ydata' ,gaotie_nb10_y(i));
       set(hh{11},'Xdata' ,gaotie_nb11_x(i), 'Ydata' ,gaotie_nb11_y(i));
       set(hh{12},'Xdata' ,gaotie_nb12_x(i), 'Ydata' ,gaotie_nb12_y(i));
       set(hh{13},'Xdata' ,gaotie_nb13_x(i), 'Ydata' ,gaotie_nb13_y(i));
       set(hh{14},'Xdata' ,gaotie_nb14_x(i), 'Ydata' ,gaotie_nb14_y(i));
       set(hh{15},'Xdata' ,gaotie_nb15_x(i), 'Ydata' ,gaotie_nb15_y(i));
       set(hh{16},'Xdata' ,gaotie_nb16_x(i), 'Ydata' ,gaotie_nb16_y(i));
       set(hh{17},'Xdata' ,gaotie_nb17_x(i), 'Ydata' ,gaotie_nb17_y(i));
       set(hh{18},'Xdata' ,gaotie_nb18_x(i), 'Ydata' ,gaotie_nb18_y(i));
       set(hh{19},'Xdata' ,gaotie_nb19_x(i), 'Ydata' ,gaotie_nb19_y(i));
       set(hh{20},'Xdata' ,gaotie_nb20_x(i), 'Ydata' ,gaotie_nb20_y(i));
       set(hh{21},'Xdata' ,gaotie_nb21_x(i), 'Ydata' ,gaotie_nb21_y(i));
       set(hh{22},'Xdata' ,gaotie_nb22_x(i), 'Ydata' ,gaotie_nb22_y(i));
       set(hh{23},'Xdata' ,gaotie_nb23_x(i), 'Ydata' ,gaotie_nb23_y(i));
       set(hh{24},'Xdata' ,gaotie_nb24_x(i), 'Ydata' ,gaotie_nb24_y(i));
       set(hh{25},'Xdata' ,gaotie_nb25_x(i), 'Ydata' ,gaotie_nb25_y(i));
       set(hh{26},'Xdata' ,gaotie_nb26_x(i), 'Ydata' ,gaotie_nb26_y(i));
       set(hh{27},'Xdata' ,gaotie_nb27_x(i), 'Ydata' ,gaotie_nb27_y(i));
       set(hh{28},'Xdata' ,gaotie_nb28_x(i), 'Ydata' ,gaotie_nb28_y(i));
       set(hh{29},'Xdata' ,gaotie_nb29_x(i), 'Ydata' ,gaotie_nb29_y(i));
       set(hh{30},'Xdata' ,gaotie_nb30_x(i), 'Ydata' ,gaotie_nb30_y(i));
       set(hh{31},'Xdata' ,gaotie_nb31_x(i), 'Ydata' ,gaotie_nb31_y(i));
       set(hh{32},'Xdata' ,gaotie_nb32_x(i), 'Ydata' ,gaotie_nb32_y(i));
       set(hh{33},'Xdata' ,gaotie_nb33_x(i), 'Ydata' ,gaotie_nb33_y(i));
       set(hh{34},'Xdata' ,gaotie_nb34_x(i), 'Ydata' ,gaotie_nb34_y(i));
       set(hh{35},'Xdata' ,gaotie_nb35_x(i), 'Ydata' ,gaotie_nb35_y(i));
       set(hh{36},'Xdata' ,gaotie_nb36_x(i), 'Ydata' ,gaotie_nb36_y(i));
       set(hh{37},'Xdata' ,gaotie_nb37_x(i), 'Ydata' ,gaotie_nb37_y(i));
       set(hh{38},'Xdata' ,gaotie_nb38_x(i), 'Ydata' ,gaotie_nb38_y(i));
       set(hh{39},'Xdata' ,gaotie_nb39_x(i), 'Ydata' ,gaotie_nb39_y(i));
       set(hh{40},'Xdata' ,gaotie_nb40_x(i), 'Ydata' ,gaotie_nb40_y(i));
       set(hh{41},'Xdata' ,gaotie_nb41_x(i), 'Ydata' ,gaotie_nb41_y(i));
       set(hh{42},'Xdata' ,gaotie_nb42_x(i), 'Ydata' ,gaotie_nb42_y(i));
       set(hh{43},'Xdata' ,gaotie_nb43_x(i), 'Ydata' ,gaotie_nb43_y(i));
       set(hh{44},'Xdata' ,gaotie_nb44_x(i), 'Ydata' ,gaotie_nb44_y(i));
       set(hh{45},'Xdata' ,gaotie_nb45_x(i), 'Ydata' ,gaotie_nb45_y(i));
       set(hh{46},'Xdata' ,gaotie_nb46_x(i), 'Ydata' ,gaotie_nb46_y(i));
       set(hh{47},'Xdata' ,gaotie_nb47_x(i), 'Ydata' ,gaotie_nb47_y(i));
       set(hh{48},'Xdata' ,gaotie_nb48_x(i), 'Ydata' ,gaotie_nb48_y(i));
       set(hh{49},'Xdata' ,gaotie_nb49_x(i), 'Ydata' ,gaotie_nb49_y(i));
       set(hh{50},'Xdata' ,gaotie_nb50_x(i), 'Ydata' ,gaotie_nb50_y(i));
       set(hh{51},'Xdata' ,gaotie_nb51_x(i), 'Ydata' ,gaotie_nb51_y(i));
       set(hh{52},'Xdata' ,gaotie_nb52_x(i), 'Ydata' ,gaotie_nb52_y(i));
       set(hh{53},'Xdata' ,gaotie_nb53_x(i), 'Ydata' ,gaotie_nb53_y(i));
       set(hh{54},'Xdata' ,gaotie_nb54_x(i), 'Ydata' ,gaotie_nb54_y(i));
       set(hh{55},'Xdata' ,gaotie_nb55_x(i), 'Ydata' ,gaotie_nb55_y(i));
       set(hh{56},'Xdata' ,gaotie_nb56_x(i), 'Ydata' ,gaotie_nb56_y(i));
       set(hh{57},'Xdata' ,gaotie_nb57_x(i), 'Ydata' ,gaotie_nb57_y(i));
       set(hh{58},'Xdata' ,gaotie_nb58_x(i), 'Ydata' ,gaotie_nb58_y(i));
       set(hh{59},'Xdata' ,gaotie_nb59_x(i), 'Ydata' ,gaotie_nb59_y(i));
       set(hh{60},'Xdata' ,gaotie_nb60_x(i), 'Ydata' ,gaotie_nb60_y(i));
       
         set(A{1},'Xdata' ,putie_bn1_x(i), 'Ydata' , putie_bn1_y(i));
         set(A{2},'Xdata' ,putie_bn2_x(i), 'Ydata' , putie_bn2_y(i));
         set(A{3},'Xdata' ,putie_bn3_x(i), 'Ydata' , putie_bn3_y(i));
         set(A{4},'Xdata' ,putie_bn4_x(i), 'Ydata' , putie_bn4_y(i));
         set(A{5},'Xdata' ,putie_bn5_x(i), 'Ydata' , putie_bn5_y(i));
         set(A{6},'Xdata' ,putie_bn6_x(i), 'Ydata' , putie_bn6_y(i));
         set(A{7},'Xdata' ,putie_bn7_x(i), 'Ydata' , putie_bn7_y(i));
         set(A{8},'Xdata' ,putie_bn8_x(i), 'Ydata' , putie_bn8_y(i));
         set(A{9},'Xdata' ,putie_bn9_x(i), 'Ydata' , putie_bn9_y(i));
         set(A{10},'Xdata' ,putie_bn10_x(i), 'Ydata' , putie_bn10_y(i));
         set(A{11},'Xdata' ,putie_bn11_x(i), 'Ydata' , putie_bn11_y(i));
         set(A{12},'Xdata' ,putie_bn12_x(i), 'Ydata' , putie_bn12_y(i));
         set(A{13},'Xdata' ,putie_bn13_x(i), 'Ydata' , putie_bn13_y(i));
         set(A{14},'Xdata' ,putie_bn14_x(i), 'Ydata' , putie_bn14_y(i));
         
         set(B{1},'Xdata' ,putie_nb1_x(i), 'Ydata' , putie_nb1_y(i));
         set(B{2},'Xdata' ,putie_nb2_x(i), 'Ydata' , putie_nb2_y(i));
         set(B{3},'Xdata' ,putie_nb3_x(i), 'Ydata' , putie_nb3_y(i));
         set(B{4},'Xdata' ,putie_nb4_x(i), 'Ydata' , putie_nb4_y(i));
         set(B{5},'Xdata' ,putie_nb5_x(i), 'Ydata' , putie_nb5_y(i));
         set(B{6},'Xdata' ,putie_nb6_x(i), 'Ydata' , putie_nb6_y(i));
         set(B{7},'Xdata' ,putie_nb7_x(i), 'Ydata' , putie_nb7_y(i));
         set(B{8},'Xdata' ,putie_nb8_x(i), 'Ydata' , putie_nb8_y(i));
         set(B{9},'Xdata' ,putie_nb9_x(i), 'Ydata' , putie_nb9_y(i));
         set(B{10},'Xdata' ,putie_nb10_x(i), 'Ydata' , putie_nb10_y(i));
         set(B{11},'Xdata' ,putie_nb11_x(i), 'Ydata' , putie_nb11_y(i));
         set(B{12},'Xdata' ,putie_nb12_x(i), 'Ydata' , putie_nb12_y(i));
         set(B{13},'Xdata' ,putie_nb13_x(i), 'Ydata' , putie_nb13_y(i));
         set(B{14},'Xdata' ,putie_nb14_x(i), 'Ydata' , putie_nb14_y(i)); 
         
       set(C{1},'Xdata' ,CC1(i), 'Ydata' ,CCC1(i));
       set(C{2},'Xdata' ,CC2(i), 'Ydata' ,CCC2(1));
       set(C{3},'Xdata' ,CC3(i), 'Ydata' ,CCC3(1));
       set(C{4},'Xdata' ,CC4(i), 'Ydata' ,CCC4(i));
       set(C{5},'Xdata' ,CC5(i), 'Ydata' ,CCC5(i));
       set(C{6},'Xdata' ,CC6(i), 'Ydata' ,CCC6(i));
       set(C{7},'Xdata' ,CC7(i), 'Ydata' ,CCC7(i));
       set(C{8},'Xdata' ,CC8(i), 'Ydata' ,CCC8(i));
       set(C{9},'Xdata' ,CC9(i), 'Ydata' ,CCC9(i));
       set(C{10},'Xdata' ,CC10(i), 'Ydata' ,CCC10(i));
       set(C{11},'Xdata' ,CC11(i), 'Ydata' ,CCC11(i));
       set(C{12},'Xdata' ,CC12(i), 'Ydata' ,CCC12(i));
       set(C{13},'Xdata' ,CC13(i), 'Ydata' ,CCC13(i));
       set(C{14},'Xdata' ,CC14(i), 'Ydata' ,CCC14(i));
       set(C{15},'Xdata' ,CC15(i), 'Ydata' ,CCC15(i));
       set(C{16},'Xdata' ,CC16(i), 'Ydata' ,CCC16(i));
       set(C{17},'Xdata' ,CC17(i), 'Ydata' ,CCC17(i));
       set(C{18},'Xdata' ,CC18(i), 'Ydata' ,CCC18(i));
       set(C{19},'Xdata' ,CC19(i), 'Ydata' ,CCC19(i));
       set(C{20},'Xdata' ,CC20(i), 'Ydata' ,CCC20(i));
       set(C{21},'Xdata' ,CC21(i), 'Ydata' ,CCC21(i));
       set(C{22},'Xdata' ,CC22(i), 'Ydata' ,CCC22(i));
       set(C{23},'Xdata' ,CC23(i), 'Ydata' ,CCC23(i));
       set(C{24},'Xdata' ,CC24(i), 'Ydata' ,CCC24(i));
       set(C{25},'Xdata' ,CC25(i), 'Ydata' ,CCC25(i));
       set(C{26},'Xdata' ,CC26(i), 'Ydata' ,CCC26(i));
       set(C{27},'Xdata' ,CC27(i), 'Ydata' ,CCC27(i));
       set(C{28},'Xdata' ,CC28(i), 'Ydata' ,CCC28(i));
       set(C{29},'Xdata' ,CC29(i), 'Ydata' ,CCC29(i));
       set(C{30},'Xdata' ,CC30(i), 'Ydata' ,CCC30(i));
       set(C{31},'Xdata' ,CC31(i), 'Ydata' ,CCC31(i));
       set(C{32},'Xdata' ,CC32(i), 'Ydata' ,CCC32(i));
       set(C{33},'Xdata' ,CC33(i), 'Ydata' ,CCC33(i));
       set(C{34},'Xdata' ,CC34(i), 'Ydata' ,CCC34(i));
       set(C{35},'Xdata' ,CC35(i), 'Ydata' ,CCC35(i));
       set(C{36},'Xdata' ,CC36(i), 'Ydata' ,CCC36(i));
       set(C{37},'Xdata' ,CC37(i), 'Ydata' ,CCC37(i));
       set(C{38},'Xdata' ,CC38(i), 'Ydata' ,CCC38(i));
       set(C{39},'Xdata' ,CC39(i), 'Ydata' ,CCC39(i));
       set(C{40},'Xdata' ,CC40(i), 'Ydata' ,CCC40(i));
       set(C{41},'Xdata' ,CC41(i), 'Ydata' ,CCC41(i));
       set(C{42},'Xdata' ,CC42(i), 'Ydata' ,CCC42(i));
       set(C{43},'Xdata' ,CC43(i), 'Ydata' ,CCC43(i));
       set(C{44},'Xdata' ,CC44(i), 'Ydata' ,CCC44(i));
       set(C{45},'Xdata' ,CC45(i), 'Ydata' ,CCC45(i));
       set(C{46},'Xdata' ,CC46(i), 'Ydata' ,CCC46(i));
       set(C{47},'Xdata' ,CC47(i), 'Ydata' ,CCC47(i));
       set(C{48},'Xdata' ,CC48(i), 'Ydata' ,CCC48(i));
       set(C{49},'Xdata' ,CC49(i), 'Ydata' ,CCC49(i));
       set(C{50},'Xdata' ,CC50(i), 'Ydata' ,CCC50(i));
       set(C{51},'Xdata' ,CC51(i), 'Ydata' ,CCC51(i));
       set(C{52},'Xdata' ,CC52(i), 'Ydata' ,CCC52(1));
       set(C{53},'Xdata' ,CC53(i), 'Ydata' ,CCC53(1));
       set(C{54},'Xdata' ,CC54(i), 'Ydata' ,CCC54(i));
       set(C{55},'Xdata' ,CC55(i), 'Ydata' ,CCC55(i));
       set(C{56},'Xdata' ,CC56(i), 'Ydata' ,CCC56(i));
       set(C{57},'Xdata' ,CC57(i), 'Ydata' ,CCC57(i));
       set(C{58},'Xdata' ,CC58(i), 'Ydata' ,CCC58(i));
       set(C{59},'Xdata' ,CC59(i), 'Ydata' ,CCC59(i));
       set(C{60},'Xdata' ,CC60(i), 'Ydata' ,CCC60(i));
       set(C{61},'Xdata' ,CC61(i), 'Ydata' ,CCC61(i));
       set(C{62},'Xdata' ,CC62(i), 'Ydata' ,CCC62(i));
       set(C{63},'Xdata' ,CC63(i), 'Ydata' ,CCC63(i));
       set(C{64},'Xdata' ,CC64(i), 'Ydata' ,CCC64(i));
       set(C{65},'Xdata' ,CC65(i), 'Ydata' ,CCC65(i));
       set(C{66},'Xdata' ,CC66(i), 'Ydata' ,CCC66(i));
       set(C{67},'Xdata' ,CC67(i), 'Ydata' ,CCC67(i));
       set(C{68},'Xdata' ,CC68(i), 'Ydata' ,CCC68(i));
       set(C{69},'Xdata' ,CC69(i), 'Ydata' ,CCC69(i));
       set(C{70},'Xdata' ,CC70(i), 'Ydata' ,CCC70(i));
       set(C{71},'Xdata' ,CC71(i), 'Ydata' ,CCC71(i));
       set(C{72},'Xdata' ,CC72(i), 'Ydata' ,CCC72(i));
       set(C{73},'Xdata' ,CC73(i), 'Ydata' ,CCC73(i));
       set(C{74},'Xdata' ,CC74(i), 'Ydata' ,CCC74(i));
       set(C{75},'Xdata' ,CC75(i), 'Ydata' ,CCC75(i));
       set(C{76},'Xdata' ,CC76(i), 'Ydata' ,CCC76(i));
       set(C{77},'Xdata' ,CC77(i), 'Ydata' ,CCC77(i));
       set(C{78},'Xdata' ,CC78(i), 'Ydata' ,CCC78(i));
       set(C{79},'Xdata' ,CC79(i), 'Ydata' ,CCC79(i));
       set(C{80},'Xdata' ,CC80(i), 'Ydata' ,CCC80(i));
       set(C{81},'Xdata' ,CC81(i), 'Ydata' ,CCC81(i));
       set(C{82},'Xdata' ,CC82(i), 'Ydata' ,CCC82(i));
       set(C{83},'Xdata' ,CC83(i), 'Ydata' ,CCC83(i));
       set(C{84},'Xdata' ,CC84(i), 'Ydata' ,CCC84(i));
       set(C{85},'Xdata' ,CC85(i), 'Ydata' ,CCC85(i));
       set(C{86},'Xdata' ,CC86(i), 'Ydata' ,CCC86(i));
       set(C{87},'Xdata' ,CC87(i), 'Ydata' ,CCC87(i));
       set(C{88},'Xdata' ,CC88(i), 'Ydata' ,CCC88(i));
       set(C{89},'Xdata' ,CC89(i), 'Ydata' ,CCC89(i));
       set(C{90},'Xdata' ,CC90(i), 'Ydata' ,CCC90(i));
       set(C{91},'Xdata' ,CC91(i), 'Ydata' ,CCC91(i));
       set(C{92},'Xdata' ,CC92(i), 'Ydata' ,CCC92(i));
       set(C{93},'Xdata' ,CC93(i), 'Ydata' ,CCC93(i));
       set(C{94},'Xdata' ,CC94(i), 'Ydata' ,CCC94(i));
       set(C{95},'Xdata' ,CC95(i), 'Ydata' ,CCC95(i));
       set(C{96},'Xdata' ,CC96(i), 'Ydata' ,CCC96(i));
       set(C{97},'Xdata' ,CC97(i), 'Ydata' ,CCC97(i));
       set(C{98},'Xdata' ,CC98(i), 'Ydata' ,CCC98(i));
       set(C{99},'Xdata' ,CC99(i), 'Ydata' ,CCC99(i));
       set(C{100},'Xdata' ,CC100(i), 'Ydata' ,CCC100(i));
       set(C{101},'Xdata' ,CC101(i), 'Ydata' ,CCC101(i));
       set(C{102},'Xdata' ,CC102(i), 'Ydata' ,CCC102(1));
       set(C{103},'Xdata' ,CC103(i), 'Ydata' ,CCC103(1));
       set(C{104},'Xdata' ,CC104(i), 'Ydata' ,CCC104(i));
       set(C{105},'Xdata' ,CC105(i), 'Ydata' ,CCC105(i));
       set(C{106},'Xdata' ,CC106(i), 'Ydata' ,CCC106(i));
       set(C{107},'Xdata' ,CC107(i), 'Ydata' ,CCC107(i));
       set(C{108},'Xdata' ,CC108(i), 'Ydata' ,CCC108(i));
       set(C{109},'Xdata' ,CC109(i), 'Ydata' ,CCC109(i));
       set(C{110},'Xdata' ,CC110(i), 'Ydata' ,CCC110(i));
       set(C{111},'Xdata' ,CC111(i), 'Ydata' ,CCC111(i));
       set(C{112},'Xdata' ,CC112(i), 'Ydata' ,CCC112(i));
       set(C{113},'Xdata' ,CC113(i), 'Ydata' ,CCC113(i));
       set(C{114},'Xdata' ,CC114(i), 'Ydata' ,CCC114(i));
       set(C{115},'Xdata' ,CC115(i), 'Ydata' ,CCC115(i));
       set(C{116},'Xdata' ,CC116(i), 'Ydata' ,CCC116(i));
       set(C{117},'Xdata' ,CC117(i), 'Ydata' ,CCC117(i));
       set(C{118},'Xdata' ,CC118(i), 'Ydata' ,CCC118(i));
       set(C{119},'Xdata' ,CC119(i), 'Ydata' ,CCC119(i));
       set(C{120},'Xdata' ,CC120(i), 'Ydata' ,CCC120(i));
       set(C{121},'Xdata' ,CC121(i), 'Ydata' ,CCC121(i));
       set(C{122},'Xdata' ,CC122(i), 'Ydata' ,CCC122(i));
       set(C{123},'Xdata' ,CC123(i), 'Ydata' ,CCC123(i));
       set(C{124},'Xdata' ,CC124(i), 'Ydata' ,CCC124(i));
       set(C{125},'Xdata' ,CC125(i), 'Ydata' ,CCC125(i));
       set(C{126},'Xdata' ,CC126(i), 'Ydata' ,CCC126(i));
       set(C{127},'Xdata' ,CC127(i), 'Ydata' ,CCC127(i));
       set(C{128},'Xdata' ,CC128(i), 'Ydata' ,CCC128(i));
       set(C{129},'Xdata' ,CC129(i), 'Ydata' ,CCC129(i));
       set(C{130},'Xdata' ,CC130(i), 'Ydata' ,CCC130(i));
       set(C{131},'Xdata' ,CC131(i), 'Ydata' ,CCC131(i));
       set(C{132},'Xdata' ,CC132(i), 'Ydata' ,CCC132(i));
       set(C{133},'Xdata' ,CC133(i), 'Ydata' ,CCC133(i));
       set(C{134},'Xdata' ,CC134(i), 'Ydata' ,CCC134(i));
       set(C{135},'Xdata' ,CC135(i), 'Ydata' ,CCC135(i));
       set(C{136},'Xdata' ,CC136(i), 'Ydata' ,CCC136(i));
       set(C{137},'Xdata' ,CC137(i), 'Ydata' ,CCC137(i));
       set(C{138},'Xdata' ,CC138(i), 'Ydata' ,CCC138(i));
       set(C{139},'Xdata' ,CC139(i), 'Ydata' ,CCC139(i));
       set(C{140},'Xdata' ,CC140(i), 'Ydata' ,CCC140(i));
       set(C{141},'Xdata' ,CC141(i), 'Ydata' ,CCC141(i));
       set(C{142},'Xdata' ,CC142(i), 'Ydata' ,CCC142(i));
       set(C{143},'Xdata' ,CC143(i), 'Ydata' ,CCC143(i));
       set(C{144},'Xdata' ,CC144(i), 'Ydata' ,CCC144(i));
       set(C{145},'Xdata' ,CC145(i), 'Ydata' ,CCC145(i));
       set(C{146},'Xdata' ,CC146(i), 'Ydata' ,CCC146(i));
       set(C{147},'Xdata' ,CC147(i), 'Ydata' ,CCC147(i));
       set(C{148},'Xdata' ,CC148(i), 'Ydata' ,CCC148(i));
       set(C{149},'Xdata' ,CC149(i), 'Ydata' ,CCC149(i));
       set(C{150},'Xdata' ,CC150(i), 'Ydata' ,CCC150(i));
       set(C{151},'Xdata' ,CC151(i), 'Ydata' ,CCC151(i));
       set(C{152},'Xdata' ,CC152(i), 'Ydata' ,CCC152(1));
       set(C{153},'Xdata' ,CC153(i), 'Ydata' ,CCC153(1));
       set(C{154},'Xdata' ,CC154(i), 'Ydata' ,CCC154(i));
       set(C{155},'Xdata' ,CC155(i), 'Ydata' ,CCC155(i));
       set(C{156},'Xdata' ,CC156(i), 'Ydata' ,CCC156(i));
       set(C{157},'Xdata' ,CC157(i), 'Ydata' ,CCC157(i));
       set(C{158},'Xdata' ,CC158(i), 'Ydata' ,CCC158(i));
       set(C{159},'Xdata' ,CC159(i), 'Ydata' ,CCC159(i));
       set(C{160},'Xdata' ,CC160(i), 'Ydata' ,CCC160(i));
       set(C{161},'Xdata' ,CC161(i), 'Ydata' ,CCC161(i));
       set(C{162},'Xdata' ,CC162(i), 'Ydata' ,CCC162(i));
       set(C{163},'Xdata' ,CC163(i), 'Ydata' ,CCC163(i));
       set(C{164},'Xdata' ,CC164(i), 'Ydata' ,CCC164(i));
       set(C{165},'Xdata' ,CC165(i), 'Ydata' ,CCC165(i));
       set(C{166},'Xdata' ,CC166(i), 'Ydata' ,CCC166(i));
       set(C{167},'Xdata' ,CC167(i), 'Ydata' ,CCC167(i));
       set(C{168},'Xdata' ,CC168(i), 'Ydata' ,CCC168(i));
       set(C{169},'Xdata' ,CC169(i), 'Ydata' ,CCC169(i));
       set(C{170},'Xdata' ,CC170(i), 'Ydata' ,CCC170(i));
       set(C{171},'Xdata' ,CC171(i), 'Ydata' ,CCC171(i));
       set(C{172},'Xdata' ,CC172(i), 'Ydata' ,CCC172(i));
       set(C{173},'Xdata' ,CC173(i), 'Ydata' ,CCC173(i));
       set(C{174},'Xdata' ,CC174(i), 'Ydata' ,CCC174(i));
       set(C{175},'Xdata' ,CC175(i), 'Ydata' ,CCC175(i));
       set(C{176},'Xdata' ,CC176(i), 'Ydata' ,CCC176(i));
       set(C{177},'Xdata' ,CC177(i), 'Ydata' ,CCC177(i));
       set(C{178},'Xdata' ,CC178(i), 'Ydata' ,CCC178(i));
       set(C{179},'Xdata' ,CC179(i), 'Ydata' ,CCC179(i));
       set(C{180},'Xdata' ,CC180(i), 'Ydata' ,CCC180(i));
       set(C{181},'Xdata' ,CC181(i), 'Ydata' ,CCC181(i));
       set(C{182},'Xdata' ,CC182(i), 'Ydata' ,CCC182(i));
       set(C{183},'Xdata' ,CC183(i), 'Ydata' ,CCC183(i));
       set(C{184},'Xdata' ,CC184(i), 'Ydata' ,CCC184(i));
       set(C{185},'Xdata' ,CC185(i), 'Ydata' ,CCC185(i));
       set(C{186},'Xdata' ,CC186(i), 'Ydata' ,CCC186(i));
       set(C{187},'Xdata' ,CC187(i), 'Ydata' ,CCC187(i));
       set(C{188},'Xdata' ,CC188(i), 'Ydata' ,CCC188(i));
       set(C{189},'Xdata' ,CC189(i), 'Ydata' ,CCC189(i));
       set(C{190},'Xdata' ,CC190(i), 'Ydata' ,CCC190(i));
       set(C{191},'Xdata' ,CC191(i), 'Ydata' ,CCC191(i));
       set(C{192},'Xdata' ,CC192(i), 'Ydata' ,CCC192(i));
       set(C{193},'Xdata' ,CC193(i), 'Ydata' ,CCC193(i));
       set(C{194},'Xdata' ,CC194(i), 'Ydata' ,CCC194(i));
       set(C{195},'Xdata' ,CC195(i), 'Ydata' ,CCC195(i));
       set(C{196},'Xdata' ,CC196(i), 'Ydata' ,CCC196(i));
       set(C{197},'Xdata' ,CC197(i), 'Ydata' ,CCC197(i));
       set(C{198},'Xdata' ,CC198(i), 'Ydata' ,CCC198(i));
       set(C{199},'Xdata' ,CC199(i), 'Ydata' ,CCC199(i));
       set(C{200},'Xdata' ,CC200(i), 'Ydata' ,CCC200(i));
       set(C{201},'Xdata' ,CC201(i), 'Ydata' ,CCC201(i));
       set(C{202},'Xdata' ,CC202(i), 'Ydata' ,CCC202(1));
       set(C{203},'Xdata' ,CC203(i), 'Ydata' ,CCC203(1));
       set(C{204},'Xdata' ,CC204(i), 'Ydata' ,CCC204(i));
       set(C{205},'Xdata' ,CC205(i), 'Ydata' ,CCC205(i));
       set(C{206},'Xdata' ,CC206(i), 'Ydata' ,CCC206(i));
       set(C{207},'Xdata' ,CC207(i), 'Ydata' ,CCC207(i));
       set(C{208},'Xdata' ,CC208(i), 'Ydata' ,CCC208(i));
       set(C{209},'Xdata' ,CC209(i), 'Ydata' ,CCC209(i));
       set(C{210},'Xdata' ,CC210(i), 'Ydata' ,CCC210(i));
       set(C{211},'Xdata' ,CC211(i), 'Ydata' ,CCC211(i));
       set(C{212},'Xdata' ,CC212(i), 'Ydata' ,CCC212(i));
       set(C{213},'Xdata' ,CC213(i), 'Ydata' ,CCC213(i));
       set(C{214},'Xdata' ,CC214(i), 'Ydata' ,CCC214(i));
       set(C{215},'Xdata' ,CC215(i), 'Ydata' ,CCC215(i));
       set(C{216},'Xdata' ,CC216(i), 'Ydata' ,CCC216(i));
       set(C{217},'Xdata' ,CC217(i), 'Ydata' ,CCC217(i));
       set(C{218},'Xdata' ,CC218(i), 'Ydata' ,CCC218(i));
       set(C{219},'Xdata' ,CC219(i), 'Ydata' ,CCC219(i));
       set(C{220},'Xdata' ,CC220(i), 'Ydata' ,CCC220(i));
       set(C{221},'Xdata' ,CC221(i), 'Ydata' ,CCC221(i));
       set(C{222},'Xdata' ,CC222(i), 'Ydata' ,CCC222(i));
       set(C{223},'Xdata' ,CC223(i), 'Ydata' ,CCC223(i));
       set(C{224},'Xdata' ,CC224(i), 'Ydata' ,CCC224(i));
       set(C{225},'Xdata' ,CC225(i), 'Ydata' ,CCC225(i));
       set(C{226},'Xdata' ,CC226(i), 'Ydata' ,CCC226(i));
       set(C{227},'Xdata' ,CC227(i), 'Ydata' ,CCC227(i));
       set(C{228},'Xdata' ,CC228(i), 'Ydata' ,CCC228(i));
       set(C{229},'Xdata' ,CC229(i), 'Ydata' ,CCC229(i));
       set(C{230},'Xdata' ,CC230(i), 'Ydata' ,CCC230(i));
       set(C{231},'Xdata' ,CC231(i), 'Ydata' ,CCC231(i));
       set(C{232},'Xdata' ,CC232(i), 'Ydata' ,CCC232(i));
       set(C{233},'Xdata' ,CC233(i), 'Ydata' ,CCC233(i));
       set(C{234},'Xdata' ,CC234(i), 'Ydata' ,CCC234(i));
       set(C{235},'Xdata' ,CC235(i), 'Ydata' ,CCC235(i));
       set(C{236},'Xdata' ,CC236(i), 'Ydata' ,CCC236(i));
       set(C{237},'Xdata' ,CC237(i), 'Ydata' ,CCC237(i));
       set(C{238},'Xdata' ,CC238(i), 'Ydata' ,CCC238(i));
       set(C{239},'Xdata' ,CC239(i), 'Ydata' ,CCC239(i));
       set(C{240},'Xdata' ,CC240(i), 'Ydata' ,CCC240(i));
       set(C{241},'Xdata' ,CC241(i), 'Ydata' ,CCC241(i));
       set(C{242},'Xdata' ,CC242(i), 'Ydata' ,CCC242(i));
       set(C{243},'Xdata' ,CC243(i), 'Ydata' ,CCC243(i));
       set(C{244},'Xdata' ,CC244(i), 'Ydata' ,CCC244(i));
       set(C{245},'Xdata' ,CC245(i), 'Ydata' ,CCC245(i));
       set(C{246},'Xdata' ,CC246(i), 'Ydata' ,CCC246(i));
       set(C{247},'Xdata' ,CC247(i), 'Ydata' ,CCC247(i));
       set(C{248},'Xdata' ,CC248(i), 'Ydata' ,CCC248(i));
       set(C{249},'Xdata' ,CC249(i), 'Ydata' ,CCC249(i));
       set(C{250},'Xdata' ,CC250(i), 'Ydata' ,CCC250(i));
       set(C{251},'Xdata' ,CC251(i), 'Ydata' ,CCC251(i));
       set(C{252},'Xdata' ,CC252(i), 'Ydata' ,CCC252(1));
       set(C{253},'Xdata' ,CC253(i), 'Ydata' ,CCC253(1));
       set(C{254},'Xdata' ,CC254(i), 'Ydata' ,CCC254(i));
       set(C{255},'Xdata' ,CC255(i), 'Ydata' ,CCC255(i));
       set(C{256},'Xdata' ,CC256(i), 'Ydata' ,CCC256(i));
       set(C{257},'Xdata' ,CC257(i), 'Ydata' ,CCC257(i));
       set(C{258},'Xdata' ,CC258(i), 'Ydata' ,CCC258(i));
       set(C{259},'Xdata' ,CC259(i), 'Ydata' ,CCC259(i));
       set(C{260},'Xdata' ,CC260(i), 'Ydata' ,CCC260(i));
       set(C{261},'Xdata' ,CC261(i), 'Ydata' ,CCC261(i));
       set(C{262},'Xdata' ,CC262(i), 'Ydata' ,CCC262(i));
       set(C{263},'Xdata' ,CC263(i), 'Ydata' ,CCC263(i));
       set(C{264},'Xdata' ,CC264(i), 'Ydata' ,CCC264(i));
       set(C{265},'Xdata' ,CC265(i), 'Ydata' ,CCC265(i));
       set(C{266},'Xdata' ,CC266(i), 'Ydata' ,CCC266(i));
       set(C{267},'Xdata' ,CC267(i), 'Ydata' ,CCC267(i));
       set(C{268},'Xdata' ,CC268(i), 'Ydata' ,CCC268(i));
       set(C{269},'Xdata' ,CC269(i), 'Ydata' ,CCC269(i));
       set(C{270},'Xdata' ,CC270(i), 'Ydata' ,CCC270(i));
       set(C{271},'Xdata' ,CC271(i), 'Ydata' ,CCC271(i));
       set(C{272},'Xdata' ,CC272(i), 'Ydata' ,CCC272(i));
       set(C{273},'Xdata' ,CC273(i), 'Ydata' ,CCC273(i));
       set(C{274},'Xdata' ,CC274(i), 'Ydata' ,CCC274(i));
       set(C{275},'Xdata' ,CC275(i), 'Ydata' ,CCC275(i));
       set(C{276},'Xdata' ,CC276(i), 'Ydata' ,CCC276(i));
       set(C{277},'Xdata' ,CC277(i), 'Ydata' ,CCC277(i));
       set(C{278},'Xdata' ,CC278(i), 'Ydata' ,CCC278(i));
       set(C{279},'Xdata' ,CC279(i), 'Ydata' ,CCC279(i));
       set(C{280},'Xdata' ,CC280(i), 'Ydata' ,CCC280(i));
       set(C{281},'Xdata' ,CC281(i), 'Ydata' ,CCC281(i));
       set(C{282},'Xdata' ,CC282(i), 'Ydata' ,CCC282(i));
       set(C{283},'Xdata' ,CC283(i), 'Ydata' ,CCC283(i));
       set(C{284},'Xdata' ,CC284(i), 'Ydata' ,CCC284(i));
       set(C{285},'Xdata' ,CC285(i), 'Ydata' ,CCC285(i));
       set(C{286},'Xdata' ,CC286(i), 'Ydata' ,CCC286(i));
       set(C{287},'Xdata' ,CC287(i), 'Ydata' ,CCC287(i));
       set(C{288},'Xdata' ,CC288(i), 'Ydata' ,CCC288(i));
       set(C{289},'Xdata' ,CC289(i), 'Ydata' ,CCC289(i));
       set(C{290},'Xdata' ,CC290(i), 'Ydata' ,CCC290(i));
       set(C{291},'Xdata' ,CC291(i), 'Ydata' ,CCC291(i));
       set(C{292},'Xdata' ,CC292(i), 'Ydata' ,CCC292(i));
       set(C{293},'Xdata' ,CC293(i), 'Ydata' ,CCC293(i));
       set(C{294},'Xdata' ,CC294(i), 'Ydata' ,CCC294(i));
       set(C{295},'Xdata' ,CC295(i), 'Ydata' ,CCC295(i));
       set(C{296},'Xdata' ,CC296(i), 'Ydata' ,CCC296(i));
       set(C{297},'Xdata' ,CC297(i), 'Ydata' ,CCC297(i));
       set(C{298},'Xdata' ,CC298(i), 'Ydata' ,CCC298(i));
       set(C{299},'Xdata' ,CC299(i), 'Ydata' ,CCC299(i));
       set(C{300},'Xdata' ,CC300(i), 'Ydata' ,CCC300(i));
     
       set(D{1},'Xdata' ,DD1(i), 'Ydata' ,DDD1(i));
       set(D{2},'Xdata' ,DD2(i), 'Ydata' ,DDD2(i));
       set(D{3},'Xdata' ,DD3(i), 'Ydata' ,DDD3(i));
       set(D{4},'Xdata' ,DD4(i), 'Ydata' ,DDD4(i));
       set(D{5},'Xdata' ,DD5(i), 'Ydata' ,DDD5(i));
       set(D{6},'Xdata' ,DD6(i), 'Ydata' ,DDD6(i));
       set(D{7},'Xdata' ,DD7(i), 'Ydata' ,DDD7(i));
       set(D{8},'Xdata' ,DD8(i), 'Ydata' ,DDD8(i));
       set(D{9},'Xdata' ,DD9(i), 'Ydata' ,DDD9(i));
       set(D{10},'Xdata' ,DD10(i), 'Ydata' ,DDD10(i));
       set(D{11},'Xdata' ,DD11(i), 'Ydata' ,DDD11(i));
       set(D{12},'Xdata' ,DD12(i), 'Ydata' ,DDD12(i));
       set(D{13},'Xdata' ,DD13(i), 'Ydata' ,DDD13(i));
       set(D{14},'Xdata' ,DD14(i), 'Ydata' ,DDD14(i));
       set(D{15},'Xdata' ,DD15(i), 'Ydata' ,DDD15(i));
       set(D{16},'Xdata' ,DD16(i), 'Ydata' ,DDD16(i));
       set(D{17},'Xdata' ,DD17(i), 'Ydata' ,DDD17(i));
       set(D{18},'Xdata' ,DD18(i), 'Ydata' ,DDD18(i));
       set(D{19},'Xdata' ,DD19(i), 'Ydata' ,DDD19(i));
       set(D{20},'Xdata' ,DD20(i), 'Ydata' ,DDD20(i));
       set(D{21},'Xdata' ,DD21(i), 'Ydata' ,DDD21(i));
       set(D{22},'Xdata' ,DD22(i), 'Ydata' ,DDD22(i));
       set(D{23},'Xdata' ,DD23(i), 'Ydata' ,DDD23(i));
       set(D{24},'Xdata' ,DD24(i), 'Ydata' ,DDD24(i));
       set(D{25},'Xdata' ,DD25(i), 'Ydata' ,DDD25(i));
       set(D{26},'Xdata' ,DD26(i), 'Ydata' ,DDD26(i));
       set(D{27},'Xdata' ,DD27(i), 'Ydata' ,DDD27(i));
       set(D{28},'Xdata' ,DD28(i), 'Ydata' ,DDD28(i));
       set(D{29},'Xdata' ,DD29(i), 'Ydata' ,DDD29(i));
       set(D{30},'Xdata' ,DD30(i), 'Ydata' ,DDD30(i));   
       set(D{31},'Xdata' ,DD31(i), 'Ydata' ,DDD31(i));
       set(D{32},'Xdata' ,DD32(i), 'Ydata' ,DDD32(i));
       set(D{33},'Xdata' ,DD33(i), 'Ydata' ,DDD33(i));
       set(D{34},'Xdata' ,DD34(i), 'Ydata' ,DDD34(i));
       set(D{35},'Xdata' ,DD35(i), 'Ydata' ,DDD35(i));
       set(D{36},'Xdata' ,DD36(i), 'Ydata' ,DDD36(i));
       set(D{37},'Xdata' ,DD37(i), 'Ydata' ,DDD37(i));
       set(D{38},'Xdata' ,DD38(i), 'Ydata' ,DDD38(i));
       set(D{39},'Xdata' ,DD39(i), 'Ydata' ,DDD39(i));
       set(D{40},'Xdata' ,DD40(i), 'Ydata' ,DDD40(i));
       set(D{41},'Xdata' ,DD41(i), 'Ydata' ,DDD41(i));
       set(D{42},'Xdata' ,DD42(i), 'Ydata' ,DDD42(i));
       set(D{43},'Xdata' ,DD43(i), 'Ydata' ,DDD43(i));
       set(D{44},'Xdata' ,DD44(i), 'Ydata' ,DDD44(i));
       set(D{45},'Xdata' ,DD45(i), 'Ydata' ,DDD45(i));
       set(D{46},'Xdata' ,DD46(i), 'Ydata' ,DDD46(i));
       set(D{47},'Xdata' ,DD47(i), 'Ydata' ,DDD47(i));
       set(D{48},'Xdata' ,DD48(i), 'Ydata' ,DDD48(i));
       set(D{49},'Xdata' ,DD49(i), 'Ydata' ,DDD49(i));
       set(D{50},'Xdata' ,DD50(i), 'Ydata' ,DDD50(i));
       set(D{51},'Xdata' ,DD51(i), 'Ydata' ,DDD51(i));
       set(D{52},'Xdata' ,DD52(i), 'Ydata' ,DDD52(1));
       set(D{53},'Xdata' ,DD53(i), 'Ydata' ,DDD53(1));
       set(D{54},'Xdata' ,DD54(i), 'Ydata' ,DDD54(i));
       set(D{55},'Xdata' ,DD55(i), 'Ydata' ,DDD55(i));
       set(D{56},'Xdata' ,DD56(i), 'Ydata' ,DDD56(i));
       set(D{57},'Xdata' ,DD57(i), 'Ydata' ,DDD57(i));
       set(D{58},'Xdata' ,DD58(i), 'Ydata' ,DDD58(i));
       set(D{59},'Xdata' ,DD59(i), 'Ydata' ,DDD59(i));
       set(D{60},'Xdata' ,DD60(i), 'Ydata' ,DDD60(i));
       set(D{61},'Xdata' ,DD61(i), 'Ydata' ,DDD61(i));
       set(D{62},'Xdata' ,DD62(i), 'Ydata' ,DDD62(i));
       set(D{63},'Xdata' ,DD63(i), 'Ydata' ,DDD63(i));
       set(D{64},'Xdata' ,DD64(i), 'Ydata' ,DDD64(i));
       set(D{65},'Xdata' ,DD65(i), 'Ydata' ,DDD65(i));
       set(D{66},'Xdata' ,DD66(i), 'Ydata' ,DDD66(i));
       set(D{67},'Xdata' ,DD67(i), 'Ydata' ,DDD67(i));
       set(D{68},'Xdata' ,DD68(i), 'Ydata' ,DDD68(i));
       set(D{69},'Xdata' ,DD69(i), 'Ydata' ,DDD69(i));
       set(D{70},'Xdata' ,DD70(i), 'Ydata' ,DDD70(i));
       set(D{71},'Xdata' ,DD71(i), 'Ydata' ,DDD71(i));
       set(D{72},'Xdata' ,DD72(i), 'Ydata' ,DDD72(i));
       set(D{73},'Xdata' ,DD73(i), 'Ydata' ,DDD73(i));
       set(D{74},'Xdata' ,DD74(i), 'Ydata' ,DDD74(i));
       set(D{75},'Xdata' ,DD75(i), 'Ydata' ,DDD75(i));
       set(D{76},'Xdata' ,DD76(i), 'Ydata' ,DDD76(i));
       set(D{77},'Xdata' ,DD77(i), 'Ydata' ,DDD77(i));
       set(D{78},'Xdata' ,DD78(i), 'Ydata' ,DDD78(i));
       set(D{79},'Xdata' ,DD79(i), 'Ydata' ,DDD79(i));
       set(D{80},'Xdata' ,DD80(i), 'Ydata' ,DDD80(i));
       set(D{81},'Xdata' ,DD81(i), 'Ydata' ,DDD81(i));
       set(D{82},'Xdata' ,DD82(i), 'Ydata' ,DDD82(i));
       set(D{83},'Xdata' ,DD83(i), 'Ydata' ,DDD83(i));
       set(D{84},'Xdata' ,DD84(i), 'Ydata' ,DDD84(i));
       set(D{85},'Xdata' ,DD85(i), 'Ydata' ,DDD85(i));
       set(D{86},'Xdata' ,DD86(i), 'Ydata' ,DDD86(i));
       set(D{87},'Xdata' ,DD87(i), 'Ydata' ,DDD87(i));
       set(D{88},'Xdata' ,DD88(i), 'Ydata' ,DDD88(i));
       set(D{89},'Xdata' ,DD89(i), 'Ydata' ,DDD89(i));
       set(D{90},'Xdata' ,DD90(i), 'Ydata' ,DDD90(i));
       set(D{91},'Xdata' ,DD91(i), 'Ydata' ,DDD91(i));
       set(D{92},'Xdata' ,DD92(i), 'Ydata' ,DDD92(i));
       set(D{93},'Xdata' ,DD93(i), 'Ydata' ,DDD93(i));
       set(D{94},'Xdata' ,DD94(i), 'Ydata' ,DDD94(i));
       set(D{95},'Xdata' ,DD95(i), 'Ydata' ,DDD95(i));
       set(D{96},'Xdata' ,DD96(i), 'Ydata' ,DDD96(i));
       set(D{97},'Xdata' ,DD97(i), 'Ydata' ,DDD97(i));
       set(D{98},'Xdata' ,DD98(i), 'Ydata' ,DDD98(i));
       set(D{99},'Xdata' ,DD99(i), 'Ydata' ,DDD99(i));
       set(D{100},'Xdata' ,DD100(i), 'Ydata' ,DDD100(i));
       set(D{101},'Xdata' ,DD101(i), 'Ydata' ,DDD101(i));
       set(D{102},'Xdata' ,DD102(i), 'Ydata' ,DDD102(i));
       set(D{103},'Xdata' ,DD103(i), 'Ydata' ,DDD103(i));
       set(D{104},'Xdata' ,DD104(i), 'Ydata' ,DDD104(i));
       set(D{105},'Xdata' ,DD105(i), 'Ydata' ,DDD105(i));
       set(D{106},'Xdata' ,DD106(i), 'Ydata' ,DDD106(i));
       set(D{107},'Xdata' ,DD107(i), 'Ydata' ,DDD107(i));
       set(D{108},'Xdata' ,DD108(i), 'Ydata' ,DDD108(i));
       set(D{109},'Xdata' ,DD109(i), 'Ydata' ,DDD109(i));
       set(D{110},'Xdata' ,DD110(i), 'Ydata' ,DDD110(i));
       set(D{111},'Xdata' ,DD111(i), 'Ydata' ,DDD111(i));
       set(D{112},'Xdata' ,DD112(i), 'Ydata' ,DDD112(i));
       set(D{113},'Xdata' ,DD113(i), 'Ydata' ,DDD113(i));
       set(D{114},'Xdata' ,DD114(i), 'Ydata' ,DDD114(i));
       set(D{115},'Xdata' ,DD115(i), 'Ydata' ,DDD115(i));
       set(D{116},'Xdata' ,DD116(i), 'Ydata' ,DDD116(i));
       set(D{117},'Xdata' ,DD117(i), 'Ydata' ,DDD117(i));
       set(D{118},'Xdata' ,DD118(i), 'Ydata' ,DDD118(i));
       set(D{119},'Xdata' ,DD119(i), 'Ydata' ,DDD119(i));
       set(D{120},'Xdata' ,DD120(i), 'Ydata' ,DDD120(i));
       set(D{121},'Xdata' ,DD121(i), 'Ydata' ,DDD121(i));
       set(D{122},'Xdata' ,DD122(i), 'Ydata' ,DDD122(i));
       set(D{123},'Xdata' ,DD123(i), 'Ydata' ,DDD123(i));
       set(D{124},'Xdata' ,DD124(i), 'Ydata' ,DDD124(i));
       set(D{125},'Xdata' ,DD125(i), 'Ydata' ,DDD125(i));
       set(D{126},'Xdata' ,DD126(i), 'Ydata' ,DDD126(i));
       set(D{127},'Xdata' ,DD127(i), 'Ydata' ,DDD127(i));
       set(D{128},'Xdata' ,DD128(i), 'Ydata' ,DDD128(i));
       set(D{129},'Xdata' ,DD129(i), 'Ydata' ,DDD129(i));
       set(D{130},'Xdata' ,DD130(i), 'Ydata' ,DDD130(i));   
       set(D{131},'Xdata' ,DD131(i), 'Ydata' ,DDD131(i));
       set(D{132},'Xdata' ,DD132(i), 'Ydata' ,DDD132(i));
       set(D{133},'Xdata' ,DD133(i), 'Ydata' ,DDD133(i));
       set(D{134},'Xdata' ,DD134(i), 'Ydata' ,DDD134(i));
       set(D{135},'Xdata' ,DD135(i), 'Ydata' ,DDD135(i));
       set(D{136},'Xdata' ,DD136(i), 'Ydata' ,DDD136(i));
       set(D{137},'Xdata' ,DD137(i), 'Ydata' ,DDD137(i));
       set(D{138},'Xdata' ,DD138(i), 'Ydata' ,DDD138(i));
       set(D{139},'Xdata' ,DD139(i), 'Ydata' ,DDD139(i));
       set(D{140},'Xdata' ,DD140(i), 'Ydata' ,DDD140(i));
       set(D{141},'Xdata' ,DD141(i), 'Ydata' ,DDD141(i));
       set(D{142},'Xdata' ,DD142(i), 'Ydata' ,DDD142(i));
       set(D{143},'Xdata' ,DD143(i), 'Ydata' ,DDD143(i));
       set(D{144},'Xdata' ,DD144(i), 'Ydata' ,DDD144(i));
       set(D{145},'Xdata' ,DD145(i), 'Ydata' ,DDD145(i));
       set(D{146},'Xdata' ,DD146(i), 'Ydata' ,DDD146(i));
       set(D{147},'Xdata' ,DD147(i), 'Ydata' ,DDD147(i));
       set(D{148},'Xdata' ,DD148(i), 'Ydata' ,DDD148(i));
       set(D{149},'Xdata' ,DD149(i), 'Ydata' ,DDD149(i));
       set(D{150},'Xdata' ,DD150(i), 'Ydata' ,DDD150(i));
       set(D{151},'Xdata' ,DD151(i), 'Ydata' ,DDD151(i));
       set(D{152},'Xdata' ,DD152(i), 'Ydata' ,DDD152(1));
       set(D{153},'Xdata' ,DD153(i), 'Ydata' ,DDD153(1));
       set(D{154},'Xdata' ,DD154(i), 'Ydata' ,DDD154(i));
       set(D{155},'Xdata' ,DD155(i), 'Ydata' ,DDD155(i));
       set(D{156},'Xdata' ,DD156(i), 'Ydata' ,DDD156(i));
       set(D{157},'Xdata' ,DD157(i), 'Ydata' ,DDD157(i));
       set(D{158},'Xdata' ,DD158(i), 'Ydata' ,DDD158(i));
       set(D{159},'Xdata' ,DD159(i), 'Ydata' ,DDD159(i));
       set(D{160},'Xdata' ,DD160(i), 'Ydata' ,DDD160(i));
       set(D{161},'Xdata' ,DD161(i), 'Ydata' ,DDD161(i));
       set(D{162},'Xdata' ,DD162(i), 'Ydata' ,DDD162(i));
       set(D{163},'Xdata' ,DD163(i), 'Ydata' ,DDD163(i));
       set(D{164},'Xdata' ,DD164(i), 'Ydata' ,DDD164(i));
       set(D{165},'Xdata' ,DD165(i), 'Ydata' ,DDD165(i));
       set(D{166},'Xdata' ,DD166(i), 'Ydata' ,DDD166(i));
       set(D{167},'Xdata' ,DD167(i), 'Ydata' ,DDD167(i));
       set(D{168},'Xdata' ,DD168(i), 'Ydata' ,DDD168(i));
       set(D{169},'Xdata' ,DD169(i), 'Ydata' ,DDD169(i));
       set(D{170},'Xdata' ,DD170(i), 'Ydata' ,DDD170(i));
       set(D{171},'Xdata' ,DD171(i), 'Ydata' ,DDD171(i));
       set(D{172},'Xdata' ,DD172(i), 'Ydata' ,DDD172(i));
       set(D{173},'Xdata' ,DD173(i), 'Ydata' ,DDD173(i));
       set(D{174},'Xdata' ,DD174(i), 'Ydata' ,DDD174(i));
       set(D{175},'Xdata' ,DD175(i), 'Ydata' ,DDD175(i));
       set(D{176},'Xdata' ,DD176(i), 'Ydata' ,DDD176(i));
       set(D{177},'Xdata' ,DD177(i), 'Ydata' ,DDD177(i));
       set(D{178},'Xdata' ,DD178(i), 'Ydata' ,DDD178(i));
       set(D{179},'Xdata' ,DD179(i), 'Ydata' ,DDD179(i));
       set(D{180},'Xdata' ,DD180(i), 'Ydata' ,DDD180(i));
       set(D{181},'Xdata' ,DD181(i), 'Ydata' ,DDD181(i));
       set(D{182},'Xdata' ,DD182(i), 'Ydata' ,DDD182(i));
       set(D{183},'Xdata' ,DD183(i), 'Ydata' ,DDD183(i));
       set(D{184},'Xdata' ,DD184(i), 'Ydata' ,DDD184(i));
       set(D{185},'Xdata' ,DD185(i), 'Ydata' ,DDD185(i));
       set(D{186},'Xdata' ,DD186(i), 'Ydata' ,DDD186(i));
       set(D{187},'Xdata' ,DD187(i), 'Ydata' ,DDD187(i));
       set(D{188},'Xdata' ,DD188(i), 'Ydata' ,DDD188(i));
       set(D{189},'Xdata' ,DD189(i), 'Ydata' ,DDD189(i));
       set(D{190},'Xdata' ,DD190(i), 'Ydata' ,DDD190(i));
       set(D{191},'Xdata' ,DD191(i), 'Ydata' ,DDD191(i));
       set(D{192},'Xdata' ,DD192(i), 'Ydata' ,DDD192(i));
       set(D{193},'Xdata' ,DD193(i), 'Ydata' ,DDD193(i));
       set(D{194},'Xdata' ,DD194(i), 'Ydata' ,DDD194(i));
       set(D{195},'Xdata' ,DD195(i), 'Ydata' ,DDD195(i));
       set(D{196},'Xdata' ,DD196(i), 'Ydata' ,DDD196(i));
       set(D{197},'Xdata' ,DD197(i), 'Ydata' ,DDD197(i));
       set(D{198},'Xdata' ,DD198(i), 'Ydata' ,DDD198(i));
       set(D{199},'Xdata' ,DD199(i), 'Ydata' ,DDD199(i));
       set(D{200},'Xdata' ,DD200(i), 'Ydata' ,DDD200(i)); 
       set(D{201},'Xdata' ,DD201(i), 'Ydata' ,DDD201(i));
       set(D{202},'Xdata' ,DD202(i), 'Ydata' ,DDD202(i));
       set(D{203},'Xdata' ,DD203(i), 'Ydata' ,DDD203(i));
       set(D{204},'Xdata' ,DD204(i), 'Ydata' ,DDD204(i));
       set(D{205},'Xdata' ,DD205(i), 'Ydata' ,DDD205(i));
       set(D{206},'Xdata' ,DD206(i), 'Ydata' ,DDD206(i));
       set(D{207},'Xdata' ,DD207(i), 'Ydata' ,DDD207(i));
       set(D{208},'Xdata' ,DD208(i), 'Ydata' ,DDD208(i));
       set(D{209},'Xdata' ,DD209(i), 'Ydata' ,DDD209(i));
       set(D{210},'Xdata' ,DD210(i), 'Ydata' ,DDD210(i));
       set(D{211},'Xdata' ,DD211(i), 'Ydata' ,DDD211(i));
       set(D{212},'Xdata' ,DD212(i), 'Ydata' ,DDD212(i));
       set(D{213},'Xdata' ,DD213(i), 'Ydata' ,DDD213(i));
       set(D{214},'Xdata' ,DD214(i), 'Ydata' ,DDD214(i));
       set(D{215},'Xdata' ,DD215(i), 'Ydata' ,DDD215(i));
       set(D{216},'Xdata' ,DD216(i), 'Ydata' ,DDD216(i));
       set(D{217},'Xdata' ,DD217(i), 'Ydata' ,DDD217(i));
       set(D{218},'Xdata' ,DD218(i), 'Ydata' ,DDD218(i));
       set(D{219},'Xdata' ,DD219(i), 'Ydata' ,DDD219(i));
       set(D{220},'Xdata' ,DD220(i), 'Ydata' ,DDD220(i));
       set(D{221},'Xdata' ,DD221(i), 'Ydata' ,DDD221(i));
       set(D{222},'Xdata' ,DD222(i), 'Ydata' ,DDD222(i));
       set(D{223},'Xdata' ,DD223(i), 'Ydata' ,DDD223(i));
       set(D{224},'Xdata' ,DD224(i), 'Ydata' ,DDD224(i));
       set(D{225},'Xdata' ,DD225(i), 'Ydata' ,DDD225(i));
       set(D{226},'Xdata' ,DD226(i), 'Ydata' ,DDD226(i));
       set(D{227},'Xdata' ,DD227(i), 'Ydata' ,DDD227(i));
       set(D{228},'Xdata' ,DD228(i), 'Ydata' ,DDD228(i));
       set(D{229},'Xdata' ,DD229(i), 'Ydata' ,DDD229(i));
       set(D{230},'Xdata' ,DD230(i), 'Ydata' ,DDD230(i));   
       set(D{231},'Xdata' ,DD231(i), 'Ydata' ,DDD231(i));
       set(D{232},'Xdata' ,DD232(i), 'Ydata' ,DDD232(i));
       set(D{233},'Xdata' ,DD233(i), 'Ydata' ,DDD233(i));
       set(D{234},'Xdata' ,DD234(i), 'Ydata' ,DDD234(i));
       set(D{235},'Xdata' ,DD235(i), 'Ydata' ,DDD235(i));
       set(D{236},'Xdata' ,DD236(i), 'Ydata' ,DDD236(i));
       set(D{237},'Xdata' ,DD237(i), 'Ydata' ,DDD237(i));
       set(D{238},'Xdata' ,DD238(i), 'Ydata' ,DDD238(i));
       set(D{239},'Xdata' ,DD239(i), 'Ydata' ,DDD239(i));
       set(D{240},'Xdata' ,DD240(i), 'Ydata' ,DDD240(i));
       set(D{241},'Xdata' ,DD241(i), 'Ydata' ,DDD241(i));
       set(D{242},'Xdata' ,DD242(i), 'Ydata' ,DDD242(i));
       set(D{243},'Xdata' ,DD243(i), 'Ydata' ,DDD243(i));
       set(D{244},'Xdata' ,DD244(i), 'Ydata' ,DDD244(i));
       set(D{245},'Xdata' ,DD245(i), 'Ydata' ,DDD245(i));
       set(D{246},'Xdata' ,DD246(i), 'Ydata' ,DDD246(i));
       set(D{247},'Xdata' ,DD247(i), 'Ydata' ,DDD247(i));
       set(D{248},'Xdata' ,DD248(i), 'Ydata' ,DDD248(i));
       set(D{249},'Xdata' ,DD249(i), 'Ydata' ,DDD249(i));
       set(D{250},'Xdata' ,DD250(i), 'Ydata' ,DDD250(i));
       set(D{251},'Xdata' ,DD251(i), 'Ydata' ,DDD251(i));
       set(D{252},'Xdata' ,DD252(i), 'Ydata' ,DDD252(1));
       set(D{253},'Xdata' ,DD253(i), 'Ydata' ,DDD253(1));
       set(D{254},'Xdata' ,DD254(i), 'Ydata' ,DDD254(i));
       set(D{255},'Xdata' ,DD255(i), 'Ydata' ,DDD255(i));
       set(D{256},'Xdata' ,DD256(i), 'Ydata' ,DDD256(i));
       set(D{257},'Xdata' ,DD257(i), 'Ydata' ,DDD257(i));
       set(D{258},'Xdata' ,DD258(i), 'Ydata' ,DDD258(i));
       set(D{259},'Xdata' ,DD259(i), 'Ydata' ,DDD259(i));
       set(D{260},'Xdata' ,DD260(i), 'Ydata' ,DDD260(i));
       set(D{261},'Xdata' ,DD261(i), 'Ydata' ,DDD261(i));
       set(D{262},'Xdata' ,DD262(i), 'Ydata' ,DDD262(i));
       set(D{263},'Xdata' ,DD263(i), 'Ydata' ,DDD263(i));
       set(D{264},'Xdata' ,DD264(i), 'Ydata' ,DDD264(i));
       set(D{265},'Xdata' ,DD265(i), 'Ydata' ,DDD265(i));
       set(D{266},'Xdata' ,DD266(i), 'Ydata' ,DDD266(i));
       set(D{267},'Xdata' ,DD267(i), 'Ydata' ,DDD267(i));
       set(D{268},'Xdata' ,DD268(i), 'Ydata' ,DDD268(i));
       set(D{269},'Xdata' ,DD269(i), 'Ydata' ,DDD269(i));
       set(D{270},'Xdata' ,DD270(i), 'Ydata' ,DDD270(i));
       set(D{271},'Xdata' ,DD271(i), 'Ydata' ,DDD271(i));
       set(D{272},'Xdata' ,DD272(i), 'Ydata' ,DDD272(i));
       set(D{273},'Xdata' ,DD273(i), 'Ydata' ,DDD273(i));
       set(D{274},'Xdata' ,DD274(i), 'Ydata' ,DDD274(i));
       set(D{275},'Xdata' ,DD275(i), 'Ydata' ,DDD275(i));
       set(D{276},'Xdata' ,DD276(i), 'Ydata' ,DDD276(i));
       set(D{277},'Xdata' ,DD277(i), 'Ydata' ,DDD277(i));
       set(D{278},'Xdata' ,DD278(i), 'Ydata' ,DDD278(i));
       set(D{279},'Xdata' ,DD279(i), 'Ydata' ,DDD279(i));
       set(D{280},'Xdata' ,DD280(i), 'Ydata' ,DDD280(i));
       set(D{281},'Xdata' ,DD281(i), 'Ydata' ,DDD281(i));
       set(D{282},'Xdata' ,DD282(i), 'Ydata' ,DDD282(i));
       set(D{283},'Xdata' ,DD283(i), 'Ydata' ,DDD283(i));
       set(D{284},'Xdata' ,DD284(i), 'Ydata' ,DDD284(i));
       set(D{285},'Xdata' ,DD285(i), 'Ydata' ,DDD285(i));
       set(D{286},'Xdata' ,DD286(i), 'Ydata' ,DDD286(i));
       set(D{287},'Xdata' ,DD287(i), 'Ydata' ,DDD287(i));
       set(D{288},'Xdata' ,DD288(i), 'Ydata' ,DDD288(i));
       set(D{289},'Xdata' ,DD289(i), 'Ydata' ,DDD289(i));
       set(D{290},'Xdata' ,DD290(i), 'Ydata' ,DDD290(i));
       set(D{291},'Xdata' ,DD291(i), 'Ydata' ,DDD291(i));
       set(D{292},'Xdata' ,DD292(i), 'Ydata' ,DDD292(i));
       set(D{293},'Xdata' ,DD293(i), 'Ydata' ,DDD293(i));
       set(D{294},'Xdata' ,DD294(i), 'Ydata' ,DDD294(i));
       set(D{295},'Xdata' ,DD295(i), 'Ydata' ,DDD295(i));
       set(D{296},'Xdata' ,DD296(i), 'Ydata' ,DDD296(i));
       set(D{297},'Xdata' ,DD297(i), 'Ydata' ,DDD297(i));
       set(D{298},'Xdata' ,DD298(i), 'Ydata' ,DDD298(i));
       set(D{299},'Xdata' ,DD299(i), 'Ydata' ,DDD299(i));
       set(D{300},'Xdata' ,DD300(i), 'Ydata' ,DDD300(i)); 
       
%        set(E{1},'Xdata' ,EE1(i), 'Ydata' ,EEE1(i));
%        set(E{2},'Xdata' ,EE2(i), 'Ydata' ,EEE2(1));
%        set(E{3},'Xdata' ,EE3(i), 'Ydata' ,EEE3(1));
%        set(E{4},'Xdata' ,EE4(i), 'Ydata' ,EEE4(i));
%        set(E{5},'Xdata' ,EE5(i), 'Ydata' ,EEE5(i));
%        set(E{6},'Xdata' ,EE6(i), 'Ydata' ,EEE6(i));
%        set(E{7},'Xdata' ,EE7(i), 'Ydata' ,EEE7(i));
%        set(E{8},'Xdata' ,EE8(i), 'Ydata' ,EEE8(i));
%        set(E{9},'Xdata' ,EE9(i), 'Ydata' ,EEE9(i));
%        set(E{10},'Xdata' ,EE10(i), 'Ydata' ,EEE10(i));
%        set(E{11},'Xdata' ,EE11(i), 'Ydata' ,EEE11(i));
%        set(E{12},'Xdata' ,EE12(i), 'Ydata' ,EEE12(i));
%        set(E{13},'Xdata' ,EE13(i), 'Ydata' ,EEE13(i));
%        set(E{14},'Xdata' ,EE14(i), 'Ydata' ,EEE14(i));
%        set(E{15},'Xdata' ,EE15(i), 'Ydata' ,EEE15(i));
%        set(E{16},'Xdata' ,EE16(i), 'Ydata' ,EEE16(i));
%        set(E{17},'Xdata' ,EE17(i), 'Ydata' ,EEE17(i));
%        set(E{18},'Xdata' ,EE18(i), 'Ydata' ,EEE18(i));
%        set(E{19},'Xdata' ,EE19(i), 'Ydata' ,EEE19(i));
%        set(E{20},'Xdata' ,EE20(i), 'Ydata' ,EEE20(i));
%        set(E{21},'Xdata' ,EE21(i), 'Ydata' ,EEE21(i));
%        set(E{22},'Xdata' ,EE22(i), 'Ydata' ,EEE22(i));
%        set(E{23},'Xdata' ,EE23(i), 'Ydata' ,EEE23(i));
%        set(E{24},'Xdata' ,EE24(i), 'Ydata' ,EEE24(i));
%        set(E{25},'Xdata' ,EE25(i), 'Ydata' ,EEE25(i));
%        set(E{26},'Xdata' ,EE26(i), 'Ydata' ,EEE26(i));
%        set(E{27},'Xdata' ,EE27(i), 'Ydata' ,EEE27(i));
%        set(E{28},'Xdata' ,EE28(i), 'Ydata' ,EEE28(i));
%        set(E{29},'Xdata' ,EE29(i), 'Ydata' ,EEE29(i));
%        set(E{30},'Xdata' ,EE30(i), 'Ydata' ,EEE30(i));
%        set(E{31},'Xdata' ,EE31(i), 'Ydata' ,EEE31(i));
%        set(E{32},'Xdata' ,EE32(i), 'Ydata' ,EEE32(i));
%        set(E{33},'Xdata' ,EE33(i), 'Ydata' ,EEE33(i));
%        set(E{34},'Xdata' ,EE34(i), 'Ydata' ,EEE34(i));
%        set(E{35},'Xdata' ,EE35(i), 'Ydata' ,EEE35(i));
%        set(E{36},'Xdata' ,EE36(i), 'Ydata' ,EEE36(i));
%        set(E{37},'Xdata' ,EE37(i), 'Ydata' ,EEE37(i));
%        set(E{38},'Xdata' ,EE38(i), 'Ydata' ,EEE38(i));
%        set(E{39},'Xdata' ,EE39(i), 'Ydata' ,EEE39(i));
%        set(E{40},'Xdata' ,EE40(i), 'Ydata' ,EEE40(i));
%        set(E{41},'Xdata' ,EE41(i), 'Ydata' ,EEE41(i));
%        set(E{42},'Xdata' ,EE42(i), 'Ydata' ,EEE42(i));
%        set(E{43},'Xdata' ,EE43(i), 'Ydata' ,EEE43(i));
%        set(E{44},'Xdata' ,EE44(i), 'Ydata' ,EEE44(i));
%        set(E{45},'Xdata' ,EE45(i), 'Ydata' ,EEE45(i));
%        set(E{46},'Xdata' ,EE46(i), 'Ydata' ,EEE46(i));
%        set(E{47},'Xdata' ,EE47(i), 'Ydata' ,EEE47(i));
%        set(E{48},'Xdata' ,EE48(i), 'Ydata' ,EEE48(i));
%        set(E{49},'Xdata' ,EE49(i), 'Ydata' ,EEE49(i));
%        set(E{50},'Xdata' ,EE50(i), 'Ydata' ,EEE50(i));
%        set(E{51},'Xdata' ,EE51(i), 'Ydata' ,EEE51(i));
%        set(E{52},'Xdata' ,EE52(i), 'Ydata' ,EE52(1));
%        set(E{53},'Xdata' ,EE53(i), 'Ydata' ,EEE53(1));
%        set(E{54},'Xdata' ,EE54(i), 'Ydata' ,EEE54(i));
%        set(E{55},'Xdata' ,EE55(i), 'Ydata' ,EEE55(i));
%        set(E{56},'Xdata' ,EE56(i), 'Ydata' ,EEE56(i));
%        set(E{57},'Xdata' ,EE57(i), 'Ydata' ,EEE57(i));
%        set(E{58},'Xdata' ,EE58(i), 'Ydata' ,EEE58(i));
%        set(E{59},'Xdata' ,EE59(i), 'Ydata' ,EEE59(i));
%        set(E{60},'Xdata' ,EE60(i), 'Ydata' ,EEE60(i));
%        set(E{61},'Xdata' ,EE61(i), 'Ydata' ,EEE61(i));
%        set(E{62},'Xdata' ,EE62(i), 'Ydata' ,EEE62(i));
%        set(E{63},'Xdata' ,EE63(i), 'Ydata' ,EEE63(i));
%        set(E{64},'Xdata' ,EE64(i), 'Ydata' ,EEE64(i));
%        set(E{65},'Xdata' ,EE65(i), 'Ydata' ,EEE65(i));
%        set(E{66},'Xdata' ,EE66(i), 'Ydata' ,EEE66(i));
%        set(E{67},'Xdata' ,EE67(i), 'Ydata' ,EEE67(i));
%        set(E{68},'Xdata' ,EE68(i), 'Ydata' ,EEE68(i));
%        set(E{69},'Xdata' ,EE69(i), 'Ydata' ,EEE69(i));
%        set(E{70},'Xdata' ,EE70(i), 'Ydata' ,EEE70(i));
%        set(E{71},'Xdata' ,EE71(i), 'Ydata' ,EEE71(i));
%        set(E{72},'Xdata' ,EE72(i), 'Ydata' ,EEE72(i)); 
%        
%        set(F{1},'Xdata' ,FF1(i), 'Ydata' ,FFF1(i));
%        set(F{2},'Xdata' ,FF2(i), 'Ydata' ,FFF2(1));
%        set(F{3},'Xdata' ,FF3(i), 'Ydata' ,FFF3(1));
%        set(F{4},'Xdata' ,FF4(i), 'Ydata' ,FFF4(i));
%        set(F{5},'Xdata' ,FF5(i), 'Ydata' ,FFF5(i));
%        set(F{6},'Xdata' ,FF6(i), 'Ydata' ,FFF6(i));
%        set(F{7},'Xdata' ,FF7(i), 'Ydata' ,FFF7(i));
%        set(F{8},'Xdata' ,FF8(i), 'Ydata' ,FFF8(i));
%        set(F{9},'Xdata' ,FF9(i), 'Ydata' ,FFF9(i));
%        set(F{10},'Xdata' ,FF10(i), 'Ydata' ,FFF10(i));
%        set(F{11},'Xdata' ,FF11(i), 'Ydata' ,FFF11(i));
%        set(F{12},'Xdata' ,FF12(i), 'Ydata' ,FFF12(i));
%        set(F{13},'Xdata' ,FF13(i), 'Ydata' ,FFF13(i));
%        set(F{14},'Xdata' ,FF14(i), 'Ydata' ,FFF14(i));
%        set(F{15},'Xdata' ,FF15(i), 'Ydata' ,FFF15(i));
%        set(F{16},'Xdata' ,FF16(i), 'Ydata' ,FFF16(i));
%        set(F{17},'Xdata' ,FF17(i), 'Ydata' ,FFF17(i));
%        set(F{18},'Xdata' ,FF18(i), 'Ydata' ,FFF18(i));
%        set(F{19},'Xdata' ,FF19(i), 'Ydata' ,FFF19(i));
%        set(F{20},'Xdata' ,FF20(i), 'Ydata' ,FFF20(i));
%        set(F{21},'Xdata' ,FF21(i), 'Ydata' ,FFF21(i));
%        set(F{22},'Xdata' ,FF22(i), 'Ydata' ,FFF22(i));
%        set(F{23},'Xdata' ,FF23(i), 'Ydata' ,FFF23(i));
%        set(F{24},'Xdata' ,FF24(i), 'Ydata' ,FFF24(i));
%        set(F{25},'Xdata' ,FF25(i), 'Ydata' ,FFF25(i));
%        set(F{26},'Xdata' ,FF26(i), 'Ydata' ,FFF26(i));
%        set(F{27},'Xdata' ,FF27(i), 'Ydata' ,FFF27(i));
%        set(F{28},'Xdata' ,FF28(i), 'Ydata' ,FFF28(i));
%        set(F{29},'Xdata' ,FF29(i), 'Ydata' ,FFF29(i));
%        set(F{30},'Xdata' ,FF30(i), 'Ydata' ,FFF30(i));
%        set(F{31},'Xdata' ,FF31(i), 'Ydata' ,FFF31(i));
%        set(F{32},'Xdata' ,FF32(i), 'Ydata' ,FFF32(i));
%        set(F{33},'Xdata' ,FF33(i), 'Ydata' ,FFF33(i));
%        set(F{34},'Xdata' ,FF34(i), 'Ydata' ,FFF34(i));
%        set(F{35},'Xdata' ,FF35(i), 'Ydata' ,FFF35(i));
%        set(F{36},'Xdata' ,FF36(i), 'Ydata' ,FFF36(i));
%        set(F{37},'Xdata' ,FF37(i), 'Ydata' ,FFF37(i));
%        set(F{38},'Xdata' ,FF38(i), 'Ydata' ,FFF38(i));
%        set(F{39},'Xdata' ,FF39(i), 'Ydata' ,FFF39(i));
%        set(F{40},'Xdata' ,FF40(i), 'Ydata' ,FFF40(i));
%        set(F{41},'Xdata' ,FF41(i), 'Ydata' ,FFF41(i));
%        set(F{42},'Xdata' ,FF42(i), 'Ydata' ,FFF42(i));
%        set(F{43},'Xdata' ,FF43(i), 'Ydata' ,FFF43(i));
%        set(F{44},'Xdata' ,FF44(i), 'Ydata' ,FFF44(i));
%        set(F{45},'Xdata' ,FF45(i), 'Ydata' ,FFF45(i));
%        set(F{46},'Xdata' ,FF46(i), 'Ydata' ,FFF46(i));
%        set(F{47},'Xdata' ,FF47(i), 'Ydata' ,FFF47(i));
%        set(F{48},'Xdata' ,FF48(i), 'Ydata' ,FFF48(i));
%        set(F{49},'Xdata' ,FF49(i), 'Ydata' ,FFF49(i));
%        set(F{50},'Xdata' ,FF50(i), 'Ydata' ,FFF50(i));
%        set(F{51},'Xdata' ,FF51(i), 'Ydata' ,FFF51(i));
%        set(F{52},'Xdata' ,FF52(i), 'Ydata' ,FFF52(1));
%        set(F{53},'Xdata' ,FF53(i), 'Ydata' ,FFF53(1));
%        set(F{54},'Xdata' ,FF54(i), 'Ydata' ,FFF54(i));
%        set(F{55},'Xdata' ,FF55(i), 'Ydata' ,FFF55(i));
%        set(F{56},'Xdata' ,FF56(i), 'Ydata' ,FFF56(i));
%        set(F{57},'Xdata' ,FF57(i), 'Ydata' ,FFF57(i));
%        set(F{58},'Xdata' ,FF58(i), 'Ydata' ,FFF58(i));
%        set(F{59},'Xdata' ,FF59(i), 'Ydata' ,FFF59(i));
%        set(F{60},'Xdata' ,FF60(i), 'Ydata' ,FFF60(i));
%        set(F{61},'Xdata' ,FF61(i), 'Ydata' ,FFF61(i));
%        set(F{62},'Xdata' ,FF62(i), 'Ydata' ,FFF62(i));
%        set(F{63},'Xdata' ,FF63(i), 'Ydata' ,FFF63(i));
%        set(F{64},'Xdata' ,FF64(i), 'Ydata' ,FFF64(i));
%        set(F{65},'Xdata' ,FF65(i), 'Ydata' ,FFF65(i));
%        set(F{66},'Xdata' ,FF66(i), 'Ydata' ,FFF66(i));
%        set(F{67},'Xdata' ,FF67(i), 'Ydata' ,FFF67(i));
%        set(F{68},'Xdata' ,FF68(i), 'Ydata' ,FFF68(i));
%        set(F{69},'Xdata' ,FF69(i), 'Ydata' ,FFF69(i));
%        set(F{70},'Xdata' ,FF70(i), 'Ydata' ,FFF70(i));
%        set(F{71},'Xdata' ,FF71(i), 'Ydata' ,FFF71(i));
%        set(F{72},'Xdata' ,FF72(i), 'Ydata' ,FFF72(i)); 
       
       
       
   drawnow; %刷新屏幕
   pause(0.01)
   f = getframe(gcf);
   imind = frame2im(f);
   [imind,cm] = rgb2ind(imind,256);
    if i == 1
       imwrite(imind,cm,'test.gif','gif', 'Loopcount',inf,'DelayTime',0.1);
    else
       imwrite(imind,cm,'test.gif','gif','WriteMode','append','DelayTime',0.1);
     end
end

