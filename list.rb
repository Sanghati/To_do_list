require_relative './model/task'

class List
	
	def initialize()
	  	@tasks = []
	end
	def add_task(task)
	  	@tasks.push(task)
	end
	def remove_task(task_id)
		
		@tasks.delete_if { |m| m.id  == task_id}
		puts "Task #{task_id} got removed"
	end
	def sort
		@tasks.sort_by!{ |m| m.name.downcase }
		puts "Task got sorted..."
	end
	def show_all_task
        		puts "The List of Task are :"
		@tasks.each do |task|
		 	puts task
		end	
	end
	def modify(task_id, name,due_date,priority)
		@tasks.each do |task|
		 	if(task.id == task_id)
		 		task.name = name
		 		task.due_date = due_date
		 		task.priority =priority
		 	end
		end	
		puts "You Have Modified the task #{task_id}"
	end
	def complete(task_id,completed)
		@tasks.each do |task|
		 	if(task.id == task_id)
		 		task.complete = completed
		 	end
		 end	
		 puts "You Have completed the task #{task_id}"
	end
end
