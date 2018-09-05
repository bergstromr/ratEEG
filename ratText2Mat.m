
FileList = dir('*.txt');

display (numel(FileList));

g = input ('which files?    ');
%%
for k = g
   %%
 
%this works to pull from a download that is ONLY the 4 channels of interest
%for that particular rat. will need to increase the number of channels (%f
%variables) when pulling down all 32 channels. 
  
 [Date,Time,EB,C013,C015,C016,C020,trigger] = textread('A16_102615_sz.txt',...
     '%s %s %f %f %f %f %f %s', 'headerlines',1);
  
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
 
   EEG = [C013, C015, C016, C020];
   
%     input_name = FileList(k).name;
%     [path, name, extension] = fileparts (input_name);   
%     output_name1 = fullfile(path, ['x' name '_sig.mat']);
%     
   
save ('A16_102615_sz.mat','EEG', 'v7.3');
%save (output_name1, 'EEG');
  %%  
    disp (k)
    disp(tElapsed)
end