module AdminValidator
  class CreateStaffValidator
    include ActiveModel::Model

    attr_accessor :email, :name, :password, :phone, :status
    validates :email, presence: true
    validates :email, length: { maximum: 5 }
    # validate :email_uniqueness, if: -> { email.present? && email.length <= 255 }
  end

  def assign_attributes(attributes = {})
    attributes.each do |key, value|
      public_send("#{key}=", value)
    end
  end

  def error_messages
    errors.to_hash(true)
  end

  private

  def email_uniqueness
    staff = Staff.where('email = ?', email)

    return errors.add(:staff, :taken) if staff.present? || staff.count != 0
  end
end
