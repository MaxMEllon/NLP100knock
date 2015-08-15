require 'spec_helper'

describe 'Q06-1' do
  before do
    x = 'paraparaparadise'.char_ngram(2)
    y = 'paragraph'.char_ngram(2)
    @prog_06 = Prog06.new(x, y)
  end
  it { expect(@prog_06.union).to eq %w(pa ar ra ap ad di is se ag gr ph) }
  it { expect(@prog_06.product).to eq %w(pa ar ra ap) }
  it { expect(@prog_06.diff).to eq %w(ad di is se) }
end

describe 'Q06-2' do
  before do
    x = 'para para paradise'.word_ngram(2)
    y = 'para graph'.word_ngram(2)
    @prog_06 = Prog06.new(x, y)
  end
  it { expect(@prog_06.union).to eq %w(parapara paraparadise paragraph) }
  it { expect(@prog_06.product).to eq [] }
  it { expect(@prog_06.diff).to eq %w(parapara paraparadise) }
end
