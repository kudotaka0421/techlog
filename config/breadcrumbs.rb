crumb :top do
  link "TOP", root_path
end
crumb :school_show do
  @school = School.find(params[:id])
  link "#{@school.name}", school_path
  parent :top
end

crumb :location_show do
  @location = Location.find(params[:id])
  link "#{@location.name}のスクール", location_path
  parent :top
end

crumb :language_show do
  @language = Language.find(params[:id])
  link "#{@language.name}が学べるスクール", location_path
  parent :top
end

