data = HashWithIndifferentAccess.new(YAML::load_file(File.join(Rails.root, 'db', 'seeds.yml')))

data[:projects].each do |project|
  project_to_db = Project.create title:project[:title]
  project[:todos].each do |todo|
    todo_for_project_to_db = Todo.create text:todo[:text], project_id:project_to_db.id
  end
end
