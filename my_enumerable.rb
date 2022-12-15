module My_enumerable
    def all?

        @list.each {|e| return false unless yield(e)}
        true
    end

    def any?
        @list.each do 
            |e| return true if yield(e)
        end
        false
    end

    def filter
        result = []
        #for i in 0...@list.length
        #    result << @list[i] if yield(@list[i])
        #end

        @list.each {|e| result << e if yield(e)}
        result
    end

    # Optional
    def max_1
        max = @list[0]
        @list.each {|e| max = e if e > max}
        max
    end

    #this is not the case. I need to return the n max elements
    def max_2(n)
        result = []
        @list.each {|e| result << e if e > n}
        result
    end

    
end
