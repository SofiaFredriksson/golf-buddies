User.destroy_all
Club.destroy_all
Review.destroy_all





u1 = User.create(first_name: "Sofia", last_name: "Fredriksson", bio: "I have been golfing for 3 years and i enjoy it very much", handicap: 32)
u2 = User.create(first_name: "Kalle", last_name: "Silje", bio: "Golfing is my life", handicap: 12.5)
u3 = User.create(first_name: "Elisabet", last_name: "Silje", bio: "I'm recently retired and now i golf every day!'", handicap: 6)
u4 = User.create(first_name: "Luc", last_name: "Batty", bio: "I am fairly new to golf", handicap: 34)
u5 = User.create(first_name: "Ricky", last_name: "MacCaw", bio: "I have just started playing!", handicap: 36)

c1 = Club.create(name: "Roehampton Club", info: "London's closest club", location: "Roehampton, United Kingdom")
c2 = Club.create(name: "Torekov GK", info: "Sweden's most beautiful Links", location: "Torekov, Sweden")
c3 = Club.create(name: "Royal St. George's Golf Club", info: "Amongst the world's leading golf clubs", location: "Kent, United Kingdom")
c4 = Club.create(name: "Rättvik GK", info: "A beautiful club close to Siljan", location: "Rättvik, Sweden")
c5 = Club.create(name: "Richmond Park Golf Club", info: "Two 18 hole golf courses close to central London", location: "Richmond, United Kingdom")


Review.create(content: "Beautiful club, very friendly staff", rank: 8, user: u1, club: c1)
Review.create(content: "Rude staff, very dissapointing experience", rank: 2, user: u2, club: c2)
r3 = Review.create(content: "Gorgeous course, good value for money", rank: 9, user: u3, club: c4)
r4 = Review.create(content: "Expensive green fee but a very memorable experience playing this historical course!", rank: 8, user: u4, club: c3)
r5 = Review.create(content: "Average experience, very busy!", rank: 5, user: u5, club: c5)
r6 = Review.create(content: "Very busy but a good course for beginners", rank: 7, user: u1, club: c5)
r7 = Review.create(content: "Great day out playing with the whole family, would highly recommend!", rank: 10, user: u2, club: c4)
r8 = Review.create(content: "The greens need some work, it has been a dry summer and you can tell that the course has suffered!", rank: 4, user: u3, club: c1)
r9 = Review.create(content: "A beautiful course - You can see the sea from every hole!", rank: 9, user: u4, club: c2)
