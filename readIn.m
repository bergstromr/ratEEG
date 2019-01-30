% fileID = fopen('10262015_A9-A16_data.txt','p');
% 
% 
% Intro = textscan(fileID,'%s%f%f%f',4,'Delimiter',',');

%% used to read in text files from robert.

fileID = '10262015_A9-16_data.txt'; 

[Time,C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,C011,C012,...
     C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,...
     C027,C028,C029,C030,C031,C032,C033] = textread(fileID,...
     '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f',...
     'headerlines',1, 'delimiter',',');
 
 EEG = [C008, C006, C031, C011, Time];
 
save ('EEG_10262105.mat', 'EEG')