(deftemplate person
   (slot minat)
   (multislot keahlian)
   (slot pengalaman)
   (slot durasi))

(deftemplate pekerjaan
   (slot nama))

(defrule recommend-data-scientist
   (person (minat "Data")
           (keahlian $?before "Statistics" "Machine Learning" "Feature Engineering" $?after)
           (pengalaman "Eksperimen Feature Engineering")
           (durasi ?durasi&:(>= ?durasi 3)))
   =>
   (assert (pekerjaan (nama "Data Scientist")))
   (printout t "Recommended job: Data Scientist" crlf))

(defrule recommend-data-analyst
   (person (minat "Data")
           (keahlian $?before "Statistics" "Visualization" "Query Database" $?after)
           (pengalaman "Pembuatan Visualisasi Data")
           (durasi ?durasi&:(>= ?durasi 3)))
   =>
   (assert (pekerjaan (nama "Data Analyst")))
   (printout t "Recommended job: Data Analyst" crlf))

(defrule recommend-data-engineer
   (person (minat "Data")
           (keahlian $?before "Query Database" "Management Database" $?after)
           (pengalaman "Optimasi Performa Database")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "Data Engineer")))
   (printout t "Recommended job: Data Engineer" crlf))

(defrule recommend-data-researcher
   (person (minat "Data")
           (keahlian $?before "Analysis" $?after)
           (pengalaman "Penelitian untuk analisis data")
           (durasi ?durasi&:(>= ?durasi 3)))
   =>
   (assert (pekerjaan (nama "Data Researcher")))
   (printout t "Recommended job: Data Researcher" crlf))

(defrule recommend-ai-engineer
   (person (minat "AI")
           (keahlian $?before "Machine Learning" "Deep Learning" $?after)
           (pengalaman "Mengembangkan sistem rekomendasi")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "AI Engineer")))
   (printout t "Recommended job: AI Engineer" crlf))

(defrule recommend-computer-vision-engineer
   (person (minat "AI")
           (keahlian $?before "Deep Learning" "Image Processing" $?after)
           (pengalaman "Mengembangkan sistem deteksi objek")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Computer Vision Engineer")))
   (printout t "Recommended job: Computer Vision Engineer" crlf))

(defrule recommend-project-manager
   (person (minat "Management")
           (keahlian $?before "Leadership" "Document" $?after)
           (pengalaman "Memimpin tim pengembangan perangkat lunak")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "Project Manager")))
   (printout t "Recommended job: Project Manager" crlf))

(defrule recommend-business-development
   (person (minat "Management")
           (keahlian $?before "Business" "Analysis" $?after)
           (pengalaman "Melakukan analisis pasar untuk peluang baru")
           (durasi ?durasi&:(>= ?durasi 3)))
   =>
   (assert (pekerjaan (nama "Business Development")))
   (printout t "Recommended job: Business Development" crlf))

(defrule recommend-it-consultant
   (person (minat "Management")
           (keahlian $?before "Analysis" "Communication" $?after)
           (pengalaman "Menganalisis kebutuhan IT klien")
           (durasi ?durasi&:(>= ?durasi 12)))
   =>
   (assert (pekerjaan (nama "IT Consultant")))
   (printout t "Recommended job: IT Consultant" crlf))

(defrule recommend-strategy-consultant
   (person (minat "Management")
           (keahlian $?before "Analysis" $?after)
           (pengalaman "Menganalisis laporan keuangan dan data pasar")
           (durasi ?durasi&:(>= ?durasi 9)))
   =>
   (assert (pekerjaan (nama "Strategy Consultant")))
   (printout t "Recommended job: Strategy Consultant" crlf))

(defrule recommend-software-engineer
   (person (minat "Software Development")
           (keahlian $?before "Backend Development" "REST API" "Microservices" $?after)
           (pengalaman "Magang Software Engineer")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "Software Engineer")))
   (printout t "Recommended job: Software Engineer" crlf))

(defrule recommend-frontend-developer
   (person (minat "Software Development")
           (keahlian $?before "UI/UX Design" "React.js" $?after)
           (pengalaman "Frontend Developer")
           (durasi ?durasi&:(>= ?durasi 5)))
   =>
   (assert (pekerjaan (nama "Frontend Developer")))
   (printout t "Recommended job: Frontend Developer" crlf))

(defrule recommend-cybersecurity-analyst
   (person (minat "Cybersecurity")
           (keahlian $?before "Ethical Hacking" "Network Security" "Penetration Testing" $?after)
           (pengalaman "Melakukan security testing sebagai Cybersecurity Analyst")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Cybersecurity Analyst")))
   (printout t "Recommended job: Cybersecurity Analyst" crlf))

(defrule recommend-cloud-engineer
   (person (minat "Cloud Computing")
           (keahlian $?before "Cloud Infrastructure" "AWS" "Kubernetes" $?after)
           (pengalaman "Membangun dan mengelola infrastruktur cloud")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "Cloud Engineer")))
   (printout t "Recommended job: Cloud Engineer" crlf))

(defrule recommend-iot-developer
   (person (minat "Internet of Things (IoT)")
           (keahlian $?before "Embedded Systems" "Sensor Integration" "Data Communication" $?after)
           (pengalaman "Mengembangkan prototipe IoT dalam proyek teknologi")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "IoT Developer")))
   (printout t "Recommended job: IoT Developer" crlf))

(defrule recommend-nlp-engineer
   (person (minat "Artificial Intelligence")
           (keahlian $?before "NLP (Natural Language Processing)" "Transformer Models" "Sentiment Analysis" $?after)
           (pengalaman "Mengembangkan model NLP untuk chatbot")
           (durasi ?durasi&:(>= ?durasi 5)))
   =>
   (assert (pekerjaan (nama "NLP Engineer")))
   (printout t "Recommended job: NLP Engineer" crlf))

(defrule recommend-robotics-engineer
   (person (minat "Robotics")
           (keahlian $?before "Robotics Programming" "ROS (Robot Operating System)" "Motion Control" $?after)
           (pengalaman "Mengembangkan perangkat lunak untuk robotika")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Robotics Engineer")))
   (printout t "Recommended job: Robotics Engineer" crlf))

(defrule recommend-big-data-engineer
   (person (minat "Data")
           (keahlian $?before "Data Warehousing" "ETL Pipelines" "Big Data Tools (Hadoop, Spark)" $?after)
           (pengalaman "Membangun pipeline data untuk analisis")
           (durasi ?durasi&:(>= ?durasi 5)))
   =>
   (assert (pekerjaan (nama "Big Data Engineer")))
   (printout t "Recommended job: Big Data Engineer" crlf))

(defrule recommend-game-developer
   (person (minat "Gaming")
           (keahlian $?before "Game Development" "Unity" "C# Programming" $?after)
           (pengalaman "Mengembangkan game 2D dalam proyek teknologi")
           (durasi ?durasi&:(>= ?durasi 3)))
   =>
   (assert (pekerjaan (nama "Game Developer")))
   (printout t "Recommended job: Game Developer" crlf))

(defrule recommend-blockchain-developer
   (person (minat "Blockchain")
           (keahlian $?before "Smart Contract Development" "Solidity" "Ethereum" $?after)
           (pengalaman "Mengembangkan smart contract untuk aplikasi terdesentralisasi")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Blockchain Developer")))
   (printout t "Recommended job: Blockchain Developer" crlf))

(defrule recommend-network-engineer
   (person (minat "Network")
           (keahlian $?before "Cisco" "Network architecture" $?after)
           (pengalaman "Membuat arsitektur jaringan perusahaan")
           (durasi ?durasi&:(>= ?durasi 12)))
   =>
   (assert (pekerjaan (nama "Network Engineer")))
   (printout t "Recommended job: Network Engineer" crlf))

(defrule recommend-administrator
   (person (minat "Low Level")
           (keahlian $?before "Linux" "Database" "Scripting" $?after)
           (pengalaman "Mengelola server berbasis Linux")
           (durasi ?durasi&:(>= ?durasi 8)))
   =>
   (assert (pekerjaan (nama "Administrator")))
   (printout t "Recommended job: Administrator" crlf))

(defrule recommend-speech-researcher
   (person (minat "Speech Processing")
           (keahlian $?before "Machine Learning" "MFCC" "Data Science" $?after)
           (pengalaman "Mengembangkan model analisis suara")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "Speech Researcher")))
   (printout t "Recommended job: Speech Researcher" crlf))

(defrule recommend-os-developer
   (person (minat "Low Level")
           (keahlian $?before "Operating System" "C" "C++" "Assembly" $?after)
           (pengalaman "Membuat kernel sistem operasi")
           (durasi ?durasi&:(>= ?durasi 12)))
   =>
   (assert (pekerjaan (nama "Operating System Developer")))
   (printout t "Recommended job: Operating System Developer" crlf))

(defrule recommend-mobile-developer
   (person (minat "Software Development")
           (keahlian $?before "Kotlin" "React Native" "Android Studio" $?after)
           (pengalaman "Mengembangkan aplikasi Mobile")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "Mobile Developer")))
   (printout t "Recommended job: Mobile Developer" crlf))

(defrule recommend-ios-developer
   (person (minat "Software Development")
           (keahlian $?before "React Native" "Swift" "Objective-C" $?after)
           (pengalaman "Mengembangkan aplikasi iOS")
           (durasi ?durasi&:(>= ?durasi 6)))
   =>
   (assert (pekerjaan (nama "IOS Developer")))
   (printout t "Recommended job: IOS Developer" crlf))

(defrule recommend-backend-developer
   (person (minat "Website Development")
           (keahlian $?before "Rest API" "Javascript" "Typescript" "Express JS" $?after)
           (pengalaman "Mengembangkan Website REST API")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Backend Developer")))
   (printout t "Recommended job: Backend Developer" crlf))

(defrule recommend-system-architect
   (person (minat "System Design")
           (keahlian $?before "Programming" "Data Management" "Communication" $?after)
           (pengalaman "Merancang sistem komunikasi data")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "System Architect")))
   (printout t "Recommended job: System Architect" crlf))

(defrule recommend-quality-assurance
   (person (minat "Software Testing")
           (keahlian $?before "Documentation" "SonarQube" "Agile Scrum" $?after)
           (pengalaman "Melakukan pengujian Software")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Quality Assurance")))
   (printout t "Recommended job: Quality Assurance" crlf))

(defrule recommend-game-engine-programmer
   (person (minat "Game Engine")
           (keahlian $?before "Programming" "3D Rendering" "2D Rendering" "Scripting" "OpenGL" "Physics" $?after)
           (pengalaman "Mengembangkan mesin game")
           (durasi ?durasi&:(>= ?durasi 4)))
   =>
   (assert (pekerjaan (nama "Game Engine Programmer")))
   (printout t "Recommended job: Game Engine Programmer" crlf))

(defrule no-recommendation
   (not (pekerjaan (nama ?)))
   =>
   (printout t "Recommended job: Tidak Tersedia" crlf))

;; Main program
(defrule start
   =>
   (assert (person (minat "Data") 
                   (keahlian "Statistics" "Machine Learning" "Feature Engineering")
                   (pengalaman "Eksperimen Feature Engineering") 
                   (durasi 3)))

   (assert (person (minat "Data") 
                   (keahlian "Statistics" "Visualization" "Query Database")
                   (pengalaman "Pembuatan Visualisasi Data") 
                   (durasi 3)))

   (assert (person (minat "Data") 
                   (keahlian "Query Database" "Management Database")
                   (pengalaman "Optimasi Performa Database") 
                   (durasi 6)))

   (assert (person (minat "Data") 
                   (keahlian "Analysis")
                   (pengalaman "Penelitian untuk analisis data") 
                   (durasi 3)))

   (assert (person (minat "AI") 
                   (keahlian "Machine Learning" "Deep Learning")
                   (pengalaman "Mengembangkan sistem rekomendasi") 
                   (durasi 4)))

   (assert (person (minat "AI") 
                   (keahlian "Deep Learning" "Image Processing")
                   (pengalaman "Mengembangkan sistem deteksi objek") 
                   (durasi 4)))

   (assert (person (minat "Management") 
                   (keahlian "Leadership" "Document")
                   (pengalaman "Memimpin tim pengembangan perangkat lunak") 
                   (durasi 6)))

   (assert (person (minat "Management") 
                   (keahlian "Business" "Analysis")
                   (pengalaman "Melakukan analisis pasar untuk peluang baru") 
                   (durasi 3)))

   (assert (person (minat "Management") 
                   (keahlian "Analysis" "Communication")
                   (pengalaman "Menganalisis kebutuhan IT klien") 
                   (durasi 12)))

   (assert (person (minat "Management") 
                   (keahlian "Analysis")
                   (pengalaman "Menganalisis laporan keuangan dan data pasar") 
                   (durasi 9)))

   (assert (person (minat "Software Development")
                   (keahlian "Backend Development" "REST API" "Microservices")
                   (pengalaman "Magang Software Engineer")
                   (durasi 6)))

   (assert (person (minat "Software Development")
                   (keahlian "UI/UX Design" "React.js")
                   (pengalaman "Frontend Developer")
                   (durasi 5)))

   (assert (person (minat "Cybersecurity")
                   (keahlian "Ethical Hacking" "Network Security" "Penetration Testing")
                   (pengalaman "Melakukan security testing sebagai Cybersecurity Analyst")
                   (durasi 4)))

   (assert (person (minat "Cloud Computing")
                   (keahlian "Cloud Infrastructure" "AWS" "Kubernetes")
                   (pengalaman "Membangun dan mengelola infrastruktur cloud")
                   (durasi 6)))

   (assert (person (minat "Internet of Things (IoT)")
                   (keahlian "Embedded Systems" "Sensor Integration" "Data Communication")
                   (pengalaman "Mengembangkan prototipe IoT dalam proyek teknologi")
                   (durasi 6)))

   (assert (person (minat "Artificial Intelligence")
                   (keahlian "NLP (Natural Language Processing)" "Transformer Models" "Sentiment Analysis")
                   (pengalaman "Mengembangkan model NLP untuk chatbot")
                   (durasi 5)))

   (assert (person (minat "Robotics")
                   (keahlian "Robotics Programming" "ROS (Robot Operating System)" "Motion Control")
                   (pengalaman "Mengembangkan perangkat lunak untuk robotika")
                   (durasi 4)))

   (assert (person (minat "Data")
                   (keahlian "Data Warehousing" "ETL Pipelines" "Big Data Tools (Hadoop, Spark)")
                   (pengalaman "Membangun pipeline data untuk analisis")
                   (durasi 5)))

   (assert (person (minat "Gaming")
                   (keahlian "Game Development" "Unity" "C# Programming")
                   (pengalaman "Mengembangkan game 2D dalam proyek teknologi")
                   (durasi 3)))

   (assert (person (minat "Blockchain")
                   (keahlian "Smart Contract Development" "Solidity" "Ethereum")
                   (pengalaman "Mengembangkan smart contract untuk aplikasi terdesentralisasi")
                   (durasi 4)))
   
   (assert (person (minat "Network") 
                   (keahlian "Cisco" "Network architecture")
                   (pengalaman "Membuat arsitektur jaringan perusahaan")
                   (durasi 12)))

   (assert (person (minat "Low Level") 
                   (keahlian "Linux" "Database" "Scripting")
                   (pengalaman "Mengelola server berbasis Linux")
                   (durasi 8)))

   (assert (person (minat "Speech Processing") 
                   (keahlian "Machine Learning" "MFCC" "Data Science")
                   (pengalaman "Mengembangkan model analisis suara")
                   (durasi 6)))

   (assert (person (minat "Low Level") 
                   (keahlian "Operating System" "C" "C++" "Assembly")
                   (pengalaman "Membuat kernel sistem operasi")
                   (durasi 12)))

   (assert (person (minat "Software Development") 
                   (keahlian "Kotlin" "React Native" "Android Studio")
                   (pengalaman "Mengembangkan aplikasi Mobile")
                   (durasi 6)))

   (assert (person (minat "Software Development") 
                   (keahlian "React Native" "Swift" "Objective-C")
                   (pengalaman "Mengembangkan aplikasi iOS")
                   (durasi 6)))

   (assert (person (minat "Website Development") 
                   (keahlian "Rest API" "Javascript" "Typescript" "Express JS")
                   (pengalaman "Mengembangkan Website REST API")
                   (durasi 4)))

   (assert (person (minat "System Design") 
                   (keahlian "Programming" "Data Management" "Communication")
                   (pengalaman "Merancang sistem komunikasi data")
                   (durasi 4)))

   (assert (person (minat "Software Testing") 
                   (keahlian "Documentation" "SonarQube" "Agile Scrum")
                   (pengalaman "Melakukan pengujian Software")
                   (durasi 4)))

   (assert (person (minat "Game Engine") 
                   (keahlian "Programming" "3D Rendering" "2D Rendering" "Scripting" "OpenGL" "Physics")
                   (pengalaman "Mengembangkan mesin game")
                   (durasi 4)))
   
   (assert (person (minat "Finance") 
                   (keahlian "Accounting" "Tax Management")
                   (pengalaman "Auditing") 
                   (durasi 2)))

   (run))