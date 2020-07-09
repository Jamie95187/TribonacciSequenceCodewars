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
      expect(tribonacci.present([-2,-2,4],5)).to eq [-2,-2,4,0,2]
    end

    it('should return the correct 30 element array, with doubles') do
      expect(tribonacci.present([0.5,0.5,0.5],30)).to eq [0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5]
    end

  end

end
