module TipsHelper
  require 'country_lookup'

  def flag_img(country)
    image_tag(COUNTRIES[country])
  end

  def can_tip?(match)
    match.first_team.present? && match.second_team.present? && match.not_started? && match.result.nil?
  end

  def tip_btn_class(tip, team_id)
    return 'undecided' if team_id == nil
    classes = []
    classes.push('active') if tip.team_id == team_id
    classes.push('correct') if tip.team_id == team_id && tip.result && tip.team_id == tip.result.winner_team_id
    classes.push('incorrect') if tip.result && tip.team_id != tip.result.winner_team_id && tip.team_id == team_id
    classes.join(' ')
  end
end
