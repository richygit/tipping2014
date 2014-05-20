module TipsHelper
  require 'country_lookup'

  def flag_img(country)
    image_tag(COUNTRIES[country])
  end

  def can_tip?(match)
    match.first_team.present? && match.second_team.present? && match.not_started? && (match.result.first_team_score.nil? || match.result.second_team_score.nil? || match.result.winner_team_id.nil?)
  end

  def tip_btn_class(tip, team_id)
    return 'undecided' if team_id == nil
    classes = []
    classes.push('active') if tip.team_id == team_id
    classes.push('correct') if tip.team_id == team_id && tip.team_id == tip.result.winner_team_id
    classes.push('incorrect') if tip.team_id != tip.result.winner_team_id && tip.team_id == team_id && tip.result.winner_team_id != nil 
    classes.join(' ')
  end

  def stage(stage)
    case stage
    when 'G'
      return 'Group'
    when '16'
      return 'Round of 16'
    when 'QF'
      return 'Quarter Finals'
    when 'SF'
      return 'Semi Finals'
    when '3'
      return 'Third Place'
    when 'F'
      return 'Final'
    end
  end
end
