module UserOwnershipConcern
  extend ActiveSupport::Concern
  included do
    def is_owned_by arg_user
      return user == arg_user
    end

    def validate_ownership arg_user
      forbidden! unless is_owned_by arg_user
    end
  end
end
