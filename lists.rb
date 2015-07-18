class Application
	def initialize
		@lists = []
	end

	def << list
		@lists << list
	end

	def utilize
		display_lists
		puts "Pick a list:"
		list = get_list
		list.display
	end

	def display_lists
		@lists.each { |list| puts list.name}
	end

	def get_list
		name = gets.chomp
		@lists.detect { |list| list.name == name}
	end
end

class List
	attr_reader :name, :items

	def initialize name
		@name = name
		@items = []
	end

	def display
		puts "These are the items I need to buy from #{@name}."
	end
end

list1 = List.new("Target")
list2 = List.new("Stop and Shop")

app = Application.new
app << list1
app << list2
app.utilize