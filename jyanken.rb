# 勝敗回数を記録
@result = [0, 0]

# じゃんけん本体
def jyanken
    def battle
        # お互いの手
        cards = ["g", "c", "p"]
        cpu = cards.sample
        puts "じゃんけん（g, c, pから選択してください）"
        user = gets.chomp
        puts "CPU #{cpu}"
        puts "あなた #{user}"
    
        # 勝敗
        if user == cpu
            puts "あいこ"
            return true
        elsif  (user == "g" && cpu == "c") || (user == "c" && cpu == "p") || (user == "p" && cpu == "g")
            puts "あなたの勝ち"
            @result[0] += 1
            puts "#{@result[0]}勝#{@result[1]}敗"
            return false
        else 
            puts "あなたの負け"
            @result[1] += 1
            puts "#{@result[0]}勝#{@result[1]}敗"
            return false
        end
    end
    
    # あいこ時の繰り返し処理
    next_game = true
    while next_game do
        next_game = battle
    end
end

# ゲームの進行と結果表示
puts "何本勝負？(数字を入力してください 1 or 3 or 5)"
num = gets.chomp
puts "#{num}本勝負"
case num
when "1"
    puts "1本勝負を選びました。"
    1.times do
        puts jyanken
    end
    if @result[0] >= 1
        puts "結果 #{@result[0]}勝#{@result[1]}であなたの勝ち"
    else
        puts "結果 #{@result[0]}勝#{@result[1]}であなたの負け"
    end
when "3"
    puts "3本勝負を選びました。"
    3.times do
        puts jyanken
    end
    if @result[0] >= 2
        puts "結果 #{@result[0]}勝#{@result[1]}であなたの勝ち"
    else
        puts "結果 #{@result[0]}勝#{@result[1]}であなたの負け"
    end
    
when "5"
    puts "5本勝負を選びました。"
    5.times do
        puts jyanken
    end
    if @result[0] >= 3
        puts "結果 #{@result[0]}勝#{@result[1]}であなたの勝ち"
    else
        puts "結果 #{@result[0]}勝#{@result[1]}であなたの負け"
    end
else
    puts "回数は1, 3, 5の中から選んでください。"
end
