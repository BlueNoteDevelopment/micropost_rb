require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         " | Microposts Application"
    assert_equal full_title("Help"), "Help | Microposts Application"
  end
end
