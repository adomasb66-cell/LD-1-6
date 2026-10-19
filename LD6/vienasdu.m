function [y, z] = vienasdu(x)

y = sin(x);

if nargout == 2
    z = cos(x);
end