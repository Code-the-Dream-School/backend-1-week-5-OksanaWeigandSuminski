#write your code here
def add (var1, var2)
    var1 + var2
end

def subtract (var1, var2)
    var1 - var2
end

def sum(array)
    sum = 0.0
    if array.length > 0 then
        array.each do |item|
        sum += item
        end
    end
    return sum
end