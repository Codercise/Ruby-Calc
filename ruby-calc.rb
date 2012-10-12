def menu
	# This is the menu, it prints a bunch of options then requests user input. Each choice corresponds to
	# an action
	puts "Welcome to the Carsekyx Calculator"
	puts " "
	puts "1 - Addition"
	puts "2 - Subtraction"
	puts "3 - Multiplication"
	puts "4 - Division"
	puts "5 - Quit Carsekyx Calculator"
	puts " "
	puts "Choose your option: " 
	$choice = gets.chomp
end

def add(a, b)
	# Addition Method, converts strings from user input to integers then does the math and prints 
	# the results
	a_string = a.to_s.chomp
	b_string = b.to_s.chomp
	a_int = a.chomp.to_i
	b_int = b.chomp.to_i
	total = a_int + b_int
	puts a_string << "+" << b_string << " = #{total}"
	puts " "
end

def subtract(a, b)
	# Subtraction Method, converts strings from user input to integers then does the math and prints 
	# the results
	a_string = a.to_s.chomp
	b_string = b.to_s.chomp
	a_int = a.chomp.to_i
	b_int = b.chomp.to_i
	total = b_int - a_int
	puts a_string << "-" << b_string << " = #{total}"
	puts " "
end

def multiply(a, b)
	# Multiplication Method, converts strings from user input to integers then does the math and prints 
	# the results
	a_string = a.to_s.chomp
	b_string = b.to_s.chomp
	a_int = a.chomp.to_i
	b_int = b.chomp.to_i
	total = a_int * b_int
	puts a_string << "*" << b_string << " = #{total}"
	puts " "
end

def divide(a, b)
	# Division Method, converts strings from user input to integers then does the math and prints 
	# the results
	a_string = a.to_s.chomp
	b_string = b.to_s.chomp
	a_int = a.chomp.to_i
	b_int = b.chomp.to_i
	total = b_int / a_int
	puts b_string << "/" << a_string << " = #{total}"
	puts " "
end

$loop = 1
$choice = 0
# Loop continues while the user continues to choose options. The menu method reprints after every 
# equation, for the user to exit they chose option 5 on the menu. 
while $loop = 1
	menu()

	## Addition Choice
	if $choice == '1'
		puts "Add this: "
		$a = gets
		puts "To this: "
		$b = gets
		add($a, $b)

	## Subtraction Choice
	elsif $choice == '2'
		puts "Subtract this: "
		$a = gets
		puts "From this: "
		$b = gets
		subtract($a, $b)

	## Multiplication Choice
	elsif $choice == '3'
		puts "Multiply this: "
		$a = gets
		puts "With this: "
		$b = gets
		multiply($a, $b)

	## Division Choice
	elsif $choice == '4'
		puts "Divide this: "
		$a = gets
		puts "By this: "
		$b = gets
		divide($a, $b)
		
	## Exit Choice
	elsif $choice == '5'
		$loop = 0
		puts " "
		abort "Ciao Mi Amigo, Thanks for using Carsekyx Calculator" #exits program
	end
end