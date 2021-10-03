
# 何本勝負かを選択できる。
# 1, 3, 5, ユーザーがこの数値からどれかを選べば該当するactionに移動する。
# それ以外の入力は無視。
# 回数はdef じゃんけんをtimesメゾットで行う。





# CPUが出す手

# じゃんけんでお互いが出した手を表示
@result = [0, 0]
def jyanken
    def battle
        
        cards = ["g", "c", "p"]
        cpu = cards.sample
        puts "じゃんけん（g, c, pから選択してください）"
        user = gets.chomp
        puts "CPU #{cpu}"
        puts "あなた #{user}"
    
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
    
    next_game = true
    while next_game do
        next_game = battle
    end
end


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




# 出した手ごとに勝ち負け・あいこの設定








# じゃんけん
# ユーザーに g, c, pのどれかを選んでもらう。
# こちらからはランダムで３つの内から１つ選ばれるようにする。
# この２つの数値を変数に当てはめてそれぞれの状況によって勝ち負けを記録する。
# p gならputs you win! + あなたの勝ち数にプラス１（勝ち数は変数resolut）に記録する。
# あいこに関してはreturnで定義する。
# 最終結果に関しては 勝ち数と負け数比べてif使ってputsの内容を変更する。









# 何本勝負？(press 1 or 3 or 5)
# 3本勝負を選びました

# 1本目
# じゃんけん…(press g or c or p)
# CPU…パー
# あなた…チョキ
# 勝ち！
# 1勝0敗

# 2本目
# じゃんけん…(press g or c or p)
# CPU…パー
# あなた…グー
# 負け！
# 1勝1敗

# 3本目
# じゃんけん…(press g or c or p)
# CPU…パー
# あなた…パー
# あいこで...(press g or c or p)
# CPU…パー
# あなた…チョキ

# 勝ち！
# 2勝1敗


# 結果
# 2勝1敗であなたの勝ち