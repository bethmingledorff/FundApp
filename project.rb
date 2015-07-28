class Project

	attr_accessor :name 
	attr_reader :funding, :target 

	def initialize(name, target, funding=0)
		@name = name
		@target = target
		@funding = funding
		@time = Time.new.strftime("%A, %m/%d/%Y at %I:%M%P")
	end
  
  def to_s
  	"#{@name} has $#{@funding} in funding towards the goal of $#{@target}."
  end

	def donate
		@funding += 100
		puts "Thanks for your donation!"
	end

	def refund
		@funding -= 50
		puts "Oh dear, #{@name} lost some funds."
	end
  
  def outstanding
    @target - @funding
  end
  
  def target_met?
    outstanding <= 0
  end

end


