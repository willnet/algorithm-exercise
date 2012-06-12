require 'rspec'
require_relative 'triangle'

describe Triangle do
  describe '.max' do
    context '(5, [2, 3, 4, 5, 10])' do
      it { Triangle.max(5, [2, 3, 4, 5, 10]).should eq 12 }
    end

    context '(4, [4, 5, 10, 20])' do
      it { Triangle.max(4, [4, 5, 10, 20]).should eq 0 }
    end
  end
end


