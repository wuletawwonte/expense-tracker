class PurchasesController < ApplicationController

  def index
    @purchases = Purchase.where(user_id: current_user.id, category_id: params['category_id'])
  end

end
