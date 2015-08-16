require 'spec_helper'

describe 'Q12' do
  before do
    @prog_12 = Prog12.new
    @prog_12.prog_12
    path = Dir.pwd + '/data/txt/'
    @col1 = File.read(path + 'col1.txt')
    @col2 = File.read(path + 'col2.txt')
    @ans1 = `cut -f 1 #{path}hightemp.txt`
    @ans2 = `cut -f 2 #{path}hightemp.txt`
  end
  it { expect(@col1).to eq @ans1 }
  it { expect(@col2).to eq @ans2 }
  after { @prog_12.clean }
end
