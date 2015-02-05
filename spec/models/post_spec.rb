require 'rails_helper'

describe Post do
  it "should not create without required attributes" do
    post = Post.new
    hasCreated = post.save
    expect(hasCreated).to be false
  end

  it "should create a valid post" do
    post = Post.new({:title=>"first article", :content=>"content..."})
    hasCreated = post.save
    expect(hasCreated).to be true
  end

  it "should store title into a correct slug" do
    post = Post.new({:title=>"first article", :content=>"content..."})
    post.save
    expect(post.slug).to eq "first-article"
  end
end
