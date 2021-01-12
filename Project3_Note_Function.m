
function [note,sample,f] = Project3_Note_Function(p,T,fs)
t = 0:1/fs:T;
f = 440*2^((p-49)/12);
y=cos(2*pi*f*t);
n = numel(y);
k = 1000;
x = zeros(1,n);
x(1) = 0;
    for m = 1:k-1
        x(m+1) = x(m) + 1/k;
    end
    for m = k:n-k
        x(m) = 1;
    end
    for m = n-k+1:n
        x(m) = x(m-1) - 1/k;
    end
note = x.*y;
sample = numel(note);
end