
User.destroy_all
Cause.destroy_all
Event.destroy_all
Article.destroy_all
CauseInterest.destroy_all


u1 = User.create!(name: "user1", email: "u1@gmail.com", password: "pw1234", first_name: "Suzie", last_name: "Labrador")
u2 = User.create!(name: "user2", email: "u2@gmail.com", password: "pw1234", first_name: "Joey", last_name: "Boxer")
u3 = User.create!(name: "user3", email: "u3@gmail.com", password: "pw1234", first_name: "Maria", last_name: "Barker")

cause1 = Cause.create!(name:"Shelter Dog Adoption", description: "Adopt a shelter dog cause", user_id: u1.id)
cause2 = Cause.create!(name:"Donation Event", description: "Donate for the cause", user_id: u2.id)
cause3 = Cause.create!(name:"Bike ride for dogs", description: "Ride for the cause", user_id: u3.id)

event1 = Event.create!(name:"Rally for Puppies at the Park!", feed_url: "https://www.rallydogs.com/faq.cfm", cause_id: cause1.id)
event2 = Event.create!(name:"Donation drive event", feed_url: "https://www.google.com", cause_id: cause2.id)
event3 = Event.create!(name:"Bike event ", feed_url: "https://www.google.com", cause_id: cause3.id)


article1 = Article.create!(name:"Kale can be a puppy killer!", feed_url: "http://www.akc.org/expert-advice/nutrition/natural-foods/can-dogs-eat-kale/", cause_id: cause1.id)
article2 = Article.create!(name:"Donations are needed!", feed_url: "http://www.google.com", cause_id: cause2.id)
article3 = Article.create!(name:"Biking for your best friend!", feed_url: "http://www.google.com", cause_id: cause3.id)

ci1 =CauseInterest.create!(cause_id: cause1.id, user_id: u1.id)
ci2 =CauseInterest.create!(cause_id: cause2.id, user_id: u2.id)
ci3 =CauseInterest.create!(cause_id: cause3.id, user_id: u3.id)
