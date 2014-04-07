require  'date'
class Task

attr_accessor  :id, :name, :due_date, :priority, :complete

    def  initialize(id,name,due_date,priority,complete)
        @id = id
        @name = name
        @due_date = Date.parse(due_date) 
        @priority = priority
        @complete = complete
    end    
    def to_s
    	"ID : #{@id}\n
    	  Name : #{@name}\n
    	  Due date : #{@due_date}\n
    	  Priority : #{@priority}\n
    	  Job complete : #{@complete}\n"
    end
end
