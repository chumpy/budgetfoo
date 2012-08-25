require 'spec_helper'

describe HomeController do
  

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

      
    it "assigns the budget" do
      user = User.new
      budget = Budget.new(:amount => 9.99)
      BudgetRepository.stub(:find_budgets).with(user){Array(budget)}
      controller.stub(:current_user){user}
      get 'index'
      assigns(:budgets)[0].amount.should eq(9.99)
    end

  end
end
