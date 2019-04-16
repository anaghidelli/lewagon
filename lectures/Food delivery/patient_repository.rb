require 'csv'
require_relative "patient"
class PatientRepository
  def initialize(csv_file_path, room_repository)
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 1
    @room_repository = room_repository
    load_csv
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    #save_csv
  end

  private

  def load_csv
    # 1st option: makes first row in csv headers
    # 2nd option: converts those headers to symbols
    # makes row a hash
    # all values read from csv will be a String
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      p row
      row[:id]    = row[:id].to_i
      # test in irb
      # row[:cured] == "true" returns boolean
      row[:cured] = row[:cured] == "true"
      # because row is a hash we can pass it to Patient.new
      patient =  Patient.new(row)
      # get the room instance
      patient.room = @room_repository.find(row[:room_id].to_i)
      @patients << patient
    end

    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end
end










