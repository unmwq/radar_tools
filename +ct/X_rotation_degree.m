%--------------------------------------------------------------------------
%   ��X�������ת����
%--------------------------------------------------------------------------
function yaw = X_rotation_degree(theta)
yaw = [1 0 0;0 cosd(theta) -sind(theta);0 sind(theta) cosd(theta)];
end