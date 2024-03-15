function [Gr3] = CurbaGrad3(t)

%Reprezentarea Curbei Berzier de grad 3 (cubica)
%capul pisicii
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[-8 -8 8 8;0 10 10 0]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'k')
fill(f(1,:),f(2,:),'b')
hold off

t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[-8 -8 8 8;0 -10 -10 0]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'k')
fill(f(1,:),f(2,:),'b')
hold off
%urechea dreapta
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[3.02 0 15 7;7 13 13 4]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
fill(f(1,:),f(2,:),'k')

hold off
%urechea stanga
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[-3.02 0 -15 -7;7 13 13 4]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
fill(f(1,:),f(2,:),'k')
hold off

% ochiul stang
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[-1 -1 -5 -5;2.5 5 5 2.5]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
fill(f(1,:),f(2,:),'w')
hold off
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[-1 -1 -5 -5;2.5 0 0 2.5]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
fill(f(1,:),f(2,:),'k')
hold off

%ochiul drept
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[1 1 5 5;2.5 5 5 2.5]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
fill(f(1,:),f(2,:),'w')

t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[1 1 5 5;2.5 0 0 2.5]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
fill(f(1,:),f(2,:),'k')
hold off
grid on


t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B11=[b0;b1;b2;b3];
hold on

b1=[-2 -2 -2.5 -3;2.5 3 3.5 3.5] 
f1=b1*B11

b2=[-3 -3.5 -4 -4;3.5 3.5 3 2.5]
f2=b2*B11

b3=[-4 -4 -3.5 -3;2.5 2 1.5 1.5]
f3=b3*B11

b4=[-3 -2.5 -2 -2;1.5 1.5 2 2.5]
f4=b4*B11
hold on
%plot(b1(1,:),b1(2,:))
fill(f1(1,:),f1(2,:),'k')

%plot(b2(1,:),b2(2,:))
fill(f2(1,:),f2(2,:),'k')

%plot(b3(1,:),b3(2,:))
fill(f3(1,:),f3(2,:),'w')

%plot(b4(1,:),b4(2,:))
fill(f4(1,:),f4(2,:),'w')

axis equal
grid on

%gura
t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[0 0 4 4;-1 -5 -5 -2]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
plot(f(1,:),f(2,:),'w')
hold off

t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B12=[b0;b1;b2;b3];
hold on

b11=[2 2 2.5 3;2.5 3 3.5 3.5] 
f11=b11*B12

b22=[3 3.5 4 4;3.5 3.5 3 2.5]
f22=b22*B12

b33=[4 4 3.5 3;2.5 2 1.5 1.5]
f33=b33*B12

b44=[3 2.5 2 2;1.5 1.5 2 2.5]
f44=b44*B12
hold on
%plot(b11(1,:),b11(2,:))
fill(f11(1,:),f11(2,:),'k')

%plot(b22(1,:),b22(2,:))
fill(f22(1,:),f22(2,:),'k')

%plot(b33(1,:),b33(2,:))
fill(f33(1,:),f33(2,:),'w')

%plot(b44(1,:),b44(2,:))
fill(f44(1,:),f44(2,:),'w')

axis equal
grid on

t=0:0.001:1;
B0=(1-t).^3
B1=3*(1-t).^2.*t
B2=3*(1-t).*t.^2
B3=t.^3
B=[B0;B1;B2;B3]
b=[0 0 -4 -4;-1 -5 -5 -2]
f=b*B;
hold on
%plot(b(1,:),b(2,:),'b')
plot(f(1,:),f(2,:),'w')
hold off

%nasul
%Aproximarea unui cerc folosind curbele Bezier
k=0.5522;
t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B=[b0;b1;b2;b3];
hold on
%primul arc de cerc/cadran I
b1=[1 1 k 0; 0 k 1 1] %punctele de control
f1=b1*B
%al doilea arc de cerc/cadran II
b2=[0 -k -1 -1; 1 1 k 0]
f2=b2*B
%al treilea arc de cerc/cadran III
b3=[-1 -1 -k 0; 0 -k -1 -1]
f3=b3*B
%al patrulea arc de cerc/cadran IV
b4=[0 k 1 1 ; -1 -1 -k 0]
f4=b4*B
%poligonul de control
%plot(b1(1,:),b1(2,:))
%plot(b2(1,:),b2(2,:))
%plot(b3(1,:),b3(2,:))
%plot(b4(1,:),b4(2,:))
plot(f1(1,:),f1(2,:),'w')
plot(f2(1,:),f2(2,:),'w')
plot(f3(1,:),f3(2,:),'w')
plot(f4(1,:),f4(2,:),'w')

%limba
t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B13=[b0;b1;b2;b3];
P=[-2.22159 -1 1 2.22159;-4.13843 -6.7 -6.7 -4.13826];
f1=P*B13;
hold on
%plot(P(1,:),P(2,:))
fill(f1(1,:),f1(2,:),'r')
axis equal


t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B14=[b0;b1;b2;b3];
b=[-15 -14 -12 -11;-7 -5 -5 -7]
f14=b*B14; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'k')%pct de control
fill(f14(1,:),f14(2,:),'m')%curba Bezier
hold off

t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B15=[b0;b1;b2;b3];
b=[-11 -10 -8 -7; -7 -5 -5 -7]
f15=b*B15; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'k')%pct de control
fill(f15(1,:),f15(2,:),'m')%curba Bezier
hold off

t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B14=[b0;b1;b2;b3];
b=[15 14 12 11;-7 -5 -5 -7]
f14=b*B14; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'k')%pct de control
fill(f14(1,:),f14(2,:),'k')%curba Bezier
hold off

t=0:0.001:1
b0=(1-t).^3;
b1=3*(1-t).^2.*t;
b2=3*(1-t).*(t.^2);
b3=t.^3;
B15=[b0;b1;b2;b3];
b=[11 10 8 7; -7 -5 -5 -7]
f15=b*B15; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'k')%pct de control
fill(f15(1,:),f15(2,:),'k')%curba Bezier
hold off

end