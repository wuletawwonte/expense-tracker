class CategoriesController < ApplicationController
  def index
    @categories = Category.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id

    respond_to do |format|
      format.html do
        if @category.save
          flash[:success] = 'Category successfully saved'
          redirect_to categories_path
        else
          flash[:error] = 'Unable to save Category'
          render new
        end
      end
    end
  end

  private

  def category_params
    params.require(:category).permit(:icon, :name)
  end
end
