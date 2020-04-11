function [ H ] = h2H( h , omega )
    n = length(h);
    k = 0:n-1;
    
    for i = 1 : length(omega)
        var = exp(-1j*omega(i).*k);
        H(i) = h*var;
    end
end

