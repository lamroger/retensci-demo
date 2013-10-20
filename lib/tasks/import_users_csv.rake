require 'csv'
namespace :import_users_csv do
  task :create_users => :environment do
    csv_text = File.read('/home/lamr/retentionsciencedemo/mini_proj-users.csv', { :col_sep => "\t" })
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      User.create!(row.to_hash)
    end  
  end
end 
