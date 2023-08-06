namespace :services do

  desc "initialize all services"
  task load_services: :environment do
    
    # Subcategories creation

    nail_polish = ServiceSubCategory.create!(title_en: "NAIL POLISH", title_gr: "ΜΕ ΒΕΡΝΙΚΙ")
    nail_art = ServiceSubCategory.create!(title_en: "NAILS ART", title_gr: "NAILS ART")
    extra = ServiceSubCategory.create!(title_en: "EXTRA", title_gr: "ΕΞΤΡΑ")
    
    # Categories creation
    manicure = ServiceCategory.create!(title_en: "MANICURES", title_gr: "ΜΑΝΙΚΙΟΥΡ")
    pedicure = ServiceCategory.create!(title_en: "PEDICURES", title_gr: "ΠΕΝΤΙΚΙΟΥΡ")

    # Options creation
    options = [
      { title_en: "French", title_gr: "ΓΑΛΛΙΚΟ", price: 3, service_sub_category_id: nail_art.id },
      { title_en: "DESIGNS", title_gr: "ΣΧΕΔΙΑ", price: 3, service_sub_category_id: nail_art.id },
      { title_en: "REMOVAL GEL - PERMANENT", title_gr: "ΑΦΑΙΡΕΣΗ ΤΖΕΛ - ΑΚΡΥΤΖΕΛ", price: 10, service_sub_category_id: extra.id },
      { title_en: "REMOVAL SEMI-PERMANENT", title_gr: "ΑΦΑΙΡΕΣΗ ΗΜΙΜΟΝΙΜΟΥ", price: 7, service_sub_category_id: extra.id },
      { title_en: "ONE NAIL RECONSTRUCTION", title_gr: "ΕΠΙΜΗΚΥΝΣΗ ΕΝΟΣ ΝΥΧΙΟΥ", price: 5, service_sub_category_id: extra.id },
      { title_en: "EYEBROWS", title_gr: "ΦΡΥΔΙΑ", description_en: "thread", description_gr: "κλωστή", price: 12, service_sub_category_id: extra.id },
      { title_en: "UPPER LIP", title_gr: "ΑΝΩ ΧΕΙΛΟΣ", price: 12, service_sub_category_id: extra.id }
    ]
    options.each { |option| Option.create!(option) }

    # Services creation
    services = [
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΑΠΛΟ",
        title_en: "BASIC",
        sub_title_en: "SHAPE AND COLOR",
        sub_title_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
        price: "10",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΑΠΛΟ",
        title_en: "BASIC",
        sub_title_en: "ULTIMATE MANICURE",
        sub_title_gr: "ULTIMATE MANICURE",
        price: "15",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΔΙΑΡΚΕΙΑΣ",
        title_en: "LONG-LASTING",
        sub_title_en: "SHAPE AND COLOR",
        sub_title_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
        price: "13",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΔΙΑΡΚΕΙΑΣ",
        title_en: "LONG-LASTING",
        sub_title_en: "ULTIMATE MANICURE",
        sub_title_gr: "ULTIMATE MANICURE",
        price: "18",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
        sub_title_en: "SHAPE AND COLOR",
        price: "17",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ULTIMATE MANICURE",
        sub_title_en: "ULTIMATE MANICURE",
        price: "24",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ΕΝΙΣΧΥΜΕΝΗ ΜΑΝΙΚΙΟΥΡ",
        sub_title_en: "STRENGTHENED MANICURE",
        description_gr: "Ενισχυμένη βάση στο φυσικό νύχι για ταλαιπωρημένα ή φθαρμένα νύχια με μεγαλύτερη διάρκεια αποτελέσματος",
        description_en: "reinforced base on the natural nail for damaged or worn nails with a longer-lasting result",
        price: "27",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
        title_en: "GEL - ACRYGEL",
        sub_title_gr: "ΦΥΣΙΚΗ ΕΝΙΣΧΥΣΗ ΤΖΕΛ",
        sub_title_en: "NATURAL ENHANCER",
        description_gr: "Λεπτή στρώση Τζέλ στο φυσικό νύχι",
        description_en: "Thin Gel's layer on the natural nail",
        price: "30",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
        title_en: "GEL - ACRYGEL",
        sub_title_gr: "ΤΟΠΟΘΕΤΗΣΗ",
        sub_title_en: "POSE",
        price: "55",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΤΖΕΛ - ΑΚΡΥΤΖΕΛ",
        title_en: "GEL - ACRYGEL",
        sub_title_gr: "ΣΥΝΤΗΡΗΣΗ",
        sub_title_en: "MAINTENANCE",
        price: "35",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΑΠΛΟ",
        title_en: "BASIC",
        sub_title_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
        sub_title_en: "SHAPE AND COLOR",
        price: "10",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΑΠΛΟ",
        title_en: "BASIC",
        sub_title_gr: "ULTIMATE PEDICURE",
        sub_title_en: "ULTIMATE PEDICURE",
        price: "20",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΔΙΑΡΚΕΙΑΣ",
        title_en: "BASIC",
        sub_title_gr: "ULTIMATE PEDICURE",
        sub_title_en: "ULTIMATE PEDICURE",
        price: "23",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΔΙΑΡΚΕΙΑΣ",
        title_en: "BASIC",
        sub_title_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
        sub_title_en: "SHAPE AND COLOR",
        price: "13",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ΣΧΗΜΑ ΚΑΙ ΧΡΩΜΑ",
        sub_title_en: "SHAPE AND COLOR",
        price: "17",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ULTIMATE PEDICURE",
        sub_title_en: "ULTIMATE PEDICURE",
        price: "25",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ΕΝΙΣΧΥΜΕΝΟ ΠΕΝΤΙΚΙΟΥΡ",
        sub_title_en: "STRENGTHENED PEDICURE",
        price: "30",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Women",
        genre_gr: "γυναίκες",
        title_gr: "ΗΜΙΜΟΝΙΜΟ",
        title_en: "SEMI-PERMANENT",
        sub_title_gr: "ΘΕΡΑΠΕΥΤΙΚΟ",
        sub_title_en: "THERAPEUTIC",
        description_gr: "Για άκρες που αντιμετωπίζουν προβλήματα σκλήρυνσης καλών μυκητίασεων. Αμεσα ανακούφιση, αντιμετώπιση αισθητικών και δερματολογικών προβλημάτων",
        description_en: "For edges that face problems of callus hardening and fungal infections. For immediate relief, treatment of aesthetic and dermatological problems",
        price: "35",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Men",
        genre_gr: "ΑΝΔΡΕΣ",
        title_gr: "ΜΑΝΙΚΙΟΥΡ",
        title_en: "MANICURE",
        price: "13",
        service_category_id: manicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Men",
        genre_gr: "ΑΝΔΡΕΣ",
        title_gr: "ΠΕΝΤΙΚΙΟΥΡ",
        title_en: "PEDICURE",
        price: "20",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      },
      {
        genre_en: "Men",
        genre_gr: "ΑΝΔΡΕΣ",
        title_gr: "ΘΕΡΑΠΕΥΤΙΚΟ",
        title_en: "THERAPEUTIC",
        price: "35",
        service_category_id: pedicure.id,
        service_sub_category_id: nail_polish.id
      }
    ]
    services.each { |service| Service.create!(service) }

    # Resume
    list_services
  end

  def list_services
    puts "Services & options available :"
    puts ""
    puts "Services :"
    Service.all.each { |service| puts "#{service.title_en}, #{service.sub_title_en}" }
    puts ""
    puts "Categories :"
    ServiceCategory.all.each { |category| puts category.title_en }
    puts ""
    puts "Sub Categories :"
    ServiceSubCategory.all.each { |sub_category| puts sub_category.title_en }
    puts ""
    puts "Options :"
    Option.all.each { |option| puts option.title_en }
  end
end
