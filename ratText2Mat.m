
FileList = dir('*.txt');

display (numel(FileList));

g = input ('which files?    ');
%%
for k = g
   %%
 
%this works to pull from a download that is ONLY the 4 channels of interest
%for that particular rat. will need to increase the number of channels (%f
%variables) when pulling down all 32 channels. 
  
%  [Date,Time,EB,C013,C015,C016,C020,trigger] = textread('A1_allChannels.txt',...
%      '%s %s %f %f %f %f %f %s', 'headerlines',1);
%  
 
 %to import all 32 channels: 
 [Date,Time,EB,C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,C011,C012,...
     C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,...
     C027,C028,C029,C030,C031,C032,trigger] = textread('10262015_A9-16_data.txt',...
     '%s%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%s',...
     'headerlines',1);
  
 %this is garbage that isn't working really well. 
  % noheader conversion
 %   [TimeStamp,EB,C013,C015,C016,C020,trigger] = textread (FileList(k).name,...
  %  '%s %s %s %f %f %f %f','headerlines',1);
  
  %opens, but puts all of the stuff into C013...
  %[Date,Time,EB,C013,C015,C016,C020,trigger] = textread('B30_noheader.txt',...
   %   '%c %c %c %s %s %s %s %c', 'headerlines',1,'delimiter','tab');
  
  
%   [Date,Time,EB,C013,C015,C016,C020,trigger] = textread('A16_102615_baseline.txt',...
%       '%c %c %c %s %s %s %s %c', 'headerlines',1,'delimiter','tab');
%%  
  % EEG = [TimeStamp, C013, C015, C016, C020];
 
   EEG = [C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,C011,C012,...
     C013,C014,C015,C016,C017,C018,C019,C020,C021,C022,C023,C024,C025,C026,...
     C027,C028,C029,C030,C031,C032];
   
%     input_name = FileList(k).name;
%     [path, name, extension] = fileparts (input_name);   
%     output_name1 = fullfile(path, ['x' name '_sig.mat']);
%     
   
save ('A1_allChannels.mat','EEG', '-v7.3');
%save (output_name1, 'EEG');
  %%  
    disp (k)
    disp(tElapsed)
end