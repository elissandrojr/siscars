require 'test_helper'

class FileDocControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get file_doc_new_url
    assert_response :success
  end

end
