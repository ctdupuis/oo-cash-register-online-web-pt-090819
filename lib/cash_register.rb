require 'pry'

<<<<<<< HEAD
class CashRegister
  
  attr_accessor :discount, :total, :items, :last_trans
  
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, qty = 1)
   if qty > 1
     i = 0 
     while i < qty
      @items << item 
      i += 1 
     end
   else
     @items << item
   end
   @total += (price * qty)
   @last_trans = price * qty
   @total
  end
  
  def apply_discount
=======
# class CashRegister
  
#   attr_accessor :discount, :total, :items, :last_trans
  
#   def initialize(discount=0)
#     @total = 0 
#     @discount = discount
#     @items = []
#   end
  
#   def add_item(item, price, qty = 1)
#   if qty > 1
#     i = 0 
#     while i < qty
#       @items << item 
#       i += 1 
#     end
#   else
#     @items << item
#   end
#   @total += (price * qty)
#   @last_trans = @total
#   @total
#   end
  
#   def apply_discount
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end
  
#   def void_last_transaction
#     @total -= @last_trans
#   end
# end
class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
  end

  def apply_discount()
>>>>>>> e4812a10b7127803b1af249f2b5838ab77019b02
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
<<<<<<< HEAD
  
  def void_last_transaction
    @total -= @last_trans
  end
=======


  def void_last_transaction()
    @total -= @last_transaction_amount
  end

>>>>>>> e4812a10b7127803b1af249f2b5838ab77019b02
end
