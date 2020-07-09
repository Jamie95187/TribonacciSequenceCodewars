require 'tribonacci'

describe 'tribonacci' do

  tribonacci = Tribonacci.new

  describe 'present' do

    it('should return the correct one element array') do
      expect(tribonacci.present([0,0,1],1)).to eq [0]
      expect(tribonacci.present([1,1,1],1)).to eq [1]
    end

    it('should return the correct two element array') do
      expect(tribonacci.present([0,0,1],2)).to eq [0,0]
    end

    it('should return the correct four element array') do
      expect(tribonacci.present([0,0,1],4)).to eq [0,0,1,1]
      expect(tribonacci.present([0,1,1],4)).to eq [0,1,1,2]
    end

    it('should return the correct five element array') do
      expect(tribonacci.present([0,0,1],5)).to eq [0,0,1,1,2]
      expect(tribonacci.present([0,1,1],5)).to eq [0,1,1,2,4]
    end

  end

end
