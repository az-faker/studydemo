CREATE TABLE `user` (
                      `id` bigint(20) NOT NULL,
                      `status` smallint(6) NOT NULL,
                      `username` varchar(20) CHARACTER SET latin1 NOT NULL,
                      `realname` varchar(50) CHARACTER SET latin1 NOT NULL,
                      `salt` varchar(50) CHARACTER SET latin1 NOT NULL,
                      `password` varchar(50) CHARACTER SET latin1 NOT NULL,
                      `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                      `utime` timestamp NULL DEFAULT NULL,
                      `email` varchar(20) CHARACTER SET latin1 NOT NULL,
                      `mobile` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
                      `address` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
                      `sex` smallint(6) DEFAULT NULL,
                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;