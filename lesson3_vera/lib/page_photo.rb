# frozen_string_literal: true

class Page
  attr_accessor :title, :body
end

class PhotoCatalog < Page
  attr_accessor :photos
end
