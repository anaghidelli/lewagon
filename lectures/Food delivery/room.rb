class Room
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def add_patient(patient)
    patient.room = self
    @patients << patient
  end

  def full?
    @patients.length == @capacity
  end
end
