require 'rails_helper'

RSpec.describe "imagefiles/index", type: :view do
  before(:each) do
    assign(:imagefiles, [
      Imagefile.create!(
        title: "Title"
      ),
      Imagefile.create!(
        title: "Title"
      )
    ])
  end

  it "renders a list of imagefiles" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
