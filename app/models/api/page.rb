class Api::Page < ActiveRecord::Base
  attr_accessible :content, :published_on, :title
  
  validates :title, :content, :presence =>true
  validates_uniqueness_of :title

  scope :published, where('published_on IS NOT NULL AND published_on <= DATE()').order('published_on DESC')
  scope :unpublished, where('published_on IS NULL')
  
  # returns the number (sum) of words in page title & content
  def total_words
    word_count = self.title.split.size + self.content.split.size
  end

  # sets the published_on field to current date/time
  def publish
    self.published_on = Time.now
    self.save
  end
end
