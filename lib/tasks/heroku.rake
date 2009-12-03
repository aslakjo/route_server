desc 'Generate a .gems file for Heroku'
task :dotgems => :environment do
  File.open('.gems', 'w') do |f|
    Rails.configuration.gems.each do |gem|
      f.puts "#{gem.name} --version '#{gem.requirement}' --source #{gem.source}"
    end
  end
end