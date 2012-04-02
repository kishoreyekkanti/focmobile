OFFLINE = Rack::Offline.configure do
  cache "/insertion_sort.html"
  cache "/sort_home.html"
  public_path = Rails.root.join("public")
  Dir[public_path.join("*.html"),
      public_path.join("*/*.*")].each do |file|
    p = Pathname.new(file)
    cache p.relative_path_from(public_path)
  end

  network "/"
end