require 'rp_palindrome'

# RSpec.describe RpPalindrome do
#   it "should test methods in RpPalindrome.rb" do
#     expect(RpPalindrome.some_method).to eq "success"
#   end
# end

describe 'String' do
  it "should return false if string is not a palindrome" do
    expect("hello".palindrome?).to eq(false)
  end

  it "should return true if the string is a palindrome" do
    expect('racecar'.palindrome?).to eq(true)
  end

  it "should return true in a mixed case palindrome" do
    expect('RaceCar'.palindrome?).not_to eq(false)
  end

  it "should return true even if there is punctuation in a palindrome" do
    expect("Madam, I'm Adam".palindrome?).to eq(true)
  end

  it "should return false if an integer is not a palindrome" do
    expect(12345.palindrome?).to eq(false)
  end

  it "should return true if an integer is a palindrome" do
    expect(12321.palindrome?).to eq(true)
  end
end

