require_relative 'lib/Decrypt.rb'
require_relative 'lib/Encrypt.rb'
require_relative 'lib/colorama.rb'
system 'clear'

banner ="
██╗░░░██╗███████╗░█████╗░████████╗░█████╗░██████╗░
██║░░░██║██╔════╝██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗
╚██╗░██╔╝█████╗░░██║░░╚═╝░░░██║░░░██║░░██║██████╔╝
░╚████╔╝░██╔══╝░░██║░░██╗░░░██║░░░██║░░██║██╔══██╗
░░╚██╔╝░░███████╗╚█████╔╝░░░██║░░░╚█████╔╝██║░░██║
░░░╚═╝░░░╚══════╝░╚════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝ ".red
puts banner+"
Ver 1.0".green+"

\t[卐] Choose one of the options below".red+" 

\t[1] Decrypt 

\t[2] Encrypt 

\t[3] Exit 
".brown

print" ┌─["+"Vector".red+"~ #Menu".green+"]
 └╼ 卐 "
 
out = gets.chomp
case out
when "1"
system 'clear'
puts banner+"
\n\t Choose Decrypt .\n".brown+" 
 [卐] Enter Dirctory . \n".red 

# Decrypt
print" ┌─["+"Vector".red+"~ #Decrypt".green+"]
 └╼ 卐 "
input = gets.chomp
input = Dir[input+'/**/*']
dec = Dec.new
for i in input
  dec.cry(i)
end
when "2"
system 'clear'
puts banner+"
\n\t Choose Nncrypt .\n".brown+"
 [卐] Enter Dirctory . \n".red
print" ┌─["+"Vector".red+"~ #Encrypt".green+"]
 └╼ 卐 "
input = gets.chomp
input = Dir[input+'/**/*']

# Encrypt 
dec = Enc.new
for i in input
  dec.dec(i)
end
when "3"
exit
else
system 'clear'
puts banner 
puts "\t[卐] Enter To Exit \n".red
print" ┌─["+"Vector".red+"~ #Exit".green+"]
 └╼ 卐 "
a = gets.chomp
end
