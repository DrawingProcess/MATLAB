function a = useNotIF(x)
switch x
    case 0
        a = 1;
    otherwise
        a = sin(x) / x;
end