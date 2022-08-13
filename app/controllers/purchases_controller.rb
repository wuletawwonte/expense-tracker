class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.where(user_id: current_user.id, category_id: params['category_id'])
    @total_price = @purchases.sum(:amount)
  end
  
  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.user_id = current_user.id
    @purchase.category_id = params['category_id']

    respond_to do |format|
      format.html do
        if @purchase.save
          flash[:success] = 'Purchase added successfully'
          redirect_to category_purchases_path
        else 
          flash[:error] = 'Unable to add Purchase'
          render new
        end
      end
    end
  end

  def new
    @purchase = Purchase.new
  end


  private

  def purchase_params 
    params.require(:purchase).permit(:name, :amount)
  end

end
