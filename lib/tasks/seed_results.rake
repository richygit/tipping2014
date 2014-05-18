namespace :results do
  desc 'Seed results'
  task :seed => :environment do
    def get_name(team)
      team.present? ? team.name : 'undecided'
    end

    Match.all.each do |match|
      result = Result.new
      result.match = match
      result.save!
      puts "Created result for #{match.id}: #{get_name(match.first_team)} vs #{get_name(match.second_team)}"
    end
  end
end
