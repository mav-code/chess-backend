class LobbyChannel < ApplicationCable::Channel
  def subscribed
    puts "SUBSCRIBED" * 10
    game = Game.find_by(id: params[:id])
    stream_for game
  end

  def unsubscribed
    puts "UNSUBSCRIBED" * 10
    # Any cleanup needed when channel is unsubscribed
  end
end
