UniversitySubject.destroy_all
Bookmark.destroy_all
Program.destroy_all
Subject.destroy_all
User.destroy_all
University.destroy_all

user = User.create!(email: "bob@example.com", password: "123456")
uni = University.create!(name: "Oxford", location: "Oxford, UK", kind: :privately_owned)
user.update(university: uni)
uni.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "English"}
  ]
)
uni.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :msc,
      fee: 100_000
    },
    {
      name: "English",
      subject: Subject.find_by(name: "English"),
      degree: :msc,
      fee: 70_000
    }
  ]
)
user.programs << Program.find_by(name: "Computer Science")
user.programs << Program.find_by(name: "English")



user1 = User.create!(email: "alex@example.com", password: "123456")
uni1 = University.create!(name: "WWU - Münster", location: "Münster", kind: :publicly_owned)
user1.update(university: uni1)
uni1.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Business Administration"}
  ]
)
uni1.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :msc,
      fee: 450
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :bsc,
      fee: 398
    }
  ]
)
user1.programs << Program.find_by(name: "Computer Science")
user1.programs << Program.find_by(name: "Business Administration")



user2 = User.create!(email: "felix@example.com", password: "123456")
uni2 = University.create!(name: "Uni Mannheim", location: "Mannheim", kind: :publicly_owned)
user2.update(university: uni2)
uni2.subjects.create!(
  [
    {name: "Rocket Science"},
    {name: "Business Administration"}
  ]
)
uni2.programs.create!(
  [
    {
      name: "Rocket Science",
      subject: Subject.find_by(name: "Rocket Science"),
      degree: :msc,
      fee: 10_000
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :bsc,
      fee: 703
    }
  ]
)
user2.programs << Program.find_by(name: "Rocket Science")
user2.programs << Program.find_by(name: "Business Administration")
