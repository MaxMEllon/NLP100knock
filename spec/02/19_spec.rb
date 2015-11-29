require 'spec_helper'

describe 'Q18' do
  before do
    @ans = `cat #{Dir.pwd}/data/txt/freq.txt`
    tmp = Prog19.new
    @prog_19 = tmp.frequency
  end
  it { expect(@prog_19).to eq @ans }
end
