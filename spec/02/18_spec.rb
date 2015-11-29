require 'spec_helper'

describe 'Q18' do
  before do
    @ans = `cat #{Dir.pwd}/data/txt/sorted.txt`
    tmp = Prog18.new
    @prog_18 = tmp.sort
  end
  it { expect(@prog_18).to eq @ans }
end
