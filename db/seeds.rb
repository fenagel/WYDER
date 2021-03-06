require "open-uri"

UniversitySubject.destroy_all
Bookmark.destroy_all
Program.destroy_all
Subject.destroy_all
User.destroy_all
University.destroy_all

user = User.create!(name: "Bob", email: "bob@example.com", password: "123456")
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
      description: "Computational Science & Engineering (CSE) is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
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




user1 = User.create!(name: "Alex", email: "alex@example.com", password: "123456")
uni1 = University.create!(name: "Wilhelms-Universität Münster", location: "North Rhine-Westphalia", kind: :publicly_owned)
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



user2 = User.create!(name: "Felix", email: "felix@example.com", password: "123456")
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



user3 = User.create!(name: "Lea", email: "lea@example.com", password: "123456")
uni3 = University.create!(name: "WHU - School of Management", location: "Rhineland-Palatinate", kind: :privately_owned)
uni3_image = URI.open('http://res.cloudinary.com/dvt0t51oq/image/upload/v1591717532/mvrdx5vaivwrnim1ifvg.jpg')
uni3.photo.attach(io: uni3_image, filename: 'whu.jpg', content_type: 'image/jpg')
user3.update(university: uni3)
uni3.subjects.create!(
  [
    {name: "International Business Administration"},
    {name: "Business Administration"}
  ]
)
uni3.programs.create!(
  [
    {
      name: "International Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 100_000,
      video_url: "https://www.youtube.com/embed/-Q3vD7gf_S0",
      application_link: "https://onlinebewerbung.uni-mannheim.de/portal/register.php",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 703,
      video_url: "https://www.youtube.com/embed/-Q3vD7gf_S0",
      application_link: "https://onlinebewerbung.uni-mannheim.de/portal/register.php",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."

    }
  ]
)
user3.programs << Program.find_by(name: "Computer Science")
user3.programs << Program.find_by(name: "Business Administration")



user4 = User.create!(name: "Till", email: "till@example.com", password: "123456")
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



user6 = User.create!(name: "Abraham", email: "abraham@gmail.com", password: "OldTestament")
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


user7 = User.create!(name: "Benjamin", email: "benjamin@gmail.com", password: "achJaaa")
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








user8 = User.create!(name: "John", email: "john@example.com", password: "123456")
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



user9 = User.create!(name: "Andrew", email: "Andrew@example.com", password: "123456")
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




user10 = User.create!(name: "Angela", email: "angela@example.com", password: "123456")
uni10 = University.create!(name: "Goethe University Frankfurt", location: "Hessen", kind: :publicly_owned)
uni10_image = URI.open('http://res.cloudinary.com/dvt0t51oq/image/upload/v1591718209/joltz59lmwmnkdytdmtm.jpg')
uni10.photo.attach(io: uni10_image, filename: 'ffm.jpg', content_type: 'image/jpg')
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




user11 = User.create!(name: "Maria", email: "maria@example.com", password: "123456")
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




user12 = User.create!(name: "Anna", email: "anna@example.com", password: "123456")
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



user13 = User.create!(name: "Eva", email: "eva@example.com", password: "123456")
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



user14 = User.create!(name: "Seb", email: "seb@example.com", password: "123456")
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





user15 = User.create!(name: "Alf", email: "alf@example.com", password: "123456")
uni15 = University.create!(name: "Hochschule für Management", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni15_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591862969/d1zfoxt93zc63l3atcow.jpg')
uni15.photo.attach(io: uni15_image, filename: 'FOM-Essen.jpg', content_type: 'image/jpg')
user15.update(university: uni15)
uni15.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni15.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/QofoXnRWtmA",
      application_link: "https://www.fom.de/das-studium/anmeldung.html#!acc=hochschulbereich-wirtschaft-und-management",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/QofoXnRWtmA",
      application_link: "https://www.fom.de/das-studium/anmeldung.html#!acc=hochschulbereich-wirtschaft-und-management",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/QofoXnRWtmA",
      application_link: "https://www.fom.de/das-studium/anmeldung.html#!acc=hochschulbereich-wirtschaft-und-management",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/QofoXnRWtmA",
      application_link: "https://www.fom.de/das-studium/anmeldung.html#!acc=hochschulbereich-wirtschaft-und-management",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
{
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/QofoXnRWtmA",
      application_link: "https://www.fom.de/das-studium/anmeldung.html#!acc=hochschulbereich-wirtschaft-und-management",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user15.programs << Program.find_by(name: "Business Administration")
user15.programs << Program.find_by(name: "Computer Science")
user15.programs << Program.find_by(name: "Law")
user15.programs << Program.find_by(name: "Medicine")
user15.programs << Program.find_by(name: "Journalism")




user16 = User.create!(name: "Angie", email: "angie@example.com", password: "123456")
uni16 = University.create!(name: "Universität Frankfurt a. M.", location: "Hessen", kind: :publicly_owned)
uni16_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591867753/p2s3qegzje3agbupohjd.jpg')
uni16.photo.attach(io: uni16_image, filename: 'uni-frankfurt.jpg', content_type: 'image/jpg')
user16.update(university: uni16)
uni16.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni16.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/7NZxQy4LaUk",
      application_link: "https://www.uni-frankfurt.de/39329549/Information",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
     {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/7NZxQy4LaUk",
      application_link: "https://www.uni-frankfurt.de/39329549/Information",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }, {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/7NZxQy4LaUk",
      application_link: "https://www.uni-frankfurt.de/39329549/Information",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }, {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/7NZxQy4LaUk",
      application_link: "https://www.uni-frankfurt.de/39329549/Information",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }, {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/7NZxQy4LaUk",
      application_link: "https://www.uni-frankfurt.de/39329549/Information",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user16.programs << Program.find_by(name: "Business Administration")
user16.programs << Program.find_by(name: "Computer Science")
user16.programs << Program.find_by(name: "Law")
user16.programs << Program.find_by(name: "Medicine")
user16.programs << Program.find_by(name: "Journalism")



user17 = User.create!(name: "Mani", email: "mani@example.com", password: "123456")
uni17 = University.create!(name: "Technische Hochschule Aachen", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni17_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591868729/aevpexbrksscpf9lol57.jpg')
uni17.photo.attach(io: uni17_image, filename: 'uni-aachen.jpg', content_type: 'image/jpg')
user17.update(university: uni17)
uni17.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni17.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/UsePeuKAty0",
      application_link: "https://www.rwth-aachen.de/cms/root/Studium/Vor-dem-Studium/~ege/Zugangsvoraussetzungen/",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/UsePeuKAty0",
      application_link: "https://www.rwth-aachen.de/cms/root/Studium/Vor-dem-Studium/~ege/Zugangsvoraussetzungen/",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/UsePeuKAty0",
      application_link: "https://www.rwth-aachen.de/cms/root/Studium/Vor-dem-Studium/~ege/Zugangsvoraussetzungen/",
      description: "CBusiness Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/UsePeuKAty0",
      application_link: "https://www.rwth-aachen.de/cms/root/Studium/Vor-dem-Studium/~ege/Zugangsvoraussetzungen/",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/UsePeuKAty0",
      application_link: "https://www.rwth-aachen.de/cms/root/Studium/Vor-dem-Studium/~ege/Zugangsvoraussetzungen/",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user17.programs << Program.find_by(name: "Business Administration")
user17.programs << Program.find_by(name: "Computer Science")
user17.programs << Program.find_by(name: "Law")
user17.programs << Program.find_by(name: "Medicine")
user17.programs << Program.find_by(name: "Journalism")




user18 = User.create!(name: "Alfonso", email: "alfonso@example.com", password: "123456")
uni18 = University.create!(name: "Ruhr-Universität Bochum", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni18_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591877880/ujvp8334xnzivf8bxd4l.jpg')
uni18.photo.attach(io: uni18_image, filename: 'uni-aachen.jpg', content_type: 'image/jpg')
user18.update(university: uni18)
uni18.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni18.programs.create!(
  [
    {
      name: "Computer Science",
      subject: Subject.find_by(name: "Computer Science"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/qfmmgipsej0",
      application_link: "https://studium.ruhr-uni-bochum.de/de/bewerbung",
      description: "Computer Science is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Medicine",
      subject: Subject.find_by(name: "Medicine"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/qfmmgipsej0",
      application_link: "https://studium.ruhr-uni-bochum.de/de/bewerbung",
      description: "Medicine is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/qfmmgipsej0",
      application_link: "https://studium.ruhr-uni-bochum.de/de/bewerbung",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Law",
      subject: Subject.find_by(name: "Law"),
      degree: :MSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/qfmmgipsej0",
      application_link: "https://studium.ruhr-uni-bochum.de/de/bewerbung",
      description: "Law is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    },
    {
      name: "Journalism",
      subject: Subject.find_by(name: "Journalism"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/qfmmgipsej0",
      application_link: "https://studium.ruhr-uni-bochum.de/de/bewerbung",
      description: "Journalism is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user18.programs << Program.find_by(name: "Business Administration")
user18.programs << Program.find_by(name: "Computer Science")
user18.programs << Program.find_by(name: "Law")
user18.programs << Program.find_by(name: "Medicine")
user18.programs << Program.find_by(name: "Journalism")




user19 = User.create!(name: "capo", email: "capo@example.com", password: "123456")
uni19 = University.create!(name: "Universität Düsseldorf", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni19_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591873171/a42gywizemek6ryyri1a.jpg')
uni19.photo.attach(io: uni19_image, filename: 'uni-duesseldorf.jpg', content_type: 'image/jpg')
user19.update(university: uni19)
uni19.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni19.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/Ao_g49kTExc",
      application_link: "https://www.uni-duesseldorf.de/home/studium-und-lehre-an-der-hhu/studium/studienplatzbewerbung/studienstart-bewerbungsverfahren-uebersicht.html",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user19.programs << Program.find_by(name: "Business Administration")


user20 = User.create!(name: "jefe", email: "jefe@example.com", password: "123456")
uni20 = University.create!(name: "Freie University Berlin", location: "Berlin", kind: :publicly_owned)
uni20_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591878599/hutlvbldyrjricbvivlz.jpg')
uni20.photo.attach(io: uni20_image, filename: 'freie-uni-berlin.jpg', content_type: 'image/jpg')
user20.update(university: uni20)
uni20.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni20.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/X86SiAP36D0",
      application_link: "https://www.fu-berlin.de/studium/bewerbung/index.html",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user20.programs << Program.find_by(name: "Business Administration")




user21 = User.create!(name: "Ulf", email: "ulf@example.com", password: "123456")
uni21 = University.create!(name: "Universität Nürnberg", location: "Bavaria", kind: :publicly_owned)
uni21_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591879392/bqqrf91zctgykdlagixf.jpg')
uni21.photo.attach(io: uni21_image, filename: 'uni-nuernberg.jpg', content_type: 'image/jpg')
user21.update(university: uni21)
uni21.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni21.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/llRsHzTIEfA",
      application_link: "https://www.fau.de/education/bewerbung/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user21.programs << Program.find_by(name: "Business Administration")




user22 = User.create!(name: "Anton", email: "anton@example.com", password: "123456")
uni22 = University.create!(name: "Universität Duisburg-Essen", location: "North Rhine-Westphalia", kind: :publicly_owned)
uni22_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591879766/dttd7ssymkbxmabhknxt.jpg')
uni22.photo.attach(io: uni22_image, filename: 'uni-essen.jpg', content_type: 'image/jpg')
user22.update(university: uni22)
uni22.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni22.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/07lcK3AaFbQ",
      application_link: "https://www.uni-due.de/de/studium/bewerbung.php",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user22.programs << Program.find_by(name: "Business Administration")



user100 = User.create!(name: "Gustavo", email: "gustavo@example.com", password: "123456")
uni100 = University.create!(name: "University Stuttgart", location: "Baden-Württemberg", kind: :publicly_owned)
uni100_image = URI.open('http://res.cloudinary.com/dvt0t51oq/image/upload/v1591889235/i3x4og2l9xaj8svuq5hn.jpg')
uni100.photo.attach(io: uni100_image, filename: 'uni-stuttgart.jpg', content_type: 'image/jpg')
user100.update(university: uni100)
uni100.subjects.create!(
  [

    {name: "Business Administration"}

  ]
)
uni100.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/kgaELc5zrHs",
      application_link: "https://www.uni-stuttgart.de/studium/bewerbung/online/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user100.programs << Program.find_by(name: "Business Administration")





user23 = User.create!(name: "senore", email: "senore@example.com", password: "123456")
uni23 = University.create!(name: "Universität Bayreuth", location: "Bavaria", kind: :publicly_owned)
uni23_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591888770/dceknpnt5vaji5pgrnzv.jpg')
uni23.photo.attach(io: uni23_image, filename: 'uni-bayreuth.jpg', content_type: 'image/jpg')
user23.update(university: uni23)
uni23.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni23.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/IGAzGWQtwX4",
      application_link: "https://www.studienberatung.uni-bayreuth.de/de/beratung-und-service/index.html",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user23.programs << Program.find_by(name: "Business Administration")



user101 = User.create!(name: "Geronimo", email: "geronimo@example.com", password: "123456")
uni101 = University.create!(name: "University Reutlingen", location: "Baden-Württemberg", kind: :publicly_owned)
uni101_image = URI.open('http://res.cloudinary.com/dvt0t51oq/image/upload/v1591889913/qpovtlatop1hkichntmj.jpg')
uni101.photo.attach(io: uni101_image, filename: 'uni-reutlingen.jpg', content_type: 'image/jpg')
user101.update(university: uni101)
uni101.subjects.create!(
  [
    {name: "Business Administration"}
  ]
)
uni101.programs.create!(
   [
     {
       name: "Business Administration",
       subject: Subject.find_by(name: "Business Administration"),
       degree: :BSc,
       fee: 800,
       video_url: "https://www.youtube.com/embed/V0lKE-mnFoU",
       application_link: "https://hisinone.reutlingen-university.de/qisserver/pages/cs/sys/portal/hisinoneStartPage.faces?chco=y",
       description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
     }    
    ]
  )
 user101.programs << Program.find_by(name: "Business Administration")    





user24 = User.create!(name: "Opa", email: "opa@example.com", password: "123456")
uni24 = University.create!(name: "Universität Regensburg", location: "Bavaria", kind: :publicly_owned)
uni24_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591889275/tipxsmnzpp3cddq0hsoi.jpg')
uni24.photo.attach(io: uni24_image, filename: 'uni-bayreuth.jpg', content_type: 'image/jpg')
user24.update(university: uni24)
uni24.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni24.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/oCppev5Dcuw",
      application_link: "https://www.uni-regensburg.de/studium/studentenkanzlei/bewerbung-einschreibung/bewerbung/index.html",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)

user24.programs << Program.find_by(name: "Business Administration")






user25 = User.create!(name: "Onkel", email: "onkel@example.com", password: "123456")
uni25 = University.create!(name: "Universität Augsburg", location: "Bavaria", kind: :publicly_owned)
uni25_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591889592/nt4vpwrz6bft5f2pw9hk.jpg')
uni25.photo.attach(io: uni25_image, filename: 'uni-augsburg.jpg', content_type: 'image/jpg')
user25.update(university: uni25)
uni25.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni25.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/DLOjlBvARG8",
      application_link: "https://www.uni-augsburg.de/de/studium/bewerbung/bewerbung/",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user25.programs << Program.find_by(name: "Business Administration")



user102 = User.create!(name: "Gilberto", email: "gilberto@example.com", password: "123456")
uni102 = University.create!(name: "University Hohenheim", location: "Baden-Württemberg", kind: :publicly_owned)
uni102_image = URI.open('http://res.cloudinary.com/dvt0t51oq/image/upload/v1591890247/d4nsimsbd0uuxku7nao2.jpg')
uni102.photo.attach(io: uni102_image, filename: 'uni-hohenheim.jpg', content_type: 'image/jpg')
user102.update(university: uni102)
uni102.subjects.create!(
  [

    {name: "Business Administration"}

  ]
)
uni102.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/CFXTNUGMm7Q",
      application_link: "https://hohcampus.verw.uni-hohenheim.de/qisserver/pages/cs/sys/portal/hisinoneStartPage.faces?page=Bewerber/-innen",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user102.programs << Program.find_by(name: "Business Administration")


user26 = User.create!(name: "Papa", email: "papa@example.com", password: "123456")
uni26 = University.create!(name: "Universität Coburg", location: "Bavaria", kind: :publicly_owned)
uni26_image = URI.open('https://res.cloudinary.com/dvt0t51oq/image/upload/v1591890024/fdg0l2lognwcgsnnpsuz.jpg')
uni26.photo.attach(io: uni26_image, filename: 'uni-coburg.jpg', content_type: 'image/jpg')
user26.update(university: uni26)
uni26.subjects.create!(
  [
    {name: "Computer Science"},
    {name: "Medicine"},
    {name: "Business Administration"},
    {name: "Law"},
    {name: "Journalism"}
  ]
)
uni26.programs.create!(
  [
    {
      name: "Business Administration",
      subject: Subject.find_by(name: "Business Administration"),
      degree: :BSc,
      fee: 800,
      video_url: "https://www.youtube.com/embed/j9z1KUQdbZQ",
      application_link: "https://www.hs-coburg.de/studium/bewerben-und-einschreiben.html",
      description: "Business Administration is a rapidly developing field that brings together applied mathematics (especially numerical analysis), computer science, and scientific or engineering applications. CSE focuses on developing problem-solving methodologies and robust tools for numerical simulation. To understand phenomena and processes from science and engineering, we no longer need to depend only on theory and experiment, but can also use computations. Numerical simulations supplement experiments and can even allow the examination of systems and problems that would be too time-consuming, expensive, or dangerous (if possible at all) to study by experiment alone."
    }
  ]
)
user26.programs << Program.find_by(name: "Business Administration")
