class Employee < User
 #attr_accessor :email, :first_name, :middle_name, :last_name, :gender, :date_of_birth, :driver_license_no, :driver_license_expiry_date, :martial_status, :nationality, :office_address, :residence_address, :city, :state_province, :zip_code, :country, :work_number, :mobile_number, :home_number, :other_email
 has_many :emergency_contacts
 has_many :insurances
 has_many :educations
 has_many :contact_details
 has_many :employment_comencements
 has_many :job_details
 has_many :languages
 has_many :licenses
 has_many :passports
 has_many :report_tos
 has_many :skills
 has_many :visas
 has_many :work_experiences

 accepts_nested_attributes_for :emergency_contacts, :insurances, :educations, :contact_details, :employment_comencements, :job_details, :languages, :licenses,:passports, :report_tos, :skills, :visas, :work_experiences
 
  def full_name
    begin
      "#{first_name} #{middle_name} #{last_name}"
    rescue
      first_name
    end
  end
end
