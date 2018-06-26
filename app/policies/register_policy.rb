class RegisterPolicy < ApplicationPolicy
  def index?
    # true
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~ IN INDEX."
    user.present?
    # return true if user.present? && user.email == "admin@test.te"
  end

  def create?
    user.present?
  end

  def show
  end

  def update?
    return true if user.present? && user == register.user
  end

  def destroy?
    # return true if user.present? && user == register.user
    return true if user.present? && user.email == "admin@test.te"
  end

  private

    def register
      record
    end
end
