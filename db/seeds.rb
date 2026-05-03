# db/seeds.rb
# 50 meals (Nigerian + International) + 25 health tips
# Real YouTube tutorial links + Unsplash images

Meal.destroy_all
Tip.destroy_all

Meal.create!([
  # =====================
  # 🍳 BREAKFAST (10)
  # =====================
  { name: "Akara & Pap (Ogi)", category: "breakfast", emoji: "🍘",
    image_url: "meals/akara.jpg",
    description: "Crispy Nigerian bean cakes served with smooth fermented corn pap.",
    recipe_steps: "Soak black-eyed peas 2 hours and peel. Blend with onion and pepper. Whisk batter until fluffy. Deep fry scoops until golden. Serve hot with warm pap.",
    youtube_url: "https://youtu.be/r2hVi_f4M6g?si=fcgfpPhZeVl0xfHS" },

  { name: "Yam & Egg Sauce", category: "breakfast", emoji: "🍠",
   image_url: "meals/yam-egg.jpg",
    description: "Boiled white yam with peppery tomato and egg sauce.",
    recipe_steps: "Peel and boil yam slices with salt. Sauté onions, peppers, tomatoes in oil. Add beaten eggs and scramble. Serve yam with the sauce on top.",
    youtube_url: "https://youtu.be/4Eo5Oo-K5hQ?si=ljbIKuvwkp5-oFrn" },

  { name: "Moi Moi", category: "breakfast", emoji: "🫘",
    image_url: "meals/moimoi.jpg",
    description: "Steamed Nigerian bean pudding rich in protein.",
    recipe_steps: "Blend peeled beans with pepper, onion and crayfish. Mix in palm oil, stock and seasoning. Pour into wraps or ramekins. Steam 45 minutes until set.",
    youtube_url: "https://youtu.be/7lOH8iJlVQE?si=TvARnQ7ZgYyW4iSO" },


  { name: "Fluffy Pancakes & Maple Syrup", category: "breakfast", emoji: "🥞",
    image_url: "https://images.unsplash.com/photo-1528207776546-365bb710ee93?w=800&q=80&auto=format",
    description: "Soft golden American-style pancakes with butter and syrup.",
    recipe_steps: "Whisk flour, baking powder, sugar, salt. Combine milk, egg, butter; fold into dry mix. Cook ladles on hot pan, flip when bubbles form. Stack and drizzle syrup.",
    youtube_url: "https://youtu.be/9zCVCL4V8JQ?si=r2kn9_7jju6L1nrK" },


  { name: "Beans Porridge (Ewa)", category: "breakfast", emoji: "🍲",
 image_url: "meals/beans-.jpg",
    description: "Soft mashed beans simmered with palm oil and pepper.",
    recipe_steps: "Boil beans with onion until tender. Add palm oil, pepper, crayfish, seasoning. Simmer until thick and creamy. Serve with bread or fried plantain.",
    youtube_url: "https://youtu.be/gG2biqawoEM?si=wV_Zt4fGk-AAlqTV" },

  { name: "French Toast", category: "breakfast", emoji: "🍞",
    image_url: "https://images.unsplash.com/photo-1484723091739-30a097e8f929?w=800&q=80&auto=format",
    description: "Bread soaked in cinnamon-vanilla custard, fried golden.",
    recipe_steps: "Whisk eggs, milk, vanilla, cinnamon. Dip thick bread slices fully. Pan-fry in butter until golden each side. Dust with sugar and serve with berries.",
    youtube_url: "https://youtu.be/sdgroNuyKdI?si=DfvVSG2J8CpobASw" },

  { name: "Classic English Breakfast", category: "breakfast", emoji: "🍳",
    image_url: "https://images.unsplash.com/photo-1533089860892-a7c6f0a88666?w=800&q=80&auto=format",
    description: "Eggs, bacon, sausage, beans, mushrooms and toast.",
    recipe_steps: "Fry sausages slowly until browned. Cook bacon and mushrooms. Warm baked beans and toast bread. Fry eggs sunny-side up; plate together.",
    youtube_url: "https://youtu.be/nOpV4UnPebo?si=GKRJkNtO5K-BM0U4" },

  { name: "Greek Yogurt Parfait", category: "breakfast", emoji: "🥄",
    image_url: "https://images.unsplash.com/photo-1488477181946-6428a0291777?w=800&q=80&auto=format",
    description: "Layers of yogurt, granola and fresh berries.",
    recipe_steps: "Spoon Greek yogurt into a glass. Layer with granola and mixed berries. Repeat layers. Drizzle honey before serving.",
    youtube_url: "https://youtu.be/P_uCJF-P770?si=r75fgqBE-VMZPufC" },

  { name: "Bread, Akara & Tea", category: "breakfast", emoji: "🍞",
       image_url: "meals/bread-akara.jpg",
    description: "Classic Nigerian street breakfast — soft bread, akara, hot tea.",
    recipe_steps: "Brew strong tea with milk and sugar. Slice fresh agege bread. Stuff with hot akara balls. Enjoy with tea.",
    youtube_url: "https://youtu.be/r2hVi_f4M6g?si=K-x3x-wIjhOZK1hG" },

  { name: "Fruit Salad Bowl", category: "breakfast", emoji: "🍉",
    image_url: "https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?w=800&q=80&auto=format",
    description: "Fresh mixed seasonal fruit bowl.",
    recipe_steps: "Wash and chop watermelon, pineapple, banana, apple. Toss in a bowl. Squeeze lime over top. Chill 10 minutes and serve.",
    youtube_url: "https://youtu.be/OSCtjF-Cj3A?si=6L8AmZV6U2PRLziP" },

  # =====================
  # ☀️ LUNCH (10)
  # =====================

  { name: "Ewa Agoyin", category: "lunch", emoji: "🍲",
    image_url: "meals/beans.jpg",
    description: "Soft beans with spicy caramelized pepper sauce.",
recipe_steps: "Soak beans overnight. Boil until soft. Blend pepper, onion, and oil. Fry sauce until fragrant. Mix beans with sauce and simmer for 10–15 minutes. Serve hot with bread or plantain.",
    youtube_url: "https://youtu.be/_kkCHjacG7U?si=FMg-teZtSKOj1og_"
  },


  { name: "Masa (Waina)", category: "breakfast", emoji: "🍙",
    image_url: "meals/waina.jpg",
    description: "Northern Nigerian rice cakes, soft and slightly sweet.",
    recipe_steps: "Soak rice 4 hours, blend with yeast and sugar. Let batter rise 1 hour. Cook in greased masa pan until golden. Serve with stew or honey.",
    youtube_url: "https://youtu.be/nZjYGsFUjWU?si=6H6q7rnDPXHQoRyh" },

  { name: "Plantain & Egg", category: "breakfast", emoji: "🍳",
    image_url: "meals/plantain-egg.jpg",
    description: "Fried sweet plantain with peppered scrambled eggs.",
    recipe_steps: "Slice ripe plantain and fry until caramelized. Beat eggs with diced pepper, onion, salt. Scramble eggs softly. Plate plantain with eggs.",
    youtube_url: "https://youtu.be/dZ6VkI1UXuY?si=vhCZmYNUsa8uyxP4" },

  { name: "Egusi Soup & Pounded Yam", category: "lunch", emoji: "🥣",
        image_url: "meals/egusi.jpg",
    description: "Rich melon-seed soup with leafy greens and meat.",
    recipe_steps: "Cook assorted meats with stock. Add palm oil, ground egusi, pepper; simmer. Stir in spinach and crayfish. Serve with pounded yam or fufu.",
    youtube_url: "https://youtu.be/Tf3KrDOlHZ4?si=5ECGGEW0IlkmmVwo" },

  { name: "Chicken Shawarma", category: "lunch", emoji: "🌯",
    image_url: "https://images.unsplash.com/photo-1561651823-34feb02250e4?w=800&q=80&auto=format",
    description: "Grilled spiced chicken wrapped with veggies and garlic sauce.",
    recipe_steps: "Marinate chicken in yogurt, garlic, shawarma spices. Grill until charred. Warm pita and spread garlic sauce. Fill with chicken, lettuce, tomato; roll.",
    youtube_url: "https://youtu.be/gr12KLMNg4U?si=el_-8hjUB5HTPhLM" },

  { name: "Spaghetti Bolognese", category: "lunch", emoji: "🍝",
    image_url: "meals/spag.jpg",
    description: "Italian pasta in a rich slow-cooked meat sauce.",
    recipe_steps: "Brown minced beef with onion and garlic. Add tomatoes, herbs, milk; simmer 30 minutes. Cook spaghetti al dente. Toss with sauce and parmesan.",
    youtube_url: "https://youtu.be/I47pr0bCijk?si=Nedp02b7nalSI8h0" },

  { name: "Ofada Rice & Ayamase", category: "lunch", emoji: "🍛",
    image_url: "meals/ofada.jpg",
    description: "Local Nigerian brown rice with smoky green pepper stew.",
    recipe_steps: "Boil ofada rice until tender; drain. Blend green peppers, onion; bleach palm oil. Fry pepper mix with locust beans and assorted meat. Serve over rice.",
    youtube_url: "https://youtu.be/M2PHv2LyCEU?si=QQftOHhu6Z0AZJSS" },


  { name: "Chicken Tikka Masala", category: "lunch", emoji: "🍛",
    image_url: "https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=800&q=80&auto=format",
    description: "Indian grilled chicken in creamy spiced tomato sauce.",
    recipe_steps: "Marinate chicken in yogurt and tikka spices; grill. Sauté onion, garlic, ginger, tomato puree. Stir in cream and garam masala; simmer. Add chicken; serve with rice.",
    youtube_url: "https://youtu.be/lnRmIKkGCIA?si=IVgTQRkBo6EVYe8v" },

  { name: "Amala & Ewedu", category: "lunch", emoji: "🍲",
       image_url: "meals/amala.jpg",
    description: "Yam flour swallow with smooth ewedu soup and gbegiri.",
    recipe_steps: "Cook ewedu leaves with broom whisk. Prepare gbegiri and stew separately. Stir yam flour into hot water for amala. Plate all three with assorted meat.",
    youtube_url: "https://youtu.be/nOyRw2Vl7kc?si=kZisK29idt0KUMW8" },

  { name: "Pad Thai", category: "lunch", emoji: "🍜",
    image_url: "https://images.unsplash.com/photo-1559314809-0d155014e29e?w=800&q=80&auto=format",
    description: "Stir-fried rice noodles with shrimp, peanuts and lime.",
    recipe_steps: "Soak rice noodles in warm water. Stir-fry garlic, shrimp, tofu in hot oil. Add noodles, pad thai sauce, beaten egg. Top with peanuts, sprouts, lime.",
    youtube_url: "https://youtu.be/b7YnoRFuZ9o?si=7o_aHoqI1oEiYSCs" },

  # =====================
  # 🌙 DINNER (10)
  # =====================
  
  { name: "Efo Riro & Semovita", category: "dinner", emoji: "🥬",
    image_url: "meals/efo.jpg",
    description: "Rich vegetable soup with assorted meats and stockfish.",
    recipe_steps: "Bleach palm oil; fry blended pepper-onion. Add stockfish, ponmo, seasoning; simmer. Stir in chopped spinach. Serve hot with semovita or eba.",
    youtube_url: "https://youtu.be/qz5AsrqOhNc?si=z7mrq78nWPdIzn7B" },

  { name: "Egusi & Eba", category: "dinner", emoji: "🍲",
    image_url: "meals/eba.jpg",
    description: "Classic Nigerian melon-seed soup with cassava swallow.",
    recipe_steps: "Cook meats with seasoning until tender. Mix ground egusi with water; add to pot in clumps. Add palm oil, pepper, stockfish; simmer 15 min. Stir in greens; serve with eba.",
    youtube_url: "https://youtube.com/shorts/3TuMcGyOIvk?si=6xSDnHHaR6-h5syP" },

  { name: "Sushi Platter", category: "dinner", emoji: "🍣",
    image_url: "meals/sushi.jpg",
    description: "Assorted nigiri and rolls with soy and wasabi.",
    recipe_steps: "Cook and season sushi rice. Roll nori with rice, fish, cucumber. Slice into bite pieces. Serve with soy, ginger, wasabi.",
    youtube_url: "https://youtu.be/2MEOK0IV0vQ?si=CVctR_mkYLjFTGCm" },

  { name: "Beef Stew & White Rice", category: "dinner", emoji: "🍚",
    image_url: "meals/rice.jpg",
    description: "Slow-cooked Nigerian tomato stew with chunks of beef.",
    recipe_steps: "Boil beef with onion and seasoning until tender. Blend tomato, pepper, onion; reduce in oil. Add beef and stock; simmer 25 min. Serve over white rice.",
    youtube_url: "https://youtu.be/DKRJ4RDS-F8?si=NVbVGmAHIT16CzmN" },

  { name: "Ramen Bowl", category: "dinner", emoji: "🍜",
   image_url: "meals/ramen.jpg",
    description: "Japanese noodle soup with broth, egg and pork.",
    recipe_steps: "Simmer pork bones with garlic, ginger for broth. Cook ramen noodles separately. Soft-boil eggs 6.5 min. Assemble noodles, broth, pork, egg, scallions.",
    youtube_url: "https://youtu.be/CltUZnoUDFM?si=MEfGgIIOt3WUFT2A" },

  { name: "Banga Soup & Starch", category: "dinner", emoji: "🍲",
    image_url: "meals/banga.jpg",
    description: "Niger Delta palm-fruit soup with assorted seafood.",
    recipe_steps: "Boil palm fruits and extract juice. Cook with banga spice, fish, seasoning. Simmer until thick and aromatic. Serve with starch or eba.",
    youtube_url: "https://youtu.be/3n2lYmpzGKg?si=CMjGYC_ZbaOi7eIk" },

  { name: "Greek Gyro Plate", category: "dinner", emoji: "🥙",
    image_url: "meals/greek.jpg",
    description: "Grilled meat with tzatziki, pita, salad and rice.",
    recipe_steps: "Marinate pork or chicken in lemon, oregano, garlic. Grill until charred. Make tzatziki with yogurt, cucumber, dill. Plate with pita, rice, salad, tzatziki.",
    youtube_url: "https://youtube.com/shorts/kTeC5O_K2eU?si=VNRR0pQRWO_yXHRW" },

  { name: "Pounded Yam & Ogbono Soup", category: "dinner", emoji: "🥣",
    image_url: "meals/ogbono.jpg",
    description: "Stretchy ogbono soup with smooth pounded yam.",
    recipe_steps: "Cook assorted meats with seasoning. Mix ground ogbono with palm oil; add to pot. Stir continuously to develop the draw. Serve with pounded yam.",
    youtube_url: "https://youtube.com/shorts/a5y6CgpBhVo?si=7sq2s07hc9UglNqW" },

  { name: "Beef Lasagna", category: "dinner", emoji: "🍝",
    image_url: "meals/beef.jpg",
    description: "Layered pasta with meat ragu, béchamel and cheese.",
    recipe_steps: "Cook beef ragu with tomato, herbs, wine 40 min. Make creamy béchamel. Layer pasta, ragu, béchamel, cheese in dish. Bake 180°C for 35 min.",
    youtube_url: "https://youtu.be/fVDsTP-pTXs?si=1RxZywmOSO97v9ze" },

  { name: "Butter Garlic Shrimp Pasta", category: "dinner", emoji: "🍤",
    image_url: "meals/garlic.jpg",
    description: "Linguine tossed in garlic butter with juicy shrimp.",
    recipe_steps: "Cook linguine al dente in salted water. Sauté garlic in butter; add shrimp 2 min per side. Add lemon juice, parsley, pasta water. Toss pasta; finish with parmesan.",
    youtube_url: "https://youtu.be/tUXhYIJPgNY?si=EQ_BCrRMEbLeOvme" }
])

# =====================
# 💡 HEALTH TIPS (25)
# =====================
Tip.create!([
  # ================= NUTRITION =================
  { content: "Start your day with protein-rich breakfast to stay full longer.", category: "nutrition" },
  { content: "Include beans or legumes at least 3 times a week.", category: "nutrition" },
  { content: "Drink water before meals to aid digestion and reduce overeating.", category: "nutrition" },
  { content: "Replace sugary drinks with water or unsweetened tea.", category: "nutrition" },
  { content: "Add healthy fats like avocado or olive oil in moderation.", category: "nutrition" },
  { content: "Don’t skip breakfast — it stabilizes energy levels.", category: "nutrition" },
  { content: "Eat slowly to give your brain time to signal fullness.", category: "nutrition" },
  { content: "Avoid eating while distracted by TV or phone.", category: "nutrition" },
  { content: "Reduce intake of packaged snacks high in preservatives.", category: "nutrition" },
  { content: "Eat more natural foods than processed foods.", category: "nutrition" },

  # ================= HEALTH =================
  { content: "Take short walks after meals to improve digestion.", category: "health" },
  { content: "Practice good posture while eating and sitting.", category: "health" },
  { content: "Replace sugary snacks with fruits when craving sweets.", category: "health" },
  { content: "Avoid late-night heavy meals to protect metabolism.", category: "health" },
  { content: "Stay hydrated even when you’re not thirsty.", category: "health" },
  { content: "Wash fruits and vegetables thoroughly before eating.", category: "health" },
  { content: "Use smaller plates to naturally reduce portion size.", category: "health" },
  { content: "Don’t ignore regular body check-ups.", category: "health" },
  { content: "Avoid skipping meals — it affects blood sugar balance.", category: "health" },
  { content: "Limit alcohol and caffeine intake.", category: "health" },

  # ================= FITNESS =================
  { content: "Warm up before exercise to prevent injuries.", category: "fitness" },
  { content: "Consistency matters more than intensity in fitness.", category: "fitness" },
  { content: "Try bodyweight exercises if you don’t have gym access.", category: "fitness" },
  { content: "Take stairs instead of elevators when possible.", category: "fitness" },
  { content: "Stay active even on rest days with light movement.", category: "fitness" },

  # ================= LIFESTYLE =================
  { content: "Maintain a consistent sleep schedule daily.", category: "lifestyle" },
  { content: "Write down your meals to track eating habits.", category: "lifestyle" },
  { content: "Spend at least 15 minutes outdoors daily.", category: "lifestyle" },
  { content: "Practice gratitude to improve mental wellness.", category: "lifestyle" },
  { content: "Limit junk food availability at home.", category: "lifestyle" },
  { content: "Plan meals ahead to avoid unhealthy choices.", category: "lifestyle" }
])

puts "✅ Seeded #{Meal.count} meals and #{Tip.count} tips."
