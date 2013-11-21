# create a template for user to input names
# Print the menu and ask user what to do
# Read input and save it
# Repeat

# METHOD TO work out what user wants to do
def interactive_menu
# print introductory question
	students = load_students()
	loop do
		print_selector
# get selection
		selection = gets.chomp		
# establish consequences of selection	
		case selection
			when "1"
				students = input_students(students)
			when "2"
				print_students(students)
			when "9"
				save_students(students)
				exit
			else
				puts "Not understood. Re-input selection"
		end
	end
end

# METHODS FOR HEADER AND FOOTER TEXT
def print_selector
		puts "What would you like to do now?"
		puts "1. input names"
		puts "2. review student list"
		puts "9. exit the program"	
end

def print_header
	puts "-----------------------------------------------"
	puts "Student Directory Project, James Graham, Nov 13"
	puts ""
end

def print_footer
	puts ""
	puts "-----------------------------------------------"
end

# METHOD to enter users into the system
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

# METHOD to save students to a csv file before executing
def save_students(students)
	file = File.open("students.csv", 'w')
	students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

# METHOD for loading existing students.csv
def load_students()
	file = File.open("students.csv", 'r')
	students = []
		file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		students << {name: name, cohort: cohort}
	end
	file.close
	return students
end



# METHOD for printing students with lattest array as a variable)
def  print_students(students)
	print_header
	students.each do |student|
		print student[:name]
		print ", "
		puts student[:cohort]
	end
	print_footer
end

interactive_menu