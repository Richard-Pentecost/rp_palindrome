require "rp_palindrome/version"

module RpPalindrome
  def palindrome?
    if processed_content.empty? 
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  def processed_content
    # self.to_s.scan(/\w+/).join.downcase
    self.to_s.scan(/[a-z0-9]/i).join.downcase     # equivalent
  end
end

class String 
  include RpPalindrome
end

class Integer
  include RpPalindrome
end
