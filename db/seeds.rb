# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

University.create full_name: "Universidad Peruana de Ciencias Aplicadas", short_name: "UPC"

KnowledgeType.create [
  {name: "Tarea"}, 
  {name: "Tarea de Investigación"}, 
  {name: "Examen"}, 
  {name: "Examen Parcial"},
  {name: "Examen Final"}, 
  {name: "Trabajo de Curso"}, 
  {name: "Proyecto de Cursos"}, 
  {name: "Video de Clase"}, 
  {name: "Audio de clase"}
]


