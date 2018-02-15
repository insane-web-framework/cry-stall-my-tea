
cry-stall-my-tea
----------------

An idea for a mobile app and web service to provide random yet
reassuring notifications such as "Relax - nothing is under control"
and "Jumpin' Jehoshaphat!"

"More like this" and "Don't like this" buttons might edit indexes
stored in a persistent cookie.

"Frequency" and "Randomness" settings can be edited (also stored
in the cookie).

The server-side code would store "More like this" requests (sent
by the client) against each cookie. When the client requests some
notifications, a random selection is returned from a list of good
matches to "More like this".

The client-side code would request more notifications when the
buffer runs low and reject those that have been recently used or
are on the "Don't like this" list. Buffered notifications are
displayed and discarded according to the frequency and randomness
settings.

