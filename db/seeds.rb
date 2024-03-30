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
Artist.destroy_all if Rails.env.development?
puts "Datas destroyed"
puts ""

puts "creating users..."
User.create!(
  email: "fonsecarikaaaa@gmail.com", password: "1234567890!6", admin: true
)
puts "Boss created"

User.create!(
  email: "loris.reynaudddd@gmail.com", password: "azerty", admin: true
)
puts "Loris created"
puts ""

s1 = Service.create!(name_gr: "ΑΠΛΟ",
              name_en: "BASIC",
              sub_name_en: "SHAPE AND COLOR",
              sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
              price: "8",
              category_en: "MANICURES",
              category_gr: "ΜΑΝΙΚΙΟΥΡ",
              sub_category_en: "NAIL POLISH",
              sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΑΠΛΟ",
                name_en: "BASIC",
                sub_name_en: "ULTIMATE MANICURE",
                sub_name_gr: "ULTIMATE MANICURE",
                price: "14",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "LONG-LASTING",
                sub_name_en: "SHAPE AND COLOR",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                price: "10",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "LONG-LASTING",
                sub_name_en: "ULTIMATE MANICURE",
                sub_name_gr: "ULTIMATE MANICURE",
                price: "16",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                sub_name_en: "SHAPE AND COLOR",
                price: "15",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ULTIMATE MANICURE",
                sub_name_en: "ULTIMATE MANICURE",
                price: "23",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΗΜΙΜΟΝΙΜΟ",
                name_en: "SEMI-PERMANENT",
                sub_name_gr: "ΕΝΙΣΧΥΜΕΝO ΜΑΝΙΚΙΟΥΡ",
                sub_name_en: "STRENGTHENED MANICURE",
                description_gr: "Ενισχυμένη βάση στο φυσικό νύχι για ταλαιπωρημένα ή φθαρμένα νύχια με μεγαλύτερη διάρκεια αποτελέσματος",
                description_en: "reinforced base on the natural nail for damaged or worn nails with a longer-lasting result",
                price: "25",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
                name_en: "GEL - ACRYGEL",
                sub_name_gr: "ΣΥΝΤΗΡΗΣΗ",
                sub_name_en: "NATURAL ENHANCER",
                description_gr: "Για nail art απαιτείται παραπάνω χρόνος. Παρακαλούμε ενημερώστε.",
                description_en: "For nail art, more time is required. Please update.",
                price: "35",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
                name_en: "GEL - ACRYGEL",
                sub_name_gr: "ΤΟΠΟΘΕΤΗΣΗ",
                sub_name_en: "POSE",
                price: "55",
                category_en: "MANICURES",
                category_gr: "ΜΑΝΙΚΙΟΥΡ",
                description_gr: "Για nail art απαιτείται παραπάνω χρόνος. Παρακαλούμε ενημερώστε.",
                description_en: "For nail art, more time is required. Please update.",
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
                name_en: "LONG-LASTING",
                sub_name_gr: "ULTIMATE PEDICURE",
                sub_name_en: "ULTIMATE PEDICURE",
                price: "22",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(name_gr: "ΔΙΑΡΚΕΙΑΣ",
                name_en: "LONG-LASTING",
                sub_name_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
                sub_name_en: "SHAPE AND COLOR",
                price: "12",
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
                sub_name_gr: "ΘΕΡΑΠΕΥΤΙΚΟ",
                sub_name_en: "THERAPEUTIC",
                description_gr: "Για άκρες που αντιμετωπίζουν προβλήματα σκλήρυνσης καλών μυκητίασεων. Αμεσα ανακούφιση, αντιμετώπιση αισθητικών και δερματολογικών προβλημάτων",
                description_en: "For edges that face problems of callus hardening and fungal infections. For immediate relief, treatment of aesthetic and dermatological problems",
                price: "27",
                category_en: "PEDICURES",
                category_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_category_en: "NAIL POLISH",
                sub_category_gr: "ΜΕ ΒΕΡΝΙΚΙ")

Service.create!(sub_name_gr: "ΜΑΝΙΚΙΟΥΡ",
                sub_name_en: "MANICURE",
                price: "14",
                category_en: "MEN",
                category_gr: "ΑΝΔΡΕΣ")

Service.create!(sub_name_gr: "ΠΕΝΤΙΚΙΟΥΡ",
                sub_name_en: "PEDICURE",
                price: "20",
                category_en: "MEN",
                category_gr: "ΑΝΔΡΕΣ")

Service.create!(sub_name_gr: "ΘΕΡΑΠΕΥΤΙΚΟ",
                sub_name_en: "THERAPEUTIC",
                price: "27",
                category_en: "MEN",
                category_gr: "ΑΝΔΡΕΣ")

Service.create!(sub_name_gr: "ΓΑΛΛΙΚΟ",
                sub_name_en: "FRENCH",
                price: "3",
                category_en: "NAILS ART",
                category_gr: "NAILS ART")

Service.create!(sub_name_gr: "ΣΧΕΔΙΑ",
                sub_name_en: "DESIGNS",
                price: "3",
                category_en: "NAILS ART",
                category_gr: "NAILS ART",
                description_en: "Start at")

Service.create!(sub_name_gr: "ΑΦΑΙΡΕΣΗ ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
                sub_name_en: "REMOVAL GEL - PERMANENT",
                price: "10",
                category_en: "EXTRA",
                category_gr: "ΕΞΤΡΑ")

Service.create!(sub_name_gr: "ΑΦΑΙΡΕΣΗ ΗΜΙΜΟΝΙΜΟΥ",
                sub_name_en: "REMOVAL SEMI-PERMANENT",
                price: "5",
                category_en: "EXTRA",
                category_gr: "ΕΞΤΡΑ")

Service.create!(sub_name_gr: "ΕΠΙΜΗΚΥΝΣΗ ΕΝΟΣ ΝΥΧΙΟΥ",
                sub_name_en: "ONE NAIL RECONSTRUCTION",
                price: "5",
                category_en: "EXTRA",
                category_gr: "ΕΞΤΡΑ")

Service.create!(sub_name_gr: "ΦΡΥΔΙΑ",
                sub_name_en: "EYEBROWS",
                description_en: "thread",
                description_gr: "κλωστή",
                price: "10",
                category_en: "EXTRA",
                category_gr: "ΕΞΤΡΑ")

Service.create!(sub_name_gr: "ΑΝΩ ΧΕΙΛΟΣ",
                sub_name_en: "UPPER LIP",
                description_en: "thread",
                description_gr: "κλωστή",
                price: "8",
                category_en: "EXTRA",
                category_gr: "ΕΞΤΡΑ")


Service.create!(sub_name_gr: "ΟΛΟ ΤΟ ΠΡΟΣΩΠΟ",
                sub_name_en: "FULL FACE",
                description_en: "thread",
                description_gr: "κλωστή",
                price: "14",
                category_en: "EXTRA",
                category_gr: "ΕΞΤΡΑ")

puts "all services done"
puts "start artists seeds"

Artist.create!(name_gr: "Βασίλης Γιαμπουράς",
               name_en: "Vasilis Giampouras",
               description_gr: "Ο Βασίλης Γιαμπουράς είναι καλλιτέχνης κοσμημάτων από τη Νάξο, ο οποίος βλέπει τη δημιουργία κοσμημάτων ως μέσο έκφρασης και μοιρασιάς της δημιουργικότητάς του. Μελέτησε σχεδίαση κοσμημάτων στο Λονδίνο στο Guildhall University, όπου συνειδητοποίησε τη ζωντάνια και την ψυχή που περιέχει κάθε κοσμηματοποιία. Το τιτάνιο μπορεί να δίνει υπέροχα χρώματα όταν οξειδώνεται, έτσι μπορεί να δημιουργήσει κοσμήματα σε όλα τα χρώματα του ουράνιου τόξου.",
               description_en: "Vassilis Giambouras is a jewelry artist from Naxos who sees jewelry creation as a means of expressing and sharing his creativity. He studied jewelery design in London at Guildhall University, where he realized the vibrancy and soul that every piece of jewelery contains. Titanium can give wonderful colors when it oxidizes, so it can create jewelry in all the colors of the rainbow.")
Artist.create!(name_gr: "Μαρια Καναλε",
               name_en: "Maria Kanala",
               description_gr: "Η Μαρία Κανάλε είναι σχεδιάστρια-δημιουργός κοσμημάτων. Δημιουργεί αποκλειστικά κομμάτια, ένα μόνο στο κάθε είδος, γιατί θεωρεί ότι κάθε γυναίκα είναι μοναδική και της αξίζει να φορά κάτι που θα ανήκει μόνο στην ίδια. Τα υλικά που χρησιμοποιεί είναι  ημιπολύτιμες πέτρες διαφορετικών χρωμάτων, σχημάτων και μεγεθών, φίνα σύρματα κοσμημάτων επάργυρα και επίχρυσα, μεταλλικά νήματα και πολυμερικό πηλό. Η δουλειά της έχει δημοσιευθεί στην British Vogue, το Tattler, το New Media International και το British Elle.",
               description_en: "Maria Canale is a jewelry designer-creator. He creates exclusive pieces, only one of each type, because he believes that every woman is unique and deserves to wear something that will belong only to her. The materials she uses are semi-precious stones of different colors, shapes and sizes, fine silver-plated and gold-plated jewelry wires, metal threads and polymer clay. Her work has been published in British Vogue, Tattler, New Media International and British Elle.")

Artist.create(name_en: "Tonic Collection",
              name_gr: "Tonic Collection",
              description_en: "Effortlessly chic, these silver treasures complement any nail color, blending simplicity with timeless beauty. Elevate your style with Tonic Collection and let your individuality shine.",
              description_gr: "Effortlessly chic, these silver treasures complement any nail color, blending simplicity with timeless beauty. Elevate your style with Tonic Collection and let your individuality shine.")

puts "all artists done"
puts "Seeds successfully finished !"
