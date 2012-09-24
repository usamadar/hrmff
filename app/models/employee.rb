class Employee < ActiveRecord::Base
  belongs_to :airline
  belongs_to :relation
  belongs_to :employee
  has_many :employees, :dependent => :destroy

  attr_accessible :address, :airline_id, :avatar, :country, :dob, :email, :employee_id, :enabled, :external_id, :first_name, :gender, :home_phone, :last_name, :mobile, :nationality, :office_phone, :passport_expiry_date, :passport_issue_country, :passport_issue_date, :passport_number, :relation_id, :role_name, :title, :zip, :employment_number, :employment_date, :card_number, :card_expiry_date 
  has_attached_file :avatar, :styles => { :medium => "50x50>", :thumb => "30x30>", :normal => "50X50>" }, :default_url => "/images/missing.jpeg", :default_style => :thumb
  validates :address, presence: true
  validates :airline_id, presence: true
  validates :country, presence: true
  validates :dob, presence:true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
  
  validates :enabled, presence: true
  validates :first_name, presence: true
  validates :gender, presence: true
  validates :last_name, presence: true
  validates :nationality, presence: true
  validates :passport_expiry_date, presence: true
  validates :passport_issue_country, presence: true
  validates :passport_issue_date, presence: true
  validates :passport_number, presence: true
  validates :relation_id, presence: true
  validates :role_name, presence: true
  validates :title, presence: true
  validates :zip, presence: true

  validate :any_present?

  validate :validate_relationship

  def any_present?
    if %w(mobile home_phone office_phone).all?{|attr| self[attr].blank?}
        errors.add :base, "Please provide atleast one phone number"
    end
  end

  validate :passport_issue_date_less_then_expiry_date
  
  def passport_issue_date_less_then_expiry_date
       if self.passport_issue_date && self.passport_expiry_date  && self.passport_issue_date > self.passport_expiry_date
            errors.add(:passport_issue_date, "must be before expiry date") 
        end
  end

  def validate_relationship
    if self.relation && self.relation.name != "self" && self.employee == nil
      errors.add :base,  "Please specify the employee this person is related to" 
    end
  end
end
