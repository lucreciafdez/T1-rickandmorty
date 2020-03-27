require 'test_helper'

class EpisodiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get episodios_index_url
    assert_response :success
  end

  test "should get show" do
    get episodios_show_url
    assert_response :success
  end

end
