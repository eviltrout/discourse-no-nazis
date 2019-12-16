# discourse-no-nazis

This Discourse plugin will ban signups from users who participated in the neo-nazi web site,
[The Iron March](https://www.theguardian.com/us-news/2019/nov/07/neo-nazi-site-iron-march-materials-leak).

I saw that [AirBnB](https://gizmodo.com/airbnb-bans-over-60-white-supremacists-after-iron-march-1840420392)
did something similar and I liked the idea because I dislike nazis quite a bit.

### How it Works

Discourse will prevent the user from signing up if their email address was present in the leak.

### FAQ

1. What's stopping them from using another email address?

Nothing, but some friction is better than none. At the very least the user will recognize that you don't
want them participating on your forum.

2. What about free speech?

Nobody's free speech has been violated by preventing them from participating in your online forum.
As a forum owner, it's your responsibility to keep it well moderated, and to keep toxic people from
participating. Neo nazis and white supremacists are notorious for arguing in bad faith, and it's better to
deplatform them than "hear them out."

3. Nazis aren't bad! That's just your opinion!

If you think so, don't install the plugin. Nobody is forcing you to. You're wrong though, nazis are in fact
very bad, and I hope you don't use Discourse or any other platform to support white supremacy.

4. Why are the email addresses hashed?

I don't want people grabbing the contact information from this plugin as a way of finding other like minded
nazis and building new communities. It's easy to test if they're in the database; it's hard to find out who the
person was from a copy of the database.

5. What about false positives?

It's possible some people in the database are not nazis. For example a journalist or otherwise curious person
might have signed up. You should not take the database as a perfect list of 100% bad people, there is a
risk that some of the emails are not nazis or white supremacists.

I also believe some people can change - hopefully some of the bad people have since learned the err of their
ways and have moved on to better things.

### Author

Robin "Evil Trout" Ward

