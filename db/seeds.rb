User.destroy_all
Task.destroy_all

user1 = User.create(first_name:"Dom", last_name:"Szar", email:"dom@gmail.com", password:"abc")
user2 = User.create(first_name:"John", last_name:"Doe", email:"john@gmail.com", password:"abc")

task1 = Task.create(title:"Clean", body:"Clean the basement, bathroom, and bedroom.", complete:false, user_id: user1.id)
task2 = Task.create(title:"Cook", body:"Need to meal prep for the week.", complete:false, user_id: user1.id)
task3 = Task.create(title:"Read", body:"Read 3 chapters of my book", complete:false, user_id: user2.id)