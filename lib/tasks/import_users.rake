desc "Import users." 
  task :import_users => :environment do
    File.open("/home/lamr/retentionsciencedemo/mini_proj-users.csv", "r").each do |line|
      user_id, name = line.strip.split("\t")
      u = User.new(:name => name, :user_id => user_id)
      u.save
    end
  end
