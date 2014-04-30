module MatchesHelper
  require 'country_lookup'

  def flag_img(country)
    image_tag(COUNTRIES[country])
  end
end
