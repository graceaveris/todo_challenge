# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

userinput = ARGV
query = userinput[0]

#this adds a task to the list!
if query == "add"#WORKING
	task_to_add = "#{userinput[1]} #{userinput[2]} #{userinput[3]} #{userinput[4]}"
	Task.create(description: task_to_add, status:"to do")
    p "___________________________"
    p "#{task_to_add} has been added!"
	p "_______________________________"
  
  elsif query == "list"
	mylist = Task.all
	    p "______________"
	    p "YOUR TODO LIST"
	    p "______________"
		mylist.each do |item|
		print item.task_number
		print " | "
		print item.description
		print " | "
		print item.status
		puts " "
   end
   elsif query == "delete"
        item_to_delete = userinput[1]
		x = Task.find(item_to_delete)
		x.delete
		p "___________________________"
		p "item #{item_to_delete} has been deleted!"
		p "___________________________"

   else 
	p "INVALID INPUT"
end
#now method to print all..


#reassign task id's
def reassign_ids
	mylist = Task.all 
	i = 1
	mylist.each do |item|
		item.task_number = i
		i += 1
		item.save
	end
end

reassign_ids

