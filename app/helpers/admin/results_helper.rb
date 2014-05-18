module Admin::ResultsHelper
  def team_name(team)
    team.present? ? team.name : 'Undecided'
  end
end
