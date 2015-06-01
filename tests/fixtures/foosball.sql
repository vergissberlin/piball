/* Create table */
CREATE TABLE IF NOT EXISTS piball.score (
	id					INTEGER(10) UNSIGNED AUTO_INCREMENT,
	type				VARCHAR(24),
	updated_at	TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	created_at	DATETIME DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
