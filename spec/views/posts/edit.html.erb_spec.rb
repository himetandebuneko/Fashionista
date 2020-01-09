require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :name => "MyString",
      :text => "MyString",
      :image => "MyText"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[name]"

      assert_select "input[name=?]", "post[text]"

      assert_select "textarea[name=?]", "post[image]"
    end
  end
end
