Role.create(character_name: "Freddie")
Role.create(character_name: "Sprout")
Role.create(character_name: "Buddy")

Audition.create(actor: "Actor1", location: "Location1", phone: '111', hired: true, role_id: 1)
Audition.create(actor: "Actor2", location: "Location2", phone: '222', hired: true, role_id: 2)
Audition.create(actor: "Actor3", location: "Location3", phone: '333', hired: false, role_id: 2)
