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

describe Timsheets::EmployeeTimesheetsController do

  # This should return the minimal set of attributes required to create a valid
  # Timsheets::EmployeeTimesheet. As you add validations to Timsheets::EmployeeTimesheet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Timsheets::EmployeeTimesheetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all timsheets_employee_timesheets as @timsheets_employee_timesheets" do
      employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
      get :index, {}, valid_session
      assigns(:timsheets_employee_timesheets).should eq([employee_timesheet])
    end
  end

  describe "GET show" do
    it "assigns the requested timsheets_employee_timesheet as @timsheets_employee_timesheet" do
      employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
      get :show, {:id => employee_timesheet.to_param}, valid_session
      assigns(:timsheets_employee_timesheet).should eq(employee_timesheet)
    end
  end

  describe "GET new" do
    it "assigns a new timsheets_employee_timesheet as @timsheets_employee_timesheet" do
      get :new, {}, valid_session
      assigns(:timsheets_employee_timesheet).should be_a_new(Timsheets::EmployeeTimesheet)
    end
  end

  describe "GET edit" do
    it "assigns the requested timsheets_employee_timesheet as @timsheets_employee_timesheet" do
      employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
      get :edit, {:id => employee_timesheet.to_param}, valid_session
      assigns(:timsheets_employee_timesheet).should eq(employee_timesheet)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Timsheets::EmployeeTimesheet" do
        expect {
          post :create, {:timsheets_employee_timesheet => valid_attributes}, valid_session
        }.to change(Timsheets::EmployeeTimesheet, :count).by(1)
      end

      it "assigns a newly created timsheets_employee_timesheet as @timsheets_employee_timesheet" do
        post :create, {:timsheets_employee_timesheet => valid_attributes}, valid_session
        assigns(:timsheets_employee_timesheet).should be_a(Timsheets::EmployeeTimesheet)
        assigns(:timsheets_employee_timesheet).should be_persisted
      end

      it "redirects to the created timsheets_employee_timesheet" do
        post :create, {:timsheets_employee_timesheet => valid_attributes}, valid_session
        response.should redirect_to(Timsheets::EmployeeTimesheet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved timsheets_employee_timesheet as @timsheets_employee_timesheet" do
        # Trigger the behavior that occurs when invalid params are submitted
        Timsheets::EmployeeTimesheet.any_instance.stub(:save).and_return(false)
        post :create, {:timsheets_employee_timesheet => {  }}, valid_session
        assigns(:timsheets_employee_timesheet).should be_a_new(Timsheets::EmployeeTimesheet)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Timsheets::EmployeeTimesheet.any_instance.stub(:save).and_return(false)
        post :create, {:timsheets_employee_timesheet => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested timsheets_employee_timesheet" do
        employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
        # Assuming there are no other timsheets_employee_timesheets in the database, this
        # specifies that the Timsheets::EmployeeTimesheet created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Timsheets::EmployeeTimesheet.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => employee_timesheet.to_param, :timsheets_employee_timesheet => { "these" => "params" }}, valid_session
      end

      it "assigns the requested timsheets_employee_timesheet as @timsheets_employee_timesheet" do
        employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
        put :update, {:id => employee_timesheet.to_param, :timsheets_employee_timesheet => valid_attributes}, valid_session
        assigns(:timsheets_employee_timesheet).should eq(employee_timesheet)
      end

      it "redirects to the timsheets_employee_timesheet" do
        employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
        put :update, {:id => employee_timesheet.to_param, :timsheets_employee_timesheet => valid_attributes}, valid_session
        response.should redirect_to(employee_timesheet)
      end
    end

    describe "with invalid params" do
      it "assigns the timsheets_employee_timesheet as @timsheets_employee_timesheet" do
        employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Timsheets::EmployeeTimesheet.any_instance.stub(:save).and_return(false)
        put :update, {:id => employee_timesheet.to_param, :timsheets_employee_timesheet => {  }}, valid_session
        assigns(:timsheets_employee_timesheet).should eq(employee_timesheet)
      end

      it "re-renders the 'edit' template" do
        employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Timsheets::EmployeeTimesheet.any_instance.stub(:save).and_return(false)
        put :update, {:id => employee_timesheet.to_param, :timsheets_employee_timesheet => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested timsheets_employee_timesheet" do
      employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
      expect {
        delete :destroy, {:id => employee_timesheet.to_param}, valid_session
      }.to change(Timsheets::EmployeeTimesheet, :count).by(-1)
    end

    it "redirects to the timsheets_employee_timesheets list" do
      employee_timesheet = Timsheets::EmployeeTimesheet.create! valid_attributes
      delete :destroy, {:id => employee_timesheet.to_param}, valid_session
      response.should redirect_to(timsheets_employee_timesheets_url)
    end
  end

end
