require 'rails_helper'

RSpec.describe "imagefiles/show", type: :view do
  before(:each) do
    @imagefile = assign(:imagefile, Imagefile.create!(
      title: "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
