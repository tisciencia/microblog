require 'rails_helper'

describe Post do
  it "should not create without required attributes" do
    post = Post.new
    expect(post.save).to be false
  end

  it "should create a valid post" do
    post = Post.new({:title=>"first article", :content=>"content..."})
    expect(post.save).to be true
  end

  it "should store title into a correct slug" do
    post = Post.new({:title=>"first article", :content=>"content..."})
    post.save
    expect(post.slug).to eq "first-article"
  end

  it "should create a valid post with tags" do
    post = Post.new({:title=>"first article", :content=>"content...", :tag_list=>"tag1, tag2"})
    expect(post.save).to be true
  end
end
