require 'rails_helper'

RSpec.describe "imagefiles/new", type: :view do
  before(:each) do
    assign(:imagefile, Imagefile.new(
      title: "MyString"
    ))
  end

  it "renders new imagefile form" do
    render

    assert_select "form[action=?][method=?]", imagefiles_path, "post" do

      assert_select "input[name=?]", "imagefile[title]"
    end
  end
end
