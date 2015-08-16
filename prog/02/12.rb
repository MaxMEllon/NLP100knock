class Prog12
  def prog_12
    path = Dir.pwd + '/data/txt/'
    ans = [[], []]
    File.read(path + 'hightemp.txt').lines.each do |line|
      ans.each_with_index { |e, k| e.push line.split("\t")[k] }
    end
    ans.each.with_index(1) { |e, k| File.write("#{path}/col#{k}.txt", e.map { |m| m + "\n" }.join) }
  end

  def clean
    path = Dir.pwd + '/data/txt/'
    (1..2).each { |k| `rm -rf #{path}col#{k}.txt` }
  end
end
