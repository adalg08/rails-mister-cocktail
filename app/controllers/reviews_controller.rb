class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = @cocktail.reviews.new(review_params)
    if @review.save
      redirect_to @cocktail
    else
      render 'cocktails/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :cocktail_id, :author)
  end

end
