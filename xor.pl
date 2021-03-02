
% implement logical AND truth table
% and(IN1, IN2, OUT)
and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

% implement logical OR truth table
% or(IN1, IN2, OUT)
or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

% implement logical inverter
% inv(IN, OUT)
inv(0,1).
inv(1,0).

% implement XOR using rule
xor(IN1,IN2,OUT) :- inv(IN1, N1),
                    inv(IN2, N2),
                    and(IN1, N2, N3),
                    and(IN2, N1, N4),
                    or(N3, N4, OUT).