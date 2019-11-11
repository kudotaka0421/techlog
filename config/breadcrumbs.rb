crumb :top do
  link "TOPページ", root_path
end

crumb :school_show do
  link 'スクール詳細', school_path
  parent :top
end

