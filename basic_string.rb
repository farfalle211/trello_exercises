require 'rspec'


RSpec.describe String do
  describe '#reverse_string' do
    it 'should reverse the string' do
      string = String.new
      expect(string.reverse_string("hello")).to eq("elloh")
    end
  end
end
