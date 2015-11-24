
require_relative 'list'
puts (" TO DO APP FOR THE PRO'S")
keep_looping = true
while(keep_looping == true)
	puts("Please select your action")
	puts("Type 1 to CREATE A LIST")
	puts("Type 2 to EDIT A LIST")
	puts("Type 3 to DELETE A LIST") 
	puts("Type 4 to DISPLAY THE LIST")
	puts("Type 5 to quit the APP")
	choice_list = gets.chomp
	case choice_list

		when "1"
			puts("You have chosen to create a List")
			puts("Enter the name of the List")
			list_name = gets.chomp
			$/= '***END***'
			task_description = gets.chomp
			listobject=List.new(list_name)
			puts list_name + "created" if listobject.add(list_name, task_description)
		

		when "2" 
			puts("You have chosen to edit a List")
			puts("Enter the name of the List")
			list_name = gets.chomp


		when "3" 
			puts("You have chosen to delete a List")
			puts("Enter the name of the List")
			list_name = gets.chomp

		when "4"
			puts Dir["/rubyproj/Todo app/*.txt"]
		when "5"
			keep_looping = false

		else
			puts("Incorrect selection. Please read the instructions carefully")
	end	
end