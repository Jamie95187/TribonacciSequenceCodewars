# Tribonacci Sequence (6 KYU)

Solving [this](https://www.codewars.com/kata/556deca17c58da83c00002db/train/ruby) codewars challenge.

## Description

Well met with Fibonacci bigger brother, AKA Tribonacci.

As the name may already reveal, it works basically like a Fibonacci, but summing the last 3 (instead of 2) numbers of the sequence to generate the next.

So, if we are to start our Tribonacci sequence with `[1, 1, 1]` as a starting input (AKA signature), we have this sequence:

```
[1, 1 ,1, 3, 5, 9, 17, 31, ...]
```

But what if we started with `[0, 0, 1]` as a signature? As starting with `[0, 1]` instead of `[1, 1]` basically shifts the common Fibonacci sequence by once place, you may be tempted to think that we would get the same sequence shifted by 2 places, but that is not the case and we would get:

```
[0, 0, 1, 1, 2, 4, 7, 13, 24, ...]
```

You need to create a Fibonacci function that given a signature array/list, returns the first n elements - signature included of the seeded sequence.

Signature will always contain 3 numbers; n will always be a non-negative number; if `n == 0`, then return an empty array.

## Tests

Following the red, green, refactor TDD cycle to test drive towards a solution.

```
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
```
