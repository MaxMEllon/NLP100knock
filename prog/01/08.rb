def prog_08(str)
  a = 'a'.ord
  z = 'z'.ord
  ans = []
  str.split('').each { |e| ans.push e.ord.between?(a, z) ? (219 - e.ord).chr : e }
  ans.join.to_s
end
