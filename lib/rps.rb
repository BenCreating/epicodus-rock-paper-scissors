class RPS
  def initialize()
    @move_list = ['rock', 'paper', 'scissors']
  end

  def wins?(object, argument)
    # returns true if the object beats the argument
    object = object.downcase
    argument = argument.downcase

    beats_what(object) == argument
  end

  def random_move
    @move_list.sample
  end

  def valid?(move)
    @move_list.include?(move)
  end

  private

    def beats_what(move)
      loser_index = @move_list.index(move) - 1
      @move_list[loser_index]
    end
end
