puts "Ruby簡易計算,請輸入第1個數字"
num1 = gets.chomp.to_f

puts "請輸入第2個數字"
num2 = gets.chomp.to_f

puts "請選擇計算方式 (1)+ (2)- (3)* (4)/"
operration = gets.chomp.to_i

case operration
  when 1 then puts "答案是： #{num1 + num2}"
  when 2 then puts "答案是： #{num1 - num2}"
  when 3 then puts "答案是： #{num1 * num2}"
  when 4 then puts "答案是： #{num1 / num2}"
  else puts "計算方式錯誤,無法計算"
end		