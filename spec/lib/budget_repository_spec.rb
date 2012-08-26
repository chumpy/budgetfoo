require 'spec_helper'

describe BudgetRepository do
  context "the user owns the budget" do
    it "returns the budgets for the user" do
      user = FactoryGirl.create :user, {email: 'test@example.com', password: 'password'}
      budget = FactoryGirl.create :budget
      user.add_role :owner, budget
      returned_budget = BudgetRepository.find_budgets user
      assert_equal returned_budget.first, budget
    end
  end

end
