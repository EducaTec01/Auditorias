# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    Role.create(name: 'admin')
    Role.create(name: 'jefe')
    Role.create(name: 'auditor')
    Role.create(name: 'auditado')
    Departamento.create(nombre: 'Sistemas', descripcion:'departamento de sistemas')
    Departamento.create(nombre: 'Industrial', descripcion:'departamento de industrial')
    User.create(email: 'admin@admin.com', password:'password', first_name:'admin', last_name:'auditoria', role_id:1, departamento_id:1)
    User.create(email: 'jefa@jefa.com', password:'password', first_name:'jefa', last_name:'auditoria', role_id:2, departamento_id:1)
    User.create(email: 'auditor@auditor.com', password:'password', first_name:'auditor', last_name:'auditoria', role_id:3, departamento_id:2)
    User.create(email: 'auditado@auditado.com', password:'password', first_name:'auditado', last_name:'auditoria', role_id:4, departamento_id:2)
    