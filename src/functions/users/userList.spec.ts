import { handler } from './userList';
import * as assert from 'assert';
import { APIGatewayEvent, Callback, Context, Handler } from 'aws-lambda';
import { UserList } from '../../dtos/UserList';
describe('users module', () => {
  describe('user list test', () => {
    it('should be return a user list when I pass a user to create', async () => {
      handler(
        {
          body: JSON.stringify({ name: 'Erick-' + Date.now(), age: 22 }),
        },
        <Context>{},
        (error: any, result: UserList[]) => {
          const [user] = result;
          assert.ok(user.name !== undefined);
          assert.ok(user.age !== undefined);
          assert.ok(user.insertionDate !== undefined);
        },
      );
    });
  });
});
