class ManifestController < ApplicationController

  def show
    render content_type: "text/cache-manifest", layout: false
  end
end
