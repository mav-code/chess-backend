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
        render json: game
    end

    def update
        @game = Game.find(params[:id])
        @game.update(game_params)

        render json: @game
    end

    private

    def game_params
        params.permit(:name, :fen, :pgn, :whiteplayer_id, :blackplayer_id, :started)
    end 

end
