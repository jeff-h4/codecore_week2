class Question < ActiveRecord::Base
  # This prevents the record from saving or updating unless a title is
  # supplied
  #validates :title, presence: {message: "must be present"}, 
  #                  uniqueness: true,
  #                  length: {minimum: 3}  # Must have at least 3 chars
  # uniqueness {scope: :body} means combination of title and body must 
  # be unique
  validates :title, presence: {message: "must be present"}, 
                    uniqueness: {scope: :body},
                    length: {minimum: 3}  # Must have at least 3 chars

  validates :body, presence: true

  #numericality validates that the provided field is a number.
  #You can give it: greather_than, greater_than_or_equal_to, less_than,
  #less_than_or_equal_to
  validates :view_count3, presence: true,
                          numericality: {greater_than_or_equal_to: 0}
  # format validation (This probalby isn't the full regex, but it's
  # an email regex)
  # validates :email, format: /\A[\w+\-,]+@[a-z\d\-]+(\.[a-z]*\.[a-z]+\z/i
  
  #Use validate for custom validate method that we can
  #have any kind of Ruby code in.
  validate :no_monkey

  private
  def no_monkey
    if title.present? && title.downcase.include?("monkey")
      #adds to the errors object attached to the current object
      #if the errors object is no an empty hash, then Rails treats
      #the record as invalid
      errors.add(:title, "can't have monkey!")
    end
  end  

end
