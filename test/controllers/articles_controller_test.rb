require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get show" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    article =  Article.create!(title: "Test", content: "0123456789")
    get article_url(article)
    assert_response :success
  end

  test "should get create" do
    assert_difference("Article.count", 1) do
      post articles_url, params: { article: { title: "Test", content: "0123456789" } }
    end
    assert_redirected_to article_url(Article.last)
  end
end
