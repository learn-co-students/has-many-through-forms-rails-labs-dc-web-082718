class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user,
  reject_if: Proc.new{|user_attributes| user_attributes[:username].blank?}

  def username
    self.user.username
  end

end
