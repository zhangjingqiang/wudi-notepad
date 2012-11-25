class Ability
  include CanCan::Ability

  def initialize(user)

    if user.blank?
      # not logged in
      cannot :manage, :all
    elsif user.has_role?(:member)
      # Notepad
      can :create, Notepad
      can :read, Notepad do |notepad|
        notepad.user_id == user.id
      end
      can :update, Notepad do |notepad|
        notepad.user_id == user.id
      end
      can :destroy, Notepad do |notepad|
        notepad.user_id == user.id
      end
    else
      # banned or unknown situation
      cannot :manage, :all
    end

  end

end
