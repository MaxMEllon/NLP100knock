require 'spec_helper'

describe 'Q17' do
  before do
    @ans = `head -n 1 #{Dir.pwd}/data/txt/hightemp.txt | sort | uniq`
  end
  it { expect(prog_17).to eq @ans }
end
