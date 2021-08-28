# frozen_string_literal: true

require 'date'
require_relative 'lib/seo_news_about'

news = News.new(Seo.new)
news.title = 'Новости телеканал ВИККА'
news.date = Date.new(2021, 8, 24)
news.seo.seo_title = 'Новости дня'
news.seo.description = 'События в Украине и мире'
news.seo.keywords = %w[новости события сенсации]
p news

about = About.new(Seo.new)
about.phones = '+38 (063) 063-63-63'
about.address = 'Украина, 18005, Черкассы, ул. Ю. Ильенка, 27'
about.seo.seo_title = 'О нас'
about.seo.description = 'Контактная информация'
about.seo.keywords = ['адреса', 'телефоны', 'как найти', 'e-mail']
p about
