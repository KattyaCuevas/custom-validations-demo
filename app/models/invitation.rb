class Invitation < ApplicationRecord
  belongs_to :invited, class_name: "User"
  belongs_to :inviter, class_name: "User"
  belongs_to :group

  validates_with InvitationValidator
end
