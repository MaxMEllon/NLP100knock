# 円周率
# "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し，
# 各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．

def prog_03
  'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'.split(' ').map { |e| e[0] }.join
end
