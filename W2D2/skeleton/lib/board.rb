require 'byebug'
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
      output[idx + 7] = [:stone,:stone,:stone,:stone]
    end
    output
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    
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
    return true if @cups[0..5].all? {|arr| arr.empty?}
    return true if @cups[7..12].all? {|arr| arr.empty?}
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    @cups[6].length > @cups[13].length ? @name1 : @name2
  end
end

if __FILE__ == $PROGRAM_NAME
  board = Board.new('bob','joe')
  p board.cups
  board.cups[0] = []
  board.valid_move?(0)
end
