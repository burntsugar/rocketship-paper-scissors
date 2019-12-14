# frozen_string_literal: true

# class RPS
class RPS
    def self.play(player1, player2)
        winner(determine_pos(player1), player2)
    end

    #
    # Sets Player1 to 0.
    #
    def self.determine_pos(drawn)
        pos = []
        case drawn
        when 'rock'
            pos = [0, 1, -1]
        when 'paper'
            pos = [-1, 0, 1]
        when 'scissors'
            pos = [1, -1, 0]
        end
        pos
    end

    #
    # Sets Player2 relative to Player 1.
    # Returns 3-way comparison.
    #
    def self.winner(pos, player2)
        case player2
        when 'rock'
            score = pos[0]
        when 'paper'
            score = pos[1]
        when 'scissors'
            score = pos[2]
        end
        # Find Player1's score.
        p1_score = pos.find do |p|
            p == 0
        end
        # 3-way comparison.
        p1_score <=> score
    end
end
