%计算向量大小
function dat_norm=vector_norm(dat)
    %dat_norm = (dat(:,1)-4096).^2+(dat(:,2)-4096).^2+(dat(:,3)-4096).^2;
    dat_norm = (dat(:,1)).^2+(dat(:,2)).^2+(dat(:,3)).^2;
if 0  
    for i=1:length(dat_nobgrm)
    fprintf('%d, ', dat_norm(i));
        if rem(i, 10) == 0
        fprintf('\n');
        end
    
    end
end    