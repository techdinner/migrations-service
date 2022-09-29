import { readFileSync } from "fs";
import { getPool } from "../..";

export default async function run(): Promise<string> {
	const p = new Promise<string>(resolve => {
		try {
			const sql: string[] = [];

			const getDirectory = (filename: string) =>
				readFileSync(__dirname + "/" + filename + ".sql").toString("ascii");

			sql.push(getDirectory("1-structure"));
			sql.push(getDirectory("2-data"));
			sql.push(getDirectory("3-keys"));

			const pool = getPool();

			pool.query({ sql: sql.join(" ") }, error => {
				if (error != null) throw error;
				resolve("Migrations Done ✅");
			});
		} catch (err) {
			console.error(err);
			resolve("Migrations Failed ❌");
		}
	});

	return await p;
}
