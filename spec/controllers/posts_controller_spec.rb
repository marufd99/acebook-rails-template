require 'rails_helper'
require 'features/web_helpers.rb'

RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    xit "responds with 200" do
      get :new
      user1 = create(:user)
      user1.authenticate("123456")
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    xit "responds with 200" do
      post :create, params: { post: { message: "Hello, world!", user_id: 1 } }
      expect(response).to redirect_to(posts_url)
    end

    xit "creates a post" do
      post :create, params: { post: { message: "Hello, world!", user_id: 1 } }
      expect(Post.find_by(message: "Hello, world!")).to be
    end
  end

  describe "GET /" do
    xit "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
