require 'spec_helper'

describe Classroom do
  let(:classroom){ Factory.create(:classroom) }
  
  context "Assert Validations" do
    it "The name of the classroom must be unique" do
      Factory.create(:classroom)
      room = Classroom.new(:name => "Sala de Aula")
      room.save
      room.should have(1).error_on(:name)
    end
  end
end
