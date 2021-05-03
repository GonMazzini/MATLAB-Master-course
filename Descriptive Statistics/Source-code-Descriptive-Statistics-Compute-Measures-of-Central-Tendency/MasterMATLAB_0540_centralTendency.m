%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Descriptive statistics
%      VIDEO: Compute measures of central tendency
% Instructor: mikexcohen.com
%
%%

% dataset to work with
data = round( exp(2+randn(101,1)/2) );

% always important to look at data!
figure(1), clf
histogram(data,20)

%% compute the mean

% algorithm here
n = numel(data); % in this case as it is 1-D array is the same as length()
% for M = NxN array, numel = prod(size(M))  while length = max(size(M))
themean = sum(data) / n;

% compare with MATLAB's mean function
themean2 =  mean(data);
themean - theman2 == 0; % returns 1 (logical true)
%% compute the median

% sort the data points
datasort = sort( data ); % sort( data , 'descend')

% find the middle value
themedian = datasort( round(n/2) ) ; % ceil (round up), floor (round down) % fix (round to the integer closer to zero)

% compare with built-in function

themedian2 = median( data );

%% compute the mode

% find the unique data values
uniquevals = unique( data );

% loop through values and count the number of numbers with each value
numnums = zeros(size(uniquevals));
for ui=1:length(numnums)
    % here is the counting
    
    numnums(ui) = sum( data == uniquevals(ui) );
end

% find the maximum count
[~,maxidx] = max( numnums );

% the mode is that value
themode =  uniquevals( maxidx ) ;

% compare with MATLAB function
themode2 = mode(data);

%% bonus

hold on
plot([1 1]*themean, get(gca,'ylim'), 'r--', 'LineWidth', 5)
plot([1 1]*themedian, get(gca,'ylim'), 'b--', 'LineWidth', 5)
plot([1 1]*themode, get(gca,'ylim'), 'k--', 'LineWidth', 5)
legend({'Data';'mean';'median';'mode'})
xlabel('Value'), ylabel('Count')

%%
