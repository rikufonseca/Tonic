# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeds start..."
puts ""

puts "destroy datas"
User.destroy_all if Rails.env.development?
Service.destroy_all if Rails.env.development?
puts "Datas destroyed"
puts ""

puts "creating users..."
User.create!(
  email: "fonsecarika@gmail.com", password: "1234567890!6", admin: true
)
puts "Boss created"

User.create!(
  email: "loris.reynauda@gmail.com", password: "azerty", admin: true
)
puts "Loris created"
puts ""

s1 = Service.create!(name_gr: "ΑΠΛΟ",
              name_en: "BASIC",
              sub_name_en: "SHAPE AND COLOR",
              sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
              price: "10",
              category_en: "MANICURES",
              category_gr: "ΜΑΝΙΚΙΟΥΡ",
              sub_category_en: "NAIL POLISH",
              sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΑΠΛΟ",
                name_en: "BASIC",
                sub_name_en: "ULTIMATE MANICURE",
                sub_name_gr: "ULTIMATE MANICURE",
                price: "15",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "LONG-LASTING",
                sub_name_en: "SHAPE AND COLOR",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                price: "13",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "LONG-LASTING",
                sub_name_en: "ULTIMATE MANICURE",
                sub_name_gr: "ULTIMATE MANICURE",
                price: "18",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                sub_name_en: "SHAPE AND COLOR",
                price: "17",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ULTIMATE MANICURE",
                sub_name_en: "ULTIMATE MANICURE",
                price: "24",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΕΝΙΣΧΥΜΕΝΗ ΜΑΝΙΚΙΟΥΡ",
                sub_name_en: "STRENGTHENED MANICURE",
                price: "27",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
                name_en: "GEL - ACRYGEL",
                sub_name_gr: "ΦΥΣΙΚΗ ΕΝΙΣΧΥΣΗ ΤΖΕΛ",
                sub_name_en: "NATURAL ENHANCER",
                price: "30",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
                name_en: "GEL - ACRYGEL",
                sub_name_gr: "ΕΠΙΜΗΚΥΝΣΗ",
                sub_name_en: "EXTENSION",
                price: "55",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
                name_en: "GEL - ACRYGEL",
                sub_name_gr: "ΣΥΝΤΗΡΗΣΗ",
                sub_name_en: "MAINTENANCE",
                price: "35",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΑΠΛΟ",
                name_en: "BASIC",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                sub_name_en: "SHAPE AND COLOR",
                price: "10",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΑΠΛΟ",
                name_en: "BASIC",
                sub_name_gr: "ULTIMATE PEDICURE",
                sub_name_en: "ULTIMATE PEDICURE",
                price: "20",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "BASIC",
                sub_name_gr: "ULTIMATE PEDICURE",
                sub_name_en: "ULTIMATE PEDICURE",
                price: "23",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "BASIC",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                sub_name_en: "SHAPE AND COLOR",
                price: "13",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                sub_name_en: "SHAPE AND COLOR",
                price: "17",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ULTIMATE PEDICURE",
                sub_name_en: "ULTIMATE PEDICURE",
                price: "25",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΕΝΙΣΧΥΜΕΝΟ ΠΕΝΤΙΚΙΟΥΡ",
                sub_name_en: "STRENGTHENED PEDICURE",
                price: "30",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΘΕΡΑΠΕΥΤΙΚΟ",
                sub_name_en: "THERAPEUTIC",
                price: "35",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

puts "Seeds successfully finished !"
