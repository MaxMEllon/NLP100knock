# 「パタトクカシーー」
# 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．

def prog_01
  ans = []
  'パタトクカシーー'.split('').each_with_index { |e, k| ans.push e if k.odd? }
  ans.join.to_s
end