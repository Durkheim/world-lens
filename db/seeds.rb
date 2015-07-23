require 'faker'


5.times do
  User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password", bio: Faker::Lorem.paragraph, avatar: Faker::Internet.url, private: [true, false].sample)
end

countries = ["Afghanistan",
"Albania",
"Algeria",
"American Samoa",
"Andorra",
"Angola",
"Anguilla",
"Antarctica",
"Antigua And Barbuda",
"Argentina",
"Armenia",
"Aruba",
"Australia",
"Austria",
"Azerbaijan",
"Bahamas",
"Bahrain",
"Bangladesh",
"Barbados",
"Belarus",
"Belgium",
"Belize",
"Benin",
"Bermuda",
"Bhutan",
"Bolivia",
"Bosnia And Herzegovina",
"Botswana",
"Bouvet Island",
"Brazil",
"British Indian Ocean Territory",
"Brunei Darussalam",
"Bulgaria",
"Burkina Faso",
"Burundi",
"Cambodia",
"Cameroon",
"Canada",
"Cape Verde",
"Cayman Islands",
"Central African Republic",
"Chad",
"Chile",
"China",
"Christmas Island",
"Cocos (keeling) Islands",
"Colombia",
"Comoros",
"Congo",
"Congo, The Democratic Republic Of The",
"Cook Islands",
"Costa Rica",
"Cote D'ivoire",
"Croatia",
"Cuba",
"Cyprus",
"Czech Republic",
"Denmark",
"Djibouti",
"Dominica",
"Dominican Republic",
"East Timor",
"Ecuador",
"Egypt",
"El Salvador",
"Equatorial Guinea",
"Eritrea",
"Estonia",
"Ethiopia",
"Falkland Islands (malvinas)",
"Faroe Islands",
"Fiji",
"Finland",
"France",
"French Guiana",
"French Polynesia",
"French Southern Territories",
"Gabon",
"Gambia",
"Georgia",
"Germany",
"Ghana",
"Gibraltar",
"Greece",
"Greenland",
"Grenada",
"Guadeloupe",
"Guam",
"Guatemala",
"Guinea",
"Guinea-bissau",
"Guyana",
"Haiti",
"Heard Island And Mcdonald Islands",
"Holy See (vatican City State)",
"Honduras",
"Hong Kong",
"Hungary",
"Iceland",
"India",
"Indonesia",
"Iran, Islamic Republic Of",
"Iraq",
"Ireland",
"Israel",
"Italy",
"Jamaica",
"Japan",
"Jordan",
"Kazakstan",
"Kenya",
"Kiribati",
"North Korea", "Democratic Peoples Republic Of",
"South Korea",
"Kosovo",
"Kuwait",
"Kyrgyzstan",
"Lao People's Democratic Republic",
"Latvia",
"Lebanon",
"Lesotho",
"Liberia",
"Libyan Arab Jamahiriya",
"Liechtenstein",
"Lithuania",
"Luxembourg",
"Macau",
"Macedonia, The Former Yugoslav Republic Of",
"Madagascar",
"Malawi",
"Malaysia",
"Maldives",
"Mali",
"Malta",
"Marshall Islands",
"Martinique",
"Mauritania",
"Mauritius",
"Mayotte",
"Mexico",
"Micronesia, Federated States Of",
"Moldova, Republic Of",
"Monaco",
"Mongolia",
"Montserrat",
"Montenegro",
"Morocco",
"Mozambique",
"Myanmar",
"Namibia",
"Nauru",
"Nepal",
"Netherlands",
"Netherlands Antilles",
"New Caledonia",
"New Zealand",
"Nicaragua",
"Niger",
"Nigeria",
"Niue",
"Norfolk Island",
"Northern Mariana Islands",
"Norway",
"Oman",
"Pakistan",
"Palau",
"Palestinian Territory, Occupied",
"Panama",
"Papua New Guinea",
"Paraguay",
"Peru",
"Philippines",
"Pitcairn",
"Poland",
"Portugal",
"Puerto Rico",
"Qatar",
"Reunion",
"Romania",
"Russian Federation",
"Rwanda",
"Saint Helena",
"Saint Kitts And Nevis",
"Saint Lucia",
"Saint Pierre And Miquelon",
"Saint Vincent And The Grenadines",
"Samoa",
"San Marino",
"Sao Tome And Principe",
"Saudi Arabia",
"Senegal",
"Serbia",
"Seychelles",
"Sierra Leone",
"Singapore",
"Slovakia",
"Slovenia",
"Solomon Islands",
"Somalia",
"South Africa",
"South Georgia And The South Sandwich Islands",
"Spain",
"Sri Lanka",
"Sudan",
"Suriname",
"Svalbard And Jan Mayen",
"Swaziland",
"Sweden",
"Switzerland",
"Syrian Arab Republic",
"Taiwan, Province Of China",
"Tajikistan",
"Tanzania, United Republic Of",
"Thailand",
"Togo",
"Tokelau",
"Tonga",
"Trinidad And Tobago",
"Tunisia",
"Turkey",
"Turkmenistan",
"Turks And Caicos Islands",
"Tuvalu",
"Uganda",
"Ukraine",
"United Arab Emirates",
"United Kingdom",
"United States",
"United States Minor Outlying Islands",
"Uruguay",
"Uzbekistan",
"Vanuatu",
"Venezuela",
"Viet Nam",
"Virgin Islands, British",
"Virgin Islands, U.s.",
"Wallis And Futuna",
"Western Sahara",
"Yemen",
"Zambia",
"Zimbabwe"]

countries.each do |country_name|
  Country.create!(name: country_name)
end

users = User.all

10.times do
  users.each do |user|
  user.visited_countries.create!(country: Country.all.sample)
  end
end

5.times do
  users.each do |user|
    Album.create!(name: Faker::Name.title, visited_country: user.visited_countries.sample)
  end
end

10.times do
  Album.all.each do |a|
    a.photos.create!(title: Faker::Name.title, description: Faker::Lorem.paragraph, filename: Faker::Avatar.image, poster: a.visited_country.user)
  end
end

Photo.all.each do |photo|
  2.times do 
    photo.comments.create!(text: Faker::Lorem.words(5), commenter: User.all.sample)
    end 
  end 

12.times do 
  Tag.create!(text: Faker::Lorem.word)
end

Photo.all.each do |photo|
  photo.photo_tags.create!(tag: Tag.all.sample)
end 


# User.all.each do |user|
#   users = User.all.select!(user) 
#   2.times do 
#     user.friendships.create!()
#   end 
# end 






