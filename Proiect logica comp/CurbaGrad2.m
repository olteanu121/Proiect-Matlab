function [Gr2] = CurbaGrad2(t)

%Algoritmul Casteljau pentru n=2
%genele din partea stanga
t=0:0.001:0.9; % parametru
B0=(1-t).^2;
B1=2.*(1-t).*t;
B2=t.^2;
B=[B0;B1;B2];
b=[-1.28 -5.7 -6;3.5 2 4];
f=b*B;
hold on;
%plot(b(1,:),b(2,:),'b');
plot(f(1,:),f(2,:),'w');
b1=zeros(2,2); %2 pct pe nivel
b2=zeros(2,1); %1 pct pe nivel
t=1/3
for i=1:2
b1(:,i)=b(:,i).*(1-t)+b(:,i+1).*t;
end
t=0:0.001:0.7; % parametru
B0=(1-t).^2;
B1=2.*(1-t).*t;
B2=t.^2;
B=[B0;B1;B2];
b=[-1.48 -5.5 -6;3.77  2 6];
f=b*B;
hold on;
%plot(b(1,:),b(2,:),'b');
plot(f(1,:),f(2,:),'w');
b1=zeros(2,2); %2 pct pe nivel
b2=zeros(2,1); %1 pct pe nivel
t=1/2
for i=1:2
b1(:,i)=b(:,i).*(1-t)+b(:,i+1).*t;
end

hold off
t=0:0.001:0.7; % parametru
B0=(1-t).^2;
B1=2.*(1-t).*t;
B2=t.^2;
B=[B0;B1;B2];
b=[1.48 5.5 6;3.77  2 6];
f=b*B;
hold on;
%plot(b(1,:),b(2,:),'b');
plot(f(1,:),f(2,:),'w');
b1=zeros(2,2); %2 pct pe nivel
b2=zeros(2,1); %1 pct pe nivel
t=1/3
%calculam punctele de pe nivelul 1
for i=1:2
b1(:,i)=b(:,i).*(1-t)+b(:,i+1).*t;
end

%genele de la ochiul drept
t=0:0.001:0.9; % parametru
B0=(1-t).^2;
B1=2.*(1-t).*t;
B2=t.^2;
B=[B0;B1;B2];
b=[1.28 5.7 6;3.5 2 4];
f=b*B;
hold on;
%plot(b(1,:),b(2,:),'b');
plot(f(1,:),f(2,:),'w');
b1=zeros(2,2); %2 pct pe nivel
b2=zeros(2,1); %1 pct pe nivel
t=1/3
%calculam punctele de pe nivelul 1
for i=1:2
b1(:,i)=b(:,i).*(1-t)+b(:,i+1).*t;
end

%partea dreapta a trunchiului 
%curba Berzier gr.2
t=0:0.001:1;
%polinoamele Bernstein de grad 2
B0=(1-t).^2
B1=2*(1-t).*t
B2=t.^2
B=[B0;B1;B2]%matricea ce contine pol B
b=[0 20 2.39;-24 -20 -7.19]
f=b*B; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'b')%pct de control
fill(f(1,:),f(2,:),'m')%curba Bezier
hold off

%partea stanga a trunchiului 
%curba Berzier gr.2
t=0:0.001:1;
%polinoamele Bernstein de grad 2
B0=(1-t).^2
B1=2*(1-t).*t
B2=t.^2
B=[B0;B1;B2]%matricea ce contine pol B
b=[0 -20 -2.39;-24 -20 -7.19]
f=b*B; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'k')%pct de control
fill(f(1,:),f(2,:),'k')%curba Bezier
hold off
axis equal

%aripa stanga
t=0:0.001:1;
%polinoamele Bernstein de grad 2
B0=(1-t).^2
B1=2*(1-t).*t
B2=t.^2
B=[B0;B1;B2]%matricea ce contine pol B
b=[-8 -15 -15;-12 -12.5 -7]
f=b*B; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'b')%pct de control
fill(f(1,:),f(2,:),'m')%curba Bezier
hold off

%aripa dreapta
t=0:0.001:1;
%polinoamele Bernstein de grad 2
B0=(1-t).^2
B1=2*(1-t).*t
B2=t.^2
B=[B0;B1;B2]%matricea ce contine pol B
b=[-7 -6.5 -8;-7 -8 -12]
f=b*B; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'b')%pct de control
fill(f(1,:),f(2,:),'m')%curba Bezier
hold off

t=0:0.001:1;
%polinoamele Bernstein de grad 2
B0=(1-t).^2
B1=2*(1-t).*t
B2=t.^2
B=[B0;B1;B2]%matricea ce contine pol B
b=[8 15 15;-12 -12.5 -7]
f=b*B; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'b')%pct de control
fill(f(1,:),f(2,:),'k')%curba Bezier
hold off

t=0:0.001:1;
%polinoamele Bernstein de grad 2
B0=(1-t).^2
B1=2*(1-t).*t
B2=t.^2
B=[B0;B1;B2]%matricea ce contine pol B
b=[7 6.5 8;-7 -8 -12]
f=b*B; %curba Bezier
hold on
%plot(b(1,:),b(2,:),'b')%pct de control
fill(f(1,:),f(2,:),'k')%curba Bezier
hold off

end