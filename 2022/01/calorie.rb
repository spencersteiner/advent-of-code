class Calorie
  def initialize(input)
    @input = process_input(input)
  end

  def most(number_of_groups_to_count = 1)
    all_groups_summed.max(number_of_groups_to_count).sum
  end

  private

  def all_groups_summed
    @input.map(&:sum)
  end

  def process_input(input)
    input_groups(input).map do |input_group|
      convert_group_to_integers_array(input_group)
    end
  end

  def input_groups(input)
    input.split("\n\n").map
  end

  def convert_group_to_integers_array(input_group)
    input_group.split("\n").map(&:to_i)
  end
end
