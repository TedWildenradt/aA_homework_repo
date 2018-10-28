class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length=1, game_over=false, seq=[])
    @sequence_length = sequence_length
    @game_over = game_over
    @seq = seq
  end

  def play
    until game_over
      take_turn
      # system 'clear'
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 1
      system 'clear'
    end
  end

  def require_sequence
    i = 0
    until i == @sequence_length || @game_over == true
      puts "Enter color"
      input = gets.chomp
      if input != seq[i]
        @game_over = true
      end
      i += 1
    end

  end

  def add_random_color
    @seq.push(COLORS.sample)
  end

  def round_success_message
    puts "Success! On to the next round"
  end

  def game_over_message
    puts "Game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  simon = Simon.new
  simon.play
end
