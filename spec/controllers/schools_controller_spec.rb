require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SchoolsController do

  # This should return the minimal set of attributes required to create a valid
  # School. As you add validations to School, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all schools as @schools" do
      school = School.create! valid_attributes
      get :index
      assigns(:schools).should eq([school])
    end
  end

  describe "GET show" do
    it "assigns the requested school as @school" do
      school = School.create! valid_attributes
      get :show, :id => school.id
      assigns(:school).should eq(school)
    end
  end

  describe "GET new" do
    it "assigns a new school as @school" do
      get :new
      assigns(:school).should be_a_new(School)
    end
  end

  describe "GET edit" do
    it "assigns the requested school as @school" do
      school = School.create! valid_attributes
      get :edit, :id => school.id
      assigns(:school).should eq(school)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new School" do
        expect {
          post :create, :school => valid_attributes
        }.to change(School, :count).by(1)
      end

      it "assigns a newly created school as @school" do
        post :create, :school => valid_attributes
        assigns(:school).should be_a(School)
        assigns(:school).should be_persisted
      end

      it "redirects to the created school" do
        post :create, :school => valid_attributes
        response.should redirect_to(School.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved school as @school" do
        # Trigger the behavior that occurs when invalid params are submitted
        School.any_instance.stub(:save).and_return(false)
        post :create, :school => {}
        assigns(:school).should be_a_new(School)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        School.any_instance.stub(:save).and_return(false)
        post :create, :school => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested school" do
        school = School.create! valid_attributes
        # Assuming there are no other schools in the database, this
        # specifies that the School created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        School.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => school.id, :school => {'these' => 'params'}
      end

      it "assigns the requested school as @school" do
        school = School.create! valid_attributes
        put :update, :id => school.id, :school => valid_attributes
        assigns(:school).should eq(school)
      end

      it "redirects to the school" do
        school = School.create! valid_attributes
        put :update, :id => school.id, :school => valid_attributes
        response.should redirect_to(school)
      end
    end

    describe "with invalid params" do
      it "assigns the school as @school" do
        school = School.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        School.any_instance.stub(:save).and_return(false)
        put :update, :id => school.id, :school => {}
        assigns(:school).should eq(school)
      end

      it "re-renders the 'edit' template" do
        school = School.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        School.any_instance.stub(:save).and_return(false)
        put :update, :id => school.id, :school => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested school" do
      school = School.create! valid_attributes
      expect {
        delete :destroy, :id => school.id
      }.to change(School, :count).by(-1)
    end

    it "redirects to the schools list" do
      school = School.create! valid_attributes
      delete :destroy, :id => school.id
      response.should redirect_to(schools_url)
    end
  end

end
