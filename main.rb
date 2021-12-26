require 'chilkat'
require_relative 'lib/Encrypt.rb'
require_relative 'lib/Decrypt.rb'
require_relative 'lib/colorama.rb'
system 'clear'

banner ="

  ██╗░░░██╗███████╗░█████╗░████████╗░█████╗░██████╗░
  ██║░░░██║██╔════╝██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗
  ╚██╗░██╔╝█████╗░░██║░░╚═╝░░░██║░░░██║░░██║██████╔╝
  ░╚████╔╝░██╔══╝░░██║░░██╗░░░██║░░░██║░░██║██╔══██╗
  ░░╚██╔╝░░███████╗╚█████╔╝░░░██║░░░╚█████╔╝██║░░██║
  ░░░╚═╝░░░╚══════╝░╚════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝".red+" Ver 2.0".green
puts banner+"

\t[卐] Choose one of the options below".red+" 

\t[1] Decrypt 

\t[2] Encrypt 

\t[3] Banner

\t[4] Help

\t[5] developer

\t[6] Exit 
".brown

print" ┌─["+"Vector".red+"~ #Menu".green+"]
 └╼ 卐 "
 
out = gets.chomp
case out
when "1"
system 'clear'
puts banner+"
\n\t Choose Decrypt . [ :q ] To cancel \n".brown+" 
 [卐] Enter Dirctory . \n".red 

# Decrypt
print" ┌─["+"Vector".red+"~ #Decrypt".green+" Dir:#{Dir.pwd} ]
 └╼ 卐 "
input = gets.chomp
if input == ":q"
    exit
end
input = Dir[input+'/**/*.*']
dec = Dec.new
for i in input
  dec.cry(i)
end
when "2"
system 'clear'
puts banner+"
\n\t Choose Nncrypt . [ :q ] To cancel \n".brown+"
 [卐] Enter Dirctory . \n".red
print" ┌─["+"Vector".red+"~ #Encrypt".green+" Dir:#{Dir.pwd} ]
 └╼ 卐 "
input = gets.chomp
if input == ":q"
    exit
end
input = Dir[input+'/**/*.*']

# Encrypt 
dec = Enc.new
for i in input
  dec.dec(i)
end
when "3"
system 'clear'
puts banner+"
\n\t Make Banner .\n".brown+"
 [卐] Enter Dirctory . \n".red
print" ┌─["+"Vector".red+"~ #Banner".green+"]
 └╼ 卐 "
input = gets.chomp
f = File.open(input+"/Readme.txt",'w')
f.puts "---------------------------------------------------"
f.puts banner
f.puts "\nhackend with tool vector .\n"
f.puts "---------------------------------------------------"
f.close
print "Go to menu... ".green
gets
system("ruby main.rb")
when "4"
system 'clear'
puts banner+"
\n\t Help .\n".brown
puts "
To install chilkat lib  => "+"https://www.chilkatsoft.com/ruby.asp\n".underline+"
Feed back => "+"github.com/nimacpp\n".underline
print "Go to menu... ".green
gets
system("ruby main.rb")

when "5"
system 'clear'
puts banner+"
\n\t developer .\n".brown
puts "
\tMade by : Niox Team 
\tTeam manager : Nimacpp
\tVersion : 1.3 
\tlang : Ruby \n".green

puts "Go to menu... ".green
gets
system("ruby main.rb")
when "6"
exit
else
puts "Reset ... ".green
gets
system("ruby main.rb")
end


