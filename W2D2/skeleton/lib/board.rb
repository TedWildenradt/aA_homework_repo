class Board
  attr_accessor :cups

  def initialize(name1, name2, cups = self.place_stones)
    @name1 = name1
    @name2 = name2
    @cups = cups
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    output = Array.new(14,'')
    output[0..5].map!.with_index do |el, idx|
      output[idx] = [:stone,:stone,:stone,:stone]
    end
    output[7..12].map!.with_index do |el, idx|
      output[idx] = [:stone,:stone,:stone,:stone]
    end
    output
  end

  def valid_move?(start_pos)
    unless (0..5).member?(start_pos) && (7..12).member?(start_pos)
      raise 'Invalid starting cup'
    end
    unless @cups[start_pos].empty?
      raise 'Starting cup is empty'
    end 

  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
