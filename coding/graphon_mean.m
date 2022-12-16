
function mk = graphon_mean(GraphonName, MotifName)
    switch GraphonName
        
        case 'BlockModel1'
            switch MotifName
            case 'Triangle'
                mk = 1.48148;
            case 'Vshape'
                mk = 1.11111*3;
            case 'ThreeStar'
                mk =  1.48148*4;               
            end

        case 'BlockModel2'
            switch MotifName
            case 'Triangle'
                mk = 1.86589;
            case 'Vshape'
                mk = 1.18367*3;
            case 'ThreeStar'
                mk =  1.86589*4;                
            end

        case 'BlockModel3'
            switch MotifName
            case 'Triangle'
                mk = 1.33523;
            case 'Vshape'
                mk = 1.09343*3;
            case 'ThreeStar'
                mk =  1.33523*4;            
            end

        case 'BlockModel4'
            switch MotifName
            case 'Triangle'
                mk = 1.42383;
            case 'Vshape'
                mk = 1.125*3;
            case 'ThreeStar'
                mk =  1.42383*4;              
            end
    
        case 'BlockModel5'
            switch MotifName
            case 'Triangle'
                mk = 1.65306;
            case 'Vshape'
                mk = 1.16327*3;
            case 'ThreeStar'
                mk =  1.65306*4;            
            end
    
        case 'SmoothGraphon1'
            switch MotifName
            case 'Triangle'
                mk = 1.25;
            case 'Vshape'
                mk = 1.08333*3;
            case 'ThreeStar'
                mk = 1.25*4;              
            end

        case 'SmoothGraphon2'   
            switch MotifName
            case 'Triangle'
                mk = 1.85481;
            case 'Vshape'
                mk = 1.24898*3;
            case 'ThreeStar'
                mk = 1.85481*4;  
            end
    
        case 'SmoothGraphon3'   
            switch MotifName
            case 'Triangle'
                mk = 1.06354;
            case 'Vshape'
                mk = 1.02075*3;
            case 'ThreeStar'
                mk = 1.06354*4;             
            end

        case 'SmoothGraphon4'   
            switch MotifName
            case 'Triangle'
                mk = 1.02798;
            case 'Vshape'
                mk = 1.00924*3;
            case 'ThreeStar'
                mk = 1.02798*4;            
            end
    
        case 'SmoothGraphon5'   
            switch MotifName
            case 'Triangle'
                mk = 1.01867;
            case 'Vshape'
                mk = 1.00636*3;
            case 'ThreeStar'
                mk = 1.01867*4;
            end

        case 'SmoothGraphoncomplex'     
            switch MotifName
            case 'Triangle'
                mk = 1.63853;
            case 'Vshape'
                mk = 1.19031*3;        
            case 'ThreeStar'
                mk = 1.63853*4;
            end

    end
end