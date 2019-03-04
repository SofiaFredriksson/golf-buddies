User.destroy_all
Club.destroy_all
Review.destroy_all





u1 = User.create(first_name: "Sofia", last_name: "Fredriksson", bio: "I have been golfing for 3 years and i enjoy it very much", handicap: 32, country: "Sweden")
u2 = User.create(first_name: "Kalle", last_name: "Silje", bio: "Golfing is my life", handicap: 12.5, country: "United Kingdom")
u3 = User.create(first_name: "Elisabet", last_name: "Silje", bio: "I'm recently retired and now i golf every day!'", handicap: 6, country: "Switzerland")
u4 = User.create(first_name: "Luc", last_name: "Batty", bio: "I am fairly new to golf", handicap: 34, country: "Sweden")
u5 = User.create(first_name: "Ricky", last_name: "MacCaw", bio: "I have just started playing!", handicap: 36, country: "Sweden")

c1 = Club.create(name: "Roehampton Club", info: "London's closest club", location: "Roehampton", country: "United Kingdom", img_url: "https://www.world-of-leading-golf.com/files/DATEN/Bilder/Club%20Pictures/British%20Isles/Roehampton/Roe_1_webn.jpg")
c2 = Club.create(name: "Torekov GK", info: "Sweden's most beautiful Links", location: "Torekov", country: "Sweden", img_url: "http://www.togk.se/Media/Get/4523/_z8b8351.jpg")
c3 = Club.create(name: "Royal St. George's Golf Club", info: "Amongst the world's leading golf clubs", location: "Kent", country: "United Kingdom", img_url: "http://www.golfdaily.com/wp-content/uploads/SaintGeorges.jpg")
c4 = Club.create(name: "Rättvik GK", info: "A beautiful club close to Siljan", location: "Rättvik", country: "Sweden", img_url: "https://golfadvisor.brightspotcdn.com/dims4/default/1d4c7f3/2147483647/strip/true/crop/1024x661+0+11/resize/930x600!/quality/90/?url=https%3A%2F%2Fgolfadvisor.brightspotcdn.com%2F8c%2F7b%2F136a4a4e31ef3cb2aa28eda7fbf8%2F83736.jpg")
c5 = Club.create(name: "Richmond Park Golf Club", info: "Two 18 hole golf courses close to central London", location: "Richmond", country: "United Kingdom", img_url: "https://www.royalparks.org.uk/_media/images/richmond-park/richmond-park-golf-course/Richmond-Park-Golf-Course.jpg/w_768.jpg")


Review.create(content: "Beautiful club, very friendly staff", rank: 8, user: u1, club: c1)
Review.create(content: "Rude staff, very dissapointing experience", rank: 2, user: u2, club: c2)
r3 = Review.create(content: "Gorgeous course, good value for money", rank: 9, user: u3, club: c4)
r4 = Review.create(content: "Expensive green fee but a very memorable experience playing this historical course!", rank: 8, user: u4, club: c3)
r5 = Review.create(content: "Average experience, very busy!", rank: 5, user: u5, club: c5)
r6 = Review.create(content: "Very busy but a good course for beginners", rank: 7, user: u1, club: c5)
r7 = Review.create(content: "Great day out playing with the whole family, would highly recommend!", rank: 10, user: u2, club: c4)
r8 = Review.create(content: "The greens need some work, it has been a dry summer and you can tell that the course has suffered!", rank: 4, user: u3, club: c1)
r9 = Review.create(content: "A beautiful course - You can see the sea from every hole!", rank: 9, user: u4, club: c2)
