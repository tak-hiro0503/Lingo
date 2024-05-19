question_types = [
  { type_name: 'Reading - Incomplete Sentence' },
  { type_name: 'Reading - Text Completion' },
  { type_name: 'Reading - Comprehension' }
]

question_types.each do |qt|
  QuestionType.create(qt)
end

# Incomplete Sentence Questions
questions = [
  { question_text: 'The manager _____ the meeting for next week.', question_type: QuestionType.find_by(type_name: 'Reading - Incomplete Sentence') },
  { question_text: 'She always _____ a good job.', question_type: QuestionType.find_by(type_name: 'Reading - Incomplete Sentence') }
]

questions.each do |q|
  Question.create(q)
end

# Text Completion Questions
questions = [
  { question_text: 'If you have any questions, do not _____ to ask.', question_type: QuestionType.find_by(type_name: 'Reading - Text Completion') },
  { question_text: 'To apply for the position, please _____ the application form and submit your resume.', question_type: QuestionType.find_by(type_name: 'Reading - Text Completion') }
]

questions.each do |q|
  Question.create(q)
end

# Comprehension Questions
questions = [
  { question_text: 'When will the new policy take effect?', question_type: QuestionType.find_by(type_name: 'Reading - Comprehension') }
]

questions.each do |q|
  Question.create(q)
end

# Answers for Incomplete Sentence Questions
answers = [
  { answer_text: 'reschedule', is_correct: false, question: Question.find_by(question_text: 'The manager _____ the meeting for next week.') },
  { answer_text: 'rescheduled', is_correct: true, question: Question.find_by(question_text: 'The manager _____ the meeting for next week.') },
  { answer_text: 'rescheduling', is_correct: false, question: Question.find_by(question_text: 'The manager _____ the meeting for next week.') },
  { answer_text: 'reschedules', is_correct: false, question: Question.find_by(question_text: 'The manager _____ the meeting for next week.') },
  { answer_text: 'does', is_correct: false, question: Question.find_by(question_text: 'She always _____ a good job.') },
  { answer_text: 'do', is_correct: false, question: Question.find_by(question_text: 'She always _____ a good job.') },
  { answer_text: 'did', is_correct: false, question: Question.find_by(question_text: 'She always _____ a good job.') },
  { answer_text: 'does', is_correct: true, question: Question.find_by(question_text: 'She always _____ a good job.') }
]

answers.each do |a|
  Answer.create(a)
end

# Answers for Text Completion Questions
answers = [
  { answer_text: 'hesitate', is_correct: true, question: Question.find_by(question_text: 'If you have any questions, do not _____ to ask.') },
  { answer_text: 'hesitated', is_correct: false, question: Question.find_by(question_text: 'If you have any questions, do not _____ to ask.') },
  { answer_text: 'hesitating', is_correct: false, question: Question.find_by(question_text: 'If you have any questions, do not _____ to ask.') },
  { answer_text: 'hesitates', is_correct: false, question: Question.find_by(question_text: 'If you have any questions, do not _____ to ask.') },
  { answer_text: 'complete', is_correct: true, question: Question.find_by(question_text: 'To apply for the position, please _____ the application form and submit your resume.') },
  { answer_text: 'completed', is_correct: false, question: Question.find_by(question_text: 'To apply for the position, please _____ the application form and submit your resume.') },
  { answer_text: 'completing', is_correct: false, question: Question.find_by(question_text: 'To apply for the position, please _____ the application form and submit your resume.') },
  { answer_text: 'completes', is_correct: false, question: Question.find_by(question_text: 'To apply for the position, please _____ the application form and submit your resume.') }
]

answers.each do |a|
  Answer.create(a)
end

# Answers for Comprehension Questions
answers = [
  { answer_text: 'This month', is_correct: false, question: Question.find_by(question_text: 'When will the new policy take effect?') },
  { answer_text: 'Next month', is_correct: true, question: Question.find_by(question_text: 'When will the new policy take effect?') },
  { answer_text: 'In two months', is_correct: false, question: Question.find_by(question_text: 'When will the new policy take effect?') },
  { answer_text: 'Immediately', is_correct: false, question: Question.find_by(question_text: 'When will the new policy take effect?') }
]

answers.each do |a|
  Answer.create(a)
end
