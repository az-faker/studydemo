CREATE TABLE `user` (
                      `id` bigint(20) NOT NULL,
                      `status` smallint(6) NOT NULL,
                      `username` varchar(50) NOT NULL,
                      `realname` varchar(50) NOT NULL,
                      `salt` varchar(50) NOT NULL,
                      `password` varchar(50) NOT NULL,
                      `ctime` datetime NOT NULL,
                      `utime` datetime NOT NULL,
                      `email` varchar(100) NOT NULL,
                      `address` varchar(200) NOT NULL,
                      `sex` smallint(6) NOT NULL,
                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;