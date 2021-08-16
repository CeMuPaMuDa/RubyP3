# frozen_string_literal: true
require_relative 'page_photo'

class Seo
  attr_accessor :seo_title, :description, :keywords
end

class News < Page
    def initialize(seo)
    @seo = seo
  end
  attr_accessor :date, :seo
end

class About < Page
  attr_accessor :phones, :address, :seo

  def initialize(seo)
    @seo = seo
  end
end
