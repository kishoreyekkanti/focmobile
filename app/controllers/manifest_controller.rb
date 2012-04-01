class ManifestController < ApplicationController

  def show
    time = Time.now
    @updated_time = time.year.to_s+time.month.to_s+time.day.to_s+time.hour.to_s+time.min.to_s
    render content_type: "text/cache-manifest", layout: false
  end
end
