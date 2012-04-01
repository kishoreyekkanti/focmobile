class ManifestController < ApplicationController

  def show
    @updated_time = Time.now
    render content_type: "text/cache-manifest", layout: false
  end
end
