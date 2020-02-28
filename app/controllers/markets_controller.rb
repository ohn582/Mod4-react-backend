class MarketsController < ApplicationController

            # collecting all the list of markets(in array)
    def index
        markets = Market.all 
        render json: markets 
    end

    # rendering a market(in array of "string")
    def show
        render json: Market.find(params[:id])
    end

    #creating market
    def create 
        markets = Market.create(market_params)
        if markets.save
            render json: markets
        end
    end

    def destroy
        @market = Market.find(params[:id])
        @market.destroy

        render json: @market
    end

end

 private 

    def market_params 
        params.require(:market).permit(:name, :info, :fruits)
    end


