require 'test_helper'

class SummarizeControllerTest < ActionController::TestCase
  test "should get keyword" do
    get :keyword
    assert_response :success
  end

  test "should get topic" do
    get :topic
    assert_response :success
  end

  test "should get summarize_percent" do
    get :summarize_percent
    assert_response :success
  end

  test "should get sumamrize_sentences" do
    get :sumamrize_sentences
    assert_response :success
  end

end
