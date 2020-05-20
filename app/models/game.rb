class Game < ApplicationRecord
    belongs_to :whiteplayer, :class_name => 'User', optional: true
    belongs_to :blackplayer, :class_name => 'User', optional: true

end
