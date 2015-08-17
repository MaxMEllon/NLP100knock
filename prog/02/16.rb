def prog_16(n = 1)
  lines = File.read(Dir.pwd + '/data/txt/hightemp.txt').lines
  n = 1 if n.nil? || n.zero?
  size = lines.size / n
  ans = []
  (0...n).each { ans.push '' }
  lines.each_with_index do |line, k|
    ans[k / size] << line
  end
  ans
end
