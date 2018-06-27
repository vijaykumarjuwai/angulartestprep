# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#  questions = [
#       {
#         "question": "The main purpose of the first paragraph is to", 
#         "answer": [
#             {"choice": "characterize Nawab as a loving father.", "correct": "false"},
#             {"choice": "outline the schedule of a typical day in Nawab’s life", "correct": "false"},
#             {"choice": "describe Nawab’s various moneymaking ventures.", "correct": "true"},
#             {"choice": "contrast Nawab’s and Harouni’s lifestyles.", "correct": "false"}
#           ]
#       },
#         {
#         "question": "2The main purpose of the first paragraph is to", 
#         "answer": [
#             {"choice": "2characterize Nawab as a loving father.", "correct": "false"},
#             {"choice": "2outline the schedule of a typical day in Nawab’s life", "correct": "true"},
#             {"choice": "2describe Nawab’s various moneymaking ventures.", "correct": "false"},
#             {"choice": "2contrast Nawab’s and Harouni’s lifestyles.", "correct": "false"}
#           ]
#       }
#     ],

#   passages = [
#   {
#     "header": "Questions 1-10 are based on the following passage.",
#     "introduction": "This passage is adapted from Daniyal Mueenuddin, “Nawabdin Electrician.” ©2009 by Daniyal Mueenuddin.",
#     "text": [
#           {"paragraph": "Another man might have thrown up his hands—but not Nawabdin. His twelve daughters acted as a spur to his genius, and he looked with satisfaction in the mirror each morning at the face of a warrior going out to do battle. Nawab of course knew that he must proliferate his sources of revenue—the salary he received from K. K. Harouni for tending the tube wells would not even begin to suffice. He set up a little one-room flour mill, run off a condemned electric motor—condemned by him. He tried his hand at fish-farming in a little pond at the edge of his master’s fields. He bought broken radios, fixed them, and resold them. He did not demur even when asked to fix watches, though that enterprise did spectacularly badly,and in factearned him more kicks than kudos, for no watch he took apart ever kept time again."},
#           {"paragraph": "K. K. Harouni rarely went to his farms, but lived mostly in Lahore. Whenever the old man visited, Nawab wouldp lace himself night and day at the door leading from the servants’ sitting area into the walled grove of ancient banyan trees where the old farmhouse stood. Grizzled, his peculiar aviator glasses bent and smudged, Nawab tended the household machinery, the air conditioners, water heaters, refrigerators, and water pumps, like an engineer tending the boilers on a foundering steamer in an Atlantic gale. By his superhuman efforts he almost managed to maintain K. K. Harouni in the same mechanical cocoon, cooled and bathed and lighted and fed, that the landowner enjoyed in Lahore."},
#           {"paragraph": "Harouni of course became familiar with this ubiquitous man, who not only accompanied him on his tours ofi nspection, but morning and night could be found standing on the master bed rewiring the light fixture or in the bathroom poking at the water heater. Finally, one evening at teatime, gauging the psychological moment, Nawab asked if he might say a word. The landowner, who was cheerfully filingh is nails in front of a crackling rosewood fire, told him to go ahead."},
#           {"paragraph": "Sir, as you know, your lands stretch from here to the Indus, and on these lands are fully seventeen tube wells, and to tend these seventeen tubewells there is but one man, me, your servant. In your service I have earned these gray hairs”—here he bowed his head to show the gray—“and now I cannot fulfill my duties as I should. Enough, sir, enough. I beg you, forgive me my weakness. Better a darkened house and proud hunger within than disgrace in the light of day. Release me, I ask you, I beg you."},
#           {"paragraph": "The old man, well accustomed to these sorts of speeches, though not usually this florid, filed away at his nails and waited for the breeze to stop."},
#           {"paragraph": "What’s the matter, Nawabdin"},
#           {"paragraph": "Matter, sir? what could be the matter in your service. I’ve eaten your salt for all my years. But sir, on the bicycle now, with my old legs, and with the many injuries I’ve received when heavy machinery fell on me—I cannot any longer bicycle about like a bridegroom from farm to farm, as I could when I first had the good fortune to enter your employment. I beg you, sir, let me go."},
#           {"paragraph": "And what’s the solution?” asked Harouni, seeing that they had come to the crux. He didn’t particularly care one way or the other, except that it touched on his comfort—a matter of great interest to him."},
#           {"paragraph": "Well, sir, if I had a motorcycle, then I could somehow limp along, at least until I train up some younger man."},
#           {"paragraph": "The crops that year had been good, Harouni felt expansive in front of the fire, and so, much to the disgust of the farm managers, Nawab received a brand-new motorcycle, a Honda 70. He even managed to extract an allowance for gasoline."},
#           {"paragraph": "The motorcycle increased his status, gave him weight, so that people began calling him “Uncle,” and asking his opinion on world affairs, about which he knew absolutely nothing. He could now range further, doing a much wider business. Best of all, now he could spend every night with his wife, who had begged to live not on the farm but near her family in Firoza, where also they could educate at least the two eldest daughters. Along straight road ran from the canal headworks near Firoza all the way to the Indus, through the heart of the K. K. Harouni lands. Nawab would fly down this road on his new machine, with bags and cloths hanging from every knob and brace, so that the bike, when he hit a bump, seemed to be flapping numerous small vestigial wings; and with his grinning face, as he rolled up to whichever tube well needed servicing, with his ears almost blown off, he shone with the speed of his arrival."}
#     ]  
#   }
# ]
# }





Test.create!([
	{category: 'SAT', name: 'SAT Cram 1'},
])

Section.create!([
	{section: 'Reading', test: Test.where("category = 'SAT'").first }
])

Passage.create!([
	{ name: 'Passage 1', section: Section.where("section = 'Reading'").first }
])

# Paragraph.create!([
# 	{ paragraph: "Another man might have thrown up his hands—but not Nawabdin. His twelve daughters acted as a spur to his genius, and he looked with satisfaction in the mirror each morning at the face of a warrior going out to do battle. Nawab of course knew that he must proliferate his sources of revenue—the salary he received from K. K. Harouni for tending the tube wells would not even begin to suffice. He set up a little one-room flour mill, run off a condemned electric motor—condemned by him. He tried his hand at fish-farming in a little pond at the edge of his master’s fields. He bought broken radios, fixed them, and resold them. He did not demur even when asked to fix watches, though that enterprise did spectacularly badly,and in factearned him more kicks than kudos, for no watch he took apart ever kept time again.",
# 		passage: Passage.where("name = 'Passage 1'").first
# 	 }
# ])

# Question.create! ([
# 	{ question: "The main purpose of the first paragraph is to", 
# 		passage: Passage.where("name = 'Passage 1'").first}
# ])






