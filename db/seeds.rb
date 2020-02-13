# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'toeic', password: 'password')

Quiz.create(question: 'とにかく', right_answer: 'anyway', user_id: 1)
Quiz.create(question: '〜に続いて (〇〇 to)', right_answer: 'following', user_id: 1)
Quiz.create(question: '参照する', right_answer: 'refer', user_id: 1)
Quiz.create(question: '入手できる(aで始まる)', right_answer: 'available', user_id: 1)
Quiz.create(question: '部門', right_answer: 'department', user_id: 1)
Quiz.create(question: '会議', right_answer: 'conference', user_id: 1)
Quiz.create(question: '〜によると (〇〇 to)', right_answer: 'according', user_id: 1)
Quiz.create(question: 'おそらく(lで始まる)', right_answer: 'likely', user_id: 1)
Quiz.create(question: '申し出る', right_answer: 'offer', user_id: 1)
Quiz.create(question: '機器(eで始まる)', right_answer: 'equipment', user_id: 1)
