# "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
# という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，
# それ以外の単語は先頭に2文字を取り出し，
# 取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

def prog_04
  arr = [1, 5, 6, 7, 8, 9, 15, 16, 19]
  str = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
  k = 0
  ans = {}
  str.split(' ').each_with_index do |e, i|
    if i + 1 == arr[k]
      ans[(i + 1).to_s] = e[0]
      k += 1
    else
      ans[(i + 1).to_s] = e[0] + e[1]
    end
  end
  ans
end
