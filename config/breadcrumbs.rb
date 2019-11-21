crumb :top do
  link "TOPページ", root_path
end

crumb :school_show do
  @school = School.find(params[:id])
  link "#{@school.name}", school_path
  parent :top
end

