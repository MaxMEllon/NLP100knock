require 'spec_helper'

describe 'Q13' do
  before do
    @prog_13 = Prog13.new
    path = Dir.pwd + '/data/txt/'
    @col1 = path + 'col1.txt'
    @col2 = path + 'col2.txt'
  end
  it { expect(@prog_13.merge_data).to eq `paste -d '\t' #{@col1} #{@col2}` }
  after do
    @prog_13.clean_file
  end
end
