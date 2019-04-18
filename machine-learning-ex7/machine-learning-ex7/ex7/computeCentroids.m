function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K,n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
s = zeros(K,n);
count = zeros(K);
for i = 1:m
    for j = 1:K
        if(idx(i) == j)
            s(j,:) = s(j,:) + X(i,:);
            count(j)=count(j)+1;
            
        end
    end
end

for i=1:K
    centroids(i,:) = s(i,:)/count(i);
end

% =============================================================
%I, Harsh Bahadur Singh, have an account in SBI (A/C no. 11106102140) 
%withdrawn an amount of ?10000 from PNB ATM, 
%Mahavir Enclave, Dwarka, New Delhi on 30th January 2019. 
%My account was debited ?10000 but cash was not dispensed by the ATM. 
%I have complained twice to customer care of SBI (Ticket No.517428811 and 5328893718) 
%but they rejected the issue. I also contacted the bank several times but they told 
%respective authorities have rejected this issue. I am attaching a file that also 
%shows that the transaction was declined at that time. Please take action as required. 

end

