   
class Sample
     @@b = []
    def get_value(i)
        i.each_with_index do |j|
            if j.class.name !="Array"
                 @@b << j
            else
                get_value(j)
            end
        end
        return @@b
    end
end
a = [1, 2, [3, 4, [5, 6, 7], 8, 9]]
obj = Sample.new
value = obj.get_value(a)
p value
