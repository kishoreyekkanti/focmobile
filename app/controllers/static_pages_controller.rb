class StaticPagesController < ApplicationController
  # Nothing needed here because this controller is just for serving static pages with a proper layout.
  def offline_include
    render layout: false
  end
end
