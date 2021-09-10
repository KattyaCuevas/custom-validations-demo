class BlacklistValidator < ActiveModel::EachValidator
  WORDS = %w(user group 123)
  def validate_each(record, attribute, value)
    if WORDS.any? { |word| value.include?(word) }
      record.errors.add(attribute, "is in the blacklist")
    end
  end
end
