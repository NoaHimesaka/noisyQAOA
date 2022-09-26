y=[0.707167749	0.771783039	0.775440614	0.766093607	0.756743577	0.757728035	0.757354621	0.749296673];
x=2:2:16;
x2=[3 4 5 6 7 10 11 13 14];
y2=[0.68235687 0.696998931 0.771176868 0.771195189 0.762573444 0.764197734 0.763396507 0.758580874 0.75546926];
subplot(2,1,1);plot(x,y),axis([2,16,0.7,0.8]),hold on;
x3=[5,6];
y3=[(0.771783039+0.775440614)/2 0.775440614];
xconf = [x3 x3(end:-1:1)];
yconf = [y3+0.0016 y3(end:-1:1)-0.0016];
p = fill(xconf,yconf,'r','FaceColor',[1 0 0],'EdgeColor','none');alpha(0.3);
scatter(x3(1),y3(1),24,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerFaceAlpha',.4,'MarkerEdgeAlpha',.4);
scatter(x3(2),y3(2),24,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerFaceAlpha',.4,'MarkerEdgeAlpha',.4);


subplot(2,1,2);
plot(x2(1),y2(1),'o','markersize',12,'color','y'),hold on
plot(x2(2),y2(2),'o','markersize',12,'color','k')
plot(x2(3),y2(3),'o','markersize',12,'color','k')
plot(x2(4),y2(4),'o','markersize',12,'color','k')
plot(x2(5),y2(5),'o','markersize',12,'color','k')
plot(x2(6),y2(6),'o','markersize',12,'color','k')
plot(x2(7),y2(7),'o','markersize',12,'color','k')
plot(x2(8),y2(8),'o','markersize',12,'color','k')
plot(x2(9),y2(9),'o','markersize',12,'color','k')
plot(x2,y2),axis([2,16,0.65,0.8]),hold on;
x3=x2(3:4);
y3=y2(3:4);
xconf = [x3 x3(end:-1:1)];
yconf = [y3+0.0024 y3(end:-1:1)-0.0024];
p = fill(xconf,yconf,'r','FaceColor',[1 0 0],'EdgeColor','none');alpha(0.3);