require 'test_helper'

class ColectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get colections_index_url
    assert_response :success
  end

end
