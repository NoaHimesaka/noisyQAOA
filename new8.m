function Loss=new8(beta1,beta2,beta3,beta4,beta5,beta6,beta7,beta8,gamma1,gamma2,gamma3,gamma4,gamma5,gamma6,gamma7,gamma8)
% Set parameters
w1 =10; %frequency of qubits
w2 = 9;
w3 = 11;
w4 = 11;
w5 = 11;

g12 =0.21; % coupling strengthes , here we will consider a chain of qubits
g13 =0.44;
g14 =0.64;
g15 =0.33;
g23 =0.78;
g24 =0.37;
g25 =0.55;
g45 =0.02;

r1 = 0.2;
r2 = 0.2;
r3 = 0.2;
r4 = 0.2;
r5 = 0.2;
%%%%%%%%% Define operators %%%%%%%%%%%%%%%%%
sz=[1,0;0,-1];   %Pauli matrices
sx=[0,1;1,0];
sy=[0,-1i;1i,0];
sm=[0,0;1,0]; 
sp=[0,1;0,0];
qeye = eye(2);

NoQ = 5;

sx1T = kron(kron(kron(kron(sx,qeye),qeye),qeye),qeye);% tensor operator for Pauli matrices of qubit 1
%sy1T = kron(kron(kron(kron(sy,qeye),qeye),qeye),qeye);
sz1T = kron(kron(kron(kron(sz,qeye),qeye),qeye),qeye);
%sp1T = kron(kron(kron(kron(sp,qeye),qeye),qeye),qeye);
sm1T = kron(kron(kron(kron(sm,qeye),qeye),qeye),qeye);

sx2T = kron(kron(kron(kron(qeye,sx),qeye),qeye),qeye);% tensor operator for Pauli matrices of qubit 2
%sy2T = kron(kron(kron(kron(qeye,sy),qeye),qeye),qeye);
sz2T = kron(kron(kron(kron(qeye,sz),qeye),qeye),qeye);
%sp2T = kron(kron(kron(kron(qeye,sp),qeye),qeye),qeye);
sm2T = kron(kron(kron(kron(qeye,sm),qeye),qeye),qeye);

sx3T = kron(kron(kron(kron(qeye,qeye),sx),qeye),qeye);% tensor operator for Pauli matrices of qubit 3
%sy3T = kron(kron(kron(kron(qeye,qeye),sy),qeye),qeye);
sz3T = kron(kron(kron(kron(qeye,qeye),sz),qeye),qeye);
%sp3T = kron(kron(kron(kron(qeye,qeye),sp),qeye),qeye);
sm3T = kron(kron(kron(kron(qeye,qeye),sm),qeye),qeye);

sx4T = kron(kron(kron(kron(qeye,qeye),qeye),sx),qeye);% tensor operator for Pauli matrices of qubit 4
%sy4T = kron(kron(kron(kron(qeye,qeye),qeye),sy),qeye);
sz4T = kron(kron(kron(kron(qeye,qeye),qeye),sz),qeye);
%sp4T = kron(kron(kron(kron(qeye,qeye),qeye),sp),qeye);
sm4T = kron(kron(kron(kron(qeye,qeye),qeye),sm),qeye);

sx5T = kron(kron(kron(kron(qeye,qeye),qeye),qeye),sx);% tensor operator for Pauli matrices of qubit 5
%sy5T = kron(kron(kron(kron(qeye,qeye),qeye),qeye),sy);
sz5T = kron(kron(kron(kron(qeye,qeye),qeye),qeye),sz);
%sp5T = kron(kron(kron(kron(qeye,qeye),qeye),qeye),sp);
sm5T = kron(kron(kron(kron(qeye,qeye),qeye),qeye),sm);

L1= sqrt(r1)*sm1T;% damping operators
L2= sqrt(r2)*sm2T;
L3= sqrt(r3)*sm3T;
L4= sqrt(r4)*sm4T;
L5= sqrt(r5)*sm5T;

%H1= sx1T;%  Control operators
%H2= sx2T;
%H3= sx3T;
%H4= sx4T;
%H5= sx5T;
%%%%%%%%% Initial States %%%%%%%%%%%%%%%%%


q10= 0.5*(qeye+sx);
q20= 0.5*(qeye+sx);
q30= 0.5*(qeye+sx);
q40= 0.5*(qeye+sx);
q50= 0.5*(qeye+sx);
qT0= kron(kron(kron(kron(q10,q20),q30),q40),q50);

u1=1;
u2=1;
u3=1;
u4=1;
u5=1;
%%%%%%%%%%%%%%%% Define Hamiltonian %%%%%%%%%%%%%%%%%%%
 H0 = g12*sz1T*sz2T + g13*sz1T*sz3T + g14*sz1T*sz4T + g15*sz1T*sz5T + g23*sz2T*sz3T+ g24*sz2T*sz4T + g25*sz2T*sz5T  + g45*sz4T*sz5T;
Hc=u1*sx1T+ u2*sx2T+ u3*sx3T+ u4*sx4T+ u5*sx5T;
%%%%%%%%%%%%%%%%%% Calculate real evolution by using master equation%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%\
input = [gamma1,beta1,gamma2,beta2,gamma3,beta3,gamma4,beta4,gamma5,beta5,gamma6,beta6,gamma7,beta7,gamma8,beta8];%%%
%input = [0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,-0.1];
flag=zeros(16,1);%%%

for ii=1:1:16 %%%
    if input(ii)<0
        flag(ii)=1;
        input(ii)=abs(input(ii));
    end
end

Final_Time = sum(input);
dt = 0.001;
Num_Interval = round(Final_Time/dt);
%dt = Final_Time/Num_Interval;
[dimx,dimy]=size(qT0);
psi_evo=zeros(dimx,dimy,Num_Interval+1);
psi_evo(:,:,1)= qT0;
    
Ttable=[0,input(1),sum(input(1:2)),sum(input(1:3)),sum(input(1:4)),sum(input(1:5)),sum(input(1:6)),sum(input(1:7)),sum(input(1:8)),sum(input(1:9)),sum(input(1:10)),sum(input(1:11)),sum(input(1:12)),sum(input(1:13)),sum(input(1:14)),sum(input(1:15)),Final_Time];%%
%Ttable=[0,0.3,0.6,0.9,Final_Time];
NumTIn = length(Ttable);
Order=4;

for v=1:1:(NumTIn-1)
    ti=Ttable(v)/dt+1;
    tf=Ttable(v+1)/dt;
    if mod(v,2)==1
        for i=fix(round(ti)):1:fix(round(tf))
            if flag(v)==1
                psi_evo(:,:,i+1) = expmlie5(psi_evo(:,:,i),-6*H0, L1, L2, L3, L4, L5, dt, Order);%gamma
            else 
                psi_evo(:,:,i+1) = expmlie5(psi_evo(:,:,i),6*H0, L1, L2, L3, L4, L5, dt, Order);%gamma
        
            end
        end
    else
         for i=fix(round(ti)):1:fix(round(tf))
             if flag(v)==1
                psi_evo(:,:,i+1) = expmlie5(psi_evo(:,:,i),-6*Hc, L1, L2, L3, L4, L5, dt, Order);%beta
             else
                 psi_evo(:,:,i+1) = expmlie5(psi_evo(:,:,i),6*Hc, L1, L2, L3, L4, L5, dt, Order);%beta
             end
        end
    end  
end

Loss= real(trace(H0*psi_evo(:,:,Num_Interval+1)));


%     HC=
%       psi_evo(:,:,i+1) = expmlie5(psi_evo(:,:,i),H, L1, L2, L3, L4, L5, dt, Order);
%      % Q_mid = hamtlind(H, sm_tensor',a_tensor, psi_evo(:,:,i+1) );
% %       expectation(1,i+1)=trace(sx_tensor*psi_evo(:,:,i+1));
% %       expectation(2,i+1)=trace(sy_tensor*psi_evo(:,:,i+1));
% %       expectation(3,i+1)=trace(sz_tensor*psi_evo(:,:,i+1));
%       tracepsi(i,1)=trace(psi_evo(:,:,i));
% end


% figure;
% subplot(3,1,1);plot(real(expectation(1,:)));
% subplot(3,1,2);plot(real(expectation(2,:)));
% subplot(3,1,3);plot(real(expectation(3,:)));


 
% % Give real measurement results
