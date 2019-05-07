class Counter
  # Make instance variable accessible for read/write
  attr_accessor :content

  # Adding default functionality to our Counter class
  def initialize
    @content = File.open("output.txt", "r") { |file| file.read }
  end

  # Defining method increment counter value.
  def incr(step)
    number = @content.to_i
    File.open("output.txt", "w") do |file|
      number = number + step
      file.write "#{number}"
    end
  end

  # Choosing stat value for the counter
  def reset(start_position)
    File.open("output.txt", "w") { |file| file.write "#{start_position}" }
  end
end
