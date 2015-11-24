class Task


	def initialize(description)
		@description = description
	end

	def addtask(list_name,description)
		puts "hi"
		File.open(list_name+".txt","w+") do |line|
			 line.puts description
			 return true
		end
		
	end

end
