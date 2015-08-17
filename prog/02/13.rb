class Prog13
  def initialize
    @path = Dir.pwd + '/data/txt/'
    ans = [[], []]
    File.read(@path + 'hightemp.txt').lines.each do |line|
      ans.each_with_index { |e, k| e.push line.split("\t")[k] }
    end
    ans.each.with_index(1) { |e, k| File.write("#{@path}/col#{k}.txt", e.map { |m| m + "\n" }.join) }
    @cols = [File.read(@path + 'col1.txt').lines, File.read(@path + 'col2.txt').lines]
  end

  def merge_data
    ans = []
    (0...@cols[0].length).each do |k|
      ans.push @cols[0][k].to_s.chomp + "\t" + @cols[1][k].to_s.chomp + "\n"
    end
    ans.join
  end

  def clean_file
    (1..2).each { |k| `rm -rf #{@path}col#{k}.txt` }
  end
end
