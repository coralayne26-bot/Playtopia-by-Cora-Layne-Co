#!/bin/bash

# Seed Users
team-db "INSERT OR IGNORE INTO users (username, email, password_hash, coins, gems, subscription_tier) VALUES ('player1', 'player1@example.com', 'hash1', 1000, 100, 'free');"
team-db "INSERT OR IGNORE INTO users (username, email, password_hash, coins, gems, subscription_tier) VALUES ('player2', 'player2@example.com', 'hash2', 5000, 500, 'premium');"
team-db "INSERT OR IGNORE INTO users (username, email, password_hash, coins, gems, subscription_tier) VALUES ('pro_gamer', 'pro@example.com', 'hash3', 10000, 1000, 'vip');"

# Seed Games
team-db "INSERT OR IGNORE INTO games (slug, title, description, category, thumbnail) VALUES ('gem-crush', 'Gem Crush', 'A classic match-3 puzzle game.', 'Puzzle', 'gem-crush.png');"
team-db "INSERT OR IGNORE INTO games (slug, title, description, category, thumbnail) VALUES ('space-blaster', 'Space Blaster', 'Arcade space shooter with waves of enemies.', 'Arcade', 'space-blaster.png');"
team-db "INSERT OR IGNORE INTO games (slug, title, description, category, thumbnail) VALUES ('word-search', 'Word Search', 'Find hidden words in a grid.', 'Casual', 'word-search.png');"

# Seed Scores
team-db "INSERT INTO scores (user_id, game_id, score) VALUES (1, 1, 1500);"
team-db "INSERT INTO scores (user_id, game_id, score) VALUES (2, 1, 2500);"
team-db "INSERT INTO scores (user_id, game_id, score) VALUES (3, 2, 9999);"

# Seed Friendships
team-db "INSERT INTO friendships (user_id, friend_id, status) VALUES (1, 2, 'accepted');"
team-db "INSERT INTO friendships (user_id, friend_id, status) VALUES (2, 3, 'pending');"

# Seed Achievements
team-db "INSERT INTO achievements (user_id, achievement_key) VALUES (1, 'first_game');"
team-db "INSERT INTO achievements (user_id, achievement_key) VALUES (3, 'high_scorer');"
