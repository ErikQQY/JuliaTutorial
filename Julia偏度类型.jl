using Statistics
function skewness_type(X::Array{T,1}) where T
    m=mean(X)
    M=median(X)
    if m>M
        output="positive"
    elseif m<M
        output="negative"
    else
        output="balanced"
    end
    print(output,"\t")
end
#输入所要测量的数组：
skewness_type([1,2,3,4,5])
skewness_type([1,2,3,4,100])
skewness_type([-100,2,3,4,5])
skewness_type([1 2 3;4 5 6])
