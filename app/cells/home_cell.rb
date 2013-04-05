class HomeCell < Cell::Rails

  def category
    render
  end

  def group(group)
    categories = Category.where('`group` = ?', group).all
    @products = []
    categories.each do |c|
      c.products.each do |p|
        @products << p if p.volume > 1000
        break if @products.size > 10
      end
    end
    render
  end

end
