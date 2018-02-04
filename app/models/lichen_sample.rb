class LichenSample < ApplicationRecord
  belongs_to :biodiversity_report
  belongs_to :plot
  belongs_to :user

  validates :collected_on, presence: true
  validates :location_within_plot, presence: true
  validates :description, presence: true

  has_attached_file :photo, default_url: 'missing.png', styles: { default: '200x200#', thumbnail: '50x50#' }
  validates_attachment_content_type :photo, content_type: /\Aimage/

  ignores_present_attributes exclude: 'biodiversity_report_id'

end
