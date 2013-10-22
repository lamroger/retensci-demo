desc "Import items."
  task :import_items => :environment do
    File.open("/home/lamr/retentionsciencedemo/mini_proj-items.csv", "r").each do |line|
      item_id, name = line.strip.split("\t")
      u = Item.new(:name => name, :item_id => item_id)
      u.save
    end
  end

