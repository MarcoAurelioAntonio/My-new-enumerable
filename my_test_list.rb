class Mylist
    def initialize(*list)
        @list = list
    end

    def all1
        @list.all? {|e| e > 5}
    end

    def any1
        @list.any? {|e| e == 2}
    end

    def filter1
        @list.filter {|e| e.even?}
        @list.filter {|e| e.odd?}
    end

    def whatever
        yield "Gustavo"
        yield "Mhamed!".upcase
    end

    def max1
        p @list.max(2)
        p @list.max
    end

    def min_1
        p @list.min(2)
        p @list.min
    end
end

list = Mylist.new(1, 2, 4, 3)

p list 

p list.all1  #? {|e| e < 5}
#p list.all? {|e| e > 5}

p list.any1  #? {|e| e == 2}
#p list.any? {|e| e == 5}

p list.filter1 #{|e| e.even?}

list.whatever {|name| puts "hello " + name + "!"}
p "THIS DO THE SAME THING"
list.whatever {|name| puts "hello #{name} !"}

list.max1
list.min_1