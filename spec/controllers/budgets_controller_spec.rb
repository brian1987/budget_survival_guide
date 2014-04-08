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

describe BudgetsController do

  # This should return the minimal set of attributes required to create a valid
  # Budget. As you add validations to Budget, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "income" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BudgetsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all budgets as @budgets" do
      budget = Budget.create! valid_attributes
      get :index, {}, valid_session
      assigns(:budgets).should eq([budget])
    end
  end

  describe "GET show" do
    it "assigns the requested budget as @budget" do
      budget = Budget.create! valid_attributes
      get :show, {:id => budget.to_param}, valid_session
      assigns(:budget).should eq(budget)
    end
  end

  describe "GET new" do
    it "assigns a new budget as @budget" do
      get :new, {}, valid_session
      assigns(:budget).should be_a_new(Budget)
    end
  end

  describe "GET edit" do
    it "assigns the requested budget as @budget" do
      budget = Budget.create! valid_attributes
      get :edit, {:id => budget.to_param}, valid_session
      assigns(:budget).should eq(budget)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Budget" do
        expect {
          post :create, {:budget => valid_attributes}, valid_session
        }.to change(Budget, :count).by(1)
      end

      it "assigns a newly created budget as @budget" do
        post :create, {:budget => valid_attributes}, valid_session
        assigns(:budget).should be_a(Budget)
        assigns(:budget).should be_persisted
      end

      it "redirects to the created budget" do
        post :create, {:budget => valid_attributes}, valid_session
        response.should redirect_to(Budget.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved budget as @budget" do
        # Trigger the behavior that occurs when invalid params are submitted
        Budget.any_instance.stub(:save).and_return(false)
        post :create, {:budget => { "income" => "invalid value" }}, valid_session
        assigns(:budget).should be_a_new(Budget)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Budget.any_instance.stub(:save).and_return(false)
        post :create, {:budget => { "income" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested budget" do
        budget = Budget.create! valid_attributes
        # Assuming there are no other budgets in the database, this
        # specifies that the Budget created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Budget.any_instance.should_receive(:update).with({ "income" => "1" })
        put :update, {:id => budget.to_param, :budget => { "income" => "1" }}, valid_session
      end

      it "assigns the requested budget as @budget" do
        budget = Budget.create! valid_attributes
        put :update, {:id => budget.to_param, :budget => valid_attributes}, valid_session
        assigns(:budget).should eq(budget)
      end

      it "redirects to the budget" do
        budget = Budget.create! valid_attributes
        put :update, {:id => budget.to_param, :budget => valid_attributes}, valid_session
        response.should redirect_to(budget)
      end
    end

    describe "with invalid params" do
      it "assigns the budget as @budget" do
        budget = Budget.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Budget.any_instance.stub(:save).and_return(false)
        put :update, {:id => budget.to_param, :budget => { "income" => "invalid value" }}, valid_session
        assigns(:budget).should eq(budget)
      end

      it "re-renders the 'edit' template" do
        budget = Budget.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Budget.any_instance.stub(:save).and_return(false)
        put :update, {:id => budget.to_param, :budget => { "income" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested budget" do
      budget = Budget.create! valid_attributes
      expect {
        delete :destroy, {:id => budget.to_param}, valid_session
      }.to change(Budget, :count).by(-1)
    end

    it "redirects to the budgets list" do
      budget = Budget.create! valid_attributes
      delete :destroy, {:id => budget.to_param}, valid_session
      response.should redirect_to(budgets_url)
    end
  end

end
