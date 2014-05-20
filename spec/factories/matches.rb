FactoryGirl.define do
  factory :match do
    kickoff { Time.now }
    venue { create(:venue) }
    first_team { create(:team) }
    second_team { create(:another_team) } 
    stage { 'G' } 
  end
end
