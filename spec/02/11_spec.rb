require 'spec_helper'

describe 'Q11' do
  before { @path = Dir.pwd + '/data/txt/hightemp.txt' }
  it { expect(prog_11).to eq `sed -e "s/\t/ /g" #{@path}` }
end
