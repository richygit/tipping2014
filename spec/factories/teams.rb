FactoryGirl.define do
  factory :team do
    name { "Team" }
    code { "TEM" }
  end

  factory :another_team, class: Team do
    name { "Team2" }
    code { "TWO" }
  end
end
