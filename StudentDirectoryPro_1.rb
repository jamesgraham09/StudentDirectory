# create a template for user to input names

def print_header
	puts "Student Directory Project, James Graham, Nov 13"
	puts "-----------------------------------------------"
	puts ""
end

def print_footer
	puts ""
	puts "-----------------------------------------------"
end

def input_students
	puts "Please enter student names"
	puts "Hit return twice to exit"
	students =[]
	name = gets.chomp
	while !name.empty? do
		students << {:name => name, :cohort => "november"}
		puts "#{students.length} students"
		name = gets.chomp
	end
	return students
end

def  print_students(y)
	
	y.each do |z|
		print z[:name]
		print ", "
		puts z[:cohort]
	end
end

x = input_students
print_header
print_students(x)
print_footer