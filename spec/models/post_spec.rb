require 'rails_helper'

describe Post do
  it "should store title into slug" do
    post = Post.new({:title=>"first article", :content=>"content..."})
    post.save
    expect(post.slug).to eq "first-article"
  end
end
