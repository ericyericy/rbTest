require 'pry'

# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
    # binding.pry 
  end while !["R", "P", "S"].include?(user_input) 

  #接下來請把剩下的部份寫出來...
  pc_random = ["R", "P", "S"].sample

  puts "pc: #{pc_random}"

  if pc_random == "R"
    if user_input == "R"
      puts "pc:R, user:R, 平手"
    elsif user_input == "P"
      puts "pc:R, user:P, user贏"
    else user_input == "S"
      puts "pc:R,user:S, user輸"
    end

  elsif pc_random == "P"
    if user_input == "R"
      puts "pc:P, user:R, user輸"
    elsif user_input == "P"
      puts "pc:P, user:P, 平手"
    else user_input == "S"
      puts "pc:P, user:S, user贏"
    end  

  else pc_random == "S"
    if user_input == "R"
      puts "pc:S, user:R, user贏"
    elsif user_input == "P"
      puts "pc:S, user:P, user輸"
    else user_input == "S"
      puts "pc:S, user:S, 平手"
    end  
  end

  #問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"