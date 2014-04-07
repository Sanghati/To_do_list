require_relative './list'
require_relative './model/task'
class To_do_list
class Option

	def option_show(list)
		list.show_all_task
	end
	def option_add(list)
		puts "Enter the number of task you want to add :"
		numb_task = gets.to_i
		
		numb_task.times do 

		task_id = rand(5)

		puts "Enter the task name  :"
		task_name =gets.to_s

		puts "Enter the due date :"
		task_due_date = gets.to_s

		puts "Enter the priority ( 1 - 5 ) :"
		task_priority = gets.to_i

		task_complete_uncheck = "undone"

		list.add_task(Task.new(task_id,task_name,task_due_date,task_priority,task_complete_uncheck))
		end
	end
	def option_remove(list)
		puts "Enter the id of the task to remove : "
		task_id = gets.to_i
		list.remove_task(task_id)
	end
	def option_sort(list)
		list.sort
	end
	def option_edit(list)
		puts "Enter the id of the task to modify : "
		task_id = gets.to_i
		puts "Enter the modify task name :"
		task_modify_name = gets.to_s
		puts "Enter the modify due date :"
		task_modify_due_date = gets.to_s

		puts "Enter the modify priority ( 1 - 5 ) :"
		task_modify_priority = gets.to_i

		list.modify(task_id,task_modify_name,task_modify_due_date,task_modify_priority)
	end
	def option_mark_task(list)
		puts "Enter the id of the task to modify : "
		task_id = gets.to_i
		task_complete_checked = "done"
		list.complete(task_id,task_complete_checked)
	end
end
class To_do_list
	option = Option.new
	list = List.new
	while true do
		puts "\nChoose any option below : "
		puts "\n1. Show Task. \n2. Add Task. \n3. Remove Task. \n4. Sort Task. \n5. Edit Task. \n6. Mark Task as done."
		user_option = gets.to_i
		
		puts "My Option " + option.to_s
			case user_option
			when 1
				option.option_show(list)
			
			when  2
				option.option_add(list)
				
			when 3
				option.option_remove(list)
			when 4
				option.option_sort(list)
			when 5
				option.option_edit(list)
			when 6
				option.option_mark_task(list)
			else
				print "nothing"	

			end
		end
	end

end
