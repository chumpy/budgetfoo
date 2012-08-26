class BudgetRepository

  def self.find_budgets user
    Budget.with_role :owner, user
  end

end
