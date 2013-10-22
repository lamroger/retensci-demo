desc "Import categories."
  task :import_categories => :environment do
    File.open("/home/lamr/retentionsciencedemo/mini_proj-categories.csv", "r").each do |line|
      category_id, name = line.strip.split("\t")
      u = Category.new(:name => name, :category_id => category_id)
      u.save
    end
  end

