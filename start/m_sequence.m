function[mseq]=m_sequence(fbconnection) 
n=length(fbconnection); 
N=2^n-1; 
register=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];%[zeros(1,n-1) 1];  %定义移位寄存器的初始状态
mseq(1)=register(n);        %m序列的第一个输出码元
for i=2:N 
    newregister(1)=mod(sum(fbconnection.*register),2); 
    for j=2:n, 
        newregister(j)=register(j-1); 
    end; 
    register=newregister; 
    mseq(i)=register(n); 
    stairs(mseq); 
end
