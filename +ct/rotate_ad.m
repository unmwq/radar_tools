%--------------------------------------------------------------------------
%   绕一个矢量轴方向的旋转:
%	example:
%	vector1 = [1;2;3];
%	vector2 = [4 5 6];
%	rotate_ad(vector1,30)*[x;y;z]
%	rotate_ad(vector2,30)*[x;y;z]
%--------------------------------------------------------------------------
function T = rotate_ad(vector,theta)
vector = vector./norm(vector);
Vx = vector(1);Vy = vector(2);Vz = vector(3);
T = cosd(theta)*eye(3) + ...
    (1-cosd(theta))*[Vx^2  Vx*Vy Vx*Vz;...
                      Vy*Vx Vy^2  Vy*Vz;...
                      Vz*Vx Vz*Vy Vz^2] + ...
    sind(theta)*[ 0  -Vz  Vy;...
                  Vz  0  -Vx;...
                 -Vy  Vx  0];