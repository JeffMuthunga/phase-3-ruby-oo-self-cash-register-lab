require 'pry'

class CashRegister

    attr_accessor :discount
    attr_writer :total

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @title = []
    end

    def total
        total = @total
        return total
    end

    def add_item(title, price, quantity=1)
        self.total += (price * quantity)
        @title << ((title + " ")*quantity).split(" ")
        @last_item = price * quantity
    end
    def apply_discount
        if self.discount>0
            @total = (self.total * (1-self.discount.to_f/100)).to_i
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end
    def items
         @title.flatten
    end

    def void_last_transaction
        self.total -= @last_item
    end
end

g= CashRegister.new(10)
g.add_item("rt",4,5)
g.add_item("t", 6,5)

