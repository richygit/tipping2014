# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :result do
    match { create(:match) }
    first_team_score { 2 }
    second_team_score { 1 }
    winner_team_id { create(:team).id }
  end

  factory :result_no_scores, class: Result do
    match { create(:match) }
  end
end
