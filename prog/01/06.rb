# "paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を，
# それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．
# さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．

class String
  def char_ngram(n)
    ngram = []
    str = split('').map { |e| e.delete(' ') }.join
    str.split('').each_cons(n) { |e| ngram.push e.join }
    ngram
  end

  def word_ngram(n)
    ngram = []
    split(' ').each_cons(n) { |e| ngram.push e.join }
    ngram
  end
end

class Prog06
  def initialize(x, y)
    @x = x
    @y = y
  end

  def union
    @x | @y
  end

  def product
    @x & @y
  end

  def diff
    @x - @y
  end
end
