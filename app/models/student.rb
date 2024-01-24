class Student < ApplicationRecord
    validates :first_name, :last_name, :date_of_birth, presence: true
    validate :date_of_birth_validations

    private
    
    def date_of_birth_validations
        if date_of_birth.present? && date_of_birth.is_a?(Date)
            if date_of_birth > 10.years.ago.to_date && date_of_birth < Date.current
                errors.add(:date_of_birth, "must be at least 10 years old")
            end

            if date_of_birth > Date.current
                errors.add(:date_of_birth, "cannot be in the future")
            end
        end
  end
end
