class Article < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :title, :video, :presence => true

  def previous
    Article.where("subject_id = ? and lesson_id < ?", subject_id, lesson_id).order("lesson_id DESC").first
  end

  def next
    Article.where("subject_id = ? and lesson_id > ?", subject_id, lesson_id).order("lesson_id ASC").first
  end
end
