<<<<<<< HEAD
# frozen_string_literal: true

require 'rails_helper'

# RSpec.describe('points/show', type: :view) do
#   before do
#     @point = assign(:point, Point.create!(
#                               member_id: 2,
#                               event_id: 3
#                             )
#     )
#   end
# end
=======
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('points/show', type: :view) do
  before do
    @point = assign(:point, Point.create!(
                              member_id: 2,
                              event_id: 3
                            )
    )
  end
end
>>>>>>> ca2d4c5d200661b76911e4a5740516c5d9f1bd02
