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
    # binding.pry
    reviews = Review.create(review_params) 
    if reviews.save
        render json: reviews
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
        @review = Review.find(params[:id])
        @review.destroy

        render json: @review
    end

end


  private

    def review_params
      params.require(:review).permit(:name, :content, :market_id)
    end







