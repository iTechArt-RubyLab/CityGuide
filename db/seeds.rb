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
                      { is_admin: false, email: 'jhonklin@gmail.com', password: '987654321' }])
organizations = Organization.create!([
                                       {
                                         title: 'Winter palace', min_price: 12.9, min_time: 90, price_one_hour: 12.9, price_two_hours: 12.9, start_work: '10:30', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'palace square 2', latitude: 59.940208, longitude: 30.312761
                                           }
                                       },
                                       {
                                         title: 'Russian museum', min_price: 7.74, min_time: 90, price_one_hour: 7.74, price_two_hours: 7.74, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'engineering st.,4', latitude: 59.938471, longitude: 30.332256
                                           }
                                       },
                                       {
                                         title: 'Shadow museum', min_price: 3.23, min_time: 60, price_one_hour: 3.23, price_two_hours: 3.23, start_work: '11:00', end_work: '22:00', type_of_services: 0, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Bolshaya Konyushennaya st., 5A', latitude: 59.9403356, longitude: 30.3217737
                                           }
                                       },
                                       {
                                         title: 'Museum of Russian Railways', min_price: 3.8706, min_time: 60, price_one_hour: 3.8706, price_two_hours: 3.8706, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Library lane 4', latitude: 59.905497, longitude: 30.297437
                                           }
                                       },
                                       {
                                         title: 'Magic Museum', min_price: 7.7411, min_time: 60, price_one_hour: 7.7411, price_two_hours: 7.7411, start_work: '10:00', end_work: '21:00', type_of_services: 0, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Nevsky Prospect 74', latitude: 59.932973, longitude: 30.347337
                                           }
                                       },
                                       {
                                         title: 'Peter-Pavel Fortress', min_price: 6.451, min_time: 90, price_one_hour: 6.451, price_two_hours: 12.8, start_work: '10:00', end_work: '16:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             latitude: 59.950023, longitude: 30.316693
                                           }
                                       },
                                       {
                                         title: 'Ecological museum', min_price: 2.5804, min_time: 60, price_one_hour: 2.5804, price_two_hours: 2.5804, start_work: '10:00', end_work: '21:00', type_of_services: 0, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'university embankment,1', latitude: 59.942513, longitude: 30.305477
                                           }
                                       },
                                       {
                                         title: 'Puppet museum', min_price: 5.1608, min_time: 60, price_one_hour: 5.1608, price_two_hours: 5.1608, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'kamskaya st.,8', latitude: 59.94729, longitude: 30.259536
                                           }
                                       },
                                       {
                                         title: 'Music museum', min_price: 3.8706, min_time: 120, price_one_hour: 3.8706, price_two_hours: 3.8706, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Embankment of the Fontanka River,34', latitude: 59.936521, longitude: 30.345244
                                           }
                                       },
                                       {
                                         title: 'Museum of the Arctic and Antarctic', min_price: 4.5157, min_time: 90, price_one_hour: 4.5157, price_two_hours: 4.5157, start_work: '10:00', end_work: '17:30', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Marat street,24A', latitude: 59.927491, longitude: 30.353304
                                           }
                                       },
                                       {
                                         title: 'Communication museum', min_price: 3.8706, min_time: 60, price_one_hour: 3.8706, price_two_hours: 3.8706, start_work: '10:30', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'post office lane,4', latitude: 59.932609, longitude: 30.301698
                                           }
                                       },
                                       {
                                         title: 'Theater museum', min_price: 1.9353, min_time: 60, price_one_hour: 1.9353, price_two_hours: 2.201, start_work: '10:30', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Ostrovsky square,2', latitude: 59.931056, longitude: 30.336772
                                           }
                                       },
                                       {
                                         title: 'Museum of Defense and Siege of Leningrad', min_price: 5.1608, min_time: 60, price_one_hour: 5.1608, price_two_hours: 5.1608, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Salt lane,9', latitude: 59.944421, longitude: 30.340831
                                           }
                                       },
                                       {
                                         title: 'Chaliapins house museum', min_price: 2.5804, min_time: 30, price_one_hour: 2.5804, price_two_hours: 2.5804, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Novinsky boulevard,25', latitude: 55.756522, longitude: 37.583464
                                           }
                                       },
                                       {
                                         title: 'Cabinet of curiosities', min_price: 39.9959, min_time: 120, price_one_hour: 39.9959, price_two_hours: 39.9959, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'University embankment,3', latitude: 59.941497, longitude: 30.304576
                                           }
                                       },
                                       {
                                         title: 'Menshikov Palace', min_price: 7.7411, min_time: 60, price_one_hour: 7.7411, price_two_hours: 7.7411, start_work: '10:30', end_work: '17:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'University embankment,15', latitude: 59.93952, longitude: 30.295577
                                           }
                                       },
                                       {
                                         title: 'Pulkovo Observatory', min_price: 3.8706, min_time: 60, price_one_hour: 3.8706, price_two_hours: 3.8706, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Pulkovo Highway,65', latitude: 59.772249, longitude: 30.326194
                                           }
                                       },
                                       {
                                         title: 'Bread museum', min_price: 1.2902, min_time: 30, price_one_hour: 1.2902, price_two_hours: 1.2902, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Mikhaylov street,2', latitude: 59.953638, longitude: 30.360496
                                           }
                                       },
                                       {
                                         title: 'Naval museum', min_price: 3.2255, min_time: 60, price_one_hour: 3.2255, price_two_hours: 3.2255, start_work: '10:00', end_work: '18:00', type_of_services: 0, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Bolshaya morskay st.,69A', latitude: 59.930012, longitude: 30.293546
                                           }
                                       },
                                       {
                                         title: 'Peterhof', min_price: 19.3529, min_time: 180, price_one_hour: 19.3529, price_two_hours: 19.3529, start_work: '10:30', end_work: '18:00', type_of_services: 1, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Razvodnaya st.,2', latitude: 59.8861707, longitude: 29.9083259
                                           }
                                       },
                                       {
                                         title: 'Kazan Cathedral', min_price: 5.1608, min_time: 60, price_one_hour: 5.1608, price_two_hours: 5.1608, start_work: '09:00', end_work: '19:45', type_of_services: 1, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Kazan square,2', latitude: 59.934268, longitude: 30.324592
                                           }
                                       },
                                       {
                                         title: 'Royal village', min_price: 1.9098, min_time: 60, price_one_hour: 1.9098, price_two_hours: 1.9098, start_work: '9:00', end_work: '18:00', type_of_services: 1, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Sadovaya st.,7', latitude: 59.716949, longitude: 30.393938
                                           }
                                       },
                                       {
                                         title: 'River excursion', min_price: 6.3661, min_time: 60, price_one_hour: 6.3661, price_two_hours: 12.6, start_work: '00:00', end_work: '00:00', type_of_services: 1, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Embankment of the Fontanka River,44', latitude: 59.932463, longitude: 30.343147
                                           }
                                       },
                                       {
                                         title: 'Gatchina', min_price: 5.0929, min_time: 60, price_one_hour: 5.0929, price_two_hours: 10.1, start_work: '10:00', end_work: '18:00', type_of_services: 1, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Krasnoarmeysky avenue,1', latitude: 59.565267, longitude: 30.11081
                                           }
                                       },
                                       {
                                         title: 'Isakievsky cathedral', min_price: 5.0929, min_time: 60, price_one_hour: 5.0929, price_two_hours: 5.0929, start_work: '09:30', end_work: '18:00', type_of_services: 1, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Isakievskaya square,4', latitude: 59.934451, longitude: 30.305519
                                           }
                                       },
                                       {
                                         title: 'Scooter tour', min_price: 25.4645, min_time: 120, price_one_hour: 12.8, price_two_hours: 25.4645, start_work: '00:00', end_work: '00:00', type_of_services: 1, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Primorskaya metro station', latitude: 59.948319, longitude: 30.230539
                                           }
                                       },
                                       {
                                         title: 'Rooftop tour', min_price: 6.3661, min_time: 60, price_one_hour: 6.3661, price_two_hours: 12.6, start_work: '08:30', end_work: '22:00', type_of_services: 1, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Uprising square metro station', latitude: 59.931492, longitude: 30.360456
                                           }
                                       },
                                       {
                                         title: 'Baltic railway station', min_price: 2.9284, min_time: 60, price_one_hour: 2.9284, price_two_hours: 5.6, start_work: '00:00', end_work: '00:00', type_of_services: 2, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             latitude: 59.906813, longitude: 30.2987
                                           }
                                       },
                                       {
                                         title: 'Vitebsk railway station', min_price: 25.4645, min_time: 180, price_one_hour: 25.4645, price_two_hours: 25.4645, start_work: '00:00', end_work: '00:00', type_of_services: 2, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Zagorodny prospect,52', latitude: 59.9196753, longitude: 30.327311
                                           }
                                       },
                                       {
                                         title: 'Ladoga railway station', min_price: 12.7323, min_time: 180, price_one_hour: 12.7323, price_two_hours: 12.7323, start_work: '00:00', end_work: '00:00', type_of_services: 2, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Buharetskaya st.,23', latitude: 59.934172, longitude: 30.441598
                                           }
                                       },
                                       {
                                         title: 'River Station', min_price: 11.459, min_time: 180, price_one_hour: 11.459, price_two_hours: 11.459, start_work: '00:00', end_work: '00:00', type_of_services: 2, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Obuhovskoy oborony avenue,195', latitude: 59.86838, longitude: 30.464149
                                           }
                                       },
                                       {
                                         title: 'Central Bus Station', min_price: 8.9126, min_time: 180, price_one_hour: 8.9126, price_two_hours: 8.9126, start_work: '00:00', end_work: '00:00', type_of_services: 2, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Embankment of the Obvodny Canal,38', latitude: 59.913439, longitude: 30.357939
                                           }
                                       },
                                       {
                                         title: 'Moscow railway station', min_price: 11.459, min_time: 180, price_one_hour: 11.459, price_two_hours: 11.459, start_work: '00:00', end_work: '00:00', type_of_services: 2, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Nevsky avenue,85', latitude: 59.929912, longitude: 30.362251
                                           }
                                       },
                                       {
                                         title: 'BookCase hostel', min_price: 15.2787, min_time: 720, price_one_hour: 15.2787, price_two_hours: 15.2787, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Chernyshevskogo avenue, 17,', latitude: 59.944559, longitude: 30.358226
                                           }
                                       },
                                       {
                                         title: 'Gogol house hostel', min_price: 26.349, min_time: 720, price_one_hour: 26.349, price_two_hours: 26.349, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Embankment of the Griboedov Canal,69', latitude: 59.92624, longitude: 30.31384
                                           }
                                       },
                                       {
                                         title: 'Margarita Hotel', min_price: 29, min_time: 720, price_one_hour: 29, price_two_hours: 29, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Srednya Podyacheskaya,14', latitude: 59.9251811, longitude: 30.3018358
                                           }
                                       },
                                       {
                                         title: 'Bagration Hotel', min_price: 40.5, min_time: 720, price_one_hour: 40.5, price_two_hours: 40.5, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Sinopskaya embankment,66', latitude: 59.936114, longitude: 30.393816
                                           }
                                       },
                                       {
                                         title: 'Alexandr Hotel', min_price: 20.3, min_time: 720, price_one_hour: 20.3, price_two_hours: 20.3, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Stolyarny Lane,10/12', latitude: 59.927241, longitude: 30.312256
                                           }
                                       },
                                       {
                                         title: 'Hotel Lopatin', min_price: 21, min_time: 720, price_one_hour: 21, price_two_hours: 21, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Nevsky avenue,100', latitude: 59.931969, longitude: 30.355557
                                           }
                                       },
                                       {
                                         title: 'Hotel Moscow', min_price: 36.2, min_time: 720, price_one_hour: 36.2, price_two_hours: 36.2, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'sq. Alexander Nevsky, 2', latitude: 59.924552, longitude: 30.3863
                                           }
                                       },
                                       {
                                         title: 'Hotel St Petersburg', min_price: 40, min_time: 720, price_one_hour: 40, price_two_hours: 40, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Pirogovskaya emb., 5/2', latitude: 59.931969, longitude: 30.355557
                                           }
                                       },
                                       {
                                         title: 'Hotel gutenberg', min_price: 35.5, min_time: 720, price_one_hour: 35.5, price_two_hours: 35.5, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Grazhdanskaya st.,13/15', latitude: 59.928293, longitude: 30.312614
                                           }
                                       },
                                       {
                                         title: 'Aston Hotel', min_price: 42.5, min_time: 720, price_one_hour: 42.5, price_two_hours: 42.5, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Vladimirsky avenue,5', latitude: 59.931263, longitude: 30.347505
                                           }
                                       },
                                       {
                                         title: 'Marel Hotel', min_price: 48.5, min_time: 720, price_one_hour: 48.5, price_two_hours: 48.5, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Nevsky avenue,102', latitude: 59.931961, longitude: 30.355862
                                           }
                                       },
                                       {
                                         title: 'Orbit hotel', min_price: 29.5, min_time: 720, price_one_hour: 29.5, price_two_hours: 29.5, start_work: '00:00', end_work: '00:00', type_of_services: 3, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Nepokoryennyh avenue,4', latitude: 59.997905, longitude: 30.370139
                                           }
                                       },
                                       {
                                         title: 'AMO CUCINARE', min_price: 3.4, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Bolshaya Konyushennaya st., 5', latitude: 59.940426, longitude: 30.323921
                                           }
                                       },
                                       {
                                         title: 'BIRCH', min_price: 2.3, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Kirochnaya st.,3', latitude: 59.943891, longitude: 30.350799
                                           }
                                       },
                                       {
                                         title: 'MINDAL CAFE', min_price: 4.3, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Angliskaya emb., 26', latitude: 59.934249, longitude: 30.294538
                                           }
                                       },
                                       {
                                         title: 'TERRASSA', min_price: 1.3, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '08:00', end_work: '00:00', type_of_services: 4, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Kazanskaya st.,3A', latitude: 59.933747, longitude: 30.32263
                                           }
                                       },
                                       {
                                         title: 'VINCENT', min_price: 6.3, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Teatralnya sq.,16', latitude: 59.924786, longitude: 30.297388
                                           }
                                       },
                                       {
                                         title: 'Cake&Breakfast', min_price: 0.8, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '08:00', end_work: '22:00', type_of_services: 4, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Manezhny lane,1/4', latitude: 59.939988, longitude: 30.317652
                                           }
                                       },
                                       {
                                         title: 'Flying Dutchman', min_price: 2.8, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Mytnintskaya emb.,6', latitude: 59.9478, longitude: 30.305674
                                           }
                                       },
                                       {
                                         title: 'BAHROMA', min_price: 2.4, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '12:30', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Doblesty st.,35', latitude: 59.848955, longitude: 30.174946
                                           }
                                       },
                                       {
                                         title: 'Bona Capona', min_price: 4.4, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '10:30', end_work: '23:00', type_of_services: 4, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Komendansky avenue,2', latitude: 60.001318, longitude: 30.26572
                                           }
                                       },
                                       {
                                         title: 'Villa ZimaЛeto', min_price: 1.4, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:30', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Juzhnaja st.,8', latitude: 59.968328, longitude: 30.237074
                                           }
                                       },
                                       {
                                         title: 'Harvest', min_price: 2.9, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '12:30', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Dobrolubova avenue,11', latitude: 59.949521, longitude: 30.301668
                                           }
                                       },
                                       {
                                         title: 'Italy', min_price: 1.76, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '12:30', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Bolshaya morskaya st.,14', latitude: 59.935946, longitude: 30.317528
                                           }
                                       },
                                       {
                                         title: 'Jangle Cafe', min_price: 0.76, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '08:30', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Griboedova,18-20', latitude: 59.934239, longitude: 30.326879
                                           }
                                       },
                                       {
                                         title: 'Schengen', min_price: 1.76, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Kirochnaya st.,5', latitude: 59.943852, longitude: 30.35237
                                           }
                                       },
                                       {
                                         title: 'Barashki', min_price: 2.98, min_time: 0, price_one_hour: 0, price_two_hours: 0, start_work: '09:00', end_work: '23:00', type_of_services: 4, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Efimova st.,2', latitude: 59.926518, longitude: 30.320593
                                           }
                                       },
                                       {
                                         title: 'White theatre', min_price: 5.98, min_time: 60, price_one_hour: 5.68, price_two_hours: 11.3, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Kuznechny lane,5/2', latitude: 59.9270826, longitude: 30.3483289
                                           }
                                       },
                                       {
                                         title: 'Juventa theatre', min_price: 3.98, min_time: 60, price_one_hour: 3.68, price_two_hours: 7.3, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'emb. Moika River,48', latitude: 59.934543, longitude: 30.319861
                                           }
                                       },
                                       {
                                         title: 'Mariinskii Opera House', min_price: 7.6, min_time: 60, price_one_hour: 7.6, price_two_hours: 15.2, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Teatralnaya sq.,1', latitude: 59.92578, longitude: 30.296595
                                           }
                                       },
                                       {
                                         title: 'Alexandrinsky theatre', min_price: 5.2, min_time: 60, price_one_hour: 5.2, price_two_hours: 10.4, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Ostrovskogo sq.,6', latitude: 59.932125, longitude: 30.336626
                                           }
                                       },
                                       {
                                         title: 'Grand Theatre of puppet', min_price: 8.3, min_time: 60, price_one_hour: 8.3, price_two_hours: 16.6, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Nekrasova st.,10', latitude: 59.939036, longitude: 30.352051
                                           }
                                       },
                                       {
                                         title: 'St. Petersburg State Theater of Musical Comedy', min_price: 3.98, min_time: 60, price_one_hour: 3.68, price_two_hours: 7.3, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Italian st.,13', latitude: 59.936349, longitude: 30.333018
                                           }
                                       },
                                       {
                                         title: 'Lensoviet Theater', min_price: 5.7, min_time: 60, price_one_hour: 5.7, price_two_hours: 11.4, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Vladimirski avenue,12', latitude: 59.930189, longitude: 30.348232
                                           }
                                       },
                                       {
                                         title: 'Rain theatre', min_price: 3.98, min_time: 60, price_one_hour: 3.68, price_two_hours: 7.3, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Embankment of the Fontanka River, 130', latitude: 59.917726, longitude: 30.304672
                                           }
                                       },
                                       {
                                         title: 'Theatre of generations', min_price: 4.3, min_time: 60, price_one_hour: 4.3, price_two_hours: 8.6, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Lahtinskaya st.,25a', latitude: 59.964253, longitude: 30.297301
                                           }
                                       },
                                       {
                                         title: 'October theatre', min_price: 3.98, min_time: 60, price_one_hour: 3.68, price_two_hours: 7.3, start_work: '09:00', end_work: '22:00', type_of_services: 5, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Ligovsky avenue,6', latitude: 59.935738, longitude: 30.364882
                                           }
                                       },
                                       {
                                         title: 'Divo Ostrov', min_price: 1.25, min_time: 10, price_one_hour: 25, price_two_hours: 50, start_work: '11:00', end_work: '22:00', type_of_services: 6, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Kemskaya st.,1A', latitude: 59.972206, longitude: 30.254857
                                           }
                                       },
                                       {
                                         title: 'Gagarin park', min_price: 1.5, min_time: 10, price_one_hour: 30, price_two_hours: 60, start_work: '11:00', end_work: '22:00', type_of_services: 6, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Kuznetsovskaya st.,25', latitude: 59.867116, longitude: 30.335121
                                           }
                                       },
                                       {
                                         title: 'Ice rink', min_price: 6.3, min_time: 60, price_one_hour: 6.3, price_two_hours: 12.6, start_work: '09:00', end_work: '22:00', type_of_services: 6, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Potemkinskaya st.,4A', latitude: 59.946521, longitude: 30.368167
                                           }
                                       },
                                       {
                                         title: 'Aquapark peterland', min_price: 18.6, min_time: 60, price_one_hour: 18.6, price_two_hours: 37.2, start_work: '09:00', end_work: '23:00', type_of_services: 6, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Primorsky avenue,72', latitude: 59.98165, longitude: 30.210621
                                           }
                                       },
                                       {
                                         title: 'Park New Holland', min_price: 0, min_time: 20, price_one_hour: 0, price_two_hours: 0, start_work: '00:00', end_work: '00:00', type_of_services: 6, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'emb. Admiralty Canal,2/4', latitude: 59.929748, longitude: 30.289258
                                           }
                                       },
                                       {
                                         title: 'Alexander Garden', min_price: 0, min_time: 15, price_one_hour: 0, price_two_hours: 0, start_work: '00:00', end_work: '00:00', type_of_services: 6, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Admiralty avenue,12', latitude: 59.93551, longitude: 30.305437
                                           }
                                       },
                                       {
                                         title: 'Summer Garden', min_price: 0, min_time: 15, price_one_hour: 0, price_two_hours: 0, start_work: '00:00', end_work: '00:00', type_of_services: 6, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'emb. Swan Canal', latitude: 59.944968, longitude: 30.33522
                                           }
                                       },
                                       {
                                         title: 'Draw bridges', min_price: 0, min_time: 20, price_one_hour: 0, price_two_hours: 0, start_work: '1:30', end_work: '04:30', type_of_services: 6, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Palace bridge', latitude: 59.941195, longitude: 30.308162
                                           }
                                       },
                                       {
                                         title: 'Trampoline center', min_price: 5.0, min_time: 30, price_one_hour: 10, price_two_hours: 20, start_work: '09:30', end_work: '23:30', type_of_services: 6, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Zverinskaya st.,13/5', latitude: 59.953355, longitude: 30.292637
                                           }
                                       },
                                       {
                                         title: 'Mirror mize smile park', min_price: 3.5, min_time: 15, price_one_hour: 14, price_two_hours: 28, start_work: '09:30', end_work: '23:30', type_of_services: 6, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Nevsky avenue,3', latitude: 59.936863, longitude: 30.312395
                                           }
                                       },
                                       {
                                         title: 'Trampoline center', min_price: 5.0, min_time: 30, price_one_hour: 10, price_two_hours: 20, start_work: '09:30', end_work: '23:30', type_of_services: 6, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Zverinskaya st.,13/5', latitude: 59.953355, longitude: 30.292637
                                           }
                                       },
                                       {
                                         title: 'Excursion bureau Parus', min_price: 20, min_time: 20, price_one_hour: 20, price_two_hours: 20, start_work: '09:30', end_work: '22:00', type_of_services: 7, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Vosstanya st.,1', latitude: 59.931616, longitude: 30.360751
                                           }
                                       },
                                       {
                                         title: 'Seven seas', min_price: 25, min_time: 20, price_one_hour: 25, price_two_hours: 25, start_work: '09:30', end_work: '19:00', type_of_services: 7, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Bolshaya Pushkarskaya st.,41', latitude: 59.963227, longitude: 30.31107
                                           }
                                       },
                                       {
                                         title: 'Volkin SPB', min_price: 15, min_time: 15, price_one_hour: 15, price_two_hours: 15, start_work: '09:30', end_work: '19:00', type_of_services: 7, status: 2, user: users[4],
                                         place_attributes:
                                           {
                                             name: 'Nevsky avenue,85', latitude: 59.930188, longitude: 30.362052
                                           }
                                       },
                                       {
                                         title: 'Atis Tour', min_price: 30, min_time: 20, price_one_hour: 30, price_two_hours: 30, start_work: '09:00', end_work: '20:00', type_of_services: 7, status: 2, user: users[3],
                                         place_attributes:
                                           {
                                             name: 'Nevsky avenue,88', latitude: 59.932366, longitude: 30.351971
                                           }
                                       },
                                       {
                                         title: 'Central Bureau of Travel and Excursions', min_price: 20, min_time: 15, price_one_hour: 20, price_two_hours: 20, start_work: '09:00', end_work: '20:00', type_of_services: 7, status: 2, user: users[5],
                                         place_attributes:
                                           {
                                             name: 'Bolshaya Konushennaya st.,27', latitude: 59.937107, longitude: 30.322305
                                           }
                                       }
                                     ])
