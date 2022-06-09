require 'pry'

class CashRegister

	attr_accessor :total, :discount, :price, :items

	def initialize(discount = 0, title = '')
		@total = 0
		@discount = discount
		@items_array = []
		@price = 0
	end

	def add_item(title, price, quantity = 1)
		self.total += (price * quantity)
		quantity.times {@items_array << title}
		self.price = price * quantity
	end

	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
			self.total = self.total - self.total * discount / 100
			"After the discount, the total comes to $#{self.total}."
		end
	end

	def items
		@items_array
	end

	def void_last_transaction
		self.total = self.total - self.price
	end

end



def reload
	load 'lib/cash_register.rb'
end

