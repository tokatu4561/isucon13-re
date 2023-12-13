TRUNCATE TABLE themes;
TRUNCATE TABLE icons;
TRUNCATE TABLE reservation_slots;
TRUNCATE TABLE livestream_viewers_history;
TRUNCATE TABLE livecomment_reports;
TRUNCATE TABLE ng_words;
TRUNCATE TABLE reactions;
TRUNCATE TABLE tags;
TRUNCATE TABLE livestream_tags;
TRUNCATE TABLE livecomments;
TRUNCATE TABLE livestreams;
TRUNCATE TABLE users;

ALTER TABLE `themes` auto_increment = 1;
ALTER TABLE `icons` auto_increment = 1;
ALTER TABLE `reservation_slots` auto_increment = 1;
ALTER TABLE `livestream_tags` auto_increment = 1;
ALTER TABLE `livestream_viewers_history` auto_increment = 1;
ALTER TABLE `livecomment_reports` auto_increment = 1;
ALTER TABLE `ng_words` auto_increment = 1;
ALTER TABLE `reactions` auto_increment = 1;
ALTER TABLE `tags` auto_increment = 1;
ALTER TABLE `livecomments` auto_increment = 1;
ALTER TABLE `livestreams` auto_increment = 1;
ALTER TABLE `users` auto_increment = 1;

ALTER TABLE livestreams ADD INDEX `livestreams_user_id` (`user_id`);

ALTER TABLE reservation_slots ADD INDEX `reservation_slots_start_at_end_at` (`start_at`, `end_at`);

ALTER TABLE livestream_tags ADD INDEX `livestream_tags_livestream_id` (`livestream_id`);
ALTER TABLE livestream_tags ADD INDEX `livestream_tags_tag_id_livestream_id` (`tag_id`, `livestream_id`);

ALTER TABLE livecomments ADD INDEX `livecomments_livestream_id` (`livestream_id`);

ALTER TABLE ng_words ADD INDEX `ng_words_user_id` (`user_id`);
ALTER TABLE ng_words ADD INDEX `ng_words_livestream_id` (`livestream_id`);

ALTER TABLE icons ADD INDEX `icons_user_id` (`user_id`);
ALTER TABLE themes ADD INDEX `themes_user_id` (`user_id`);