import { config } from "dotenv";
import path from "path";

config({
	path: path.join(__dirname, "..", "..", ".env"),
});

export const environments = {
	DBHost: process.env.DB_HOST,
	DBPort: process.env.DB_PORT as number | undefined,
	DBUser: process.env.DB_USER,
	DBPass: process.env.DB_PASS,
	DBName: process.env.DB_NAME,
};
