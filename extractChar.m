function a = extractChar(x)
if x(0) = x(-1)% && x.startswith("'", '"')
    a = x(1:-1)
end