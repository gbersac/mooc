function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% for point calc
% sub = p1 - p2;
% dist = sqrt(sub(1).^2 + sub(2).^2))^2;
% dist = dist^2;
%%%


point_ind = 1;
for point = X'
	idx(point_ind) = 1;
	sub = (point - centroids(1, :)')';
	min_dist = (sqrt(sum(sub.^2)))^2;
	ct_ind = 1;
	for ct = centroids'
		sub = (point - ct)';
		distance = (sqrt(sum(sub.^2)))^2;
		if distance < min_dist
			idx(point_ind) = ct_ind;
			min_dist = distance;
		end
		ct_ind += 1;
	end
	point_ind += 1;
end



% =============================================================

end

