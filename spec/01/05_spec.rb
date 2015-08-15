require 'spec_helper'

describe 'Q05' do
  it 'I am an NLPer の n-gram(2, word) は Iam aman anNLPer' do
    expect('I am an NLPer'.word_ngram(2)).to eq %w(Iam aman anNLPer)
  end
  it 'I am an NLPer の n-gram(2, char) は Ia am ma am ' do
    expect('I am an NLPer'.char_ngram(2)).to eq %w(Ia am ma an nN NL LP Pe er)
  end
  it 'I am an NLPer の n-gram(2, char) は Ia am ma am ' do
    expect('I am an NLPer'.char_ngram(3)).to eq %w(Iam ama man anN nNL NLP LPe Per)
  end
end
