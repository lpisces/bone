class HomeController < ApplicationController
  def index
    @categories = Category.all
    @group = 'A'..'F'
    group(@categories, 'A'..'F')
  end

  private
    def group(categories, groups)
      groups.each do |g|
        eval("@parent_#{g} = Array.new")
        eval("@children_#{g} = Array.new")
        categories.each do |c|
          next if c.group != g
          if c.parent_id == 0
            eval("@parent_#{g} << c")
          else
            eval("@children_#{g} << c")
          end
        end
      end
    end
end
