class GameSerializer < ActiveModel::Serializer
  attributes :id, :fen, :pgn, :whiteplayer_id, :blackplayer_id, :name, :started
  belongs_to :whiteplayer, :class_name => 'User'
  belongs_to :blackplayer, :class_name => 'User'
end
