class User < ActiveRecord::Base

	validates_uniqueness_of :email, :case_sensitive => false

  has_many :articles, :class_name=>'Article', :foreign_key=>:user_id

  #has_many :editorials, :class_name=>'Article', :foreign_key=>:article_id

end
