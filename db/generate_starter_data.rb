require "faker"
require "date"
require "csv"

# we already provide a filled out media_seeds.csv file, but feel free to
# run this script in order to replace it and generate a new one
# run using the command:
# $ ruby db/generate_seeds.rb
# if satisfied with this new media_seeds.csv file, recreate the db with:
# $ rails db:reset
# doesn't currently check for if titles are unique against each other

CSV.open("db/media_seeds.csv", "w", :write_headers => true,
                                    :headers => ["category", "title", "creator", "publication_year", "description"]) do |csv|
  25.times do
    category = %w(album book).sample
    title = Faker::Coffee.blend_name
    creator = Faker::Name.name
    publication_year = rand(1919..2019)
    description = Faker::Lorem.sentence

    csv << [category, title, creator, publication_year, description]
  end
end
