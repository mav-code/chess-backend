class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def create
        game = Game.create(
            
            name: params[:name],
            fen: params[:fen],
            pgn: params[:pgn],
            whiteplayer_id: params[:whiteplayer_id],
            blackplayer_id: params[:blackplayer_id],
            started: false
    )
    # serialized_data = ActiveModelSerializers::Adapter::Json.new(
    #     GameSerializer.new(game)
    #   ).serializable_hash
    #     ActionCable.server.broadcast 'games_channel', serialized_data
    #     head :ok
        render json: game
    end

    def update
        game = Game.find(params[:id])
        game.update(game_params)
        puts "IN UPDATE" * 10
        puts game.fen
        LobbyChannel.broadcast_to game, game

        render json: game
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy

        render json: game
    end

    private

    def game_params
        params.permit(:name, :fen, :pgn, :whiteplayer_id, :blackplayer_id, :started, :id, :created_at, :whiteplayer, :blackplayer)
    end 

end
