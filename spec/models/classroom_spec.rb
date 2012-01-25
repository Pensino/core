require 'spec_helper'

describe Classroom do
  let(:classroom){ Factory.create(:classroom) }
  
  context "Assert Validations" do
    it "name must be unique" do
      Factory.create(:classroom)
      room = Classroom.new(:name => "Sala de Aula")
      room.should have(1).error_on(:name)
    end
    
    it "need a name to be created" do
      room = Classroom.new
      room.should have(1).error_on(:name)
    end
  end
end
