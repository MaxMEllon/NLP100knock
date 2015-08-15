require 'spec_helper'

describe 'Q05' do
  before do
    @prog_05 = Prog05.new('I am an NLPer')
  end
  it 'I am an NLPer の n-gram(2, word) は Iam aman anNLPer' do
    expect(@prog_05.word_ngram(2)).to eq %w(Iam aman anNLPer)
  end
  it 'I am an NLPer の n-gram(2, char) は Ia am ma am ' do
    expect(@prog_05.char_ngram(2)).to eq %w(Ia am ma an nN NL LP Pe er)
  end
  it 'I am an NLPer の n-gram(2, char) は Ia am ma am ' do
    expect(@prog_05.char_ngram(3)).to eq %w(Iam ama man anN nNL NLP LPe Per)
  end
end
