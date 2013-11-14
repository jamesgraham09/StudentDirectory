# put students into an array
students = [
"Gianni",
"Nicky",
"Jeremy",
"Annette",
"Erica",
"Georgie",
"Tom1",
"Tom2",
"Kennedy",
"Lara",
"Jean-Baptiste",
"Asta",
"Simon",
"James",
"Hannah",
"Chris",
"Giaccomo",
"Peter",
"Kumi",
"Bruce"
]
default_cohort = "November"

	def print_header
		puts "The students of my cohort at Makers"
		puts ">>>>> ++++ <<<<<"
	end

	def print(names)
		names.each do |silly|
			puts silly
		end
	end

	def print_footer(names)
		puts ">>>>> ++++ <<<<<"
		puts "Overall, we have #{names.length} great students"
	end

print_header
print(students)
puts default_cohort
print_footer(students)
