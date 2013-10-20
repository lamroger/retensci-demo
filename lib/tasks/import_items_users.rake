desc "Import items_users."
  task :import_items_users => :environment do
    File.open("/home/lamr/retentionsciencedemo/mini_proj-items_users.csv", "r").each do |line|
      user_id, item_id = line.strip.split("\t")
      u = ItemsUser.new(:user_id => user_id, :item_id => item_id)
      u.save
    end
  end

