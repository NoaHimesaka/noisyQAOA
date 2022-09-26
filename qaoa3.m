function qaoa3(ld)
iter =300;
 lr =0.0008;
 lambda = ld;
 disturb = 0.01;
 beta =[0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1];
 gamma = [0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1];
 temp=zeros(iter,16);
for j=1:1:iter 
 pos1 = new8(beta(1)+disturb,beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos2 = new8(beta(1),beta(2)+disturb,beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos3 = new8(beta(1),beta(2),beta(3)+disturb,beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos4 = new8(beta(1),beta(2),beta(3),beta(4)+disturb,beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos5 = new8(beta(1),beta(2),beta(3),beta(4),beta(5)+disturb,beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos6 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6)+disturb,beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos7 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7)+disturb,beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos8 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8)+disturb,gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos9 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1)+disturb,gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos10 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2)+disturb,gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos11 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3)+disturb,gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 pos12 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4)+disturb,gamma(5),gamma(6),gamma(7),gamma(8));
 pos13 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5)+disturb,gamma(6),gamma(7),gamma(8));
 pos14 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6)+disturb,gamma(7),gamma(8));
 pos15 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7)+disturb,gamma(8));
 pos16 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8)+disturb);
 
 neg1 = new8(beta(1)-disturb,beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg2 = new8(beta(1),beta(2)-disturb,beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg3 = new8(beta(1),beta(2),beta(3)-disturb,beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg4 = new8(beta(1),beta(2),beta(3),beta(4)-disturb,beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg5 = new8(beta(1),beta(2),beta(3),beta(4),beta(5)-disturb,beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg6 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6)-disturb,beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg7 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7)-disturb,beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg8 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8)-disturb,gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg9 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1)-disturb,gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg10 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2)-disturb,gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg11 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3)-disturb,gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
 neg12 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4)-disturb,gamma(5),gamma(6),gamma(7),gamma(8));
 neg13 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5)-disturb,gamma(6),gamma(7),gamma(8));
 neg14 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6)-disturb,gamma(7),gamma(8));
 neg15 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7)-disturb,gamma(8));
 neg16 = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8)-disturb);
 
 grad = [(pos1-neg1)/(2*disturb),(pos2-neg2)/(2*disturb),(pos3-neg3)/(2*disturb),(pos4-neg4)/(2*disturb),(pos5-neg5)/(2*disturb),(pos6-neg6)/(2*disturb),(pos7-neg7)/(2*disturb),(pos8-neg8)/(2*disturb),(pos9-neg9)/(2*disturb),(pos10-neg10)/(2*disturb),(pos11-neg11)/(2*disturb),(pos12-neg12)/(2*disturb),(pos13-neg13)/(2*disturb),(pos14-neg14)/(2*disturb),(pos15-neg15)/(2*disturb),(pos16-neg16)/(2*disturb)];
 % gradient descent method
 for ii=1:1:8
     if(beta(ii)>=-0.00001&&beta(ii)<=0.00001)
         beta(ii)=0;
         continue;
     end
     beta(ii)=beta(ii)-lr*grad(ii);
     if(beta(ii)>lr*lambda)
         beta(ii)=beta(ii)-lr*lambda;
     elseif(beta(ii)<-lr*lambda)
         beta(ii)=beta(ii)+lr*lambda;
     else
         beta(ii)=0;
     end
     temp(j,ii)=beta(ii);
 end
 for i=1:1:8
     if(gamma(i)>=-0.00001&&gamma(i)<=0.00001)
         gamma(i)=0;
         continue;
     end
     
     gamma(i)=gamma(i)-lr*grad(8+i);
      if(gamma(i)>lr*lambda)
         gamma(i)=gamma(i)-lr*lambda;
     elseif(gamma(i)<-lr*lambda)
         gamma(i)=gamma(i)+lr*lambda;
     else
         gamma(i)=0;
     end
     temp(j,i+8)=gamma(i);
 end
 

 
 Loss(j) = new8(beta(1),beta(2),beta(3),beta(4),beta(5),beta(6),beta(7),beta(8),gamma(1),gamma(2),gamma(3),gamma(4),gamma(5),gamma(6),gamma(7),gamma(8));
end
writematrix(Loss,['Loss_',num2str(lambda),'_',datestr(datetime('now'),'yyyy-mm-dd-HH-MM'),'.xlsx']);
writematrix(temp,['Para_',num2str(lambda),'_',datestr(datetime('now'),'yyyy-mm-dd-HH-MM'),'.xlsx']);

 
