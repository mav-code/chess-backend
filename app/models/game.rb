class Game < ApplicationRecord
    belongs_to :whiteplayer, :class_name => 'User'
    belongs_to :blackplayer, :class_name => 'User'

end
