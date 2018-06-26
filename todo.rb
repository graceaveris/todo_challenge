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
	p "___________________________"
end

#now method to print all..
if query == "list"
	mylist = Task.all
    p "______________"
    p "YOUR TODO LIST"
	p "______________"
	mylist.each do |item|
		print item.id
		print " | "
		print item.description
		print " | "
		print item.status
		puts " "
end
end

if query == "delete"
	item_to_delete = userinput[1]
	x = Task.find(item_to_delete)
	x.delete
	p "___________________________"
	p "item #{item_to_delete} has been deleted!"
	p "___________________________"
end
