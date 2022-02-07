class OrganizationPolicy < ApplicationPolicy
    attr_reader :user, :record

    def initialize(user, record)
      @user = user
      @record = record
    end
  
    def index?
      true
    end
  
    def show?
      true
    end
  
    def create?
      true
    end
  
    def new?
      true
    end
  
    def update?
      true
    end
  
    def edit?
      true
    end
  
    def destroy?
      true
    end
  
    class Scope
      def initialize(user, scope)
        @user = user
        @scope = scope
      end
  
      def resolve
        if user.is_admin
            scope.all
        else
            scope.where(user_id: user.id)
        end
      end
  
      private
  
      attr_reader :user, :scope
    end
end