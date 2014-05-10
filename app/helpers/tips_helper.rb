module TipsHelper
  require 'country_lookup'

  def flag_img(country)
    image_tag(COUNTRIES[country])
  end

  def can_tip?(match)
    match.first_team.present? && match.second_team.present? && match.not_started?
  end

  def btn_active_class(tip, team_id)
    tip.team_id == team_id ? 'active' : ''
  end
end
