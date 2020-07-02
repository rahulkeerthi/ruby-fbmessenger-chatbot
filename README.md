# <a href='https://hellostealth.org'><img src='http://assets.blackops.nyc/stealth/logo.svg' height='120' alt='Stealth Logo' aria-label='hellostealth.org' /></a>

### Background

You can read the details of how this was created to help you better understand how Stealth works and what you can do with it (at least as far as Facebook Messenger is concerned): [Part 1](https://medium.com/@rahaluha/robots-in-disguise-intro-to-ruby-chatbots-with-stealth-part-1-57c33fa6163f?postPublishedType=repub), [Part 2](https://medium.com/@rahaluha/robots-in-disguise-intro-to-ruby-chatbots-with-stealth-part-2-c195a6afe6fb) and [Part 3](https://medium.com/@rahaluha/robots-in-disguise-intro-to-ruby-chatbots-with-stealth-part-3-7f2f93d62180) on Medium.

There's also an [accompanying presentation](https://docs.google.com/presentation/d/1SkW3zH0wxCJIWxqiH32FBm6XDMOK3M8LJozlyaIRwh0/edit?usp=sharing) which you're welcome to use or adapt with permission.

I also have a [Stealth-based Twilio SMS bot](https://github.com/rahulkeerthi/stealth-twilio) you can check out to see how it integrates with Twilio to send and receive SMS messages.

---

### Setup

To boot this bot locally:

1. `bundle`
2. Start your local Redis server (`redis-server`)
3. `stealth s`
4. `ngrok http 5000`

For more information, please check out the [Stealth documentation](https://hellostealth.org/docs).
