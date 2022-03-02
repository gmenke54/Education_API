# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'coding-challenge.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Student.new
  t.f_name = row['FIRST NAME']
  t.l_name = row['LAST NAME']
  t.initial = row['MIDDLE INITIAL']
  t.prefix = row['PREFIX']
  t.address_1 = row['ADDRESS 1']
  t.address_2 = row['ADDRESS 2']
  t.city = row['CITY']
  t.state = row['STATE']
  t.zip = row['ZIP CODE']
  t.education = row['EDUCATION']
  t.income = row['ESTIMATED INCOME']
  t.save
  puts "#{t.f_name}, #{t.l_name} saved"
end

puts "There are now #{Student.count} rows in the transactions table"