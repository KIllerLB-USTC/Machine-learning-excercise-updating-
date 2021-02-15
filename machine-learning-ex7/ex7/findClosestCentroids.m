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

% ==================  method 1 (fast but the grading system not accomplish)======
%X_large=[];
%width =size(X,2);
%find_idx = zeros(size(X,1),K);
%for parallel = 1:size(centroids,1);
%end;
%centroid_point_L = reshape(centroids'(:,:),1,size(centroids,1)*size(centroids,2));


%for i = 1:size(X,1);
%  X_dis(i,:) = (X_large(i,:) - centroid_point_L).^2;
%end


%for j = 1:K ;
  %find_idx(:,j) = sum(X_dis(:,j*width-1:j*width),2);
%end

%[_,idx] = min(find_idx,[],2);

% ============== using normal way to calc:(really slow)=====================
temp =zeros(K,1);
for i = 1:size(X,1);
  for iter = 1:K;
    temp(iter) = sum((X(i,:) - centroids(iter,:)).^2);
  end;
  [_,idx(i)]= min(temp,[],1);
end;








% =============================================================

end
