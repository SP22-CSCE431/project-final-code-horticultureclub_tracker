require 'rails_helper'

RSpec.describe "imagefiles/edit", type: :view do
  before(:each) do
    @imagefile = assign(:imagefile, Imagefile.create!(
      title: "MyString"
    ))
  end

  it "renders the edit imagefile form" do
    render

    assert_select "form[action=?][method=?]", imagefile_path(@imagefile), "post" do

      assert_select "input[name=?]", "imagefile[title]"
    end
  end
end
