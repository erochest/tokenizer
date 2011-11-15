
class Freq
  def initialize(input_text)
    @input_text = input_text
  end

  def tokens
    @input_text.split
  end
end

