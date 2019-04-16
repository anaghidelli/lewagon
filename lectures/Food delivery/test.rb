require_relative "patient"
require_relative "room"
require_relative "patient_repository"
patient1 = Patient.new({ name: "Sam", cured: false })
patient2 = Patient.new({ cured: false, name: "Anna"})
# patient3 = Patient.new({ name: "Jack" })
# patient1 = Patient.new(false, "Sam")
# patient2 = Patient.new("Anna", false)
# p patient1
# p patient2
# p patient3


# room1 = Room.new({ capacity: 2 })
# room1.add_patient(patient1)
# p room1.full?
# room1.add_patient(patient2)
# p room1.full?
# p room1
patient_repo = PatientRepository.new("patients.csv")
# patient_repo.add(patient1)
# patient_repo.add(patient2)
p patient_repo





