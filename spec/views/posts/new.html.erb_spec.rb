require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :name => "MyString",
      :text => "MyString",
      :image => "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[name]"

      assert_select "input[name=?]", "post[text]"

      assert_select "textarea[name=?]", "post[image]"
    end
  end
end
