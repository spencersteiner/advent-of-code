require 'bundler/inline'
require 'rspec/autorun'
require './calorie'

gemfile do
  gem 'rspec'
end

RSpec.describe 'Calorie' do
  context 'with given example input' do
    let(:calorie) { Calorie.new(input) }
    let(:input) {
      %Q(1000
        2000
        3000

        4000

        5000
        6000

        7000
        8000
        9000

        10000)
    }

    it 'returns most calories in a group (24000)' do
      expect(calorie.most).to eq(24000)
    end

    it 'returns most calories for top three groups (45000)' do
      expect(calorie.most(3)).to eq(45000)
    end
  end
end
