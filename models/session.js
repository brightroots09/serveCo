module.exports = {
    sql_session: async () => {
        try {
            await con.query(`
           CREATE TABLE if not exists Session (
            sessionId varchar(450) not null primary key,
            sessionData varchar(1000) null,
            lastTouchedUtc datetime not null
          ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
          
           `);
        } catch (error) {
            console.log(error);
        }

    }

}