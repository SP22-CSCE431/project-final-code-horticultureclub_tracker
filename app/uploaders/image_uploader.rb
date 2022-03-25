class ImageUploader < Shrine
    Attacher.validate do
      validate_mime_type %w[image/jpeg image/png image/webp]
      validate_max_size  1*4096*4096
    end
end