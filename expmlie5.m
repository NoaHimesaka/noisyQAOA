function  Sum_Q= expmlie5(Q_initial,HH, L1, L2,L3, L4, L5, dtt, Od)

    Sum_Q = zeros(size(Q_initial));
    Q_mid = hamtlind5(HH, L1,L2,L3, L4, L5,  Q_initial );%Q_mid是state的变化率 dpsi/dt
    Coefs=1;
    for i=1:1:Od
        Coefs=Coefs/i*dtt;
        Sum_Q =Sum_Q + Coefs * Q_mid;
        Q_mid= hamtlind5(HH, L1,L2,L3, L4, L5,  Q_mid);
    end

        Sum_Q = Sum_Q + Q_initial;

end

