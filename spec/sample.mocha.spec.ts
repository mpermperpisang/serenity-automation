import { actorCalled, Log } from '@serenity-js/core';
import { describe, it } from 'mocha';

describe('Mocha sample', () => {
  it('follows the Screenplay Pattern', () => {
    return actorCalled('Mper').attemptsTo(
      Log.the('Hello Serenity/JS. This is Mper'),
    )
  })
})
