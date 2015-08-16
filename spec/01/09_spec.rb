require 'spec_helper'

describe 'Q09' do
  it { expect(prog_09.split(' ')[0]).to eq 'I' }
  it { expect(prog_09.split(' ')[1]).not_to eq 'I' }
  it { expect(prog_09.split(' ')[2]).not_to eq 'that' }
  it { expect(prog_09.split(' ')[3]).to eq 'that' }
  it { expect(prog_09.split(' ')[4]).to eq 'I' }
  it { expect(prog_09.split(' ')[8]).to eq 'what' }
  it { expect(prog_09.split(' ')[9]).to eq 'I' }
end
