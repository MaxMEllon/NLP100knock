# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
# この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ
class String
  def char_ngram(n)
    ngram = []
    str = split('').map { |e| e.gsub(' ', '') }.join
    str.split('').each_cons(n) { |e| ngram.push e.join }
    ngram
  end

  def word_ngram(n)
    ngram = []
    split(' ').each_cons(n) { |e| ngram.push e.join }
    ngram
  end
end
