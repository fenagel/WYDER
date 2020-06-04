UniversitySubject.destroy_all
Bookmark.destroy_all
Program.destroy_all
Subject.destroy_all
User.destroy_all
University.destroy_all

user = User.create!(email: "bob@example.com", password: "123456")
uni = University.create!(name: "Technische Universität München", location: "Munich", kind: :publicly_owned)
user.update(university: uni)
uni.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"}
  ]
)
uni.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :msc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Computational Science and Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :msc,
      fee: 70_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :bsc,
      fee: 85_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :bsc,
      fee: 185_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

    }
  ]
)
user.programs << Program.find_by(name: "Computer Science")
user.programs << Program.find_by(name: "Medicine")
user.programs << Program.find_by(name: "Business Administration")
user.programs << Program.find_by(name: "Law")



user1 = User.create!(email: "alex@example.com", password: "123456")
uni1 = University.create!(name: "Westfälische Wilhelms-Universität Münster", location: "Münster", kind: :publicly_owned)
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
      fee: 450,
      video_url: "https://www.youtube.com/embed/C58J3PM-5-0",
      application_link: "https://www.uni-muenster.de/studieninteressierte/bewerbung/index.html",
      description: "CS is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :bsc,
      fee: 398,
      video_url: "https://www.youtube.com/embed/Pvjhrgk9sAY",
      application_link: "https://www.uni-muenster.de/studieninteressierte/bewerbung/index.html",
      description: "Business Adminstration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

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
      degree: :bsc,
      fee: 100_000
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :msc,
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
      degree: :bsc,
      fee: 250
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :msc,
      fee: 70_000
    },
    {
      name: "Ökotrophologie",
      subject: Subject.find_by(name: "Ökotrophologie"),
      degree: :msc,
      fee: 70_000
    }
  ]
)
user4.programs << Program.find_by(name: "Rocket Science")
user4.programs << Program.find_by(name: "Business Administration")
user4.programs << Program.find_by(name: "Ökotrophologie")



user5 = User.create!(email: "julia@example.com", password: "123456")
uni5 = University.create!(name: "University Ulm", location: "Ulm", kind: :publicly_owned)
user5.update(university: uni5)
uni5.subjects.create!(
  [
    {name: "Business Administration"}
  ]
)
uni5.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :bsc,
      fee: 400,
      video_url: "https://www.youtube.com/embed/844Yk-Smx4s",
      application_link: "https://www.uni-ulm.de/studium/bewerbung-und-immatrikulation/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user5.programs << Program.find_by(name: "Business Administration")







