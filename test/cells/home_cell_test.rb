require 'test_helper'

class HomeCellTest < Cell::TestCase
  test "category" do
    invoke :category
    assert_select "p"
  end
  

end
