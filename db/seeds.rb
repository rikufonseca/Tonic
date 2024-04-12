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
User.destroy_all
Service.destroy_all
Jewelry.destroy_all
Artist.destroy_all
puts "Datas destroyed"
puts ""

puts "creating users..."
User.create!(
  email: "fonsecarikaaaaaa@gmail.com", password: "1234567890!6", admin: true
)
puts "Boss created"

User.create!(
  email: "loris.reynauddddddd@gmail.com", password: "azerty", admin: true
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
                sub_name_en: "REFILL EXTENSION",
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
                sub_name_en: "EXTENSION FULL SET/OVERLAY",
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

artist_one = Artist.create!(name_gr: "Βασίλης Γιαμπουράς",
               name_en: "Vasilis Giampouras",
               description_gr: "Ο Βασίλης Γιαμπουράς είναι καλλιτέχνης κοσμημάτων από τη Νάξο, ο οποίος βλέπει τη δημιουργία κοσμημάτων ως μέσο έκφρασης και μοιρασιάς της δημιουργικότητάς του. Μελέτησε σχεδίαση κοσμημάτων στο Λονδίνο στο Guildhall University, όπου συνειδητοποίησε τη ζωντάνια και την ψυχή που περιέχει κάθε κοσμηματοποιία. Το τιτάνιο μπορεί να δίνει υπέροχα χρώματα όταν οξειδώνεται, έτσι μπορεί να δημιουργήσει κοσμήματα σε όλα τα χρώματα του ουράνιου τόξου.",
               description_en: "Vassilis Giambouras is a jewelry artist from Naxos who sees jewelry creation as a means of expressing and sharing his creativity. He studied jewelery design in London at Guildhall University, where he realized the vibrancy and soul that every piece of jewelery contains. Titanium can give wonderful colors when it oxidizes, so it can create jewelry in all the colors of the rainbow.")
artist_two = Artist.create!(name_gr: "Μαρια Καναλε",
               name_en: "Maria Kanala",
               description_gr: "Η Μαρία Κανάλε είναι σχεδιάστρια-δημιουργός κοσμημάτων. Δημιουργεί αποκλειστικά κομμάτια, ένα μόνο στο κάθε είδος, γιατί θεωρεί ότι κάθε γυναίκα είναι μοναδική και της αξίζει να φορά κάτι που θα ανήκει μόνο στην ίδια. Τα υλικά που χρησιμοποιεί είναι  ημιπολύτιμες πέτρες διαφορετικών χρωμάτων, σχημάτων και μεγεθών, φίνα σύρματα κοσμημάτων επάργυρα και επίχρυσα, μεταλλικά νήματα και πολυμερικό πηλό. Η δουλειά της έχει δημοσιευθεί στην British Vogue, το Tattler, το New Media International και το British Elle.",
               description_en: "Maria Canale is a jewelry designer-creator. He creates exclusive pieces, only one of each type, because he believes that every woman is unique and deserves to wear something that will belong only to her. The materials she uses are semi-precious stones of different colors, shapes and sizes, fine silver-plated and gold-plated jewelry wires, metal threads and polymer clay. Her work has been published in British Vogue, Tattler, New Media International and British Elle.")

artist_three = Artist.create(name_en: "Tonic Collection",
              name_gr: "Tonic Collection",
              description_en: "Effortlessly chic, these silver treasures complement any nail color, blending simplicity with timeless beauty. Elevate your style with Tonic Collection and let your individuality shine.",
              description_gr: "Effortlessly chic, these silver treasures complement any nail color, blending simplicity with timeless beauty. Elevate your style with Tonic Collection and let your individuality shine.")

puts "all artists done"
puts "create jewelleries"

Jewelry.create!(name_en: "Colorful Flat Band Ring",
                name_gr: "Πολύχρωμο Δαχτυλίδι",
                description_gr: "Ανοδειωμένο δαχτυλίδι τιτανίου μπορεί να είναι ένα ανεπίστροφο κόσμημα για την καθημερινή σας εμφάνιση. Το φωτεινό του χρώμα σε αρμονία με τη λεπτομέρεια από ασήμι 925 προσθέτει ένα μοντέρνο τόνο απλότητας και κομψότητας στο στιλ σας. Είναι ένα υποαλλεργικό δαχτυλίδι που προσφέρει μια κολακευτική εφαρμογή στο χέρι μιας γυναίκας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Anodized titanium ring can be an irreplaceable piece of jewelry for your everyday look. Its bright color in harmony with the 925 silver detail adds a modern tone of simplicity and elegance to your style. It is a hypoallergenic ring that offers a flattering fit on a woman's hand. The jewelry comes in a luxurious gift box.",
                price: 80,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Ring",
                category_gr: "Τιτανίο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "172.JPG")

Jewelry.create!(name_en: "Multiple Band Ring",
                name_gr: "Δαχτυλίδι πολλαπλών ζωνών",
                description_gr: "Ανοδιωμένο δαχτυλίδι από τιτάνιο με πολλαπλές μπάντες. Είναι ένα δαχτυλίδι κορδέλα τιτανίου που κάνει δήλωση με χρωματικό συνδυασμό που εκπέμπει ισορροπία και αρμονία. Είναι ένα υποαλλεργικό δαχτυλίδι που προσφέρει μια κολακευτική εφαρμογή στο χέρι μιας γυναίκας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Anodized titanium ring with multiple bands. It's a statement titanium band ring with a color scheme that exudes balance and harmony. It is a hypoallergenic ring that offers a flattering fit on a woman's hand. The jewelry comes in a luxurious gift box.",
                price: 80,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Ring",
                category_gr: "Τιτανίο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "272.JPG")

Jewelry.create!(name_en: "Anniversary Ring",
                name_gr: "Επετειακό δαχτυλίδι",
                description_gr: "Μοναδικό Δαχτυλίδι Επετείου από Ανοδιωμένο Τιτάνιο με Ασημένια Μπάρα με 6 Ζιργκόν. Είναι ένα υποαλλεργικό δαχτυλίδι, κατάλληλο για ευαίσθητο δέρμα, που θα σας ακολουθήσει για ολόκληρη τη ζωή σας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Unique Anniversary Ring in Anodized Titanium with Silver Bar with 6 Zirconia. It is a hypoallergenic ring, suitable for sensitive skin, that will follow you for your entire life. The jewelry comes in a luxurious gift box.",
                price: 128,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Ring",
                category_gr: "Τιτανίο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "372.JPG")

Jewelry.create!(name_en: "Textured Cuff Bracelet",
                name_gr: "Βραχιόλι με ανάγλυφη μανσέτα",
                description_gr: "Το αμφιφυλόφιλο χειροποιητο βραχιόλι τιτανίου με οφέλη για την υγεία, σε γκρι χρώμα η πράσινο, είναι ένα στυλάτο αξεσουάρ που ενισχύει το στυλ σας και παράλληλα βοηθά στην ομαλή ροή ενέργειας στο σώμα. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "The bisexual handmade titanium bracelet with health benefits in gray or green is a stylish accessory that enhances your style while helping the smooth flow of energy in the body. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Bracelet",
                category_gr: "Βραχιόλι Τιτανίο",
                artist_id: artist_one.id,
                picture: "472.JPG")

Jewelry.create!(name_en: "Two Drops Earrings",
                name_gr: "Δύο Σταγόνες Σκουλαρίκια",
                description_gr: "Σκουλαρίκια από ανοδιωμένο τιτάνιο με δύο σταγόνες. Η τέλεια συνδυασμός μεταξύ δυναμικού στιλ και κομψότητας. Είναι υποαλλεργικά, κατάλληλα για ευαίσθητο δέρμα. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Anodized titanium double drop earrings. The perfect combination between dynamic style and elegance. They are hypoallergenic, suitable for sensitive skin. The jewelry comes in a luxurious gift box.",
                price: 108,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "572.JPG")

Jewelry.create!(name_en: "Μinimalistic Εarrings",
                name_gr: "Μινιμαλιστικά Σκουλαρίκια",
                description_gr: "Σκουλαρίκια με μινιμαλιστικό γεωμετρικό σχέδιο. Αυτά τα υποαλλεργικά σκουλαρίκια τιτανίου προσθέτουν ένα μοντέρνο και δυναμικό στοιχείο στο ντύσιμό σας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Earrings with a minimalist geometric design. These hypoallergenic titanium earrings add a modern and dynamic element to your outfit. The jewelry comes in a luxurious gift box.",
                price: 96,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "672.JPG")

Jewelry.create!(name_en: "Olive Leaf Earrings",
                name_gr: "Σκουλαρίκια Φύλλων Ελιάς",
                description_gr: "Ενα μικρό στολίδι που αντιπροσωπεύει την ευτυχία και πώς η φύση μας κάνει να αισθανόμαστε ειρήνη. Είναι υποαλλεργικά, κατάλληλα για ευαίσθητο δέρμα. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Earrings with a minimalist geometric design. These hypoallergenic titanium earrings add a modern and dynamic element to your outfit. The jewelry comes in a luxurious gift box.",
                price: 160,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "772.JPG")

Jewelry.create!(name_en: "Small Stud Earrings",
                name_gr: "Μικρά Σκουλαρίκια-Καρφάκια",
                description_gr: "Γεωμετρικού σχεδιασμού με ανοδιωμένο τιτάνιο και ασημένιο κοντάρι για καθημερινή χρήση, προσθέτοντας στον μινιμαλιστικό σας στιλ μια πιο πολύχρωμη διάθεση. Διαστάσεις: Διάμετρος 1,5 εκατοστά. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Geometric design with anodized titanium and silver pole for daily wear, adding a more colorful mood to your minimalist style. Dimensions: Diameter 1.5 cm. The jewelry comes in a luxurious gift box.",
                price: 48,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1072.JPG" && "1172.JPG")

Jewelry.create!(name_gr: "Επίπεδα Μεσαία Σκουλαρίκια Κρίκοι",
                name_en: "Flat Medium Hoop Earrings",
                description_gr: "Για την καθημερινή σας εμφάνιση. Ένα μοναδικό ζευγάρι σκουλαρίκια εμπνευσμένα από γεωμετρικό σχεδιασμό θα διακοσμήσει τα αυτιά σας. Είναι τόσο ελαφριά, υποαλλεργικά και πάντα στη μόδα. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Medium hoop earrings for your everyday look. A unique pair of earrings inspired by a geometric design will decorate your ears. They are so light, hypoallergenic and always in fashion. The jewelry comes in a luxurious gift box.",
                price: 84,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "872.JPG")

Jewelry.create!(name_en: "Stalactite Earrings",
                name_gr: "Σκουλαρίκια Σταλακτίτης",
                description_gr: "Σταλακτίτη με ανοδιωμένο τιτανίου, προσθέτει στον μινιμαλιστικό σας στιλ μια διακριτική διάθεση. Είναι τόσο ελαφριά, υποαλλεργικά και πάντα στη μόδα. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Stalactite with anodized titanium, adds a subtle mood to your minimalist style. They are so light, hypoallergenic and always in fashion. The jewelry comes in a luxurious gift box.",
                price: 64,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1372.JPG" && "1472.JPG")

Jewelry.create!(name_gr: "Μεγάλα Σκουλαρίκια Κρίκοι",
                name_en: "Big Hoop Earrings",
                description_gr: "Από τιτάνιο με ασημένια καρφίτσα σε σχήμα πεταλούδας. Εξαιρετικά ελαφριά μεταλλική κατασκευή. Ο διάμετρος του απλού σκουλαρικιού-κρίκου τιτανίου είναι 6,2 εκατοστά. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of titanium with a silver butterfly pin. Ultra-light metal construction. The diameter of the simple titanium hoop earring is 6.2 cm. The jewelry comes in a luxurious gift box.",
                price: 100,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1872.JPG")

Jewelry.create!(name_en: "Medium Hoop Earrings",
                name_gr: "Μεσαία Σκουλαρίκια Κρίκοι",
                description_gr: "Από τιτάνιο με ασημένια καρφίτσα σε σχήμα πεταλούδας. Εξαιρετικά ελαφριά μεταλλική κατασκευή. Ο διάμετρος του απλού σκουλαρικιού-κρίκου τιτανίου είναι 4,2 εκατοστά. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of titanium with a silver butterfly pin. Ultra-light metal construction. The diameter of the simple titanium hoop earring is 4.2 cm. The jewelry comes in a luxurious gift box.",
                price: 80,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1772.JPG")

Jewelry.create!(name_en: "3D Geometric Triangle Earrings",
                name_gr: "Σκουλαρίκια Γεωμετρικού Τριγώνου 3Δ",
                description_gr: "Από ανοδιωμένο τιτάνιο τα οποία έχουν αρχιτεκτονικό στιλ. Ένα σύγχρονο κονσεπτ στον σχεδιασμό κοσμημάτων που συνδυάζει δυναμισμό με κομψότητα. Κομμάτια με έντονα σχήματα προσθέτουν ένα ξεχωριστό και δυναμικό στιλ. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου. ",
                description_en: "Made of anodized titanium which have an architectural style. A modern concept in jewelry design that combines dynamism with elegance. Pieces with strong shapes add a distinct and dynamic style. The jewelry comes in a luxurious gift box.",
                price: 240,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1572.JPG")

Jewelry.create!(name_en: "3D Geometric Sphere Earrings",
                name_gr: "Σκουλαρίκια Γεωμετρικής Σφαίρας 3Δ",
                description_gr: "Από ανοδιωμένο τιτάνιο τα οποία έχουν αρχιτεκτονικό στιλ. Ένα σύγχρονο κονσεπτ στον σχεδιασμό κοσμημάτων που συνδυάζει δυναμισμό με κομψότητα. Κομμάτια με έντονα σχήματα προσθέτουν ένα ξεχωριστό και δυναμικό στιλ. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of anodized titanium which have an architectural style. A modern concept in jewelry design that combines dynamism with elegance. Pieces with strong shapes add a distinct and dynamic style. The jewelry comes in a luxurious gift box.",
                price: 200,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1672.JPG")

Jewelry.create!(name_en: "Circle And Triangle Shaped Earrings",
                name_gr: "Σκουλαρίκια Με Σχήμα Κύκλου Και Τριγώνου",
                description_gr: "Από τιτάνιο για την καθημερινή σας εμφάνιση. Μινιμαλιστικά γεωμετρικά σκουλαρίκια που προσθέτουν ένα μοντέρνο και δυναμικό στοιχείο στο ντύσιμό σας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου",
                description_en: "Made of titanium for your everyday look. Minimalist geometric earrings that add a modern and dynamic element to your outfit. The jewelry comes in a luxurious gift box",
                price: 76,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "2072.JPG")

Jewelry.create!(name_en: "Minimalist Geometric Earrings",
                name_gr: "Σκουλαρίκια Με Μινιμαλιστικό Σχέδιο",
                description_gr: "Αυτά τα υποαλλεργικά σκουλαρίκια τιτανίου προσθέτουν ένα μοντέρνο και δυναμικό στοιχείο στο ντύσιμό σας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "These hypoallergenic titanium earrings add a modern and dynamic element to your outfit. The jewelry comes in a luxurious gift box.",
                price: 80,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Earrings",
                category_gr: "Σκουλαρίκια Τιτανίο",
                artist_id: artist_one.id,
                picture: "1972.JPG")

Jewelry.create!(name_en: "Earrings With Red Poppy Flowers",
                name_gr: "Σκουλαρίκια Κρεμαστά Με Παπαρούνας",
                description_gr: "Από ασήμι και εμάγιε. Είναι σαν πραγματικές παπαρούνες, αφιερωμένη στην άνοιξη. Είναι από ασήμι (925°) και έχουν ζωγραφιστεί με εμάγιε σε θερμοκρασία 850°C. Η εντυπωσιακή λεπτομέρεια στο κέντρο του λουλουδιού είναι οι χρυσοπλατινωμένοι στήμονες της παπαρούνας, κάνοντάς το πιο ρεαλιστικό. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of silver and enamel. They are like real poppies, dedicated to spring. They are made of silver (925°) and painted with enamel at a temperature of 850°C. The striking detail in the center of the flower is the gold-plated poppy stamens, making it more realistic. The jewelry comes in a luxurious gift box.",
                price: 160,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Enamel Earrings",
                category_gr: "Σμάλτο Σκουλαρίκια",
                artist_id: artist_one.id,
                picture: "2272.JPG")

Jewelry.create!(name_en: "Adjustable Bright Bracelet",
                name_gr: "Ρυθμιζόμενο Λαμπερό Βραχιόλι",
                description_gr: "Από Υφασμένο Τιτάνιο που προσθέτει δυναμικό στιλ στο ντύσιμό σας. Στις Συλλογές Giampouras, χρησιμοποιούμε χρώματα και δημιουργούμε φωτεινές εικόνες που αντικατοπτρίζουν τις πιο θετικές πτυχές της ζωής. Το τιτάνιο μπορεί να δίνει υπέροχα χρώματα όταν οξειδώνεται. Επιπλέον, είναι βιοσυμβατό, μη τοξικό και υποαλλεργικό. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of Woven Titanium that adds dynamic style to your outfit. In Giampouras Collections, we use colors and create bright images that reflect the most positive aspects of life. Titanium can give wonderful colors when oxidized. In addition, it is biocompatible, non-toxic and hypoallergenic. The jewelry comes in a luxurious gift box.",
                price: 72,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Bracelet",
                category_gr: "Βραχιόλι Τιτανίο",
                artist_id: artist_one.id,
                picture: "3972.JPG")

Jewelry.create!(name_en: "Wide Arm Bracelet",
                name_gr: "Βραχιόλι Από Ευρεία Μπράτσα",
                description_gr: "Eκπέμπει ομορφιά και προστασία. Είναι βιοσυμβατό, μη τοξικό και υποαλλεργικό. Προσδίδει κλασική κομψότητα και μοναδικότητα στο στιλ σας. Είναι ένα ανοδιωμένο βραχιόλι από τιτάνιο με υφή που προσθέτει ένα πολύχρωμο καλλιτεχνικό στιλ στο ντύσιμο μιας γυναίκας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "It radiates beauty and protection. It is biocompatible, non-toxic and hypoallergenic. It adds classic elegance and uniqueness to your style. It is an anodized titanium bracelet with a texture that adds a colorful artistic style to a woman's outfit. The jewelry comes in a luxurious gift box.",
                price: 200,
                theme_en: "Timeless",
                theme_gr: "Ανεπίστροφο",
                category_en: "Titanium Bracelet",
                category_gr: "Βραχιόλι Τιτανίο",
                artist_id: artist_one.id,
                picture: "4072.JPG")

Jewelry.create!(name_en: "Blue Cherry Blossom Adjustable Ring",
                name_gr: "Δαχτυλίδι Με Μπλε Λουλούδια Κερασιάς",
                description_gr: "Από ασήμι (925°) ζωγραφισμενα με εμάγιε σε θερμοκρασία 850°C. Είναι δημιουργημένο με λεπτομέρεια. Η λεπτότητα και η σαφήνεια παρέχουν ένα ρεαλιστικό αποτέλεσμα. Η άνθιση της κερασιάς, ή Sakura, για τον Ιαπωνικό πολιτισμό, είναι ένα σύμβολο ανανέωσης και αισιοδοξίας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of silver (925°) painted with enamel at a temperature of 850°C. It is crafted with detail. Thinness and clarity provide a realistic result. The cherry blossom, or Sakura, for Japanese culture, is a symbol of renewal and optimism. The jewelry comes in a luxurious gift box.",
                price: 112,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Enamel Ring",
                category_gr: "Σμάλτο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "4172.JPG")

Jewelry.create!(name_en: "Red Big Poppy Flower Ring",
                name_gr: "Δαχτυλίδι με Μεγάλη Παπαρούνα",
                description_gr: "Από ασήμι (925), ζωγραφισμενο με εμάγιε σε θερμοκρασία 850°C. Η φύση είναι μια ατελείωτη πηγή έμπνευσης. Αφιερώνονται στην άνοιξη. Όταν το φοράτε, στέκεται στη μέση των δακτύλων σας, κοσμώντας το χέρι σας με έναν τρόπο που δεν ενοχλεί. Η εντυπωσιακή λεπτομέρεια στο κέντρο του λουλουδιού είναι οι χρυσοπλατινωμένοι στήμονες της παπαρούνας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of silver (925), painted with enamel at a temperature of 850°C. Nature is an endless source of inspiration. They are dedicated to spring. When you wear it, it sits between your fingers, adorning your hand in a non-obtrusive way. The striking detail in the center of the flower is the gold-plated poppy stamens. The jewelry comes in a luxurious gift box.",
                price: 300,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Enamel Ring",
                category_gr: "Σμάλτο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "4272.JPG")

Jewelry.create!(name_en: "Red Poppy Flower Ring",
                name_gr: "Δαχτυλίδι Με Στοίβαση Πεταλούδας",
                description_gr: "Για ευαίσθητες ψυχές και λάτρεις της φύσης. Είναι η τέλεια επιλογή για γυναίκες που αγαπούν απλά διακριτικά κοσμήματα. Διατίθεται σε άλλα χρώματα. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "For sensitive souls and nature lovers. It is the perfect choice for women who love simple, subtle jewelry. Available in other colors. The jewelry comes in a luxurious gift box.",
                price: 72,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Enamel Ring",
                category_gr: "Σμάλτο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "4372.JPG")

Jewelry.create!(name_en: "Red Medium Poppy Flower Ring",
                name_gr: "Δαχτυλίδι Με Μεσαία Παπαρούνα",
                description_gr: "Από Ασήμι (925)  και ζωγραφισμενο με εμάγιε σε θερμοκρασία 850°C. Ένα βελούδινο κόκκινο δαχτυλίδι με λεπτομερείς χρυσοπλατινωμένους στήμονες. Η ομορφιά και η δόνησή τους μπορούν να μας προσφέρουν την πιο δυνατή προστασία. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of Silver (925) and painted with enamel at a temperature of 850°C. A velvety red ring with detailed gold plated stamens. Their beauty and vibration can offer us the strongest protection. The jewelry comes in a luxurious gift box.",
                price: 220,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Enamel Ring",
                category_gr: "Σμάλτο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "4472.JPG")

Jewelry.create!(name_en: "Red Small Poppy Flower Ring",
                name_gr: "Δαχτυλίδι Με Μικρή Παπαρούνα",
                description_gr: "Από ασήμι (925°) και έχει ζωγραφιστεί με εμάγιε σε θερμοκρασία 850°C. Η εντυπωσιακή λεπτομέρεια στο κέντρο του λουλουδιού είναι οι χρυσοπλατινωμένοι στήμονες. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of silver (925°) and painted with enamel at a temperature of 850°C. The striking detail in the center of the flower is the gold-plated stamens. The jewelry comes in a luxurious gift box.",
                price: 160,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Enamel Ring",
                category_gr: "Σμάλτο Δαχτυλίδι",
                artist_id: artist_one.id,
                picture: "4572.JPG")

Jewelry.create!(name_en: "Statement Ring",
                name_gr: "Δαχτυλίδι Δήλωσης",
                description_gr: "Από Ανοξείδωτο Τιτάνιο με Μπάρα από Ασήμι και 10 Ζιρκόνια. Το τιτάνιο έχει τη δυνατότητα να προσδίδει υπέροχα χρώματα όταν οξειδώνεται, και έτσι δίνει τη δυνατότητα να δημιουργηθούν κοσμήματα σε όλα τα χρώματα του ουράνιου τόξου. Πρόκειται για ένα υποαλλεργικό δαχτυλίδι, κατάλληλο για ευαίσθητο δέρμα, που μπορεί να σας ακολουθήσει για ολόκληρη τη ζωή σας. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Stainless Titanium with Silver Bar and 10 Zirconia. Titanium has the ability to impart wonderful colors when oxidized, thus enabling the creation of jewelry in all the colors of the rainbow. It is a hypoallergenic ring, suitable for sensitive skin, that can follow you for your whole life. The jewelry comes in a luxurious gift box.",
                price: 160,
                theme_en: "Fashionable",
                theme_gr: "Μόδας",
                category_en: "Titanium Ring",
                category_gr: "Δαχτυλίδι Τιτανίο",
                artist_id: artist_one.id,
                picture: "4672.JPG")

puts "Giampouras done"
puts "start Kanale"

Jewelry.create!(name_en: "Volcano Earrings",
                name_gr: "Σκουλαρίκια Ηφαιστείου",
                description_gr: "Με μαύρο φίνο σύρμα κοσμημάτων και μεταλλικό νήμα με Mαργαριτάρια και πέτρα Λάβας. Μήκος 8,5 εκ., (χωρίς τον γάντζο), Πλάτος 2,5 εκ
                100% Χειροποίητα, μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "With black fine jewelry wire and metallic thread with Pearls and Lava stone. Length 8.5 cm, (without the hook), Width 2.5 cm
                100% Handmade, unique pair. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Lava Stone",
                theme_gr: "Πέτρα Λάβας",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "2472.JPG")

Jewelry.create!(name_en: "Floral Earrings",
                name_gr: "Λουλουδένια Σκουλαρίκια",
                description_gr: "Από χρυσό και ροζ χρυσό (επάργυρο) φίνο σύρμα κοσμημάτων με  πέτρες Αβεντουρινη. Λουλούδια από πολυμερικό πηλό. Μήκος 5 εκ, (χωρίς τον γάντζο) Πλάτος  έως 4 εκ., (περίπου). Γάντζοι επίχρυσοι. 100% Χειροποίητα, Μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of gold and rose gold (silver) fine jewelry wire with Aventurine stones. Polymer clay flowers. Length 5cm, (without the hook) Width up to 4cm, (approx). Gold-plated hooks. 100% Handmade, Unique pair. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "2672.JPG")

Jewelry.create!(name_en: "Floral Earrings",
                name_gr: "Λουλουδένια Σκουλαρίκια",
                description_gr: "Απο χρυσαφί φίνο σύρμα κοσμημάτων και μεταλλικό νήμα με  Quartz, Λουλούδια από πολυμερικό πηλό, Μήκος 9 εκ (χωρίς τον γάντζο) Πλάτος  έως 5,5 εκ., (περίπου), 100% Χειροποίητα, Μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of gold fine jewelry wire and metal thread with Quartz, Polymer clay flowers, Length 9cm (without the hook) Width up to 5.5cm, (approx), 100% Handmade, Unique pair. The jewelry comes in a luxurious gift box.",
                price: 75,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "2772.JPG")

Jewelry.create!(name_en: "Selma Earrings",
                name_gr: "Σελμα Σκουλαρίκια",
                description_gr: "Από χακί μεταλλικό νήμα και πράσινο σκούρο σύρμα κοσμημάτων με πέτρες Ουνακίτη. Μήκος 5 εκ., (χωρίς τον γάντζο) πλάτος 5 εκ. 100% Χειροποίητα, Μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of khaki metallic thread and dark green jewelry wire with Onakite stones. Length 5cm, (without the hook) width 5cm 100% Handmade, Unique pair. The jewelry comes in a luxurious gift box.",
                price: 100,
                theme_en: "Faith",
                theme_gr: "Πίστη",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "2572.JPG")

Jewelry.create!(name_en: "Floral Earrings",
                name_gr: "Λουλουδένια Σκουλαρίκια",
                description_gr: "Απο χρυσαφί φίνο σύρμα κοσμημάτων και μεταλλικό νήμα με Κρύσταλλα και Πέρλες. Λουλούδια από πολυμερικό πηλό. Μήκος 4 εκ, (χωρίς τον γάντζο). Πλάτος  έως 4 εκ., (περίπου). 100% Χειροποίητα, Μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of fine gold jewelry wire and metallic thread with Crystals and Pearls. Polymer clay flowers. Length 4 cm, (without the hook). Width up to 4 cm, (approx.). 100% Handmade, Unique pair. The jewelry comes in a luxurious gift box.",
                price: 140,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "2872.JPG")

Jewelry.create!(name_en: "Melissa Earrings",
                name_gr: "Melissa Σκουλαρίκια",
                description_gr: "Απο επάργυρο σύρμα κοσμημάτων με ασημί και χρυσό μεταλλικό νήμα. Μήκος 7,5 εκ., (χωρίς τον γάντζο), Πλάτος 3,7 εκ. 100% Xειροποίητα, Μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of silver-plated jewelry wire with silver and gold metallic thread. Length 7.5 cm, (without the hook), Width 3.7 cm. 100% Handmade, Unique pair. The jewelry comes in a luxurious gift box.",
                price: 100,
                theme_en: "Faith",
                theme_gr: "Πίστη",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "2372.JPG")

Jewelry.create!(name_en: "Isabella ring",
                name_gr: "Δακτυλίδι Isabella",
                description_gr: "Από χρυσό και ροζ χρυσό (επάργυρο) φίνο σύρμα κοσμημάτων με πέτρες Αβεντουρίνο, Λουλούδια από πολυμερικό πηλό. Νο 60-61 , 100% Χειροποίητο, μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Gold and rose gold (silver) fine jewelry wire with Aventurine stones, Polymer clay flowers. No 60-61, 100% Handmade, unique piece. The jewelry comes in a luxurious gift box.",
                price: 75,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Ring",
                category_gr: "Δακτυλίδι",
                artist_id: artist_two.id,
                picture: "2972.JPG")

Jewelry.create!(name_en: "Mara Ring",
                name_gr: "Δακτυλίδι Aμαρα",
                description_gr: "Από χρυσαφί σύρμα, κοσμημάτων και χρυσό μεταλλικό νήμα με μεγάλη πέτρα Αβεντουρίνη (4 Χ 3 εκ.,) , Νο. 60-61, 100% Xειροποίητο, Μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of gold wire, jewelry and gold metal thread with a large Aventurine stone (4 X 3 cm.), No. 60-61, 100% Handmade, Unique piece. The jewelry comes in a luxurious gift box.",
                price: 90,
                theme_en: "Faith",
                theme_gr: "Πίστη",
                category_en: "Ring",
                category_gr: "Δακτυλίδι",
                artist_id: artist_two.id,
                picture: "3572.JPG")

Jewelry.create!(name_en: "Grace earrings",
                name_gr: "Σκουλαρίκια Grace",
                description_gr: "Από χακί και χρυσό μεταλλικό νήμα, με μαργαριτάρια
                Μήκος 3,5 εκ, (χωρίς τον γάντζο) Πλάτος  3,5 εκ., (περίπου), 100% Χειροποίητα, Μοναδικό ζευγάρι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of khaki and gold metallic thread, with pearls
                Length 3.5cm, (without the hook) Width 3.5cm, (approx), 100% Handmade, Unique pair. The jewelry comes in a luxurious gift box.",
                price: 90,
                theme_en: "Faith",
                theme_gr: "Πίστη",
                category_en: "Earrings",
                category_gr: "Σκουλαρίκια",
                artist_id: artist_two.id,
                picture: "3772.JPG")

Jewelry.create!(name_en: "Isabella Necklace",
                name_gr: "Περιδέραιο Isabella",
                description_gr: "Από ιβουάρ και ροζ χρυσό (επάργυρο) φίνο σύρμα κοσμημάτων με  πέτρες Τουρμαλίνες κα Κοράλλια. Λουλούδια από πολυμερικό πηλό. Μήκος 42εκ,  Πλάτος  έως 10 εκ., (περίπου), 100% Xειροποίητο, Μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of ivory and rose gold (silver) fine jewelry wire with Tourmaline and Coral stones. Polymer clay flowers. Length 42cm, Width up to 10cm, (approx), 100% Handmade, Unique piece. The jewelry comes in a luxurious gift box.",
                price: 520,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Necklace",
                category_gr: "Περιδέραιο",
                artist_id: artist_two.id,
                picture: "3372.JPG")


Jewelry.create!(name_en: "Elodie Bracelet",
                name_gr: "Βραχιόλι Elodie",
                description_gr: "Από ιβουάρ και κόκκινο με κρύσταλλα Swarovski και παλιό υφασμάτινο κουμπί. Σύρματα κοσμημάτων (silver plated), Διαστάσεις Μήκος 17εκ, Πλάτος 2,5 εκ (περίπου), 100% χειροποίητο, Μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of ivory and red with Swarovski crystals and vintage fabric button. Jewelry wires (silver plated), Dimensions Length 17cm, Width 2.5cm (approx), 100% handmade, Unique piece. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Faith",
                theme_gr: "Πίστη",
                category_en: "Bracelet",
                category_gr: "Βραχιόλι",
                artist_id: artist_two.id,
                picture: "3472.JPG")

Jewelry.create!(name_en: "Volcano Ring",
                name_gr: "Δαχτυλίδι Ηφαιστείου",
                description_gr: "Από ασημί (επάργυρο) σύρμα κοσμημάτων και μεταλλικό νήμα με πέτρα Λάβας, Νο. 59-60, 100% Χειροποίητο, Μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of silver jewelry wire and metal thread with Lava stone, No. 59-60, 100% Handmade, Unique piece. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Lava Stone",
                theme_gr: "Πέτρα Λάβας",
                category_en: "Ring",
                category_gr: "Δαχτυλίδι",
                artist_id: artist_two.id,
                picture: "3072.JPG")

Jewelry.create!(name_en: "Margo ring",
                name_gr: "Δακτυλίδι Margo",
                description_gr: "Από χρυσό (επίχρυσο) φίνο σύρμα κοσμημάτων και μεταλλικό νήμα, με Κρύσταλλα, Λουλούδια από πολυμερικό πηλό, Νο 54-55, 100% Χειροποίητο, Μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of gold (gilded) fine jewelry wire and metal thread, with Crystals, Polymer Clay Flowers, No. 54-55, 100% Handmade, Unique piece. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Flowers",
                theme_gr: "Λουλουδένια",
                category_en: "Ring",
                category_gr: "Δαχτυλίδι",
                artist_id: artist_two.id,
                picture: "3272.JPG")

Jewelry.create!(name_en: "Selma bracelet",
                name_gr: "Βραχιόλι Selma",
                description_gr: "Από χακί μεταλλικό νήμα και πράσινο σκούρο σύρμα κοσμημάτων,  με πέτρα Rutilated Quartz, Μήκος 19 εκ., πλάτος 2,5 εκ. 100% Χειροποίητο, Μοναδικό κομμάτι. Το κοσμήμα έρχεται σε πολυτελή συσκευασία δώρου.",
                description_en: "Made of khaki metallic thread and dark green jewelry wire, with Rutilated Quartz stone, Length 19 cm, width 2.5 cm 100% Handmade, Unique piece. The jewelry comes in a luxurious gift box.",
                price: 120,
                theme_en: "Faith",
                theme_gr: "Πίστη",
                category_en: "Bracelet",
                category_gr: "Βραχιόλι",
                artist_id: artist_two.id,
                picture: "3172.JPG")

puts "Seeds successfully finished !"
