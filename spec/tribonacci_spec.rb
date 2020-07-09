require 'tribonacci'

describe 'tribonacci' do

  tribonacci = Tribonacci.new

  describe 'present' do
    it('should return the correct array') do
      expect(tribonacci.present([0,0,1],1)).to eq [0]
    end
  end

end
