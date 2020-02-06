# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'tomoyo', password: 'password')

Question.create(q_body: 'アイデンティティ', a_body: 'identity', user_id: 1)
Question.create(q_body: '動物園', a_body: 'zoo', user_id: 1)
Question.create(q_body: 'エンジニア', a_body: 'engineer', user_id: 1)
Question.create(q_body: '群衆', a_body: 'crowd', user_id: 1)
Question.create(q_body: '案内人', a_body: 'guide', user_id: 1)
Question.create(q_body: '隣人', a_body: 'neighbor', user_id: 1)
Question.create(q_body: '注文する', a_body: 'order', user_id: 1)
Question.create(q_body: '横切る', a_body: 'cross', user_id: 1)
Question.create(q_body: '選ぶ', a_body: 'select', user_id: 1)
Question.create(q_body: '成功する', a_body: 'succeed', user_id: 1)
Question.create(q_body: '受け取る', a_body: 'receive', user_id: 1)
Question.create(q_body: '所属する', a_body: 'belong', user_id: 1)
