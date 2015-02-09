require 'rails_helper'

RSpec.describe TagsController, :type => :controller do

  let(:valid_attributes) {
    { :title => "title", :content => "content", :tag_list => "tag1, tag2" }
  }

  let(:valid_session) { {} }

  xdescribe "GET index" do
    it "show all tags" do
      tags = ActsAsTaggableOn::Tag.all
      get :index, {}, valid_session
      expect(assigns(:tags)).to eq([tags])
    end
  end

  xdescribe "GET show" do
    it "assigns the requested tag as @tag with related posts" do
      post = Post.create! valid_attributes
      get :show, { :id => "1" }, valid_session
      expect(assigns(:tag)).to eq(post.tags.first)
      expect(assigns(:posts)).to eq(post)
    end
  end

end
