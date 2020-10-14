require_relative "piece.rb"

class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(8){Array.new(8, Piece.new)}

    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, piece)
        @grid[pos.first][pos.last] = piece
    end

    def move_piece(start_pos, end_pos)
        value = @grid[start_pos]
        @grid[end_pos] = value
    rescue
        raise "no piece at starting position" if value.instance_of? NullPiece
        raise "invalid end position" if !value.instance_of? NullPiece
        retry 
    end

end