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
    {name: "English"},
    {name: "Business Administration"},
    {name: "Law"}
  ]
)
uni.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/JG-mHQX8eZw",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Computational Science and Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "English",
      subject: Subject.find_by(name: "English"),
      degree: :MSc,
      fee: 70_000
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 85_000
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :BSc,
      fee: 185_000
    }
  ]
)
user.programs << Program.find_by(name: "Computer Science")
user.programs << Program.find_by(name: "English")
user.programs << Program.find_by(name: "Business Administration")
user.programs << Program.find_by(name: "Law")

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
      degree: :MSc,
      fee: 450
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
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
      degree: :MSc,
      fee: 10_000
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 703
    }
  ]
)
user2.programs << Program.find_by(name: "Rocket Science")
user2.programs << Program.find_by(name: "Business Administration")



user3 = User.create!(email: "lea@example.com", password: "123456")
uni3 = University.create!(name: "Uni Zurich", location: "Zurich", kind: :publicly_owned)
user3.update(university: uni3)
uni3.subjects.create!(
  [
    {name: "Rocket Science"},
    {name: "Business Administration"}
  ]
)
uni3.programs.create!(
  [
    {
      name: "Rocket Science",
      subject: Subject.find_by(name: "Rocket Science"),
      degree: :BSc,
      fee: 100_000
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 703
    }
  ]
)
user3.programs << Program.find_by(name: "Rocket Science")
user3.programs << Program.find_by(name: "Business Administration")



user4 = User.create!(email: "till@example.com", password: "123456")
uni4 = University.create!(name: "Uni Bremen", location: "Bremen", kind: :publicly_owned)
user4.update(university: uni4)
uni4.subjects.create!(
  [
    {name: "Rocket Science"},
    {name: "Business Administration"},
    {name: "Ökotrophologie"}
  ]
)
uni4.programs.create!(
  [
    {
      name: "Rocket Science",
      subject: Subject.find_by(name: "Rocket Science"),
      degree: :BSc,
      fee: 250
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 70_000
    },
    {
      name: "Ökotrophologie",
      subject: Subject.find_by(name: "Ökotrophologie"),
      degree: :MSc,
      fee: 70_000
    }
  ]
)
user4.programs << Program.find_by(name: "Rocket Science")
user4.programs << Program.find_by(name: "Business Administration")
user4.programs << Program.find_by(name: "Ökotrophologie")
