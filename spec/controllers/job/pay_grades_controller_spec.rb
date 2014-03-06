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

describe Job::PayGradesController do

  # This should return the minimal set of attributes required to create a valid
  # Job::PayGrade. As you add validations to Job::PayGrade, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Job::PayGradesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all job_pay_grades as @job_pay_grades" do
      pay_grade = Job::PayGrade.create! valid_attributes
      get :index, {}, valid_session
      assigns(:job_pay_grades).should eq([pay_grade])
    end
  end

  describe "GET show" do
    it "assigns the requested job_pay_grade as @job_pay_grade" do
      pay_grade = Job::PayGrade.create! valid_attributes
      get :show, {:id => pay_grade.to_param}, valid_session
      assigns(:job_pay_grade).should eq(pay_grade)
    end
  end

  describe "GET new" do
    it "assigns a new job_pay_grade as @job_pay_grade" do
      get :new, {}, valid_session
      assigns(:job_pay_grade).should be_a_new(Job::PayGrade)
    end
  end

  describe "GET edit" do
    it "assigns the requested job_pay_grade as @job_pay_grade" do
      pay_grade = Job::PayGrade.create! valid_attributes
      get :edit, {:id => pay_grade.to_param}, valid_session
      assigns(:job_pay_grade).should eq(pay_grade)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Job::PayGrade" do
        expect {
          post :create, {:job_pay_grade => valid_attributes}, valid_session
        }.to change(Job::PayGrade, :count).by(1)
      end

      it "assigns a newly created job_pay_grade as @job_pay_grade" do
        post :create, {:job_pay_grade => valid_attributes}, valid_session
        assigns(:job_pay_grade).should be_a(Job::PayGrade)
        assigns(:job_pay_grade).should be_persisted
      end

      it "redirects to the created job_pay_grade" do
        post :create, {:job_pay_grade => valid_attributes}, valid_session
        response.should redirect_to(Job::PayGrade.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved job_pay_grade as @job_pay_grade" do
        # Trigger the behavior that occurs when invalid params are submitted
        Job::PayGrade.any_instance.stub(:save).and_return(false)
        post :create, {:job_pay_grade => {  }}, valid_session
        assigns(:job_pay_grade).should be_a_new(Job::PayGrade)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Job::PayGrade.any_instance.stub(:save).and_return(false)
        post :create, {:job_pay_grade => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested job_pay_grade" do
        pay_grade = Job::PayGrade.create! valid_attributes
        # Assuming there are no other job_pay_grades in the database, this
        # specifies that the Job::PayGrade created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Job::PayGrade.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => pay_grade.to_param, :job_pay_grade => { "these" => "params" }}, valid_session
      end

      it "assigns the requested job_pay_grade as @job_pay_grade" do
        pay_grade = Job::PayGrade.create! valid_attributes
        put :update, {:id => pay_grade.to_param, :job_pay_grade => valid_attributes}, valid_session
        assigns(:job_pay_grade).should eq(pay_grade)
      end

      it "redirects to the job_pay_grade" do
        pay_grade = Job::PayGrade.create! valid_attributes
        put :update, {:id => pay_grade.to_param, :job_pay_grade => valid_attributes}, valid_session
        response.should redirect_to(pay_grade)
      end
    end

    describe "with invalid params" do
      it "assigns the job_pay_grade as @job_pay_grade" do
        pay_grade = Job::PayGrade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Job::PayGrade.any_instance.stub(:save).and_return(false)
        put :update, {:id => pay_grade.to_param, :job_pay_grade => {  }}, valid_session
        assigns(:job_pay_grade).should eq(pay_grade)
      end

      it "re-renders the 'edit' template" do
        pay_grade = Job::PayGrade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Job::PayGrade.any_instance.stub(:save).and_return(false)
        put :update, {:id => pay_grade.to_param, :job_pay_grade => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested job_pay_grade" do
      pay_grade = Job::PayGrade.create! valid_attributes
      expect {
        delete :destroy, {:id => pay_grade.to_param}, valid_session
      }.to change(Job::PayGrade, :count).by(-1)
    end

    it "redirects to the job_pay_grades list" do
      pay_grade = Job::PayGrade.create! valid_attributes
      delete :destroy, {:id => pay_grade.to_param}, valid_session
      response.should redirect_to(job_pay_grades_url)
    end
  end

end
