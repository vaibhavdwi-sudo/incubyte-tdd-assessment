class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    else
      delimiter = /,|\n/
    end

    num_list = numbers.split(delimiter).map(&:to_i)
    negatives = num_list.select { |num| num < 0 }

    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_list.sum
  end
end
