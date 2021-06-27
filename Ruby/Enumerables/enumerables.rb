class Array
    def my_each(&prc)
        self.length.times do |i|
            prc.call(self[i])
        end
        self
    end
    # Now extend the Array class to include my_select that takes a block and returns a new array containing 
    # only elements that satisfy the block. Use your my_each method!
    def my_select(&prc)
        selected = []
        self.my_each do |x|
            if prc.call(x) 
                selected <<x
            end
        end
        selected
    end

    def my_reject(&prc)
        selected = []
        self.my_each do |x|
            if not prc.call(x)
                selected << x
            end
        end
        selected
    end

    def my_any?(&prc)
        
        self.my_each do |x|
            if prc.call(x)
                return true
            end
        end
        return false
    end

    def my_all?(&prc)
        
        self.my_each do |x|
            if !prc.call(x)
                return false
            end
        end
        return true
    end

    def my_flatten
        flattened = []
        self.my_each do |x|
            if x.is_a?(Array)
                flattened.concat(x.my_flatten)
            else
                flattened << x
            end
        end
        flattened
    end

    def my_zip(*args)
        arr = Array.new(self.length) {Array.new()}
        self.each_with_index do |ele,idx|
            arr[idx] << ele
            args.each do |x|
                arr[idx] << x[idx]
            end
        end
        arr
    end

    def my_rotate(amount = 1)
        if amount < 0
            (amount * -1).times do
                x = self.pop()
                self.unshift(x)
            end
        end

        if amount > 0
            amount.times do
                x = self.shift
                self << x
            end
        end
        self
    end

    def my_join(seperator = "")
        new_str = ""
        self.each_with_index do |x, idx|
            new_str += x
            if idx != self.length - 1
                new_str += seperator
            end
        end
        new_str
    end

    def my_reverse 
        reversed = []

        self.each do |x|
            reversed.unshift(x)
        end
        reversed
    end         
end



