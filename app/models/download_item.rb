class DownloadItem < ActiveRecord::Base
  attr_accessible :assignment_id, :key, :path
end
