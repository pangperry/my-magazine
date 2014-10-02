class Article < ActiveRecord::Base

	validates_presence_of :title
	validates_presence_of :category

	validates :content, presence: true, length: {minimum: 141, maximum: 500000}
	
  #belongs_to :author, :class_name=>'User', :foreign_key=>:user_id
  belongs_to :user

  










=begin
  def author
    if not user.present? or (user.first_name.blank? and user.last_name.blank?)
      "Anonymous"
    else
      [user.try(:first_name), user.try(:last_name)].reject(&:blank?).join(' ')
    end
  end
=end

	
end
