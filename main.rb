require_relative 'lib/Decrypt.rb'
require_relative 'lib/Encrypt.rb'



puts "     Menu "
sleep 0.2
puts "---------------"
puts "1. Decrypt "
sleep 0.2
puts "---------------"
puts "2. Encrypt "
sleep 0.2
puts "---------------"
puts "3. Exit "
puts "---------------\n"
sleep 0.2
print "> "
out = gets.chomp

if out == "1"
# Decrypt
puts "Enter Dir "
print "> "
input = gets.chomp
input = Dir[input+'/**/*']
dec = Dec.new
for i in input
  dec.cry(i)
end
elsif out == "2"
puts "Enter Dir "
print "> "
input = gets.chomp
input = Dir[input+'/**/*']

# Encrypt 
dec = Enc.new
for i in input
  dec.dec(i)
end
elsif out == 3
exit
else 
puts "Sorry !"
end




























