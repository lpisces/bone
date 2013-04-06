class CategoryController < ApplicationController

  def map
    @categories = Category.all
  end

  def show
    @category = Category.find_by_name params[:name]
    head :not_found  if @category.nil?

    @q = Product.search({:categories_name_eq => @category.name})
    @products = @q.result(:distinct => true).paginate(:per_page => 16, :page => params[:page]).order('id DESC')
  end
end
