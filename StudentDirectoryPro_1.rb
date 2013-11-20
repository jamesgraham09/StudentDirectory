# create a template for user to input names
# Print the menu and ask user what to do
# Read input and save it
# Repeat

# METHOD TO work out what user wants to do
def interactive_menu
# print introductory question
	students =[]
	loop do
		puts "What would you like to do now?"
		puts "1. input names"
		puts "2. review student list"
		puts "9. exit the program"	
# get selection
		selection = gets.chomp		
# establish consequences of selection	
		case selection
			when "1"
				students = input_students(students)
			when "2"
				print_students(students)
			when "9"
				exit
			else
				puts "Not understood. Re-input selection"
		end
	end
end

# METHODS FOR HEADER AND FOOTER TEXT
def print_header
	puts "-----------------------------------------------"
	puts "Student Directory Project, James Graham, Nov 13"
	puts ""
end

def print_footer
	puts ""
	puts "-----------------------------------------------"
end

# METHOD TO enter users into the system
def input_students(students)
	puts "Please enter student names"
	puts "Hit return twice to exit"
	name = gets.chomp
	while !name.empty? do
		students << {:name => name, :cohort => "november"}
		puts "#{students.length} students"
		name = gets.chomp
	end
	return students
end

def  print_students(y)
	print_header
	y.each do |z|
		print z[:name]
		print ", "
		puts z[:cohort]
	end
	print_footer
end

interactive_menu