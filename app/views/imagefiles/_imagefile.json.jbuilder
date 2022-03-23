# frozen_string_literal: true

json.extract!(imagefile, :id, :member_id, :created_at, :updated_at)
json.url(imagefile_url(imagefile, format: :json))
