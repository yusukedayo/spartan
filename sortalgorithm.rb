# [10, 8, 3, 5, 2, 4, 11, 18, 20, 33]のような配列を昇順に並べ変えてください。
# 標準関数のsortやsort_byは使わないことを条件とします。
# ソートアルゴリズムは「バブルソート」を採用してください。



numbers = [10, 8, 3, 5, 2, 4, 11, 18, 20, 33]
how_much = numbers.size - 1

(0...how_much).each do |x|
    (0...(how_much - x)).each do |xx|
        y = xx + 1
        if numbers[xx] > numbers[y]
            numbers[xx], numbers[y] = numbers[y], numbers[xx]
        end
    end
end

puts numbers
