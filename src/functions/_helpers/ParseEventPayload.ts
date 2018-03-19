import { APIGatewayEvent } from 'aws-lambda';

export function parseEventPayload(event: APIGatewayEvent) {
  return JSON.parse(event.body as string);
}
