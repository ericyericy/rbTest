class Player
  attr_accessor :user_input, :pc_input
  def initialize
    @user_input
    @pc_input
  end
end

class RPS < Player
  def intro
    #印出開場畫面，告訴玩家遊戲規則   
    puts "please choose one of the following: R / P / S"
  end

  def get_player_gestures
    #取得玩家和電腦兩個物件的
    begin
      @user_input = gets.chomp.upcase
    end while !['R', 'P', 'S'].include?(user_input)
    @pc_input = ['R', 'P', 'S'].sample
  end  

  def decide
    #邏輯判斷式
    if pc_input == user_input
      puts "pc:#{pc_input}, user:#{user_input}, 平手"
    elsif pc_input == 'R' && user_input == 'P'
      puts "pc:R, user:P, user贏"
    elsif pc_input == 'P' && user_input == 'S'
      puts "pc:P, user:S, user贏" 
    elsif pc_input == 'S'&& user_input == 'R'
      puts "pc:S, user:R, user贏"
    else 
      puts "pc:#{pc_input}, user:#{user_input}, user輸"
    end
  end

  def continue?
    #判斷玩家是否要繼續下一輪
    begin
      puts "Play Again?: Y / N"
      continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)
    continue
  end  

  def play
    begin
      intro
      get_player_gestures
      decide
    end while continue? == "Y"
    # 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
    puts "Good Bye! Thanks for playing!"
  end
end 

# ------------Main Program Starts Here ---------------------
# 主程式只要一行即可
game = RPS.new.play