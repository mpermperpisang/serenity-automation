import { ConsoleReporter } from '@serenity-js/console-reporter';
import { configure } from '@serenity-js/core';

configure({
  crew: [
    ConsoleReporter.forDarkTerminals(),
  ]
})
