module UserOwnershipConcern
  extend ActiveSupport::Concern

  def validate_ownership object
    forbidden! unless object.user == current_user
  end
end
