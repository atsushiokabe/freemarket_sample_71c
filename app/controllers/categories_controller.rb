class CategoriesController < ApplicationController
  before_action :brand_category_header
  before_action :set_detail_search, only: [:index, :detail_search]

  def index
    @items = Item.includes(:user).where(item_status: false).order("id DESC").page(params[:page]).per(50)
  end

  def show
    @category = Category.find(params[:id])
    @items = @category.find_items
    @items = @items.where(item_status: false).order("created_at DESC").page(params[:page]).per(30)
    @q = Item.ransack(params[:q])
    @search_items = @q.result.includes(:user, :likes, :images)
  end

  def detail_search
  end

  private

  def brand_category_header
    @category_parents = Category.where(ancestry: nil)
    @brands = Brand.all
  end

  def detail_search_params
    params.require(:q).permit(:sorts, :price_gteq, :price_lteq, condition_id_in: [], delivery_fee_id_in: [])
  end

  def set_detail_search
    @q = Item.ransack(params[:q])
    @search_items = @q.result.includes(:user, :likes, :images)
  end

end
