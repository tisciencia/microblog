require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  let(:valid_attributes) {
    { :title => "title", :content => "content" }
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all posts as @posts" do
      post = Post.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:posts)).to eq([post])
    end
  end

end
