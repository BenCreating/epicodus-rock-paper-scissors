class RPS
  def wins?(object, argument)
    # returns true if the object beats the argument
    object = object.downcase
    argument = argument.downcase

    beats_what(object) == argument
  end

  private

    def beats_what(move)
      move_list = ['rock', 'paper', 'scissors']
      loser_index = move_list.index(move) - 1
      move_list[loser_index]
    end
end
