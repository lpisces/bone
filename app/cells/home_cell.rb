class HomeCell < Cell::Rails

  def category
    render
  end

  def group(group)
    categories = Category.where('`group` = ?', group).all
    @products = []
    categories.each do |c|
      c.products(:order => "volume desc")[0..10].each do |p|
        @products << p
      end
    end
    @products.sort!{|x, y| y.sort <=> x.sort}
    @products.sort!{|x, y| y.volume <=> x.volume} if @products.size > 0 && @products[0].sort  == 0
    render
  end

end
