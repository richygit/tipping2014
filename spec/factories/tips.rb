FactoryGirl.define do
  factory :tip_with_associations, class: 'Tip' do
    user { create(:user) }
    match { create(:match) }
    team_id { create(:team).id }
  end
end
