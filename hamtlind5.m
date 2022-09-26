function outputArg1 = hamtlind5(hamiltonian,L_ops1,L_ops2, L_ops3,L_ops4,L_ops5,states)
%HAMTLIND 噪声
%   此处显示详细说明
Ltranpose1 = L_ops1';
Ltranpose2 = L_ops2';
Ltranpose3 = L_ops3';
Ltranpose4 = L_ops4';
Ltranpose5 = L_ops5';

    outputArg1 = -1j*( hamiltonian*states - states*hamiltonian)+ ...
L_ops1 * states * Ltranpose1 - 0.5 * Ltranpose1 * L_ops1 * states - 0.5 * states * Ltranpose1 * L_ops1+ ...
L_ops2 * states * Ltranpose2 - 0.5 * Ltranpose2 * L_ops2 * states - 0.5 * states * Ltranpose2 * L_ops2+ ...
L_ops3 * states * Ltranpose3 - 0.5 * Ltranpose3 * L_ops3 * states - 0.5 * states * Ltranpose3 * L_ops3+ ...
L_ops4 * states * Ltranpose4 - 0.5 * Ltranpose4 * L_ops4 * states - 0.5 * states * Ltranpose4 * L_ops4+ ...
L_ops5 * states * Ltranpose5 - 0.5 * Ltranpose5 * L_ops5 * states - 0.5 * states * Ltranpose5 * L_ops5;

end

