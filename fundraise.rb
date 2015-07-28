class Fundraise
	attr_reader :title

	def initialize(title)
		@title = title
		@fund = []
	end

	def add_fund(new_fund)
		@fund << new_fund 
	end

	def fund
		puts "There are #{@fund.size} funds in #{@title}."
		@fund.each {|fund| puts fund}

		@fund.each do |fund|
		fund.donate
		fund.refund
		puts fund
		end
	end
end
