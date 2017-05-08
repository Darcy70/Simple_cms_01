class Section < ApplicationRecord

  acts_as_list :scope => :subject

  belongs_to :page
  has_many :section_edits
  has_many :admin_users, :through => :section_edits

  scope :sorted, lambda { order("position ASC")}

  CONTENT_TYPES = ['text', 'HTML']

  # validates_presence_of :name
  # validates_length_of :name, :maximum => 255
  # validates_inclusion_of :content_type, :in => CONTENT_TYPES, :message => "must be one of: #{CONTENT_TYPES.join(', ')}"
  # validates_presence_of :content

  validates :name, :presence => true, :length => {:maximum => 255}
  validates :content_type, :inclusion => {:in => CONTENT_TYPES, :message => "must be one of:#{CONTENT_TYPES.join(', ')}"}
  validates :content, :presence => true

end
