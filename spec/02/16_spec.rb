require 'spec_helper'

describe 'Q16-1' do
  before do
    path = Dir.pwd
    @prog_16 = prog_16(3)
    `sh #{path}/spec/02/16_split.sh 3`
    @output_files = []
    Dir.glob("#{path}/data/txt/out.*").sort.each do |p|
      @output_files.push File.read(p)
    end
  end
  it { expect(@prog_16[0]).to eq @output_files[0] }
  it { expect(@prog_16[1]).to eq @output_files[1] }
  it { expect(@prog_16[2]).to eq @output_files[2] }
  after do
    `rm -rf #{Dir.pwd}/data/txt/out.*`
  end
end

describe 'Q16-2' do
  before do
    path = Dir.pwd
    @prog_16 = prog_16(4)
    `sh #{path}/spec/02/16_split.sh 4`
    @output_files = []
    Dir.glob("#{path}/data/txt/out.*").sort.each do |p|
      @output_files.push File.read(p)
    end
  end
  it { expect(@prog_16[0]).to eq @output_files[0] }
  it { expect(@prog_16[1]).to eq @output_files[1] }
  it { expect(@prog_16[2]).to eq @output_files[2] }
  it { expect(@prog_16[3]).to eq @output_files[3] }
  after do
    `rm -rf #{Dir.pwd}/data/txt/out.*`
  end
end
