function p = Matlab3(e)

if length(e) >= 11
   e1 = 10;  
else
   e1 = length(e) - 1;
end
for n = 1:e1
    
p = polyfit(e(:, 1), e(:, 2), n);

g = polyval(p, e(:, 1));

p = norm(e(:, 2) - g);

x = [n, p];

if n == 1
    y = x;
end
if y(2) >= x(2)
    z = x(1);
end
end
p = polyfit(e(:, 1), e(:, 2), z);

end


