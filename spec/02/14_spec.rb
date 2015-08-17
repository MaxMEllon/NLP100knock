describe 'Q14' do
  before do
    path = Dir.pwd
    @prog_14 = `ruby #{path}/prog/02/14.rb 3`
    @ans = `head -n 3 #{path}/data/txt/hightemp.txt`
  end
  it { expect(@prog_14).to eq @ans }
end
