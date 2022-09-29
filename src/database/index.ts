import { environments } from "../config/dotenv";
import { createPool, PoolConfig } from "mysql";

const dbParams: PoolConfig = {
	host: environments.DBHost,
	port: environments.DBPort,
	database: environments.DBName,
	user: environments.DBUser,
	password: environments.DBPass,
	multipleStatements: true,
};

export const getPool = () => createPool(dbParams);
