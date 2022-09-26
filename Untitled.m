y=[0.727189905	0.834536549	0.863905585	0.870173508	0.86041296	0.86104102	0.859290929	0.849471004];
x=2:2:16;
x2=[3 5 8 9 11 13 14 15];
y2=[0.706979638 0.831426783 0.855616842 0.855985031 0.857682699  0.857717762, 0.856999627 0.85267497];
subplot(2,1,1);plot(x,y),axis([2,16,0.7,0.9]),hold on;

subplot(2,1,2);
plot(x2(1),y2(1),'o','markersize',12,'color','y'),hold on
plot(x2(2),y2(2),'o','markersize',12,'color','k')
plot(x2(3),y2(3),'o','markersize',12,'color','k')
plot(x2(4),y2(4),'o','markersize',12,'color','k')
plot(x2(5),y2(5),'o','markersize',12,'color','k')
plot(x2(6),y2(6),'o','markersize',12,'color','k')
plot(x2(7),y2(7),'o','markersize',12,'color','k')
plot(x2(8),y2(8),'o','markersize',12,'color','k')
plot(x2,y2),axis([2,16,0.7,0.9]),hold on;
x3=x2(3:7);
y3=y2(3:7);
xconf = [x3 x3(end:-1:1)];
yconf = [y3+0.0024 y3(end:-1:1)-0.0024];
p = fill(xconf,yconf,'r','FaceColor',[1 0 0],'EdgeColor','none');alpha(0.3);