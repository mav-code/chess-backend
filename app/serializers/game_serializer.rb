class GameSerializer < ActiveModel::Serializer
  belongs_to :whiteplayer, :class_name => 'User'
  belongs_to :blackplayer, :class_name => 'User'
  attributes :id, :fen, :pgn, :whiteplayer_id, :blackplayer_id, :name, :started, :created_at, :whiteplayer, :blackplayer
end
