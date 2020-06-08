require "open-uri"

UniversitySubject.destroy_all
Bookmark.destroy_all
Program.destroy_all
Subject.destroy_all
User.destroy_all
University.destroy_all

user = User.create!(email: "bob@example.com", password: "123456")
uni = University.create!(name: "Technische Universität München", location: "Bavaria", kind: :publicly_owned)
uni_image = URI.open('https://www.pointer.de/bilder/hochschulen/221.jpg')
uni.photo.attach(io: uni_image, filename: 'EPFM.jpg', content_type: 'image/jpg')
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
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Computational Science and Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 70_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 85_000,
      video_url: "https://www.youtube.com/embed/iu6UboRqanI",
      application_link: "https://www.tum.de/studium/studienangebot/detail/computational-science-and-engineering-cse-master-of-science-msc/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :BSc,
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
uni1 = University.create!(name: "Westfälische Wilhelms-Universität Münster", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni1_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591348089/agar237kpclvgkrdwosk.jpg')
uni1.photo.attach(io: uni1_image, filename: 'WWUM.jpg', content_type: 'image/jpg')
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
      fee: 450,
      video_url: "https://www.youtube.com/embed/C58J3PM-5-0",
      application_link: "https://www.uni-muenster.de/studieninteressierte/bewerbung/index.html",
      description: "CS is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
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
uni2 = University.create!(name: "University Mannheim", location: "Baden-Württemberg", kind: :publicly_owned)
uni2_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591348119/xeztaxui5pqah2w9lmxh.jpg')
uni2.photo.attach(io: uni2_image, filename: 'UniMannheim.jpg', content_type: 'image/jpg')
user2.update(university: uni2)
uni2.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Business Administration"}
  ]
)
uni2.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 10_000,
      video_url: "https://www.youtube.com/embed/-Q3vD7gf_S0",
      application_link: "https://onlinebewerbung.uni-mannheim.de/portal/register.php",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 703,
      video_url: "https://www.youtube.com/embed/-Q3vD7gf_S0",
      application_link: "https://onlinebewerbung.uni-mannheim.de/portal/register.php",
      description: "Business Adminstration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

    }
  ]
)
user2.programs << Program.find_by(name: "Computer Science")
user2.programs << Program.find_by(name: "Business Administration")



user3 = User.create!(email: "lea@example.com", password: "123456")
uni3 = University.create!(name: "ETH Zurich", location: "Zurich", kind: :publicly_owned)
uni3_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591348136/janl3wtwyjluui9p69yp.jpg')
uni3.photo.attach(io: uni3_image, filename: 'ETH.jpg', content_type: 'image/jpg')
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
uni4_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591348154/pwxlaeelr7ljcjodq9fu.jpg')
uni4.photo.attach(io: uni4_image, filename: 'Bremen.jpg', content_type: 'image/jpg')
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



user6 = User.create!(email: "abraham@gmail.com", password: "OldTestament")
uni6 = University.create!(name: "Hochschule Bremen", location: "Bremen", kind: :privately_owned)
uni6_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591348180/vwg5jcpgxabzzjp2rft0.jpg')
uni6.photo.attach(io: uni6_image, filename: 'HochBremen.jpg', content_type: 'image/jpg')
user6.update(university: uni6)
uni6.subjects.create!(
  [
    {name: "Business Administration"},
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni6.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/97tYFZVVHJE",
      application_link: "https://www.hs-bremen.de/internet/de/studium/bewerbung/online/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 500,
      video_url: "https://www.youtube.com/embed/97tYFZVVHJE",
      application_link: "https://www.hs-bremen.de/internet/de/studium/bewerbung/online/",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 500,
      video_url: "https://www.youtube.com/embed/97tYFZVVHJE",
      application_link: "https://www.hs-bremen.de/internet/de/studium/bewerbung/online/",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 500,
      video_url: "https://www.youtube.com/embed/97tYFZVVHJE",
      application_link: "https://www.hs-bremen.de/internet/de/studium/bewerbung/online/",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 500,
      video_url: "https://www.youtube.com/embed/97tYFZVVHJE",
      application_link: "https://www.hs-bremen.de/internet/de/studium/bewerbung/online/",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user6.programs << Program.find_by(name: "Business Administration")
user6.programs << Program.find_by(name: "Computer Science")
user6.programs << Program.find_by(name: "Law")
user6.programs << Program.find_by(name: "Medicine")
user6.programs << Program.find_by(name: "Journalism")


user7 = User.create!(email: "benjamin@gmail.com", password: "achJaaa")
uni7 = University.create!(name: "Universität Passau", location: "Bavaria", kind: :privately_owned)
uni7_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591348191/jlk3gcaigmocexkbpcxf.jpg')
uni7.photo.attach(io: uni7_image, filename: 'HochBremen.jpg', content_type: 'image/jpg')
user7.update(university: uni7)
uni7.subjects.create!(
  [
    {name: "Business Administration"},
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni7.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/TNfEnZ_pcnc",
      application_link: "https://www.uni-passau.de/bewerbung-einschreibung/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/TNfEnZ_pcnc",
      application_link: "https://www.uni-passau.de/bewerbung-einschreibung/",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/TNfEnZ_pcnc",
      application_link: "https://www.uni-passau.de/bewerbung-einschreibung/",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/TNfEnZ_pcnc",
      application_link: "https://www.uni-passau.de/bewerbung-einschreibung/",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/TNfEnZ_pcnc",
      application_link: "https://www.uni-passau.de/bewerbung-einschreibung/",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. BA focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user7.programs << Program.find_by(name: "Business Administration")
user7.programs << Program.find_by(name: "Computer Science")
user7.programs << Program.find_by(name: "Law")
user7.programs << Program.find_by(name: "Medicine")
user7.programs << Program.find_by(name: "Journalism")








user8 = User.create!(email: "john@example.com", password: "123456")
uni8 = University.create!(name: "Humboldt Universität", location: "Berlin", kind: :publicly_owned)
uni8_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362816/blbvkreryto5mfwc1trb.jpg')
uni8.photo.attach(io: uni8_image, filename: 'Humboldt.jpg', content_type: 'image/jpg')
user8.update(university: uni8)
uni8.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni8.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Computational Science and Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user8.programs << Program.find_by(name: "Business Administration")
user8.programs << Program.find_by(name: "Computer Science")
user8.programs << Program.find_by(name: "Law")
user8.programs << Program.find_by(name: "Medicine")
user8.programs << Program.find_by(name: "Journalism")




user9 = User.create!(email: "Andrew@example.com", password: "123456")
uni9 = University.create!(name: "Universität Heidelberg", location: "Baden-Württemberg", kind: :publicly_owned)
uni9_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362833/ztcnmvoqlphsdflooqyq.jpg')
uni9.photo.attach(io: uni9_image, filename: 'heidelberg.jpg', content_type: 'image/jpg')
user9.update(university: uni9)
uni9.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni9.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/4dUuyKhEZU4",
      application_link: "https://www.uni-heidelberg.de/de/studium/bewerben-einschreiben",
      description: "Computational Science and Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :BSc,
      fee: 1000,
      video_url: "https://www.youtube.com/embed/4dUuyKhEZU4",
      application_link: "https://www.uni-heidelberg.de/de/studium/bewerben-einschreiben",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 10000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 14000,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 1200,
      video_url: "https://www.youtube.com/embed/5q4VNVA7EZA",
      application_link: "https://www.hu-berlin.de/de/studium/bewerbung",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user9.programs << Program.find_by(name: "Business Administration")
user9.programs << Program.find_by(name: "Computer Science")
user9.programs << Program.find_by(name: "Law")
user9.programs << Program.find_by(name: "Medicine")
user9.programs << Program.find_by(name: "Journalism")




user10 = User.create!(email: "angela@example.com", password: "123456")
uni10 = University.create!(name: "EPFL", location: "Lausanne, Switzerland", kind: :publicly_owned)
uni10_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362851/ey1jrigf2ptvqvl073wk.jpg')
uni10.photo.attach(io: uni10_image, filename: 'EPFM.jpg', content_type: 'image/jpg')
user10.update(university: uni10)
uni10.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni10.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/3EWsDFYJp-M",
      application_link: "https://uni-tuebingen.de/studium/bewerbung-und-immatrikulation/",
      description: "Computational Science and Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
        {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/3EWsDFYJp-M",
      application_link: "https://uni-tuebingen.de/studium/bewerbung-und-immatrikulation/",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/3EWsDFYJp-M",
      application_link: "https://uni-tuebingen.de/studium/bewerbung-und-immatrikulation/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/3EWsDFYJp-M",
      application_link: "https://uni-tuebingen.de/studium/bewerbung-und-immatrikulation/",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/3EWsDFYJp-M",
      application_link: "https://uni-tuebingen.de/studium/bewerbung-und-immatrikulation/",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user10.programs << Program.find_by(name: "Business Administration")
user10.programs << Program.find_by(name: "Computer Science")
user10.programs << Program.find_by(name: "Law")
user10.programs << Program.find_by(name: "Medicine")
user10.programs << Program.find_by(name: "Journalism")




user11 = User.create!(email: "maria@example.com", password: "123456")
uni11 = University.create!(name: "Justus-Liebig Universität", location: "Hessen", kind: :publicly_owned)
uni11_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362863/zznh57aueuh6stw1ndml.jpg')
uni11.photo.attach(io: uni11_image, filename: 'gremsen.jpg', content_type: 'image/jpg')
user11.update(university: uni11)
uni11.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni11.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/FpFBomJFR0o",
      application_link: "https://www.uni-giessen.de/studium/bewerbung",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/FpFBomJFR0o",
      application_link: "https://www.uni-giessen.de/studium/bewerbung",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/FpFBomJFR0o",
      application_link: "https://www.uni-giessen.de/studium/bewerbung",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/FpFBomJFR0o",
      application_link: "https://www.uni-giessen.de/studium/bewerbung",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/FpFBomJFR0o",
      application_link: "https://www.uni-giessen.de/studium/bewerbung",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user11.programs << Program.find_by(name: "Business Administration")
user11.programs << Program.find_by(name: "Computer Science")
user11.programs << Program.find_by(name: "Law")
user11.programs << Program.find_by(name: "Medicine")
user11.programs << Program.find_by(name: "Journalism")




user12 = User.create!(email: "anna@example.com", password: "123456")
uni12 = University.create!(name: "Universität Hamburg", location: "Hamburg", kind: :publicly_owned)
uni12_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362875/ry5j310rnwwkps3xhmxz.jpg')
uni12.photo.attach(io: uni12_image, filename: 'EPFM.jpg', content_type: 'image/jpg')
user12.update(university: uni12)
uni12.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni12.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/vjxktXW00Yg",
      application_link: "https://www.uni-hamburg.de/campuscenter/bewerbung.html",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/vjxktXW00Yg",
      application_link: "https://www.uni-hamburg.de/campuscenter/bewerbung.html",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/vjxktXW00Yg",
      application_link: "https://www.uni-hamburg.de/campuscenter/bewerbung.html",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/vjxktXW00Yg",
      application_link: "https://www.uni-hamburg.de/campuscenter/bewerbung.html",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/vjxktXW00Yg",
      application_link: "https://www.uni-hamburg.de/campuscenter/bewerbung.html",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user12.programs << Program.find_by(name: "Business Administration")
user12.programs << Program.find_by(name: "Computer Science")
user12.programs << Program.find_by(name: "Law")
user12.programs << Program.find_by(name: "Medicine")
user12.programs << Program.find_by(name: "Journalism")



user13 = User.create!(email: "eva@example.com", password: "123456")
uni13 = University.create!(name: "Universität Freiburg", location: "Baden-Württemberg", kind: :publicly_owned)
uni13_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362890/bflwe9wlcjlrbhqf2y4s.jpg')
uni13.photo.attach(io: uni13_image, filename: 'freiburg.jpg', content_type: 'image/jpg')
user13.update(university: uni13)
uni13.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni13.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/47upq1YjjbI",
      application_link: "https://www.studium.uni-freiburg.de/de/bewerbung",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/47upq1YjjbI",
      application_link: "https://www.studium.uni-freiburg.de/de/bewerbung",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/47upq1YjjbI",
      application_link: "https://www.studium.uni-freiburg.de/de/bewerbung",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/47upq1YjjbI",
      application_link: "https://www.studium.uni-freiburg.de/de/bewerbung",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/47upq1YjjbI",
      application_link: "https://www.studium.uni-freiburg.de/de/bewerbung",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user13.programs << Program.find_by(name: "Business Administration")
user13.programs << Program.find_by(name: "Computer Science")
user13.programs << Program.find_by(name: "Law")
user13.programs << Program.find_by(name: "Medicine")
user13.programs << Program.find_by(name: "Journalism")



user14 = User.create!(email: "seb@example.com", password: "123456")
uni14 = University.create!(name: "Universität Köln", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni14_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591362904/rvyil5ljhjvd9yufdi2r.jpg')
uni14.photo.attach(io: uni14_image, filename: 'koln.jpg', content_type: 'image/jpg')
user14.update(university: uni14)
uni14.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni14.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/z4ioP5QOUZM",
      application_link: "https://portal.uni-koeln.de/international/kontakt-international/kontaktformular-zulassung-international",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/z4ioP5QOUZM",
      application_link: "https://portal.uni-koeln.de/international/kontakt-international/kontaktformular-zulassung-international",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/z4ioP5QOUZM",
      application_link: "https://portal.uni-koeln.de/international/kontakt-international/kontaktformular-zulassung-international",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/z4ioP5QOUZM",
      application_link: "https://portal.uni-koeln.de/international/kontakt-international/kontaktformular-zulassung-international",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/z4ioP5QOUZM",
      application_link: "https://portal.uni-koeln.de/international/kontakt-international/kontaktformular-zulassung-international",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user14.programs << Program.find_by(name: "Business Administration")
user14.programs << Program.find_by(name: "Computer Science")
user14.programs << Program.find_by(name: "Law")
user14.programs << Program.find_by(name: "Medicine")
user14.programs << Program.find_by(name: "Journalism")

