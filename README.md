# ruby-challenge

### Welcome!
Welcome to the New Era ADR live coding exercise! We are happy to have you. A few notes:

+ Please treat this exercise as a live pairing session. That means you should feel free to:
    - ask questions
    - look things up
    - talk through your thought process (if it helps!)

+ We are not necessarily looking for you to complete this exercise in it's entirety (though if that happens, great!). In fact, we've specifically designed this challenge to potentially exceed our allotted time. This is more about getting a feel for how you approach a problem and what your workflow is like.

To ensure everything is wired up, from the root directory, you should be able to run:

```
$ bundle install
# Expectation: see all gems installed
```

```
$ bundle exec rspec spec/
# Expectation: 1 example, 0 failures
```

```
$ bundle exec ruby bin/main.rb
# Expectation: see puts-ed output of all disputes
```
You can write your main output code in `bin/main.rb` if you'd like.

### Tasks

1. Examine the codebase. Feel free to talk about what you see & think, and ask any questions you have.

2. Output a list of all disputes, where each dispute is listed with the dispute name and the date it was filed. This can be very simple, like just puts-ing it to the screen. Something like:

  ```
  $ bundle exec ruby bin/main.rb

  Abbott Elementary vs. The City of Philadelphia: Filed on 2021-03-05
  Garfield vs. Jon Arbuckle: Filed on 2010-06-22
  # etc
  ```

3. Output a list of disputes grouped by the dispute type. For example:

  ```
  $ bundle exec ruby bin/main.rb

  Arbitrations:
  + Abbott Elementary vs. The City of Philadelphia
  + Anakin Skywalker vs the Jedi Order
  + Killmonger vs. The Nation of Wakanda

  Mediations:
  + Garfield vs. Jon Arbuckle
  + Severus Snape vs. Hogwarts School of Wizardry
  ```

4. The disputes have a `status` attribute, which reflects where the dispute is in the proceedings. We need to add a new feature: the ability to put the dispute in a `paused` state. Look at the `Dispute` model in `lib/models/dispute.rb`. Write some functionality such that a dispute can have a status, and can change its status to `paused`. _Optional: write a spec for this feature._

5. After adding a `paused` state, we learn that we also need to track the reason for the pause. Here are some example reasons:
  + "The parties are negotiating a settlement"
  + "The parties require more time to upload their evidence"

  Write some functionality such that when a dispute transitions to paused, the dispute also stores the reason for the pause. _Optional: write a spec for this feature, as well._

6. Now that a dispute can be paused with a reason, let's discuss the circumstances under which a dispute can be paused.
    + Should any/all disputes be able to transition to a paused state?
    + Eventually, our app would allow an end user might to pause disputes. Who might be allowed to do so?
    + How would you go about finding out this information? How might you begin to design such a solution? Feel free to pseudocode or discuss your ideas.

### Discussion
+ Review your solutions. What are the pros & cons? What might you change or refactor, if anything, with more time? Why?
