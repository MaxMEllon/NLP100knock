require 'spec_helper'

describe 'Q15' do
  before do
    path = Dir.pwd
    @prog_15 = `ruby #{path}/prog/02/15.rb 3`
    @ans = `tail -n 3 #{path}/data/txt/hightemp.txt`
  end
  it { expect(@prog_15).to eq @ans }
end
