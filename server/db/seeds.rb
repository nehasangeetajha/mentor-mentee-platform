ApiUser.destroy_all
Meetinginterval.destroy_all
Programminglanguage.destroy_all
Wish.destroy_all
users = ApiUser.create([
                {first_name: 'Mary', last_name: 'Black', city: 'Dublin', mentor: true, mentee: false, email: 'Test_email_1@example.com', password_digest: 'password1'}, 
              {first_name: 'Bob', last_name: 'Dylan', city: 'New York', mentor: true, mentee: true, email: 'Test_email_2@example.com', password_digest: 'password2'}, 
               {first_name: 'Jane', last_name: 'Smith', city: 'Edinburgh', mentor: false, mentee: true, email: 'Test_email3@example.com', password_digest: 'password3'}
               ])
Meetinginterval.create([{interval: 'weekly'}, {interval: 'daily'}])
Programminglanguage.create([{language: 'python'},{language: 'SCALA'}])

users.first.wishes.create([{available_offline: false, available_online: true, goal: 'Code real good'}])
users.second.wishes.create([{available_offline: true, available_online: true, goal: 'Get smarter'}])
users.first.wishes.create([{available_offline: false, available_online: true, goal: 'Code really well in Python'}])

p "Created #{ApiUser.count} api_user entries"
p "Created #{Meetinginterval.count} meeting interval entries"
p "Created #{Programminglanguage.count} programming language entries"
p "Created #{Wish.count} wish entries"

