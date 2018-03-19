import { MongoClient, Db as DbType } from 'mongodb';
let cachedDb: MongoClient;
export class Db {
  static async connect(): Promise<DbType> {
    const connection = await MongoClient.connect(process.env
      .MONGO_URL as string);

    const dbName = 'apicon';
    if (cachedDb && cachedDb.isConnected(dbName)) return cachedDb.db(dbName);

    const db = await connection.db(dbName);
    cachedDb = connection;

    return db;
  }
}
