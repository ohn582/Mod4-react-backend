class ReviewsController < ApplicationController

  def index 
      reviews = Review.all 
      render json: reviews
  end

  #rendering reviews
  def show 
      render json: Review.find(params[:id])
  end

  #post a review
  def create
      review = Review.create(review_params) 

      if review.save
          render json: review
      end
  end

  # patch a review
  def update
      review = Review.find(params[:id])
      review.update(review_params)
      render json: review
  end 

  #delete a review 
  def destroy
      review = Review.find(params[:id]) 
      review.destroy
  end
end


  private

    def review_params
      params.require(:review).permit(:name, :content, :fruit_id, :market_id)
    end
