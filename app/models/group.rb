class Group < ApplicationRecord
  validate :name_start_with_AppGroup
  validates :name, blacklist: true

  def name_start_with_AppGroup
    unless name.start_with?('AppGroup')
      errors.add(:name, 'must start with AppGroup')
    end
  end
end
