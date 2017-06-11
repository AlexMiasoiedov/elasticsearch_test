# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
questions_answers = {
  'Why is it faster to process a sorted array than an unsorted array?' => [
      'Make sure you know how to use git stash correctly. If you\'re asking about \'pull\' and \'fetch\' then maybe \'stash\' will also need explaining... ',
      'Lots of folks coming from Mercurial keep using "git pull", thinking it\'s an equivalent for "hg pull". Which it\'s not. Git\'s equivalent of "hg pull" is "git fetch".'
    ],
  'How do I undo the last commit(s) in Git?' => [
      'For those somewhat new to git: Laurie\'s point about having not yet pushed is important. Like rebasing, this is changing the history. If someone has cloned/pulled from your repo between the original and rewritten history then they won\'t be able to pull after the rewrite (for that branch).'
    ],
  'How do I delete a Git branch both locally and remotely?' => [
      'Note: for Git 2.5+ (Q2 2015), the exact message will be "deleted remote-tracking branch"',
      'Moderator note: If you intend to answer this question, do note that there are already 24 answers posted. Will your new answer add any substantial value?'
    ],
  'What is the correct JSON content type?' => [
      'Spec suggests application/json, period, JSONP is not really JSON, right?'
    ],
  'What is the difference between \'git pull\' and \'git fetch\'?' => [
      'Our alternative approach has become git fetch; git reset --hard origin/master as part of our workflow. It blows away local changes, keeps you up to date with master BUT makes sure you don\'t just pull in new changes on top on current changes and make a mess. We\'ve used it for a while and it basically feels a lot safer in practice. Just be sure to add/commit/stash any work-in-progress first !',
      'Make sure you know how to use git stash correctly. If you\'re asking about \'pull\' and \'fetch\' then maybe \'stash\' will also need explaining...',
      'Lots of folks coming from Mercurial keep using "git pull", thinking it\'s an equivalent for "hg pull". Which it\'s not. Git\'s equivalent of "hg pull" is "git fetch".'
    ],
  'How to modify existing, unpushed commits?' => [
      'For those somewhat new to git: Laurie\'s point about having not yet pushed is important. Like rebasing, this is changing the history. If someone has cloned/pulled from your repo between the original and rewritten history then they won\'t be able to pull after the rewrite (for that branch).'
    ],
  'How do JavaScript closures work?' => [
      'My problem with these and many answers is that they approach it from an abstract, theoretical perspective, rather than starting with explaining simply why closures are necessary in Javascript and the practical situations in which you use them. You end up with a tl;dr article that you have to slog through, all the time thinking, "but, why?". I would simply start with: closures are a neat way of dealing with the following two realities of JavaScript: a. scope is at the function level, not the block level and, b. much of what you do in practice in JavaScript is asynchronous/event driven.',
      '@Redsandro For one, it makes event-driven code a lot easier to write. I might fire a function when the page loads to determine specifics about the HTML or available features. I can define and set a handler in that function and have all that context info available every time the handler is called without having to re-query it. Solve the problem once, re-use on every page where that handler is needed with reduced overhead on handler re-invocation. You ever see the same data get re-mapped twice in a language that doesn\'t have them? Closures make it a lot easier to avoid that sort of thing.',
      'For Java programmers, the short answer is that it\'s the function equivalent of an inner class. An inner class also holds an implicit pointer to an instance of the outer class, and is used for much the same purpose (that is, creating event handlers).'
    ],
  'How to redirect to another webpage in JavaScript/jQuery?' => [
    'I keep seeing both window.location = url; and window.location.href = url; How are they different? Are they? BTW, I didn\'t know about window.location.replace(url). Nice.',
    '@Socialz your argument is not valid as this question does specify the use of jQuery hence Javascript. If you want a PHP solution then go to the relevant PHP question. ps: disabling javascript is the most retarded thing a user can do.'
  ]
}

questions_answers.each do |question, answers|
  q = Question.create(title: question)

  answers.each do |answer|
    q.answers.create(title: answer)
  end
end