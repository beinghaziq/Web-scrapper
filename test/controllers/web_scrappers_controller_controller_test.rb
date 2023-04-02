require 'test_helper'

class WebScrappersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_scrappers_controller_index_url
    assert_response :success
  end

end
