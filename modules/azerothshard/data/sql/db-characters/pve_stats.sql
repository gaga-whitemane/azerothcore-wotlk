CREATE TABLE IF NOT EXISTS pve_stats(
    GUID INT(10) UNSIGNED NOT NULL DEFAULT 0,
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, 
    achievement INT(10) UNSIGNED NOT NULL DEFAULT 0, 
    type INT(8) UNSIGNED NOT NULL DEFAULT 0, 
    level INT(10) UNSIGNED NOT NULL DEFAULT 0,
    lvlParty INT(10) UNSIGNED NOT NULL DEFAULT 0,
    date DATETIME NOT NULL DEFAULT NOW(), 
    PRIMARY KEY (id) 
) ENGINE=MYISAM CHARSET=utf8 COLLATE=utf8_general_ci;