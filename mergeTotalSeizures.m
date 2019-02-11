

for k = 1:4
    
    total_seizures = eventsTotal(k).seizures2;
    
    merged_seizures = unique(total_seizures,'rows');


    for i = 2:size(merged_seizures,1)


        if merged_seizures(i-1,2) > merged_seizures(i,1) && merged_seizures(i,2) > merged_seizures(i-1,2)

            merged_seizures(i,1) = 0 ;

            merged_seizures(i-1,2) = 0;

        elseif merged_seizures(i-1,2) >= merged_seizures(i,2)

            merged_seizures(i,:) = 0;

        end


    end



    merged_seizures = merged_seizures';

    merged_seizures = reshape(merged_seizures(merged_seizures>0),2,[])';
    
    eventsTotal(k).mergedSeizures = merged_seizures;
    
    clear i merged_seizures total_seizures

end

