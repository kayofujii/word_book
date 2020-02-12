# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'tomoyo', password: 'password')

Quiz.create(question: 'アイデンティティ', right_answer: 'identity', user_id: 1)
Quiz.create(question: '動物園', right_answer: 'zoo', user_id: 1)
Quiz.create(question: 'エンジニア', right_answer: 'engineer', user_id: 1)
Quiz.create(question: '群衆', right_answer: 'crowd', user_id: 1)
Quiz.create(question: '案内人', right_answer: 'guide', user_id: 1)
Quiz.create(question: '隣人', right_answer: 'neighbor', user_id: 1)
Quiz.create(question: '注文する', right_answer: 'order', user_id: 1)
Quiz.create(question: '横切る', right_answer: 'cross', user_id: 1)
Quiz.create(question: '選ぶ', right_answer: 'select', user_id: 1)
Quiz.create(question: '成功する', right_answer: 'succeed', user_id: 1)
Quiz.create(question: '受け取る', right_answer: 'receive', user_id: 1)
Quiz.create(question: '所属する', right_answer: 'belong', user_id: 1)
