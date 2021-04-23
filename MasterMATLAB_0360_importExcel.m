%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Importing and exporting data
%      VIDEO: Import and export Excel-format data
% Instructor: mikexcohen.com
%
%%

% list data folder and file
dataFolder = 'C:\Users\Usuario\Desktop\MATLAB\Sandbox\';
dataFile   = 'sensordata.xlsx';

[numdata, txtdata, rawdata] = xlsread([ dataFolder dataFile ]);
% import data file using xlsread
% Note that jsut rawdata is 308x5, because numdata and txtdata drop empty
% columns/rows (?)

% check sizes and outputs
% whos


%% extract key data

% starting line
% STRCMPI ignores low/upper case
startline = find( strcmpi(rawdata(:,1),'Start data') );

% get list of sensor IDs
sensorID = cell2mat( rawdata(startline+1: end-1,2) ) ;

% get list of time points
timepoints = cell2mat( rawdata(startline+1: end-1,4) );

% now get all of the data
datatemp = cell2mat( rawdata(startline+1: end-1,6) );


% a list of unique sensor numbers would also be useful
uchans = unique(sensorID);
utimes = unique(timepoints);

% initialize data matrix
datamat = nan( length(uchans),length(utimes) );

%% populate and plot

% populate one line at a time
for linei=1:length(sensorID)
    
    % line-specific channel and time point
    datamat(sensorID,timepoints) = datatemp;
end

% plot
figure(1), clf
plot(datamat','s-','markerfacecolor','w')


%% bonus: identify missing data

% find where datamat is nan



% loop over all missing time points
for i=1:length(missingdata)
    
    % convert index to subscript to find channel/time point
    
    
    % print message
    disp([ 'Channel  timepoint  has a missing value!' ])
end

%%
