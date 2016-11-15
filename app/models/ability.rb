class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, Product
      can :manage, User, :id => user.id
      can :create, Comment
      can :destroy, Comment do |comment|
      	comment.user == user
      end
    end
  end

end