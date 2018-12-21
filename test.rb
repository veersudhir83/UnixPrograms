
=begin
puts "String=" + str
puts "Length=" + str.length
puts "Reverse=" + str.reverse
=end
# Lesson 1 - about strings
=begin
str = 'Sudheer Veeravalli'
print "String = " 
puts str
print "Length = " 
puts str.length
print "Reverse = " 
puts str.reverse
print "Reverse(Upper Case) = " 
puts str.upcase.reverse
print "Reverse(Lower Case) = " 
puts str.downcase.reverse
=end

# Lesson 2 - about Math
=begin
sum = 56 + 44
product = 2 * 3
quotient = 8 / 2
puts sum 
puts product 
puts quotient
=end

=begin
# Generate sum of 2 numbers
print "Enter your first number:"
first_num = Integer(gets.chomp)
if first_num < 0 then
    puts "You entered Negative. Program will exit"
    exit
else    
    print "Enter the second number:"
    second_num = Integer(gets.chomp)
    if second_num < 0 then
        puts "You entered Negative. Program will exit"
        exit
    else  
        puts "Sum = #{first_num+second_num}"
    end
end
=end

# same as above using unless
=begin
print "Enter your first number:"
first_num = Integer(gets.chomp)
unless first_num < 0 then
    print "Enter the second number:"
    second_num = Integer(gets.chomp)
    unless second_num < 0 then
        puts "Sum = #{first_num+second_num}"
    else  
        puts "You entered Negative Second Number. Program will exit"
        exit
    end
else    
    puts "You entered Negative First Number. Program will exit"
    exit
end
=end

=begin
# Change of output based on input checked on possible values
print "Do you have problem to continue? : "
problem = gets.chomp
problem.to_s.downcase!
problem = [1, "y", "true"].include?(problem)
#puts "problem=#{problem}"
puts "go to bed!" unless !problem
puts "Continue Working!" unless problem
=end

=begin
# using replace operation
p Time.new
print "Enter input string : "
input = gets.chomp
if input.length < 1 then
    print "You haven't entered input. Please try again : "
    input = gets.chomp
end
#input.downcase!
if input.include? "s" then
    modified = input.gsub!(/s/, "th")
    puts "Replace done in downcase"
    puts "Final String=#{modified}"
elsif input.include? "S" then
    modified = input.gsub!(/S/, "Th")
    puts "Replace done in upcase"
    puts "Final String=#{modified}"    
else
    puts "Nothing to change here"
end
#puts "Original String=#{input}"    
p Time.new
=end

=begin
puts "Ascending = "
i = 1
while i <= 1000
    if i == 1000 
        puts "#{i}"
    else 
        print "#{i}, "
    end
    i += 1
end
puts ""
=end

=begin
#print "Table upto "
i = 5
j = 1
#puts "#{i}"
while i <= 5
    while j <= 10
        puts "#{j} X #{i} = #{i*j}"    
        j += 1
    end
    i += 1
    j = 1
    puts ""
end
puts ""
=end

=begin
puts "Descending = "
j = 10
until j == 0
    if j == 1
        puts "#{j}"
    else 
        print "#{j}, "
    end
    j -= 1
end
puts ""

puts "Using For Loop: Print only even numbers"
for k in 1..10
    next if k % 2 != 0
    if k == 10 
        puts "#{k}"
    else 
        print "#{k}, "
    end    
end
puts ""
=end

=begin
puts "Using Arrays : Add 10 and triple and print only even"
my_array = [1,2,3,4,5,6,7,8,9,10]
my_array.each do |x|
    x += 10
    x *= 3
    next if x % 2 != 0
    if x >= 60
        puts "#{x}"
    else 
        print "#{x}, "
    end    
end
puts ""
=end

=begin
puts "Starting 10 sec delay"
for i in 1..10
    print "."
    sleep 1
end
puts ""
puts "Finished 10 sec delay"
=end

#puts "#{Random.rand(10...42)}"

puts "Enter first text"
text = gets.chomp()
#puts "Enter second text"
#redact = gets.chomp()
words = text.split(" ")
words.each do |word|
    print word
end
