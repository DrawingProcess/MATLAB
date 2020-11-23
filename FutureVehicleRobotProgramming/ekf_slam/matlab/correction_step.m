function [mu, sigma, observedLandmarks] = correction_step(mu, sigma, z, observedLandmarks)
% Updates the belief, i. e., mu and sigma after observing landmarks, according to the sensor model
% The employed sensor model measures the range and bearing of a landmark
% mu: 2N+3 x 1 vector representing the state mean.
% The first 3 components of mu correspond to the current estimate of the robot pose [x; y; theta]
% The current pose estimate of the landmark with id = j is: [mu(2*j+2); mu(2*j+3)]
% sigma: 2N+3 x 2N+3 is the covariance matrix
% z: struct array containing the landmark observations. -> sensor data(id, range, bearing)
% Each observation z(i) has an id z(i).id, a range z(i).range, and a bearing z(i).bearing
% The vector observedLandmarks indicates which landmarks have been observed
% at some point by the robot.
% observedLandmarks(j) is false if the landmark with id = j has never been observed before.
% i는 몇 개의 랜드마크를 봤는지, id는 본 랜드마크가 몇 번째 랜드마크인지
% mu(1): u_tx, mu(2): u_ty, mu(3): u_t(theta)

% Number of measurements in this time step
m = size(z, 2); % measurements per time(z)

% Z: vectorized form of all measurements made in this time step: [range_1; bearing_1; range_2; bearing_2; ...; range_m; bearing_m]
% ExpectedZ: vectorized form of all expected measurements in the same form.
% They are initialized here and should be filled out in the for loop below
Z = zeros(m*2, 1); % struct to vector -> 측정값
expectedZ = zeros(m*2, 1); % -> 기대값(기대되는 observation값)

% Iterate over the measurements and compute the H matrix
% (stacked Jacobian blocks of the measurement function)
% H will be 2m x 2N+3
H = [];

for i = 1:m
	% Get the id of the landmark corresponding to the i-th observation
	landmarkId = z(i).id;
	% If the landmark is obeserved for the first time:
	if(observedLandmarks(landmarkId)==false)
		% TODO: Initialize its pose in mu based on the measurement and the current robot pose:
        % -> landmark가 측정한 적 없는 것일 때, mu의 landmarkId x에 해당하는 위치와 y에 해당하는
        % 위치를 찾아 측정값을 활용하여 초기화 해야함.
		mu(landmarkId * 2 + 2) = mu(1) + z(i).range * cos(z(i).bearing + mu(3)); % u_jx
        mu(landmarkId * 2 + 3) = mu(2) + z(i).range * sin(z(i).bearing + mu(3)); % u_jy
		% Indicate in the observedLandmarks vector that this landmark has been observed
		observedLandmarks(landmarkId) = true;
	end

	% TODO: Add the landmark measurement to the Z vector
    % Z벡터에 landmark measurement range값이랑 bearing값을 넣어줌.
	Z(2*i-1) = z(i).range;
    Z(2*i) = z(i).bearing;
    
	% TODO: Use the current estimate of the landmark pose
	% to compute the corresponding expected measurement in expectedZ:
    delta = [mu(landmarkId * 2 + 2) - mu(1); mu(landmarkId * 2 + 3) - mu(2)];
    q = transpose(delta) * delta; % scala
    % expectedZ = h(u_t)
    expectedZ(2*i-1 : 2*i) = [sqrt(q); normalize_angle(atan2(delta(2), delta(1)) - mu(3))]; % expectedZ의 bearing부분 normalize_angle해줘야 함
    % expectedZ(2*i-1) = sqrt(q);
    % expectedZ(2*i)= normalize_angle(atan2(delta(2), delta(1)) - mu(3));
    
    % TODO: Compute the Jacobian Hi of the measurement function h for this observation
    p = length(mu); % (= size(mu,1)) -> scala (length of mu)
	hi = 1/q * [-sqrt(q)*delta(1),  -sqrt(q)*delta(2),  0,  sqrt(q)*delta(1),   sqrt(q)*delta(2);
                delta(2),           -delta(1),          -q, -delta(2),          delta(1)];
    Fx = zeros(5,p);
    Fx(1,1) = 1; Fx(2,2) = 1; Fx(3,3) = 1;
    Fx(4, 2*landmarkId + 2) = 1; Fx(5, 2*landmarkId + 3) = 1;
    Hi = hi * Fx;
    
	% Augment H with the new Hi
	H = [H;Hi];	% for문마다 2행씩 증가. Hi를 밑에 계속 붙임.(Hi => 2 by 2N+3)
    % size(H)
end

% TODO: Construct the sensor noise matrix Q
sensorNoise = 0.01;
Q = sensorNoise * eye(2*m);

% TODO: Compute the Kalman gain
K = sigma * transpose(H) * inv(H*sigma*transpose(H) + Q);
% K = sigma * H' / (H*sigma*transpose(H) + Q);

% TODO: Compute the difference between the expected and recorded measurements.
% Remember to normalize the bearings after subtracting!
% (hint: use the normalize_all_bearings function available in tools)
delZ = normalize_all_bearings(Z-expectedZ);

% TODO: Finish the correction step by computing the new mu and sigma.
% Normalize theta in the robot pose.
mu = mu + K * delZ;
sigma = (eye(p) - K * H) * sigma;

end
