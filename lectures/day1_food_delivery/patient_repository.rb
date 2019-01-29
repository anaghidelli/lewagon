require 'csv'
require_relative "patient"
require_relative "room"
class PatientRepository

  def initialize(csv_file)
    @csv_file = csv_file
    @patients = []
    @next_id = 1
    load_csv
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id = @next_id + 1
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      patient = Patient.new(row)
      @patients << patient
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end


end

patient_repo = PatientRepository.new("patients.csv")
patient1 = Patient.new({name: "Sam", cured: false})
patient2 = Patient.new({name: "Dom", cured: true})
patient_repo.add(patient1)
patient_repo.add(patient2)
p patient_repo




