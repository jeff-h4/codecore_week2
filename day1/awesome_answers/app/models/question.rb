class Question < ActiveRecord::Base
  # This prevents the record from saving or updating unless a title is
  # supplied
  #validates :title, presence: {message: "must be present"}, 
  #                  uniqueness: true,
  #                  length: {minimum: 3}  # Must have at least 3 chars
  # uniqueness {scope: :body} means combination of title and body must 
  # be unique
  #validates :title, presence: {message: "must be present"}, 
  #                  uniqueness: {scope: :body},
  #                  length: {minimum: 3}  # Must have at least 3 chars
  validates :title, presence: {message: "must be present"}, 
                    uniqueness: true,
                    exclusion: {in: %w(Apple Microsoft Sony)}

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

  after_initialize :set_defaults
  before_save :capitalize_title

  def self.recent
    order(:created_at).reverse_order
  end

  def self.ten
    limit(10)
  end
  # shortcuts
  #scope :recent, lambda { order(:created_at).reverse_order}
  #scope :recent, -> { order(:created_at).reverse_order}
  scope :recently, -> input_date { where("created_at < :date", date: input_date) }
  scope :recently_sale3, -> { where("sale_price < price").order(:sale_price).limit(3) }

  def self.search(item)
    search_term= "%#{item}%"
    #where(["title ILIKE ? or body ILIKE ?", item, item])
    where(["title ILIKE :term or body ILIKE :term", {term: search_term}])
    #where("title || ' ' || body ILIKE ? ", search_term)
    #Question.where(["title ILIKE ? or body ILIKE ?","%Empower%","%Qui%"])
  end

  private
  def no_monkey
    if title.present? && title.downcase.include?("monkey")
      #adds to the errors object attached to the current object
      #if the errors object is no an empty hash, then Rails treats
      #the record as invalid
      errors.add(:title, "can't have monkey!")
    end
  end  

  def set_defaults
    self.view_count3 ||= 0 #If unitialized or nil, set to 0. otherwise nothing.
  end
  def capitalize_title
    self.title.capitalize!
  end
end
