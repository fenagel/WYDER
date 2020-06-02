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
    }
  ]
)
user.programs << Program.find_by(name: "Computer Science")
