desc "Import categories_items."
  task :import_categories_items => :environment do
    File.open("/home/lamr/retentionsciencedemo/mini_proj-categories_items.csv", "r").each do |line|
      item_id, category_id = line.strip.split("\t")
      u = CategoriesItem.new(:category_id => category_id, :item_id => item_id)
      u.save
    end
  end

