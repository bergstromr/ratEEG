addpath('/Volumes/GoogleDrive/My Drive/AY17-18 Beloit/EEG Data/JONES/normalizeEEG')

for col = 1:32
    
    [normSignal, sig, modelfit, mu] = normalizeEEG(EEG(:,col), 1024);
    
    normRatSig(col).channel = col;
    normRatSig(col).rawSignal = EEG(:,col);
    normRatSig(col).normSignal = normSignal;
    normRatSig(col).sigma = sig;
    normRatSig(col).modelfit = modelfit;
    normRatSig(col).mu = mu;
    
end


save ('normRatSig_noClean.mat', 'normRatSig')
%%

for col = 1:32
    
    EEG(:,col) = normRatSig(col).normSignal;
    
end

save('normA1test.mat','EEG')
 