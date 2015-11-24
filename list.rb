require_relative 'task'
class List

	def initialize(list_name)
		@list_name = list_name
		
	end

	def add(list_name, taskdecription)

		taskobject= Task.new(taskdecription)
		return true if taskobject.addtask(list_name,taskdecription)
	end	


end

