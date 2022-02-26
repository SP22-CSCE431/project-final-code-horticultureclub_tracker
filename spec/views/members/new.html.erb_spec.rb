# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('members/new', type: :view) do
  before do
    assign(:member, Member.new(
                      name: 'MyString'
                    )
    )
  end

  it 'renders new member form' do
    render

    assert_select 'form[action=?][method=?]', members_path, 'post' do
      assert_select 'input[name=?]', 'member[name]'
    end
  end
end
