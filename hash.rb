class LRUCache

    def initialize(size)
        @size = size

        @underlying_arr = []

    end

    def count
        @underlying_arr.size
    end

    def add(ele)
        if @underlying_arr.include?(ele)
            @underlying_arr.delete(ele)
            @underlying_arr.push(ele)

        elsif @underlying_arr.size == @size
            @underlying_arr.shift
            @underlying_arr.push(ele)

        else
            @underlying_arr.push(ele)
        end
        
    end

    def show
        p @underlying_arr
    end

    private

    attr_accessor :underlying_arr, :size

end