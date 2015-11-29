class Prog18
  # 1-8
  # 3番目の要素でソート
  def initialize
    @lines = File.read(Dir.pwd << '/data/txt/hightemp.txt').lines
  end

  def sort
    arr = []
    @lines.each { |line| arr.push line }
    arr.sort { |a, b| b[2].to_f <=> a[2].to_f }.reverse.join
  end
end

prog18 = Prog18.new
puts prog18.sort

