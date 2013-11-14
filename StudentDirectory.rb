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

	def print(names, cohort)
		names.each_with_index do |name, index|
			if name.length < 5		
				puts "#{index+1}: #{name}, #{cohort}"
			end
		end
	end

	def print_footer(names)
		puts ">>>>> ++++ <<<<<"
		puts "Overall, we have #{names.length} great students"
	end

print_header
print(students, default_cohort)
print_footer(students)
