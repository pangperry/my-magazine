class Article < ActiveRecord::Base

	validates_presence_of :title
	validates_presence_of :category

	validates :content, presence: true, length: {minimum: 141, maximum: 500000}
	
  # This version of the author association actually refers to the author as @article.author:
  #belongs_to :author, :class_name=>'User', :foreign_key=>:user_id

  # This version is equally valid but refers to it as @article.user:
  belongs_to :user
  

  # If we need the author of an article, we can put all the logic here instead, then just
  # ask for @article.author. This function will then trace @article.user, if present, and
  # get the user's first and last name. That prevents us from having to combine the first
  # and last name in the views every time we need the article author.
  def author
    if not user.present? or (user.first_name.blank? and user.last_name.blank?)
      "Anonymous"
    else
      [user.try(:first_name), user.try(:last_name)].reject(&:blank?).join(' ')
    end
  end

	
end
