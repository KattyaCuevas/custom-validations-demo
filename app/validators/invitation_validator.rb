class InvitationValidator < ActiveModel::Validator
  def validate(record)
    if record.invited_id == record.inviter_id
      record.errors.add(:base, "inviter_id can't be the same as invited_id")
    end

    if UserGroup.where(user_id: record.invited_id, group_id: record.group_id).count > 0
      record.errors.add(:base, "invited_id is already in the group")
    end

    if UserGroup.where(user_id: record.inviter_id, group_id: record.group_id).count == 0
      record.errors.add(:base, "inviter_id is not in the group")
    end
  end
end
