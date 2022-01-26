# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([{ is_admin: true, email: 'admin1@gmail.com', password: '123456789' },
             { is_admin: true, email: 'admin2@gmail.com', password: '987654321' },
             { is_admin: true, email: 'admin3@gmail.com', password: 'abcdef' },
             { is_admin: false, email: 'ivanivanov@gmail.com', password: 'abcdefght' },
             { is_admin: false, email: 'testuser@gmail.com', password: '123456' },
             { is_admin: false, email: 'jhonklin@gmail.com', password: '987654321' },])
organizations = Organization.create!([
    {   
        title: 'Winter palace',min_price: 12.9,min_time: 90,price_one_hour: 12.9,price_two_hours: 12.9,start_work: '10:30',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'palace square 2',latitude: 59.940208,longitude: 30.312761
        }
    },
    {
        title: 'Russian museum',min_price: 7.74,min_time: 90,price_one_hour: 7.74,price_two_hours: 7.74,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'engineering st.,4',latitude: 59.938471,longitude: 30.332256
        }
    },
    {
        title: 'Shadow museum',min_price: 3.23,min_time: 60,price_one_hour: 3.23,price_two_hours: 3.23,start_work: '11:00',end_work: '22:00',type_of_services: 0,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Bolshaya Konyushennaya st., 5A',latitude: 59.9403356,longitude: 30.3217737
        }
    },
    {
        title: 'Museum of Russian Railways',min_price: 3.8706,min_time: 60,price_one_hour: 3.8706,price_two_hours: 3.8706,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Library lane 4',latitude: 59.905497,longitude: 30.297437
        }
    },
    {
        title: 'Magic Museum',min_price: 7.7411,min_time: 60,price_one_hour: 7.7411,price_two_hours: 7.7411,start_work: '10:00',end_work: '21:00',type_of_services: 0,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Nevsky Prospect 74',latitude: 59.932973,longitude: 30.347337
        }
    },
    {
        title: 'Peter-Pavel Fortress',min_price: 6.451,min_time: 90,price_one_hour: 6.451,price_two_hours: 12.8,start_work: '10:00',end_work: '16:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
           latitude: 59.950023,longitude: 30.316693
        }
    },
    {
        title: 'Ecological museum',min_price: 2.5804,min_time: 60,price_one_hour: 2.5804,price_two_hours: 2.5804,start_work: '10:00',end_work: '21:00',type_of_services: 0,status: 2,user: users[5],
        place_attributes:
        {
            name: 'university embankment,1',latitude: 59.942513,longitude: 30.305477
        }
    },
    {
        title: 'Puppet museum',min_price: 5.1608,min_time: 60,price_one_hour: 5.1608,price_two_hours: 5.1608,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[5],
        place_attributes:
        {
            name: 'kamskaya st.,8',latitude: 59.94729,longitude: 30.259536
        }
    },
    {
        title: 'Music museum',min_price: 3.8706,min_time: 120,price_one_hour: 3.8706,price_two_hours: 3.8706,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Embankment of the Fontanka River,34',latitude: 59.936521,longitude: 30.345244
        }
    },
    {
        title: 'Museum of the Arctic and Antarctic',min_price: 4.5157,min_time: 90,price_one_hour: 4.5157,price_two_hours: 4.5157,start_work: '10:00',end_work: '17:30',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Marat street,24A',latitude: 59.927491,longitude: 30.353304
        }
    },
    {
        title: 'Communication museum',min_price: 3.8706,min_time: 60,price_one_hour: 3.8706,price_two_hours: 3.8706,start_work: '10:30',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'post office lane,4',latitude: 59.932609,longitude: 30.301698
        }
    },
    {
        title: 'Theater museum',min_price: 1.9353,min_time: 60,price_one_hour: 1.9353,price_two_hours: 2.201,start_work: '10:30',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Ostrovsky square,2',latitude: 59.931056,longitude: 30.336772
        }
    },
    {
        title: 'Museum of Defense and Siege of Leningrad',min_price: 5.1608,min_time: 60,price_one_hour: 5.1608,price_two_hours: 5.1608,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Salt lane,9',latitude: 59.944421,longitude: 30.340831
        }
    },
    {
        title: 'Chaliapins house museum',min_price: 2.5804,min_time: 30,price_one_hour: 2.5804,price_two_hours: 2.5804,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Novinsky boulevard,25',latitude: 55.756522,longitude: 37.583464
        }
    },
    {
        title: 'Cabinet of curiosities',min_price: 39.9959,min_time: 120,price_one_hour: 39.9959,price_two_hours: 39.9959,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'University embankment,3',latitude: 59.941497,longitude: 30.304576
        }
    },
    {
        title: 'Menshikov Palace',min_price: 7.7411,min_time: 60,price_one_hour: 7.7411,price_two_hours: 7.7411,start_work: '10:30',end_work: '17:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'University embankment,15',latitude: 59.93952,longitude: 30.295577
        }
    },
    {
        title: 'Pulkovo Observatory',min_price: 3.8706,min_time: 60,price_one_hour: 3.8706,price_two_hours: 3.8706,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Pulkovo Highway,65',latitude: 59.772249,longitude: 30.326194
        }
    },
    {
        title: 'Bread museum',min_price: 1.2902,min_time: 30,price_one_hour: 1.2902,price_two_hours: 1.2902,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Mikhaylov street,2',latitude: 59.953638,longitude: 30.360496
        }
    },
    {
        title: 'Naval museum',min_price: 3.2255,min_time: 60,price_one_hour: 3.2255,price_two_hours: 3.2255,start_work: '10:00',end_work: '18:00',type_of_services: 0,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Bolshaya morskay st.,69A',latitude: 59.930012,longitude: 30.293546
        }
    },
    {
        title: 'Peterhof',min_price: 19.3529,min_time: 180,price_one_hour: 19.3529,price_two_hours: 19.3529,start_work: '10:30',end_work: '18:00',type_of_services: 1,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Razvodnaya st.,2',latitude: 59.8861707,longitude: 29.9083259
        }
    },
    {
        title: 'Kazan Cathedral',min_price: 5.1608,min_time: 60,price_one_hour: 5.1608,price_two_hours: 5.1608,start_work: '09:00',end_work: '19:45',type_of_services: 1,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Kazan square,2',latitude: 59.934268,longitude: 30.324592
        }
    },
    {
        title: 'Royal village',min_price: 1.9098,min_time: 60,price_one_hour: 1.9098,price_two_hours: 1.9098,start_work: '9:00',end_work: '18:00',type_of_services: 1,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Sadovaya st.,7',latitude: 59.716949,longitude: 30.393938
        }
    },
    {
        title: 'River excursion',min_price: 6.3661,min_time: 60,price_one_hour: 6.3661,price_two_hours: 12.6,start_work: '00:00',end_work: '00:00',type_of_services: 1,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Embankment of the Fontanka River,44',latitude: 59.932463,longitude: 30.343147
        }
    },
    {
        title: 'Gatchina',min_price: 5.0929,min_time: 60,price_one_hour: 5.0929,price_two_hours: 10.1,start_work: '10:00',end_work: '18:00',type_of_services: 1,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Krasnoarmeysky avenue,1',latitude: 59.565267,longitude: 30.11081
        }
    },
    {
        title: 'Isakievsky cathedral',min_price: 5.0929,min_time: 60,price_one_hour: 5.0929,price_two_hours: 5.0929,start_work: '09:30',end_work: '18:00',type_of_services: 1,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Isakievskaya square,4',latitude: 59.934451,longitude: 30.305519
        }
    },
    {
        title: 'Scooter tour',min_price: 25.4645,min_time: 120,price_one_hour: 12.8,price_two_hours: 25.4645,start_work: '00:00',end_work: '00:00',type_of_services: 1,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Primorskaya metro station',latitude: 59.948319,longitude: 30.230539
        }
    },
    {
        title: 'Rooftop tour',min_price: 6.3661,min_time: 60,price_one_hour: 6.3661,price_two_hours: 12.6,start_work: '08:30',end_work: '22:00',type_of_services: 1,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Uprising square metro station',latitude: 59.931492,longitude: 30.360456
        }
    },
    {
        title: 'Baltic railway station',min_price: 2.9284,min_time: 60,price_one_hour: 2.9284,price_two_hours: 5.6,start_work: '00:00',end_work: '00:00',type_of_services: 2,status: 2,user: users[3],
        place_attributes:
        {
            latitude: 59.906813,longitude: 30.2987
        }
    },
    {
        title: 'Vitebsk railway station',min_price: 25.4645,min_time: 180,price_one_hour: 25.4645,price_two_hours: 25.4645,start_work: '00:00',end_work: '00:00',type_of_services: 2,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Zagorodny prospect,52',latitude: 59.9196753,longitude: 30.327311
        }
    },
    {
        title: 'Ladoga railway station',min_price: 12.7323,min_time: 180,price_one_hour: 12.7323,price_two_hours: 12.7323,start_work: '00:00',end_work: '00:00',type_of_services: 2,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Buharetskaya st.,23',latitude: 59.934172,longitude: 30.441598
        }
    },
    {
        title: 'River Station',min_price: 11.459,min_time: 180,price_one_hour: 11.459,price_two_hours: 11.459,start_work: '00:00',end_work: '00:00',type_of_services: 2,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Obuhovskoy oborony avenue,195',latitude: 59.86838,longitude: 30.464149
        }
    },
    {
        title: 'Central Bus Station',min_price: 8.9126,min_time: 180,price_one_hour: 8.9126,price_two_hours: 8.9126,start_work: '00:00',end_work: '00:00',type_of_services: 2,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Embankment of the Obvodny Canal,38',latitude: 59.913439,longitude: 30.357939
        }
    },
    {
        title: 'Moscow railway station',min_price: 11.459,min_time: 180,price_one_hour: 11.459,price_two_hours: 11.459,start_work: '00:00',end_work: '00:00',type_of_services: 2,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Nevsky avenue,85',latitude: 59.929912,longitude: 30.362251
        }
    },
    {
        title: 'BookCase hostel',min_price: 15.2787,min_time: 720,price_one_hour: 15.2787,price_two_hours: 15.2787,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Chernyshevskogo avenue, 17,',latitude: 59.944559,longitude: 30.358226
        }
    },
    {
        title: 'Gogol house hostel',min_price: 26.349,min_time: 720,price_one_hour: 26.349,price_two_hours: 26.349,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Embankment of the Griboedov Canal,69',latitude: 59.92624,longitude: 30.31384
        }
    },
    {
        title: 'Margarita Hotel',min_price: 29,min_time: 720,price_one_hour: 29,price_two_hours: 29,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Srednya Podyacheskaya,14',latitude: 59.9251811,longitude: 30.3018358
        }
    },
    {
        title: 'Bagration Hotel',min_price: 40.5,min_time: 720,price_one_hour: 40.5,price_two_hours: 40.5,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Sinopskaya embankment,66',latitude: 59.936114,longitude: 30.393816
        }
    },
    {
        title: 'Alexandr Hotel',min_price: 20.3,min_time: 720,price_one_hour: 20.3,price_two_hours: 20.3,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Stolyarny Lane,10/12',latitude: 59.927241,longitude: 30.312256
        }
    },
    {
        title: 'Hotel Lopatin',min_price: 21,min_time: 720,price_one_hour: 21,price_two_hours: 21,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Nevsky avenue,100',latitude: 59.931969,longitude: 30.355557
        }
    },
    {
        title: 'Hotel Moscow',min_price: 36.2,min_time: 720,price_one_hour: 36.2,price_two_hours: 36.2,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[4],
        place_attributes:
        {
            name: 'sq. Alexander Nevsky, 2',latitude: 59.924552,longitude: 30.3863
        }
    },
    {
        title: 'Hotel St Petersburg',min_price: 40,min_time: 720,price_one_hour: 40,price_two_hours: 40,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Pirogovskaya emb., 5/2',latitude: 59.931969,longitude: 30.355557
        }
    },
    {
        title: 'Hotel gutenberg',min_price: 35.5,min_time: 720,price_one_hour: 35.5,price_two_hours: 35.5,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[5],
        place_attributes:
        {
            name: 'Grazhdanskaya st.,13/15',latitude: 59.928293,longitude: 30.312614
        }
    },
    {
        title: 'Aston Hotel',min_price: 42.5,min_time: 720,price_one_hour: 42.5,price_two_hours: 42.5,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Vladimirsky avenue,5',latitude: 59.931263,longitude: 30.347505
        }
    },
    {
        title: 'Marel Hotel',min_price: 48.5,min_time: 720,price_one_hour: 48.5,price_two_hours: 48.5,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[3],
        place_attributes:
        {
            name: 'Nevsky avenue,102',latitude: 59.931961,longitude: 30.355862
        }
    },
    {
        title: 'Orbit hotel',min_price: 29.5,min_time: 720,price_one_hour: 29.5,price_two_hours: 29.5,start_work: '00:00',end_work: '00:00',type_of_services: 3,status: 2,user: users[4],
        place_attributes:
        {
            name: 'Nepokoryennyh avenue,4',latitude: 59.997905,longitude: 30.370139
        }
    },
])
