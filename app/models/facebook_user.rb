class FacebookUser < ActiveRecord::Base
  attr_accessible :accessLevel, :affiliation, :lastAccess, :preferenceCommentNotify, :sessionExpires, :sessionKey, :uid
end
