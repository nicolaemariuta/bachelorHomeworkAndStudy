function[x]=fib(n)
if n>=2 
    x=fib(n-1)+fib(n-2);
else
    x=1;
end
return 
    