def prog_02
  x = 'タクシー'
  ans = []
  'パトカー'.split('').each_with_index { |e, k| ans.push e + x[k] }
  ans.join.to_s
end
