_We're standing on the shoulders of giants_

<div id=toc>
<img src="/pix/plan9-faces.avif" style="width:50px;"> 

- [Andrew Tanenbaum](#tanenbaum)
- [Brian Kernighan](#kernighan)
	- [2000-07](#2000-07)
	- [2003-07](#2003-07)
	- [Videos](#bk-videos)
- [Dennis Ritchie](#ritchie)
	- [2000-12-20](#2000-12-20)
- [Ken Thompson](#thompson)
	- [1989-06-09](#1989-06-09)
- [Linus Torvalds](#linus)
	- [1994-04-01](#1994-04-01)
- [Matt Dickie](#dickie)
	- [2018-05-15](#2018-05-15)
- [Mel Kaye](#kaye)
	- [The Story of Mel](#the-story-of-mel)
- [Richard Stallman](#rms)
	- [2010-01-23](#2010-01-23)
- [Rob Pike](#pike)
	-  [2012-10-23](#2012-10-23)
- [Russ Cox](#cox)
	- [2011-04-09](#2011-04-09)
- [Terry Davis](#davis)
	- [2014-05-05](#2014-05-05)
</div>

## <a name=tanenbaum>Andrew Tanenbaum</a>

### <a name=2008-08-09>2008-08-01</a>

by Matthew Mikolay

*MM*: When and how did you first get into computer programming and operating system design?

*AT*: I have been programming since I was at MIT as an undergraduate. Operating system design happened much later, in the 1980s, first with Amoeba, an experimental distributed operating system, then in 1984 with MINIX.

*MM*: What influenced you to start developing MINIX?

*AT*: I was teaching a course using UNIX V6 and then AT&T; changed the license forbidding people from teaching it courses, the stupidest thing they could have done. They should have paid bounties to people teaching it in courses. I guess their attitude was "The fewer people who know about UNIX, the better." At that point I decided if I wanted a UNIX-like system to teach, I'd have to write one myself. So I did.

*MM*: Have your students ever helped you in the development of MINIX?

*AT*: In the beginning, no. I wrote V1 entirely alone. Later on, many students had ideas and wrote code. I also got funding to hire some students to write code.

*MM*: What made you decide to make MINIX based on a microkernel rather than a monolithic kernel?

*AT*: Good software engineering principles dictate that your programs are modular. You don't want a bug in one piece to bring down the whole thing if that can be avoided. A microkernel is much better engineered and is more modular and easier to understand. Monolithic kernels are still too big and unreliable. My metric is the TV set. The system should run for 10 years with a total of zero failures for 99.9 percent of the users.

*MM*: Do you believe that there are certain drawbacks to making MINIX POSIX-compliant?

*AT*: Not really

*MM*: Will MINIX ever have a windowing system besides X11, or is X11 stable and functional enough for MINIX?

*AT*: Never say never, but X11 seems pretty good to me. I believe it is the only windowing system on Linux

*MM*: How well does MINIX run on dual-processor machines? Will MINIX ever be optimized for these types of computers?

*AT*: We are just starting to work on multicore. It is MUCH harder than single core. I expect all multicore software to be riddled with errors

*MM*: Do you expect a lot of Linux users to switch over to MINIX?

*AT*:  Probably not

*MM*: What other projects have you been working on besides MINIX?

*AT*:  I have been involved with work on RFID security and privacy. See www.rfidvirus.org and www.rfidguardian.org

*MM*: What can we expect to see developed for MINIX in the future?

*AT*:  We are adding some missing features now like virtual memory and USB support, but the focus of the research is very high reliability and self healing

*MM*: If Linux's Tux penguin and MINIX's raccoon faced off in a fight to the death, who would win?

*AT*:  Raccoons are quite aggressive. Penguins are not. There would be chicken for dinner

##  <a name=kernighan>Brian Kernighan</a>

###  <a name='2000-07'>2000-07</a>

[Source](https://www.talisman.org/~erlkonig/misc/kernighan-interview/)

During the summer of 1999 I had the chance to be a research intern at Bell Labs, the research arm of Lucent Technologies. I dared then to ask Dennis Ritchie and Brian Kernighan for an autograph on their C Book.
In the summer of 2000 I went again at Bell Labs for a research stage. This time I boldly ventured to ask Brian Kernighan for an interview for the Romanian computer magazine PC Report Romania, for which I am assistant editor. He has very kindly replied:

Date: Mon, 10 Jul 2000 14:52:15 -0400
To: mihaib@research.bell-labs.com
From: "Brian Kernighan"
Subject: re: odd request

sure, no problem.  i'm probably pretty boring, but since
i don't read romanian, you can make things up...

come by any time; i'm mostly around.

brian

The interview has appeared in the August issue of the magazine, in Romanian. However, I reckoned that Mr. Kernighan's opinions may make very interesting reading for an English-speaking audience too, so I decided to also release (with his approval) the interview in English. Here it is; enjoy! BTW: nothing is made up!

# The Interview

M: What is the correct way to pronounce your name? I heard that it is not the obvious way?

K: It's pronounced Kernihan, the g is silent.

M: You chose to work in computer science when this was not such an obvious career choice. Can you tell us about how you made this choice and what you think in retrospect about this choice?

K: It's true that I started working with computers probably in the mid to late sixties, when things were fairly early on, and it was entirely by accident. I think I saw my first computer in 1963; it was an old IBM 650. I didn't do any serious programming until in 1964 when I was in my last year of college. But it was fun, and it was before computer science was in any sense a field. When I went to graduate school there was a Computer Science program in the Electrical Engineering Department at Princeton. This was fairly typical of a lot of places: computer science was not a separate academic field, it was just part of some department that might have a computer or people interested in computation, so I just backed into it, entirely by accident. This has been a lucky accident, because obviously the field has had a lot of interesting things happen.

M: You've been in this area for a long time, and you've been a very important player in the evolution of computer science. Some of your work has had a profound impact. Can you point out some things that you consider fundamental advances in computer science in the last 30 years, some changes of paradigm that have happened?

K: I think that there have been a fair number of changes, not necessarily in ``computer science'', but in computing in general. Obviously the fact that hardware has gotten enormously faster: Moore's law, although it is a simple quantitative change, its exponential growth applied for 30 years makes an enormous change; some piece of that relies on computer science, but not much. At the same time, the thing I am more familiar with, and more interested in technically, is the use of various kinds of programming languages so that we're better able to convey to a machine what we want to do. The growth of languages, of the technology for understanding how to express things for a machine, has had an enormous impact as well. Of course, as machines had gotten more powerful, you could afford to devote more resources and use languages that were not efficient 25 or 30 years ago but which are now usable. Other important changes are algorithmic improvements, which truly belong to computer science; also the idea of NP-completeness, which enables us to think about what's easy and what's hard. But as far as I am concerned, the thing I find most interesting is the growth in programming languages.

M: Over the years you have worked on many different areas: graph algorithms, software engineering and software tools, digital typography, but most of your research was in programming languages. What are your current research interests?

K: [laughing] It's interesting, what I've been doing for the last couple of days is a hack-attack back to almost my earliest roots in computerized document preparation or digital typography if you like. I have been working on taking eqn, which is a program Lorinda Cherry and I wrote back in 1974, and converting it to produce output in XML or HTML, so we can put mathematics more easily on web pages. There are a lot of people who have tried various takes on this, but none of them seem to be very good or at least not ready for use yet. We have a local need for it, so I am sitting there and working on it, a C program that I wrote literally more than 25 years ago. It's a very small C program, and I am having great deal of fun trying to fix it up. This is one piece of what I am doing, a very small thing, but it's kind of fun go back and redo something that I've spent time on so many years ago.

The other thing that I'm working on is a language called AMPL which David Gay and Bob Fourer and I did; AMPL is a language for specifying optimization problems, for setting things up like linear programming problems. We're trying to wrap it up so that it can be used as part of larger processes. We're putting an object-oriented interface on it, so it can be buried inside of some other programs or used as a COM or CORBA object.

These are the two things that I'm doing at the moment.

M: Speaking of programming languages, does the eqn program still compile?

K: Yes, it still compiled, I probably hadn't compiled it for five or ten years and it compiled without any problem whatsoever. It's a very simple and small C program; I probably converted it to ANSI C back in the late '80s. What I've been doing is mostly throwing things away because the output language now is simpler than before.

M: Most people probably know you because of the C book, so let me ask you a couple of questions about the C language. C indeed has had a very profound influence; what do you think are the most valuable features of the C language?

K: C is the best balance I've ever seen between power and expressiveness. You can do almost anything you want to do by programming fairly straightforwardly and you will have a very good mental model of what's going to happen on the machine; you can predict reasonably well how quickly it's going to run, you understand what's going on and it gives you complete freedom to do whatever you want. C doesn't put constraints in your way, it doesn't force you into using a particular programming style; on the other hand, it doesn't provide lots and lots of facilities, it doesn't have an enormous library, but in terms of getting something done with not too much effort, I haven't seen anything to this day that I like better. There are other languages that are nice for certain kinds of applications, but if I were stuck on a desert island with only one compiler I'd want a C compiler.

M: Actually C is also my favorite programming language, and I've written a lot of programs in it, but since I began writing compilers for C, I have to confess I've begun to like it less. Some things are very hard to optimize. Can you tell us about the worse features of C, from your point of view?

K: I can't comment on the "worse", but remember, C is entirely the work of Dennis Ritchie, I am but a popularizer and in particular I cannot say what is easier or hard to compile in C. There are some trivial things that are wrong with C: the switch statement could have been better designed, the precedences of some operators are wrong, but those are trivial things and everybody's learned to live with them. I think that the real problem with C is that it doesn't give you enough mechanisms for structuring really big programs, for creating ``firewalls'' within programs so you can keep the various pieces apart. It's not that you can't do all of these things, that you can't simulate object-oriented programming or other methodology you want in C. You can simulate it, but the compiler, the language itself isn't giving you any help. But considering that this is a language which is almost 30 years old now and was created when machines were tiny compared to what they are today, it's really an amazing piece of work and has stood the test of time extremely well. There's not much in it that I would change.

Sometimes I do write C++ instead of C. C++ I think is basically too big a language, although there's a reason for almost everything that's in it. When I write a C program of any size, I probably will wind-up using 75, 80, 90 percent of the language features. In other words, most of the language is useful in almost any kind of program. By contrast, if I write in C++ I probably don't use even 10 percent of the language, and in fact the other 90 percent I don't think I understand. In that sense I would argue that C++ is too big, but C++ does give you may of the things that you need to write big programs: it does really make it possible for you to create objects, to protect the internal representation of information so that it presents a nice facade that you can't look behind. C++ has an enormous amount of mechanism that I think is very useful, and that C doesn't give you.

M: I have a question about research in language design. It's interesting for instance that Java is very much hyped and the community is split among the merits and flaws of the language. The language has indeed acquired some nice features proposed by researchers in the area (like garbage collection), but also the researchers point some of its weaknesses (like the arrays which are covariant and they shouldn't be). There's a whole body of research done in programming languages nowadays, and a very interesting body of research in functional programming languages, but you don't see this research to really influence the real world, i.e. what people are really using on an everyday basis. Instead all sorts of ad-hoc languages pop up like Perl or Python or stuff like that. Where do you see the fault; what's not right?

K: That is unfortunately a very good question, and there's a certain amount of discussion here at Bell Labs between a very strong group in functional programming languages and a group using very much ad-hoc, pragmatic languages. I honestly don't know why the functional languages don't succeed. For instance ML, which is arguably the best combination, perhaps the one that ought to succeed: in spite of being a very well designed language, thought hard about by a lot of good people over a very long time, embodying an enormous amount of effort of compiler technology, still does not seem to be broadly used. I will oversimplify a lot, and probably offend my friends, by saying that the only thing people do with ML is to make ML compilers. [laughing] I'm overstating intentionally, but it has some of that flavor, and I don't really understand why. I think, speaking only for myself, part of the reason that ML in particular, and functional programming languages in general have not caught on more broadly, is that they're aimed at people who have mathematical sophistication, who are able to think in more abstract ways, that lots of other folks, and I include myself, have trouble with. Whereas languages like C are very operational, you can see how every single piece of them maps into what's going on in the machine in a very very direct sense. If I had been brought up at a different time and in a different environment perhaps I'd be totally comfortable in ML and would find C unsafe, a little dangerous, not very expressive. But my sense is that the functional languages come out of a fairly mathematical community and require a fairly mathematical line of reasoning and therefore are difficult for the people on the street.

M: So I guess, the suggestion is for the researchers to somehow lower the language level, to promote the good qualities?

K: I didn't really answer the other part of your question, why research in languages has not had as much effect as it should have. I think actually it has had an effect, in places like parser technology, code generation, no matter what the language is: research had a big effect on building language tools but less on the design of languages per se.

The languages that succeed are very pragmatic, and are very often fairly dirty because they try to solve real problems. C++ is a great example of a language that in many ways has serious flaws. One of the flaws is that it tried very hard to be compatible with C: compatible at the object level, compatible very closely at the source level. Because of this there are places where there's something ugly in the language, weird syntactic problems, strange semantic behaviors. In one sense this is bad, and nobody should ever do that, but one of the reasons that C++ succeeded was precisely that it was compatible with C, it was able to use the C libraries, it was usable by the base of existing C programmers, and therefore people could back into it and use it fairly effectively without having to buy into a whole new way of doing business. And this is not the case for ML, which was being done at about the same time and, at least partly, in almost the same place, but which took a very different view of the world. As a pragmatic thing, C++ is extremely successful but it paid a certain price by being compatible with the previous language.

M: So you're an advocate of incremental evolution. I see that you're an author of eight books, all of them co-authored. Does this mean that you have a collaborative research style?

K: If you're going to write a book it is a heck a lot easier to get someone else to do a lot of the work [laughing]. I have been very fortunate in having very good collaborators on all of these books and in that sense it is just enormously easy. It is easier to do something like a book, which needs six months or a year of work, if you've got somebody else who's also working on it with you. Also it's a sanity check, helping to make sure you don't go too far off in one direction: you've got somebody else steering you back into what they think is the right direction.

I think everything I've done I've done with somebody else: it's more fun to work with other people than to lock yourself in an office and do it all by yourself. And I think I'm probably better at listening and finding somebody who's got a good idea and then working with that person on the good idea rather than try to invent one of my own.

M: Speaking of sanity checks, I am working on a project which involves a large code base; some functions which are edited by several people: they constantly change the style of the indentation and identifiers. You have published some books on coding style: does your style always match your co-author's style, or do you have problems in reconciling?

K: [laughing] That's also a nice question. Occasionally I've had, ``trouble'' is not the word, but with co-authors, there have been discussions about where to put the braces, where to put the spaces and how to spell identifier names. Most of those things have been pretty trivial, partly because my co-authors have been right around here and we have grown up in the same kind of cultural background. But for instance when Rob Pike and I were working on ``The Practice of Programming'' a couple of years ago, we had pretty intense discussions about trivial keywords like ``where do you put the spaces''. How many spaces do you put? I like to put spaces after things like if and while and for and Rob does not. I won that part of the battle, but there was some other part of the battle I lost, I don't even remember now what it was. We definitely didn't agree 100 percent, but we came to a friendly settlement of the whole thing.

The more people you have working on something and the bigger the program, the harder it's going to be, and at some point you have to have agreed-upon standards that everybody sticks to and mechanized tools like pretty-printers that just enforce doing it by the rules, because otherwise you lose too much time and there's real chance for making mistakes.

M: You just mentioned pretty-printers; what other programming tools and programming environments do you favor?

K: When I have a choice I still do all my programming in Unix. I use Rob Pike's sam editor, I don't use Emacs. When I can't use sam I use vi for historical reasons, and I am still quite comfortable with ed [laughing]; I know, that's even before you guys where born. And it's partly a question of history: I knew Bill Joy when he was working on vi.

I don't use fancy debuggers, I use print statements and I don't use a debugger for anything more than getting a stack trace when the program dies unexpectedly. When I write code on Windows I use typically the Microsoft development environment: they know where all the files are, and how to get all the include files and the like, and I use them, even though in many respects they don't match the way I want do business. I also use good old-fashioned Unix tools; when I run Windows I typically import something like the mks toolkits and I have standard programs that I'm used to for finding things and comparing them and so on.

M: I'll shift again the subject. When I came to the U.S. I was very surprised to discover that there's very high quality research and also fundamental research --- research which is not necessarily aimed to a product or to making money --- such research is made not only in universities, but also in a few large companies. What can you tell us about research at Lucent, a large company, which used to be part of AT&T, an even bigger company?

K: I'll give you the official company line here, although I think that much of it is still true. Research has been a part of this company when it was called ``The Bell System'', AT&T, or Lucent, for a very long time: Bell Labs had its 75th anniversary this year. I think research started as a recognition that there were certain things that people didn't know how to do but had to figure how to do if they were to improve whatever product or service they were going to provide. Of course, in ancient times, that was telephone service; 30 or 40 years ago the telephone technology started to pick up a significant computer component and that brings research in computer science here. I think that the same sort of thing is true for companies like IBM, which runs very effective research labs as well; that's certainly another company that has a very long tradition of supporting the research environment.

There's the interesting question of ``how does a company justify the money it spends on research''. Lucent at this point has 150,000 employees or so; the research part of it, the part that is you and me, is somewhat less that 1 percent of that, maybe it's 1000 to 1500 people. The company's annual revenue was 38 billion $ in 1999, so we're spending about 400M$ annually on research to keep you and me sitting in comfortable offices thinking great thoughts. That actually seems like a pretty reasonable way to invest, a high-risk but potentially high-reward part of your assets. You have to be thinking ``where are we going to be a few years from now?'', what kinds of problems now bother us, that we have to get some kind of solution to, which we don't need today; it would be nice if we had it today, but we know that we're going to need it in the future. Unfortunately it's really hard to figure out how to do these things, sometimes even what the right problems are. I think that the best mechanism anybody has found yet is to take a small amount of money, 1 percent let's say, and hire a bunch of bright people, and put them into an environment where they are encouraged to talk to each other, to talk to the people in the rest of the company, to find out what kinds of problems the people in the rest of the company have; people in the rest of the company are also encouraged to come and say ``can you help with this problem that we have?'', and the hope is that by this almost random process, and it really is in many ways random...

M: [Interrupting] But not only that; you have research and development in many other companies; at Bell Labs you are also encouraged to publish!

K: ... I think that the question is ``how does this company differ from other companies in the fact that we publish?''. There're several things that you can see there. One is that the scale is much larger; Lucent Bell Labs may still be the biggest industrial research lab anywhere, doing research of the kind that you would find in the universities in the good old days, essentially undirected research, not focused on products immediately. IBM is at least comparable, and Xerox to some degree, and there are other companies like that. One of the issues is that research here, at least in the computer science group, and in all of the physical sciences, is between hard-core industrial, where they're basically doing research that's strongly focused on product, and academics, where they're mostly doing things because of curiosity or thinking further out. A big industrial lab is stretched between those two: it has more of a focus on things that might be practical, but at the same time it has a finger in the academic world, it has connections to the academic world. And it has to do that, because, among other things, that's the recruiting mechanism: the reason that you're here rather than at Cisco, let's say, is that Cisco doesn't do research; Cisco buys companies. It's not that Cisco is a bad place, Cisco is a wonderful place in many respects, but it does business differently than Lucent. One other thing that we do by playing in the academic world as well as in the industrial development is that we're able to interact with people of universities as equal colleagues, and therefore we can suck in people like you, who are with us for the summer, and perhaps will come back permanently. In this way we get a steady influx of good people. But to do that you have to put something back into the system. We have to let you in, we have to show you all the interesting things, and we have to let you write papers, and we have to write papers ourselves, because otherwise people wouldn't believe that we did anything interesting. So we have to be largely participating members of the scientific or academic community as well as contributing to the welfare or good of the company. That's an interesting and not solved problem, on how to do both of those things and keep from getting too far into one or the other camp.

M: You've mentioned Rob Pike; you've authored two books with him; I would like to ask a question about a controversial talk he gave, in which he argues that research in computer science systems is basically dead http://www.research.bell-labs.com/who/rob/utah2000.pdf. What do you think about this statement?

K: In fairness, Rob is almost always right, although I wouldn't say that to his face [laughs]. I only looked at the slides of that talk recently, I didn't hear him give it, but I think that in many respects he's right. His observation is that it's hard to do systems work: the scale of things is too large for academic environments sometimes, the reward mechanisms in the academic environments may be wrong. As a result a lot of what happens in real systems work tends to be incremental, performance evaluation rather than synthesizing interesting new combinations. I don't know why that is the case: it may be that it's hard in an academic setting to get proper support, it may be that it takes too long --- Rob's observation is that real systems take five years or more, and that's roughly the duration of graduate studies --- so it's hard to get something that matches the career of a student. I wouldn't say that research in systems is ``dead'', but it's certainly not as alive as it could be.

M: Speaking of academia, I saw that you have taught at least two classes at Princeton. I would like to ask about your opinion on computer science education, because I heard complaints coming from the industry that undergraduates in computer science classes master too much useless theoretical skills and they don't know enough about real program development.

K: I've taught four courses at Princeton and Harvard in the last four or five years, at various levels, but that's not enough to qualify me as an ``expert'' in computer science education. Those are two particular schools and I've taught rather screwball things. I don't think universities should be in the business of teaching things that you should learn at a trade school; I don't think it is the role of a university to teach people how to use, let's say, Visual C++ and its Integrated Development Environment. I think the role of the university is to teach students how to program in a particular flavor of language that has for example object-oriented character, to help students understand the issues and trade-offs that go into families of languages, like C, C++ and Java, and how those relate to languages which slice it in a different way, like functional languages. Teaching students skills so that they can step immediately into a Windows development shop and are able to write COM programs is just not right. That's not what universities should be doing; universities should be teaching things which are likely to last, for a lifetime if you're lucky, but at least 5 or 10 or 20 years, and that means principles and ideas. At the same time, they should be illustrating them with the best possible examples taken from current practice.

At Princeton I taught a junior level course, a combination of software engineering and advanced programming: the students there, at least the seniors in that class, were largely very experienced in the kinds of things that industry probably wants. They were comfortable with Visual C++, they knew how to pick components off the net and glue them together, and they could write Java applications of considerable sophistication. Much of that may have been learned by summer jobs. If industry wants people who have more than a ``useless'' theoretical knowledge [laughs], what it should be doing is making sure it gets these bright kids from school and gives them interesting summer jobs that round out the theoretical ideas and the general insights with specifics of a particular application. People pick up that stuff remarkably fast and if they do interesting things on summer jobs they carry that back into their academic careers. I was pretty impressed by how much the students knew, stuff they had not all learned in class.

M: Speaking of students, what advice would you give to a computer science student who wants to pursue a research path? Maybe you see some areas to be more rewarding that other, and maybe some areas are not interesting anymore?

K: Well, don't take my advice on careers [laughs]. Unfortunately I don't think that there is any good advice. The interesting, sorry, I shouldn't be saying ``interesting'' --- the areas that are difficult are only two: one that it's too hard to write programs that work, and the other that it's too hard to use computers. So if you want things to work on, these are two that you could try. Of course, those are fairly general [laughs], there are a lot of special cases that you could play with. If you make any progress at all, on any aspect, then you have an opportunity to go on and pursue the purely academic side of it or alternatively you may go out and try to make your fortune in a start-up. And at this point it looks like a lot of people would rather make their fortune in a start-up than by spending 5 or 6 years getting a Ph.D. Maybe you're just misguided [laughs].... I think unfortunately the best advice you can give somebody is ``do what you think is interesting, do something that you think is fun and worthwhile, because otherwise you won't do it well anyway''. But that's not any real help.

M: Maybe you can help by being more concrete: can you recommend us some books, computer science books or otherwise, which you think have had a big influence on you?

K: The only computer science book I read more than once, that I actually pick up every few years and read parts of again, is The Mythical Man-Month by Fred Brooks, a great book. Partly it's very well written and partly the advice in it, even after more than 25 years, is still highly relevant. There are of course details that are different, some things we approach differently because we have more mechanization and more computer horse-power, but there's an enormous amount of good advice in that, so I recommend it highly. That's the only computer science book I can think of that you read for some combination of pleasure and insight.

There are other books that I reread that are relevant in computing. Books on how to write, write English in my particular case, like ``The Elements of Style'' by Strunk and White. I go back and I reread that every few years as well, because I think the ability to communicate is probably just as important for most people as the ability to sit down and write code. The ability to convey what it is that you're doing is very important.

There's also a great book How to Lie with Statistics, which you might find useful in your own research [laughter].

M: I'll change gears again. Unix and C were created at AT&T and were released under a license which at that time was virtually an open-source license, because AT&T had to do that: being a monopoly it had an agreement with the government, as far as I understand, not to make money out of computers. A lot of people credit this very fact, this liberal license, with the popularity and influence that both Unix and C have had. Recently Lucent has released Plan 9 under an open-source license. What do you think about this ``new'' phenomenon of open-source?

K: I think it's actually a good thing for the most part. The original Unix license was, as you say, largely done the way it was because AT&T was not permitted to be in any business except the telephone business, so they couldn't make serious money on any kind of software. Because of that they were forced into a very sensible decision, which was to give Unix away essentially for free to universities. They did sell it commercially for what amounted to a nuisance fee, but for universities they gave it away and as a result an entire generation of students and their faculty grew up thinking that Unix was the way that you did computing. Unix certainly was much more productive than commercial operating systems which were available at time, and because the source code came along with it, it was easy to see what was going on, and it was easy to make improvements. It built a community of people who were interested in it, motivated by the same things, who were able all to contribute and in that way work themselves up. I think that the current open-source movement has much of the same character. Many of the tools developed in open-source are based on Unix models. Linux is the obvious thing, being, at least on the outside, based on Unix; many of the things that come from the Free Software Foundation are reimplementations of standard tools and languages from Unix. There are of course other projects, arising because of some weird commercial pressure, like Mozilla, the Netscape code, which is now in the public domain, and to which people are contributing as well. I think that the open-source movement is in general a good thing. I am not sure that it will ever replace tailored, professional, rock-solid commercial products sold for profit. But what it might do in a lot of cases, and I think that genuinely it does do in some things like C compilers, is to provide a reference implementation and a standard that's pretty good and that other implementations have to roughly match or why would anybody pay for them? I think that in that sense it's a useful thing. As for Plan 9, I think that's too late, unfortunately. I think Plan 9 was a great idea and it should've been released under an open-source license when it was first done, eight years ago, but our legal guardians would not permit it. I think that they made a grievous mistake. The current open-source license is definitely worth having but it's not clear whether Plan 9, at least as a general-purpose operating system, will have much effect except in a relatively small niche. It has many things going for it which make it valuable in different areas, particularly where you need a small and highly portable operating system, but is it going to take over from Linux? Probably not.

M: I am getting ready to end on a lighter note, but first I'll ask another deeper question. Interpolating from the evolution of the area of computer science so far, what other great advances do you expect in the near, and I don't dare to ask, far future?

K: [laughs] If I could predict the future then I would invest more wisely and I wouldn't have to do these low-paid interviews [n.b. the interview is for free]. Geez, you know, unfortunately I am actually so bad at predicting things.... I am gonna guess that in some sense the situation in computing will be be almost the same: we make a lot of progress, we are able to undertake bigger projects, we can build things which are much more interesting and sophisticated than what we could do 10 years ago. If you look at the kinds of things running on the PC in front of us now, they are enormously more powerful, and flexible than they were 10 years ago. But the amount of messy, intricate, awful code that doesn't work very well and that's underneath all of that has also increased enormously. In some sense I guess we'll continue to make progress, but it'll always be kind-of grimy and not-really-done yet. Because people always take on more than they can reasonably handle, they're always overreaching, and they seem never to go back and clean up the stuff that they did before.

The other thing that I actually worry about is that computers are pervasive, they're just everywhere, in everything you do. You cannot turn around without being involved with something that depends critically on computers, and more and more of those are things that actually matter to us. It doesn't matter if the Sound Recorder on Windows works or not....

M: It matters now! [N.B. this interview is recorded using a PC and software sound recording]

K: .... if we lost this [interview], the Hell with it. But for example, when you fly back to Pittsburgh, you really really want the computers that control the avionics in the Airbus 320 to work properly and not make any mistakes. That's just one of the things that depend critically on our ability to write software that works and build hardware that supports it, and I don't think we know how to do that well yet. We're making progress, it's definitely better, the combination of languages and techniques like verification help, but we still have the same problem: as we understand better how to do the small things we take on bigger and more complicated things and so in a sense we're always up to our armpits in alligators.

M: The last question I have on my list is about your hobbies.

K: [laughing] Who's got time for hobbies? If I look at what my hobbies are at this point they amount to reading. When I am not fooling around or playing with computers or doing things that are related to work I find myself reading. Usually history books; I don't know why, it's kind of weird, but I like to read history books. Over my lifetime, over the last 20 or 30 years, I've got phases where I've got deep into something for 3, 4, 5 years. I went through a phase in which I tried to learn Japanese, for example; I can tell you, it takes longer than 3 years to learn Japanese! And so that was a failure. When I was a graduate student I spent roughly five years doing karate and I got to a point where I could sort-of survive, but I dropped it, it's no longer part of my life. And I went through a phase being very interested in investments, and that didn't change my life either, so obviously I wasn't very good at it. So the thing that I do at this point mostly is to read a lot.

M: Thank you very much!

### <a name=2003-07>2003 07</a>

<h2>by Aleksey Dolya, 2003 July 29<sup>th</sup></h2>

*LJ*: Could you tell us a bit about yourself?

*BK*: I was born in Toronto and went to the University of Toronto as an undergraduate, in a course [of study] called Engineering Physics. It was basically a lot of science, math and engineering for kids who were good at math and thought they might be engineers but didn't know what kind. It was a tough course, and about two thirds of the people eventually dropped out, but I managed to survive and learned a lot (a small amount of which I still remember).<br><br>
I didn't really know much about computers--this was in 1960-64--and there was only one big computer at Toronto, an IBM 7090, plus a small 1620 in the electrical engineering department. I saw my first computer, an IBM 650, after my second year, and I learned a bit of Fortran when I was in my third year. I spent a summer writing Cobol for a big oil company (honest) after that. It was enough to get me hooked on programming, though I sure didn't know what I was doing and was a terrible programmer.<br><br>
At Toronto, I also did a senior thesis (a literature survey, really) on artificial intelligence, which was showing all kinds of promise in 1964. So I decided to go to graduate school, without really knowing what that was all about. But it was easier than looking for a job. I wound up at Princeton because they made a better financial offer than any other school. I had a good friend, Al Aho, who was already there; he had been one year ahead of me at Toronto, in the same course.<br><br>
Princeton didn't have a CS department at that time, only a group of good young people in electrical engineering, but I enjoyed it and had a good time for several years before settling down to work on a thesis. It was a very nice place to be a graduate student.

*LJ*: How did your life become connected with computers?

*BK*:  think the real turning point was the summer of 1966, where through good luck I got a job at Project MAC at MIT, [working] for Fernando Corbato. This was a fantastic experience: I was using CTSS, which was the first general purpose time sharing system and is still one of the nicest to use. It was infinitely more productive than the punch cards I was used to up to that point. I learned to program in MAD and wrote programs to help collect information for the Multics machine; the first GE 645 arrived that summer. It was a wonderful place to live and work, with great people (like Corby, who is still alive and active). It was definitely one of the best times of my life.<br><br>

The next summer, probably because of the MIT experience, I got a job at Bell Labs in the Computing Science Research Center. This time I learned assembly language properly and met a bunch of the people who I had heard of while at MIT (they also were working on Multics). Another great summer.<br><br>
I went back to Bell Labs the summer after that. This time, I got lucky and worked with Shen Lin, a great mathematician and problem solver. Shen was interested in hard combinatorial optimization problems, such as the Traveling Salesman Problem. I had been working in a casual way on what came to be called the graph partitioning problem for my Princeton thesis. Shen had an idea of how to attack the general case, and I made the algorithm work in a Fortran program. It became the core of my thesis, along with some other special cases. Anyway, I had such a great time at the Labs those two summers that when I finished my thesis early in 1969, I didn't even look for another job--I just went to the Labs. I was lucky to be in the group that did UNIX and C and all of the great things that came with them; that started just after I arrived. In many ways it was the best computer science research group anywhere, part of a large and productive research organization, and it had an enormous influence on the world. I stayed there until 2000, 30 wonderful years with an amazing group of people.

*LJ*: What is your work these days? Do you like it?

*BK*: While at the Labs, I spent several semesters teaching, for example, at Princeton and at Harvard. I really liked teaching and spent the academic year of 1999-2000 as a visiting professor in the CS department at Princeton. Princeton offered me a permanent faculty position, and after months of soul-searching on what should have been an easy decision, I decided to retire from Bell Labs and become a full-time professor. It's a very different job and role than what I was doing at Bell Labs, but I love it, too, and am having the time of my life. Princeton University is one of the best anywhere; the kids are endlessly interesting and rewarding; my colleagues are remarkable; and it's a nice community to be part of. I don't think it would have been the right thing for me to do right after getting out of school, but now it really seems perfect.

*LJ*: What do you teach your students?

*BK*: One course is called "Computers in our World". It covers how computers and communications work, for a very non-technical audience; most of the students are majoring in things like literature, politics, history and other humanities disciplines. It's a lot of fun for me, because I can talk about topics that show up in the newspaper every day that have some computer component. (One I did not use this year but could have: Dmitri Sklyarov and ElcomSoft. But I do talk about the DMCA, a US law that definitely has both technical and political components; that's the law that Sklyarov was charged with violating.)<br><br>
Basically the course covers hardware (how computers work and how they are built); software (algorithms, programming, languages, systems, applications); and communications (Internet, Web, cryptography, compression and the like). There are labs as well, in which they create their own Web pages, do some simple programming and experiment with sound, graphics and spreadsheets.<br><br>
The other course is called "Advanced Programming Techniques". It's for CS majors and covers a bunch of topics related to how software really is written: scripting languages, object oriented programming in C++ and Java, user interfaces, network connections, database access, components, patterns, and the like. The students get to define and implement their own multi-person projects, so it's also a taste of software engineering on a small scale, as they worry about design, interfaces, testing, documentation, and even doing demos and giving presentations.
*LJ*: There are a lot of different areas in today's IT world: platforms, OSes, languages, hardware. In what areas do you consider yourself to be an expert?
*BK*: I used to be an expert in document preparation systems, such as troff (which ran on UNIX), and in tools for typesetting. I maintained and enhanced troff for a long time, and I wrote a variety of other text processing tools, including eqn, for typesetting mathematics. That was one major piece of my research for a long time. I was also pretty knowledgeable about such things as programming style, especially in C. I'm not an expert in anything now, though. There are too many things to know, and it gets easier to forget as one gets older.
*LJ*: What was your part in the birth and destiny of the C language?
*BK*: I had no part in the birth of C, period. It's entirely Dennis Ritchie's work. I wrote a tutorial on how to use C for people at Bell Labs, and I twisted Dennis's arm into writing a book with me. But, if he had been so motivated, he certainly could have done it without help. He's a superb writer, as one can tell from the C reference manuals, which are his prose, untouched. I've profited a great deal from being part of the book, and I treasure Dennis as a friend, but I didn't have anything to do with C.
*LJ*: What do you think: is C a high level language?
*BK*: C is perhaps the best balance of expressiveness and efficiency that has ever been seen in programming languages. At the time it was developed, efficiency mattered a great deal: machines were slow and had small memories, so one had to get close to the efficiency of assembler. C did this for system programming tasks--writing compilers, operating systems and tools. It was so close to the machine that you could see what the code would be (and it wasn't hard to write a good compiler), but it still was safely above the instruction level and a good enough match to all machines that one didn't think about specific tricks for specific machines. Once C came along, there no longer was any reason for any normal programmer to use assembly language. It's still my favorite language; if I were marooned on a desert island with only one compiler, it would have to be for C.
*LJ*: You called C "the best balance of expressiveness and efficiency". What about Pascal? There are legions of Pascal programmers in the world. Is it less expressive or less efficient than C?
*BK*: I wrote a paper long ago called "Why Pascal Is Not My Favorite Programming Language"--that says it all. Pascal was perhaps okay as a teaching language, but in its official standard form is not appropriate for writing real programs.
*LJ*: What were the AWK and AMPL languages designed for? What is your part in their design?
*BK*: AWK was a joint effort among Al Aho, Peter Weinberger and myself; the name is our initials. I think it's fair to say we were pretty equal in our contributions. Al knew all about regular expressions and the pattern-action paradigm; Peter knew about report generation and database issues; and I had a very clear idea of wanting to be able to handle string and numeric values and conversions between them as easily as possible. I'm pretty sure that Peter did the first implementation (which only took a couple of days), aside from regular expressions, which Al did; I have maintained and modified it on my own since about 1980. We wrote the AWK book together in 1987.<br><br>
AMPL is a language for specifying optimization problems such as linear programming. It acts as a sort of compiler, converting a natural and convenient mathematical notation into whatever a particular solver program needs. AMPL is joint work with Bob Fourer and David Gay. Bob is in the Industrial Engineering and Management Science department at Northwestern University; Dave was a colleague in Computer Science at Bell Labs until he retired a year or two ago. Bob had been interested in modeling languages for specifying optimization problems for a long time. He spent a sabbatical year at Bell Labs around 1984. Because I was interested in special purpose languages (like AWK), he, Dave and I worked out the initial design of AMPL and I wrote the prototype implementation. It was my first C++ program, so although it was instructive, it probably wasn't good. In any case, it did show that the language was useful to a lot of people. Dave took over the implementation, and he has completely owned that ever since. He and Bob are experts on optimization; I am not. Essentially all of the current form of AMPL is their work; I have been a member of the team only by courtesy for a long time. (We did publish a second edition of the AMPL book a couple of months ago; I worked on that with them.)
*LJ*: Brian, what do you think of UNIX? Is it a good and reliable platform for development?

*BK*: I'm used to UNIX systems that run for months or even years without crashing. If I were developing UNIX software, there isn't any other choice. If I were developing Windows software, then I would undoubtedly use Windows if there were a graphical component or if it cared about the operating system; otherwise I would use UNIX and port the program. When I do Java, I often do a mixture, because the tools I prefer [to use] run on Unix, but the graphical interfaces are more responsive on Windows than through an X interface.

*LJ*: What UNIX OSes do you like? Linux? BSD?

*BK*: The way I use them, which is as a casual programmer, it doesn't matter--they are all the same. If I encounter some difference, it only makes me mad, because there really isn't any reason for things to be different most of the time. I use Solaris at Princeton, Irix when I visit Bell Labs, and FreeBSD on my Mac; I also have Cygwin on several PCs so that standard tools are readily available.

*LJ*: Is it true that you suggested the name "UNIX" for the long ago OS, Multics? What does that word mean?

*BK*: Yes, long ago. Multics was an acronym for something like Multiplexed Information and Computing Service, and it was big and complicated because it had many of everything. I suggested Unics for Ken's new system, because it was small and had at most one of anything. (Multi and uni are both Latin roots, so it was a very weak pun.) Someone else spelled it with the letter X; no one can remember who.

*LJ*: How do you find the current situation in the world of IT monopolists? How do you feel Microsoft's politics and products?

*BK*: Like many people, I have mixed feelings about Microsoft. They have done much good for the world, producing a common environment that has enabled a lot of creative people to build new software and hardware and sell it at reasonable prices. Microsoft's work has made computing accessible to a huge population who would otherwise not be able to use computers. At the same time, I am unhappy with some of their products. An operating system should not crash very often, if at all, and the sheer complexity of both using and programming the Windows environment is daunting.

*LJ*: You are a well-known expert in practical programming. Does it differ from theoretical and research programming?

*BK*: As the great American philosopher Yogi Berra is reputed to have said, "In theory, there is no difference between theory and practice. In practice, there is." I'm not sure what theoretical programming might be, but code that can't be executed on a computer is unlikely to work and thus isn't terribly useful except as a thought exercise.<br><br>
Research programming might mean software written as a prototype or [used] to verify that some concept can be made to work. There, the difference is that one can cut lots of corners: don't worry about errors, ignore potential hazards, provide no user interface, skip documentation and, of course, do no maintenance. In that sense, research programming is vastly easier than writing a program that will be used by many people over a long period of time. Someone (Fred Brooks, in The Mythical Man Month, perhaps) once said that it is at least an order of magnitude more work to do production software than a prototype. I think he's wrong by at least an order of magnitude.

*LJ*: How often have you written code in the last few years?

*BK*: Too infrequently, unfortunately, except for small experiments, examples for my courses and occasional maintenance of AWK. I did spend a fair amount of time building various user interfaces for the AMPL language--in Java, Tcl/Tk and Visual Basic--but none of these are very big, and none are very satisfactory either. Last summer I spent most of my time finishing off the second edition of our book on AMPL, which didn't involve any programming either. So I'm hoping to get back to doing more.

*LJ*: What are your hobbies? Reading? Sports?

*BK*: Mostly reading; I read a lot, mostly history and sometimes detective stories and occasionally biographies. I used to ski a bit, played squash and racquetball, and I once got a black belt in karate. But that was very long ago indeed. Today my sports are restricted to taking long walks.

*LJ*: Could you say that you love computers (IT)?

*BK*: No. There was a time when they were incredible fun to work with, and I really enjoyed programming and getting the machine to do things, but it was never my whole life. And modern systems are so messy and complicated that they are more frustrating than rewarding most of the time. It's still pretty easy to get completely wrapped up in trying to write a program, though; that will always be fun.

*LJ*: You have worked in Bell Labs, alongside Bjarne Stroustrup, Ken Thompson and Dennis Ritchie. What kind of relations do you have with them? Were you like a big, wise family?

*BK*: We were all friends and close colleagues for many years, all in the same small group at Bell Labs. Ken, Dennis and I are all about the same age, and we all came to the Labs about the same time; Bjarne came 10 years later. I wouldn't call it family, but it was definitely good friends, and I miss seeing them all every day, which is the way it was for many years.

*LJ*: Could you make any predictions about IT in the future? What programming languages will we be using?

*BK*: There are only two real problems in computing: computers are too hard to use and too hard to program. We've made enormous progress on both of these over the past fifty years, but they are still the real problems. And I predict they still will be problems 50 years from now. Of course, we will be using machines far more powerful than today's, and our languages undoubtedly will be more expressive. But we will be undertaking far more complicated tasks, so the progress will not be completely evident.<br><br>
I expect that much of the real progress will be in mechanization: getting the machine to do more of the work for us. There are many examples today--compilers, parser-generators, application-specific languages, wizards, interface builders--all of which create code for us more easily than we could do it manually. This will keep getting better: as we understand some area so well that it becomes almost mechanical to program for it, we will mechanize the process. And, of course, the level of language will continue to rise, as languages become more declarative ("do what I want", rather than "do these particular steps") and as efficiency is less of a concern for any particular aspect of a computation.<br><br>
I'm less sure what will happen on the "easier to use" side, however. Here the trend for the past 10 or 15 years has been unsatisfactory. Computers are hard to use, even with ostensibly friendly GUIs and assistants and the like. This is a real problem, because computers are pervasive, and more and more all of us have to deal with them in all kinds of settings, some critical (think of flying a plane, where the "blue screen of death" takes on a whole new meaning). We simply have to make better interfaces to machines.


*LJ*: Brian, thank you very much. Good luck!

###  <a name='bk-videos'>Videos</a>

- [Unix: History and Memoir](https://youtu.be/nS-0Vrmok6Y?si=5HCY9FbK9aOOVq88) 2020/12/15
- ["The early days of Unix at Bell Labs" - Brian Kernighan (LCA 2022 Online)](https://youtu.be/ECCr_KFl41E?si=H_YpbwSq0gWFqUVa) 2022/01/15

##  <a name=ritchie>Dennis Ritchie</a>

###  <a name=2000-12-20>2000-12-20</a>

The future according to Dennis Ritchie by LinuxWorld.com

*LW*: Can you introduce us to Plan 9, the project in which you're currently involved, and describe some of its novel features?

*DR*: A new release of Plan 9 happened in June, and at about the same time a new release of the Inferno system, which began here, was announced by Vita Nuova. Most of the system ideas from Plan 9 are in Inferno, but Inferno also exploits the exceptional portability of a virtual machine that can be implemented either standalone as the OS on a small device, or as an application on a conventional machine.

As for Plan 9, it combines three big ideas. First, system resources and services are represented as files in a directory hierarchy. This comes from Unix, it is worked even better in Linux, but Plan 9 pushes it hardest. Not only devices, but things like Internet domain name servers look like files. Second, remote file systems -- likewise not a new or unique idea. But if all system resources are files, grabbing bits of another machine's resources is easy, provided the permission gods permit. Third, and unusual, is that the namespace -- the hierarchy -- of files seen by a particular process group is private to it, not machine-wide.

*LW*: C and Unix have exhibited remarkable stability, popularity, and longevity in the past three decades. How do you explain that unusual phenomenon?

*DR*: Somehow, both hit some sweet spots. The longevity is a bit remarkable -- I began to observe a while ago that both have been around, in not astonishingly changed form, for well more half the lifetime of commercial computers. This must have to do with finding the right point of abstraction of computer hardware for implementation of the applications.

The basic Unix idea -- a hierarchical file system with simple operations on it (create/open/read/write/delete with I/O operations based on just descriptor/buffer/count) -- wasn't new even in 1970, but has proved to be amazingly adaptable in many ways. Likewise, C managed to escape its original close ties with Unix as a useful tool for writing applications in different environments. Even more than Unix, it is a pragmatic tool that seems to have flown at the right height.

Both Unix and C gained from accidents of history. We picked the very popular PDP-11 during the 1970s, then the VAX during the early 1980s. And AT&T and Bell Labs maintained policies about software distribution that were, in retrospect, pretty liberal. It wasn't today's notion of open software by any means, but it was close enough to help get both the language and the operating system accepted in many places, including universities, the government, and in growing companies.

*LW*: Five or ten years from now, will C still be as popular and indispensable as it is today, especially in system programming, networking, and embedded systems, or will newer programming languages take its place?

*DR*: I really don't know the answer to this, except to observe that software is much harder to change en masse than hardware. C++ and Java, say, are presumably growing faster than plain C, but I bet C will still be around. For infrastructure technology, C will be hard to displace. The same could be said, of course, of other languages (Pascal versions, Ada for example). But the ecological niches you mention are well occupied.

What is changing is that higher-level languages are becoming much more important as the number of computer-involved people increases. Things that began as neat but small tools, like Perl or Python, say, are suddenly more central in the whole scheme of things. The kind of programming that C provides will probably remain similar absolutely or slowly decline in usage, but relatively, JavaScript or its variants, or XML, will continue to become more central. For that matter, it may be that Visual Basic is the most heavily used language around the world. I'm not picking a winner here, but higher-level ways of instructing machines will continue to occupy more of the center of the stage.

*LW*: What is your advice to designers of new programming languages? 

*DR*: At least for the people who send me mail about a new language that they're designing, the general advice is: do it to learn about how to write a compiler. Don't have any expectations that anyone will use it, unless you hook up with some sort of organization in a position to push it hard. It's a lottery, and some can buy a lot of the tickets. There are plenty of beautiful languages (more beautiful than C) that didn't catch on. But someone does win the lottery, and doing a language at least teaches you something.

Oh, by the way, if your new language does begin to grow in usage, it can become really hard to fix early mistakes.

*LW*: C99, the recently ratified ANSI/ISO C standard, contains several new features, such as restricted pointers, variadic macros, bool, and new libraries for complex and type-generic arithmetic. Are you satisfied with C99?

*DR*: I was satisfied with the 1989/1990 ANSI/ISO standard. The new C99 standard is much bulkier, and though the committee has signaled that much of their time was spent in resisting feature-suggestions, there are still plenty of accepted ones to digest. I certainly don't desire additional ones, and the most obvious reaction is that I wish they had resisted more firmly.

Of the new things, restricted pointers probably are a help; variadic macros and bool are just adornment. I've heard the argument for complex numbers for a long time, and maybe it was inevitable, but it does somewhat increase the cross-product of the type rules and inflate the library. One issue the question didn't mention is the introduction of the "long long" type and its implications, which is one of the more contentious issues in discussion groups about the language -- and it also makes the type-promotion rules much more complicated. But of course, 64-bit machines and storage are here, and it had to be faced.

I'm less ecstatic about the C99 standard, but don't denounce it. They did a pretty good job; C does have to evolve. I was not involved with its work, but was given opportunities to snipe or contribute earlier. So I won't do much second-guessing after the fact.

*LW*: Considering proprietary languages such as Java and C#, was the decision to make C free deliberate? C users sometime complain that standardization bodies have no teeth and cannot force vendors to provide standard-compliant implementations. What is your preferred model of language development and standardization?

*DR*: I can't recall any difficulty in making the C language definition completely open -- any discussion on the matter tended to mention languages whose inventors tried to keep tight control, and consequent ill fate. 

I'm just an observer of Java, and where Microsoft wants to go with C# is too early to tell. Although Sun doubtless has spent more on Java as a strategic tool than would be justified simply by garnering some publicity for neat research work by Gosling and company, they've been quite open about the language specification as such. But of course they have been regarding the whole Java package (with libraries) as strategic versus Microsoft and other competitors.

True enough that standards bodies themselves have weak teeth, but they do have influence and importance when a language begins to be widely used. Partly this is simply because it does allow public comment, partly because it adds a certain gravitas to the project. If there is an ISO or ANSI standard, and you distribute a product that claims to conform, your customer has at least a hook for arguing to you when it doesn't.

On the other hand, the "open evolution" idea has its own drawbacks, whether in official standards bodies or more informally, say over the Web or mailing lists. When I read commentary about suggestions for where C should go, I often think back and give thanks that it wasn't developed under the advice of a worldwide crowd. C is peculiar in a lot of ways, but it, like many other successful things, has a certain unity of approach that stems from development in a small group. To tell the truth, I don't know how Linus and his merry band manage so well -- I couldn't have stood it with C.

This whole area is complicated and there is no single lesson to be drawn from its history, except that early and extreme attempts at close control are likely to be detrimental.

LinuxWorld.com: When will we have a C99-compliant edition of The C Programming Language? (See Resources for a link.)

Dennis Ritchie: This is a question about which Brian [Kernighan] and I have thought hard and long, with considerable advice and assistance via email, Usenet, visits from our publisher, and interviews like this one. And we're still thinking. We are prepared to announce that we have not committed ourselves either way.

## <a name=thompson>Ken Thompson</a>

### <a name=1989-06-09>1989-06-09</a>

MSM: Various accounts I've read of UNIX,  Ritchie's retrospective on it, and even an interview you did with some people for a video back in 1981 talk about the system as being, or UNIX as being, sort of culling all the best ideas in operating systems that emerged during the �60�s.  What were those ideas and how did you first encounter them, how did you encounter them as ideas?

*KT*: My background for obtaining these ideas was uh, there was a I went to the school at Berkeley and there was a thing called Project Genie at Berkeley.  As project Genie it was never very heavily advertised.  But, what they is brought a SDS930 through an ARPA grant and cannibalized it, put paging in it and it became what SDS later marketed as SDS940,which was a time sharing system.  In it there were some Mel Butler, Lampson, Peter Deutsche and Mel Hurdle were there.  They were the chief people there, who went on to do other things.  But, they essentially made a cleaned up version of MIT�s operating system.  Time sharing system.  

MSM: The CTSS?

Thompson: Actually, no PB1060. (not clear) It�s a TDA.  It�s a three-letter acronym. IDN or ISN or I something.  I can�t remember. Anyway they had a lot of fun ideas in there and there and a nice clean file system.  Then when I went to Bell Laboratories, I worked on CTSS, I used CTSS per say.  I used CTSS and did some, a lot of programming on CTSS and I worked on MULTICS.

MSM:What did you promote?

Thompson: We were involved with the file system, which never  really came to exist, because um the addressing is built into the paging system. -- the whole process is seen by paging -- and what we did was try to develop read and write calls that were sequential calls that turned around and ended just reading sequentially out of pages, it�s sort of upside down notion.  And the um there were problems with the segments, things called files, and that they were fairly short and maximum size.  Through the eighteen words of addressing, max.  So, if you want big files you had to concatenate segments and walk across to the two-dimensional address --one dimension being the segment number and the other dimension being the word within the segment.  Anyway, it was to try to clean up some of those problems with paging.  But, it... so anyway... That�s were most of the ideas came from was the combination of those three systems.   The 940 system... what became the 940 system.  CTSS and Multics, you know a couple of new ideas.

MSM:Which ones were they?

Thompson:Um Pipes.  There were a lot of things that were talked about but weren�t really done. Like treating files and devices the same, you know having the same read calls. Typically during those days there were special calls for the terminal and then the file system itself.  Those calls weren�t the same.  Confusing them and redirecting IO was just not done in those days. So, that was...  I think everyone sort of viewed that as a clean concept and the right thing to do but for some reason it just wasn�t done. It was just the right time to actually install the feedback; and, uh, the things we stole:  We stole a shell out of a MULTICS, the concept of a shell.  We stole per process execution.  You know create a process -execute the command.  From a combination of the two, although, neither of them really did it, MULTICS wanted to do it.  But, it was so expensive creating a process that it ended up creating a few processes and then using them and putting them back on the shelf, then picking  them up and reinitializing  them.  So, they never really created a process for command because it was just too expensive.  The ION direction and the stuff like that and later in fact streams came from um the IO switch, that we worked on in MULTICS. Having everything work the same and just directing, you know, changing what it really pointed to.  Hard to think.  I remember at the time that there was a discussion on whether we should go to  six or eight bytes.  Seems like silly discussion now.  Wasting all that space, you know, going to eight bit bytes when there was only six bits of information there.  (Laughing) It doesn�t seem like a grave decision, but it really was.  In higher level language which was still (not clear), we had always wanted to do that.  The original wasn�t, was written in a simple language.  But, 
MSM:Go you wanted to go to high level from the star t?

Thompson:Right from the start.  Knew we had to.

MSM:Was that MULTICS influence?

Thompson: That was MULTICS influence.  And just the complexity of maintaining the thing, we just knew that, you can�t maintain something.  Even write it, get it going.  But, it will evolve.

MSM:Did the choice seem obvious to you? As to which  high-level language to use?
Thompson:No. Not at all.  Because none was really good.  PL/1 was too high for us. Which was what MULTICS did.  Or even the simpler versions of PL/1that we used in MULTICS.  Like there was a thing called EPL.  The 360 was around, although it was IBM-proprietary.  After UNIX was up, or, simultaneous with UNIX coming out, BCPL was just emerging and that was a clear winner with both of us.  Both of us were really taken by the language and did a lot of work with it.
MSM:How did you come up with it, it�s an English  language wasn�t it?<BR>

Thompson:Ah yes, but the guy who did, Martin Richards, actually developed it at MIT.  It was available in a very informal way, on CTSS and we pulled it off of CTSS and got a version running on GECOS here and did system programming there.  It was too big a language to run on the UNIX machines that were 4K machines.  That�s when B was developed.  Which was ...

MSM:Did you develop B?
Thompson:I did B.

MSM:As a subset of BCPL
Thompson:It wasn�t a subset.  It was almost exactly the same.  It was a interpreter instead of a compiler.  It had two passes.  One went into intermediate language and which one was the interpreter of the intermediate language. Dennis wrote a compiler for B, that worked out of the intermediate language.  It was very portable and in less than a day you could get very versatile (not clear). Typically the interpreter was a set macros for your interpreter, they were very field orientated and you just define these macros with these fields and then write a little interpreter that would switch the set routines, and you had to write about twenty three-line routines, and it would run. And it was very small, very clean.  It was the same language as BCPL, it looked completely different, syntactically it was, you know, a redo.  The semantics was exactly the same as BCPL. And in fact the syntax of it was, if you looked at, you didn�t look too close, you would say it was C.  Because in fact it was C, without types. There�s no word like *interchar* or *struct* or anything like that.  The word for...  There was a word for *extern,* which means to declare an external thing.  There was a word *auto*, which declared an auto thing.  So, it would be like *auto* XYZ, instead *int* XYZ and it meant "word".  Which was the only time.   
MSM:So it operated really at the machine level.
 
Thompson:Yeah.  It was used to a very small extent.  It was  written in its own language.  That�s why it�s so portable.  Because you just pull it through and it�s up real quickly.  Um... But, the interpreters, the interpreter for the 11 was having some trouble.  It wasn�t a word machine, and this thing had a word notion, and so on almost every operator you had shift left and shift right, shift left and shift right.  It was just not a good match at all and part of this is we didn�t have a good -on top of the interpreter problem-, it wasn�t even a good interpreter on the 11, because of the mismatch of the machine and that we wanted something better as the systems language is what prompted Dennis to slowly permute it into C.
MSM:So C essentially contains B?
Thompson:Well, some of the anachronisms of C, that are now gone, or, at least are not or are unpublished to the point that no one knows they�re there, are B anachronisms.  Like *auto*. There�s a word called *auto*.  No one knows, I think it�s actually ANSI finally.  The word oriented parts of C, as C emerged were in fact the basic routines.  And in fact one of the major, at least in my view (not clear) with C is that a arrays to are promoted to the address of the base of the array every time you touch them and that�s one of the fundamental things of the NBCPL.  That there�s no such thing as an array but there�s these things called vectors. A vector is a list of words and declaration of a vector is a word containing a pointer to a list of words. If you say *auto* x of 5, there�s no such thing as x of five, you know, that�s a type, and there is no types in this language.  So, what it is, it�s a single word called x and then five words that are unnamed and a pointer, initialization of a pointer into x to the base of the five words. To keep that semantics and develop a notion of an array, which we want to promote. The name of an array into the address to do it at run time. Anyway,
MSM:It always seems to be one of the neat features.   The way you could step through an array with arithmetic.
Thompson:Oh yeah, yeah.
MSM:You prompted a question when you talked about portability of B and of course one makes a great deal of the portability of UNIX itself and it�s a portability, if I understand you correctly, based on self-reference, or almost self-modification, which was the theme you were pursuing in your Turing Award talk, largely to suggest the dangers of doing it.  Is that a theme of continuing interest to you?
Thompson:Have I got it right to start with?  I guess it�s wrapped up.  Von Neumann machines in the real sense.  There�s a lot of power in executing data --generating data and executing data.  In fact, that�s how languages work and in college I worked for the comp center and it was thrown upon me to maintain a language called NELIAC and it�s no longer wanted.  Then later on then another language called Smalgol as a subset of Algol. Which were compilers both written in their own language.  You get a sense of, I don�t know, bootstrapping and of self-modifying programs and of self-replicated programs when you are in a position of maintaining a language written in its own language.  Even if it�s written in a simple language, you know, you get this feeling of bootstrapping and moving on and I used to do a lot of that stuff, earlier.  In fact, the Turing talk was about work I did a long, long time ago.  I�m really sure I referenced the date that it was done in the talk.
MSM:You talked about the game of writing the shortest program that writes itself.  You said, "I imagine people programmed in Fortran for the same reason they took three-legged races."
 
Thompson:(Laughing) I shouldn�t say such things.
MSM:Well, all right.  It�s a great remark.
Thompson:Last year I taught at University of Sydney I gave that to my class, the shortest self-reproducing program in C, and I got a surprise.  I didn�t think there was a surprise there to be had.  But, I got somebody who has the shortest one I�ve ever seen, which is a record breaker, by about four characters of what I had proved to myself was the shortest program, and they did it by a totally different mechanism which of course nullified the proof.
MSM:Did you spend any time up at MIT during MULTICS ?  Did you come...
Thompson:I just went in and out for a day at a time.  Maybe for ten times. Something like that.  Yeah.  I�d go up there for... just ran through the halls and did work and go to meetings and stuff like that.  I spent no time, I didn�t teach and I didn�t stay there for more than a day at a time .  
MSM:�Cause some of these things were very much a part of that environment: Minsky and then LISP, which essentially is a language written in itself.
Thompson:Well, LISP , least the original LISP, you know, the book, 1.5 is... you know I think it�s a horrible language.  I really do.  But, I was struck with that book and the idea of defining very, very low level semantics, you know cons and (not clear).  Essentially that�s all that�s defined, maybe a few more.  From that, developing a... it�s not so much written in itself that it defines its own interpreter, in a way that gets into the what I think is the whole semantics for (hearing?) languages.  It�s always been a problem when you write a language or describe a language to say what constructs it recognizes and what they mean and what they actually do and that was the cleanest, simplest, most recursive, beautiful semantics of a language I�ve ever seen.  Probably even to this day.  But, unfortunately, what it describes I think is just a horrible language.  I agree.  That�s really striking, 1.5.  I did a lot of that.  I did a lot of compiling.  Even in college and out of college I did a lot of on-the-fly compilers.  Ah. ah. I wrote a GREP-like program.  It would...  You type in �, you�d say what you wanted it to look for, and a sed-like thing also. That you�d say, I want to do a substitute of A for B or some block of text. What it would do is compile a program that would look for A and substitute in B and then run the compiled program so that one level removed from it do I direct my (unclear) and the early languages, the regular expression searching stuff in ED and its predecessors on CTSS and those things were in fact compilers for searches.  They in fact compiled regular...
MSM:Does this reflect itself in UNIX as it was developed?
Thompson:Not a whole lot.  Outside of operating systems in general tend to operate on programs and they have to somehow turn the notion of data and programs inside out.  They�re operating on what they think are data, and that data are running programs.  The whole (unclear) is encapsulating processes as not variables just data comes into it.  But, no it�s nothing real fancy in terms of....  Do you know this kid Henry Heslin (?)  He�s a PHD student at Columbia.  He�s the doing a lot of weird stuff very similar to this now.  He has a UNIX mailbox that does 68,000.  But, when he issues a open on a file.  It�s the same semantics as UNIX.  He compiles into what would be the open file table.  Build the subroutines to getchar, putchar,  read and rrite and getchar, putchar,  that are just amazingly fast with all the checking built in.  You know the files open, you know the descriptors here.  You know all of this so that.... A read call traps right into this pre-compiled code for that at one character per time in a system that he gets faster than most systems get and are doing 8K at a time.  He does a lot of that stuff.
MSM:I see.  Does he work from here?
Thompson:No, no.  He�s...
MSM:How do you know about him?
Thompson:Um ... he wrote a paper that some people hate and some people love.  I was struck by it.  It�s called Super Optimizer.  What he does, he defines a function he wants to write, and see, and then he by trial and error, he builds that machine language that will implement the function, he uses the function to check the machine language.  So, he�ll try essentially all programs and then see if that program equals that program, but semantically.
MSM:(Laughing) I like to see what I�m getting... . It�s a difference of opinion.(Laughing)  
Thompson:And um, it generates shortest possible program for small functions, you can�t do big things.  It generates code that is absolutely inhuman.  It�s, it�s indescribable, to be honest.  Um, and um code you,... it�s easy...there�s no way to describe it except that it proves it.  I�ve use that idea, since I read that paper, I�ve used that idea around four or five times.  On one case I used it for a compiler I�m writing for 68000 um, multiply takes thirty-two seconds no matter what.  So, if you multiply something by three, thirty-two cycles.  Those same thirty-two cycles, thirty-two adds, on this machine.  So, what a combination if you change a multiply into shifts and adds.  Multiply by a constant with shifts and adds of, you know, the original thing.  You�re going to always beat the multiply because, the multiply is implemented so badly on this chip and so what I did is write super optimizer, which tries all combinations of shifts and adds to generate, to simulate a multiply by constants between one and ten thousand or something like that, and put them into tables and take the C the compiler and generate explicit code which is the best shift and adds and subtract.
MSM:So the multiply go to the table, look up at.... 
Thompson:No, no it doesn�t go to the table, the compiler goes to the table. You say multiply by five and the compiler goes to the table and does shift left of four and add.  It�s four plus one.
MSM:So it picks up a particular combination of shifts and adds that will work for that particular multiplication.
Thompson:Right, shifts, adds, and multiplies.
MSM:By doing table lookup and then imbedding code.
Thompson:Right.  And it�s optimal because that�s how the table was generated, by trial and error, all shifts and adds that can generate all multiplies of all things.  Another one, is that the bit blit on this thing is um...  it�s read a pixel, a block of pixels, perform some operation on a block of pixels. It�s like plus equals.  You know, pixel block plus equals pixel block. Where a plus is a pixel is an XOR an man / you know all these operators. So, you put in any of the arbitrary binary sixteen, any of the sixteen binary operators in this opcode for the bit blit.  And the whole thing�s compiled.  When you do a bit blit  you compile the code and run it, and you want the best compiled code for these operations.  You had to find the best compiled code for these operations.  Put it into tables that are up and generated by trying all of the programs.  
MSM:What machines?
Thompson:68020.
MSM:Is that the NeXT symbol of the NeXT machine? Or is that just the (unclear)right there?
Thompson:No it�s just a joke.
Thompson:That�s the machine sitting on the table.  It�s a terminal in.... It�s...tactically, if you want to use the word, it�s almost a Sun3.   It�s the 68020 floating point, four-meg memory. Network interface which is an ether - it�s a (unclear)
MSM:Did you design that yourself?
 
Thompson:No, no. It was designed here.  Not by me.
 
MSM:Let me pull you back. ...Talked about this distillation of all the good ideas. Were there ideas that you particularly wanted to avoid, or features you wanted to avoid, or that you had in mind as representative of what was bad with operating systems?
 
Thompson:Yeah. There were lots of them.  I wanted to avoid,  special IO for terminals.  I wanted to have virtual memory, at least as it�s coupled with file systems.  I wanted to keep file systems really exclusive and separate from virtual memory -as not be read and be write.  There were lots of  things. Ah. I wanted to avoid this thing called an "executive".  The word has lost its meaning now.  What it was is a pseudo-shell, built into the kernel, that somehow controlled the console and execute the commands for you and to drag that out and make it a process of any process could execute any command. 
 
MSM:Just to make sure that every processor...it sets every processor the same as a user processor and having this privileged.
 
Thompson:Yeah and also to make the thing that became known as the shell it�s handled in like any other program.  There was no �the shell� that came with the system that you were stuck with for life.  In fact, we started off with two or three different shells and the shell had life of its own.  A new shell would come in and supplant the old one and there were... shells performed different functions.  Like, there was a shell for a video interface.  A shell for a voice synthesizer.  You know, what you would do is bring in a  touch tone phone and put another shell in its place.  So, anyway, the idea that there was no built in known level of command, that, that was just a replacement program that we could avoid like any other. We tried to avoid, you know, records.  We were told over and over that was probably the most serious mistake and the reason was the system would never catch on, because we didn�t have records.  Essentially, the record manager was images imbedded in disk images.  Having just this uniform sequence of lights, they said over and over to us that was a serious mistake, but we stuck by it.
MSM:I�ve just been having exchange systems programmer down at Princeton on the IBM mainframe.  The problem, default record formats and what happens when you try and do a get on a file that�s got a different format, losing (unclear) records when...do you have a code?
 
Thompson:I have um. I have um...in that era, we weren�t trying to promote this idea. I�d give talks, we always come up, you know, why you didn�t do records and I�d have some extra slides, cause I knew I�d be asked this. You know,  you know, you jumped and said, " Well, I just happen to have a couple of these laying around.  (Laughing) There, the best slide and best story is McIlroy�s test.  You ever heard of it?
 
MSM:Sort of finding a....
 
Thompson:Yeah it�s a Fortran program that works ....
 
MSM:... the first �e� in the in the eighth column, and you do it on the Fortran program itself.
 
Thompson:Right.  To ask them to go through the steps is just priceless-- to see what happens in these systems when you do that.  It all has to do with record formats.  Confusing program and data, in a file format.  You know, that things...  You know, there�s text files that are data formatted.  You know, on and on and on.  (not clear) It�s just....  That was one of the things.  The other thing is that, there�s a series of thunderbolts out of manuals.  Describing um. (not clear) By chance�  
 
(Shuffling of papers)
Thompson:I think this might be it...No, this isn�t it... .This is very similar.
 
Thompson:You know about the  Yeah. It�s putting it there .  In our UNIX paper. Um, um.  Dennis wrote this.  It offers a number of features (not clear) it was actually a joke.  It means nothing in a sense.  It�s those kind of things that people write in papers. People picked it up.  Some people picked it as a joke, and some people didn�t really understand it as a joke.(Laughing)  Variations.  Variations on that and that�s how it gets picked up.  It was a joke.  (Laughing) ... four Princeton (unclear) larger bankrupt packages. Can you picture (not clear) ever wearing this thing.(Laughing)  BT52, DEC�s newest version of  (not clear) (Laughing) So, and the other is, the one I was trying to find is, it, it, it was one of the HP3000, brand new operating system, post-UNIX.  Talks about the editor and says that, "The editor edits um um binary um card images 84columns -whatever, some magic number- in a variable format.  It�s a variable column format, with columns set to 84 and this is what their editor edits and there�s about ten computations like that, describing, you know, formats.  Record formats and what this has do to convert this to this, you know.
MSM:Is the absence of those kinds record formats the reason why the UNIX editors had no concept of column?  That is, if I am in a CMS editor, I can do column substitution, column searches, it not only has the notion of a line, but it has a column and I can go directly to it, do column locates and column changes.
Thompson:I don�t know, I think mostly, it has no notion of columns, because none of the languages have notions.  Grant, if we edited Fortran, I assume that you�d put a column thing in there.  There are regular expressions that you can use to get your (not clear) at things.
MSM:Just no one found that feature particularly useful.
Thompson:If it�s a notion that you need or want then I�m sure it will easily.  I don�t think it has anything to do with records, because, in fact, you know, the only thing important about lines there is newlines.  There is a notion of lines and a notion of columns.  It�s just that we never (unclear)
MSM:The story, as I gather, is that behind UNIX stood MULTICS. All of you been working on MULTICS, then the word came down: no more MULTICS.  How did you feel about that?
Thompson:Um. Mixed. Um.  Technically, I thought it was a good idea that we were getting out of MULTICS.  That it was too big, too expensive, too over-designed.  It was just clear it was an exercise in building monstrosities.  Efficiency would never come back to the point of  where it was .... was cost effective and useful.  Most of the efficiencies were dumped into features that were there because they were ... I don�t know how to describe them.  They weren�t there because they were good features,  they were there because they were neat technical acts.  Um. So, on one hand, I thought it was the right decision.  Even then.  On the other hand, we, meaning essentially Dennis and I, two or three others, had a ten million dollar personal computer.  It was clear that this decision was aimed at getting rid of that.  You know, the side effects of this decisions was that this thing was going out the door.  Our personal way of life was going to go much more spartan.  So, in that sense, we didn�t want this decision to go. Um.  There�s a deeper decision in it than just MULTICS, the crew wanted to work on MULTICS in Bell Laboratories, and that�s that computer science research shouldn�t work on operating systems. Operating systems were dead.  This was the whole....  There was a whole change in thought at this point that, operating system research was dead. Um. Manufacturers, in a laboratory environment, you couldn�t build a workable operating system.  It really required a development kind of mentality and you know, grind it out.  That we provide insight, but we couldn�t build one.  They were too big, too expensive to build or maintain.  The whole computer science research was going to go back to theoretical, paper and pencil kind... There was a signaling of a very strange change here, at that point.  Essentially getting out of the computing type of computer science as opposed to the theoretical type. When we persisted we were almost outlaws.  We had to beg and borrow machines from weird places and weird sources.
MSM:Why did you persist?
Thompson:It�s what I do.
MSM:You wanted to work on operating systems?
Thompson:Well, no not per say.  I just wanted to work on computing and programs and it wasn�t in essence no operating system.  I never really viewed almost anything I did, as what I worked on.  It�s what I wanted to do next, for some other goal. After MULTICS went away and things settled after this, our computing environment....  Computer science and the Computer Center were one, and it split and the Computer Center went off to the services area, you know, like people who do the air conditioning. Computer science went into research. Um.  We then had to go over a fence to talk to the computers.  The computers were not with us anymore. We were a service organization where, you know, you had input boxes and output boxes and submitted cards over a counter.  Very, very different approach what we were used to up until this point when we, since it controlled everything.  The operating systems became vendor-supplied.  In particular we went GECOS, and a word on top of GECOS, called TSS.  Which was their time sharing system.  Which was nothing but batch card entry.  Quick turnaround batch card entry into the batch world.  That�s what they call it: TSS with a partition for editing.  It was horrible just to use that.  The operating system, I think was just a (not clear) to get into a environment (not clear). 
MSM:I was thinking about this yesterday.  As you may know from what Doug has said, I�m doing a history of software in general, during the �50�s and�60�s, working up to the roots and the kind of thinking that was going on in the late �60�s as the software crisis emerged.  Basically the question: how did the industry get itself into that, that situation?  I was thinking about the operating systems of the �60�s, which, if I understood them correctly, as someone who, when he was programming in the late �50�s for a small company, still on the machine at night and worked at the console that to debug a program.  I never went through that:  hand on your cards and wait until the next day to get your output, first stage of program computing. That the notion of the operating system was to make the machine efficient. That the notion of a system like UNIX is more making the program more efficiently.  As it�s a programmers system rather than �
Thompson:It was a combination of both.  I mean there�s reason they would  be mutually exclusive. Um, um.  The talk of the day in the conventional wisdom, which I never really bought, was that they were mutual exclusive.
MSM:That was the feeling at the time?
Thompson:Yes, and that um, time sharing would never survive  because, you�re spending all of your time on this big mainframe, you know, all floating point hardware and all of this stuff, you know, fielding these ratty little interims from people typing on flex-o-writers.  And it was self-fulfilling prophecy, they believed that, in the systems they that built.  Believing that, demonstrated that.  Because, it makes it what it had to be.  I think that in time sharing you can do better than batch.  That you have a better mix of things to do and you can do scheduling in such a way that you just can�t get in batch.  
MSM:Follow that up, because, again, there is the lore that has grown up around that.  On one hand, I gather that what you all felt most strongly about at the end of the MULTICS  project, other than the fact is that you  have a ten-million dollar personal computer, was that notion of communal or convivial computing, that is that you have been able to share files with one another, become a medium of communication among you and that you felt - Doug at least said he felt that that really hurt to lose out.  Then the other story is that UNIX started off as a personal system.  A one-person system.  Those two stories (People laughing) aren�t entirely compatible.  That is...did you have a notion when you started UNIX of restoring that sharing?  Was that in from the beginning?  It was going to be multi-user system from the start?  
Thompson:Not, explicitly, I think.  I was more interested myself.  Just selfish notions of trying to get a environment to work in.  
MSM:Were you trying to build a programming environment for yourself?
Thompson:We always wanted to expand it and turn it back into communal things. We were always trying to get machines that we could take home, you know and share among wider groups of people.  There�s massive amounts of software that had to be developed, languages and all applications and all sorts of things.  You just can�t sit there with that Model 33, you know, wired right into a computer and do it all yourself.  You can get your own work done, but you can really work faster if there�s a community of ideas, a community of help.  Application programs you can use and rely on.  (People talking in the background)  
MSM:As you were the developing the system did you have it in mind to keep that option open at all times, with decisions informed?
Thompson:Well, it was always time sharing in that sense.  Sometimes it was a single-user system, but, it was always a time sharing system.  I think it was implicit.  It was never voiced, but it was always meant to be a shared system with lots of users.
MSM:When you and Canaday and Ritchie, I think that's the three, settled down to find a file system, what were you looking for?  Because, the file system you designed looked like, if I understand it correctly, looked a lot like the MULTICS file system.
Thompson:Up to the point of writing simulators.  Ah.  The idea of the file system was to um, to have the activity locus of manipulation of data for user one and user two....  to be disjoint, so that in fact, wouldn�t be locking common tables.  Wouldn�t be going through anything common unless we in fact shared files.  To try to keep up real high, efficient access to disks. In fact, interleave accesses in a way.   If two users... one user would expect some sort of response call or whatever it is and that at least with the disks of the  disks of the day, two users will be able to command it and interleave seek times on the disks, and would not degrade each other. That was the idea behind the file system and the design; to move the addresses to the point where things could be cached and that your working and my working wouldn�t interfere with each other in a locking sense or in a real sense in any way that (not clear).  Um. I had built this system in a high level simulation of the whole file system and had gotten as results that these common disks of the day that in fact, you could enter(not clear) of your requests and get lots and lots of users happy at the same time.
MSM:Was this the one you were doing on the 645?
Thompson:Yeah.  I was doing it on the 635 at the time. Yeah .  I got these exponential curves where before it would get into trouble it would go way out and get lots and lots of simultaneous accesses going... I was playing with a disk sorting algorithms and caching algorithms at the time.  All of those actually went into UNIX.  Um.  
MSM:This would be the research aspect of the work?
Thompson:Yeah. Then in the actual design.  At that point, it just went to...  There was a model of a user and a model of this, and they generated activities, and the activity went into the disks that were sorted and things like that. Um, um.  It was never down to a design to the point of where you put the addresses, how you expand files and things like that.  It was never down to that level. It was always at some higher level.  I think it was just like one or two meetings,  Dennis and Canaday and myself.  Was just discussing these ideas of the general nature of keeping the files out of each other�s hair and the nitty-gritty of expanding.  Of the real implementation, where you put the block addresses, where you put this and this.  I remember, um, we did it in Canaday�s office.  At the end of this discussion Canaday picked up the phone, and there was a new service in Bell Laboratories, dictation, where you call up essentially a tape recorder and you give notes, and then the next morning notes are typed and sent to you.  The next day, these notes came back and the acronyms were butchered, like  "inode" was "eyen�"  (Laughing)
MSM:You should see the transcripts of your �81 interview.   (Laughing)
Thompson:So, we get back these, (unclear) description and they were copied and we each got copies of them.  They became the working document for the file system, which was just built in a day or two on the PDP-7.
MSM:But to the user it would look roughly the same as a hierarchy of directories.
Thompson:No, the first one was a DG.  In fact, it wasn�t even a acyclic.  If you understand the UNIX file system, it was.... there was the I-list, which is a definition of all the files on the system.  And then some of those files, were directories which just contained name and I-number.  There�s nothing in there that constrains it to a tree.  So it was not in fact, not hierarchical at all.
MSM:I see.
Thompson:And we did not restrain it to a tree.  We were experimenting with various topologies.  What we ended up doing is turning into concrete and forcing the topologies that in fact were the topologies that came by convention from that system.  The... Every time we made a directory, by convention we put it in another directory called directory - directory, which was <I>dd</I>. Its name was <I>dd</I> and that all the users directories and in fact most other directories, users maintain their own directory systems, had pointers back to <I>dd</I>, and <I>dd</I> got shortened into �dot-dot,� and <I>dd</I> was for directory-directory.  It was the place back to where you could to get to all the other directories in the system to maintain this spaghetti bowl.  So, I mean this tuff in various forms, which was strictly convention in this DG implementation of just random set of directories and files got forced into a typology that we maintained.  When we started writing things like file systems checking programs and stuff, the locking of the spaghetti bowl directories and finding of disjointed things, I mean you�d dissever something and never get it back, because you know you�d lost it.  Those problems became close to insurmountable, and so in the next implementation we forced a typology stronger than that.
MSM:The PDP-7, you used the famous graphics machines you found.  Um you went to when you found out you had in mind to just put the file system on there or ...?
Thompson:At first, yes, we used it for other things, the famous space travel game, and it was a natural candidate of a place to put the file system.  When we hacked out this rough design of a file system on the dictation that day in Canaday�s office, um I went off and implemented it on the PDP-7.
MSM:Ok the PDP-7 was already around at that point.
Thompson:Yeah.  We had already done uh...we�d spent a lot of the summer doing it... space travel...we had a lot of the pads worked out, we had assemblers and...the assemblers were actually on GECOS, and they�d generate paper tape and we�d carry the paper tape down the hall and...
MSM:Were you looking for a graphics machine, was that...because of the space travel game?
Thompson:No, no, we used it because it was there, it was a graphics machine before.  It was designed to be a circuit design system where you�d lay out resistors and transistors and things.
MSM:So originally you grabbed that from doing the s pace travel, worked up a certain number of tools on that in order to implement space travel, and then came the file system and you went to implement that.
Thompson:The file system didn�t exist by itself very long.  What we did was... to run the file system you had to create files and delete files, re-unite files to see how well it performed.  To do that you needed a script of what kind of traffic you wanted on the file system, and the script we had was, you know, paper tapes, that said, you know, read a file, read a file, write a file, this kind of stuff.  And you�d run the script through the paper tape and it would rattle the disk a little bit...you wouldn�t know what happened.  You just couldn�t look at it, you couldn�t see it, you couldn�t do anything.  Um and um we built a couple of tools on the file system...we used this paper tape to load the file system with these tools, and then we would run the tools out of the file system, that�s called an "exec" by the way (laughter), and type at these tools that was called a "shell", by the way, to drive the file system into the contortions that we wanted it to uh, measure how it worked and reacted.  So uh it only lasted by itself for maybe a day or two before we started developing the things that we needed to load it.
MSM:At what point did you feel you had something here?
Thompson:Um, well, the first one was not at all multiprogrammed, and was almost like subroutines on the file system.  The read call, the system read call, was in fact the call "read" of the file system and it was very synchronous, just subroutine call to the file systems for these applications.  And um there was a very quick rewrite that admitted it was an operating system, and it had a kernel user interface that you trapped across.  I really can�t remember what the realization was, I mean, the whole time span, from initially starting with...walking downstairs, down there with the idea that we were going to build a file system.
MSM:When was this, do you remember the time?
Thompson:Yeah, it was the summer of �69.
MSM:Summer of �69 ok
Thompson:In fact um my wife went on vacation to my family�s place in California to visit my parents -we�d just had a new son in August �68- and uh they hadn�t seen the kid so (unclear) took te kid to visit my family and she was gone a month to California and I allocated a week each to the shell, to the operating system, the shell, the editor, and the assembler, to reproduce itself.  During the month she was gone, which was in the summer of �69, it was totally rewritten in a form that looked like an operating system, with tool that were sort of known, you know assembler an editor and a shell.  If not maintaining itself, right on the verge of maintaining itself, to totally sever the GECOS connection.
MSM:So that you could work directly on it.
Thompson:Yeah.  And from then on it kept pulling up files.
MSM:So we�re talking about a month�s development.
Thompson:Essentially one person for a month, it was just my self.
MSM:How�d the others get involved?
Thompson:um Doug got involved (unclear).  Uh it was multiprogrammed...processes from the beginning, but it was just one console. And with just a little bit of work we turned the graphics scope into just another typewriter.  You know, you print on the screen by inking characters all by hand as well.  And so then it became two users, and it was constantly full, it was constantly at two users on it.  (Unclear) got involved he was doing TMG, which was a compiler compiler language predecessory to the yacc kind of languages.  Dennis got involved with ...during his language work.  Uh (unclear) who was doing, he didn�t do too much.  I mean when it was in the PDP-7 form he didn�t do too much. He did some... a number of theoretical kind of things.
MSM:Who else was involved?
Thompson:There were a lot of people involved, in a political sense, you know, trying to keep the machine for us, and get us the next machine, and that kind of stuff that weren�t doing programming.
MSM:Who were these people?
Thompson:Uh Peter Neumann, Lee McMahon, (unclear) Matthews. 
MSM:They were running interference with managers?
Thompson:Yeah.  Joe Osanna did for ... at that point also.  Uh he later became very involved in the thing.  His pet thing was to develop a um text processing system, to um, which you call a desktop publishing or whatever word processing.  A text processor for... he had ideas about secretaries and typing pools.  And he was constantly on the lookout for good typewriters, in the sense that secretaries would use, and that could use a touch type, you know, IBM Selectric type typewriters, that were computer interfaced. And we�d go to almost every toy show, with this in mind.  Looking for...I mean the industry was in sad shape at that point in trying to (unclear)things that we needed to accomplish some of these goals.  But um everything that connected to computers was upper-case only, six bit generated and are very, very expensive.  There�s the 1050 - you know what that is?- it�s an IBM Selectric but it�s about this big, and was loud and was about this tall on a console.  So anyway they were interested in typesetting equation ... not typesetting but ... typewriter setting equations and doing TMS and documentation.
MSM:So was it Joe figured this was something he could sell to management? Keep your system (unclear) going?
Thompson:I don�t know his motives.  I won�t guess his  motives.  Um I know he was genuinely interested in it, uh he in fact got a commercial type-setter and uh got it interfaced with the computer.  Essentially ripped out the paper...it was meant to be driven by paper tape, and the paper tapes were to be, you know these typewriter to paper tape things, and what we did was we cannibalized the paper tape interface and just ran it over to a parallel interface on a computer, and we just punched paper tape...logical paper tape over to it over a wire.  And uh it really had the first typesetting of this sort, so it was all way ahead of it�s time and that was all Osanna�s work.  And it was all towards this ultimate goal of computer text processing.
MSM:I know the um when I asked Doug about pipes in (unclear), the story that I was telling him when I was coming up to talk to him - my daughter who is a computer science/music major up at Harvard - said uh "Well, what did he do?�, and I said "Well, he�s (unclear) who had the idea of pipes.  And she said, "Oh, well, you ought to call this project �pipe dreams�." Uh I asked Doug about pipes and he talked about what the background to it had been, but he also told me that you were able to implement that overnight.
Thompson:Yeah,well, Doug had was for years and years, well it seemed like years, I don�t know the actual span was probably one year, Doug had uh, and he talked to us continually about it, a notion of interconnecting computers in grids, and arrays, you know very complex, you know, and there were always problems in his proposals.  That what you would type would be linear and what he wanted was three-dimensional...n-dimensional...I mean he wanted just topological connection of programs and to build programs with loops and and you know horrid things.  I mean he had such grandiose ideas and we were just saying, you know, �God, it�s worthless, the complexity you�re generating just can�t be fathomed.  You don�t sit down and you don�t type these kind of connections together.� And he persisted with his the grandiose ideas where you get into Kirchoff�s law problems, where you get into you know, what happens if you have a feedback loop and every program doubles the number of characters, you know, it reads one and writes two?  You know, what happens to...it�s got to go somewhere you know.  And you get these synchronization just, I mean there�s just no way to implement his ideas and we kept trying to pare him down and weed him down and get him down, you know, and get something useful and distill it.  What was going on, what was needed, what was real ideas, what was the fantasy of his ...and we there were constant discussions all through this period, and it hit just one night, it just hit, and they went in instantly, I mean they are utterly trivial.
MSM:And that a reflection of the basic structure of  the system or was it just coincidence?
Thompson:No it was just we had control over it, it was our system.  We could....it wasn�t a big system, it wasn�t a big thing to put in it was just, it just took minutes to do because we knew what...
MSM:Is pipes the sort of thing...pipelines the sort of  thing that can be implemented in any system or are there certain system requirements?
Thompson:Uh well you really have to have real processes, and some places (unclear)data.  Um for them to work in a um for them to actually work you have to have the notion of reading and writing streams, or whatever you read and write, and that the I/O cannot be different from the files.
MSM:Oh so that goes back to that idea, that that�s a prerequisite.
Thompson:Yeah.  Because if you have programs that sit there  and read terminals, and then manipulate files back and forth there�s just no way to connect them.  Because what they read and what they write have to be the same thing.
MSM:How long was this the skunk works when did you . .. well you said in the beginning you were building an operating system in spite of what was supposed to be going on.  Uh when did you go public with it, within the company?
Thompson:Uh we never really did.  Um every step was painful .  (Unclear) We couldn�t have...uh it was an obsolete machine at the time the company the the, we didn�t own it, uh it was another department that owned it, and when it would break, it would be a hassle over who maintained it, and we didn�t maintain it because we couldn�t get our department to pay for maintenance.  There was, you know, no money at all but they just didn�t want us to do this.  We not only had to buoy this company, this department that owned the machine and wanted to throw it away, but to keep it, on their space and maintain it for us.  That was a precarious situation, and that persisted.  Then when it became clear that these machines were nearing the end of their life, uh we either tried to get them officially ours, which failed, our manager wouldn�t pick up these machines, at zero cost, you know, they didn�t want...the cost of the space.  Then we started on a set of proposals for getting a new machine, through our management to replace it, to get a new machine, and they were all um... There was no explicit policy that we weren�t going to get back into the computer business, (unclear) we really know the rules, you know, but the rules were in effect.  So what would happen was that we would take these proposals for these machines and do all the research on them and get the vendors in and waste everybody�s time, and get these proposals up and they�d be thought about our management for a extended periods of time and they�d say �no� for some funny reason, you know, never for a real one (unclear) computing anymore.  There were several, really several, of these big rounds of trying to get a vendor and a machine and, to get....to do this work.  Most of it was carried on by Osanna and me, and the interference type people.  Ultimately what happened was um we found a PDP-11, it was in fact not announced yet, but uh it was right on the edge of being announced.  We would like the for the idea of text-processing we liked the expandible IO of the Unibus, where we could build our own interfaces, they had general purpose interfaces, they had lots of com gear, uh that we could do for...I mean it had everything.  It looked like it was going to expand to any machine we wanted to make it. Um and these people, Osanna and I put together a proposal to buy a PDP-11 to do text-processing, research in text processing, (unclear) and document preparation, this type of stuff.  Uh it was the first of the goals that were specific, uh we want to do this for this machine, um for this purpose.  The other ones were...we wanted to play with computers and operating systems, and they were unspecific, and the our management went off and thought about it, and rejected it again.  But in the meantime going up and down the hierarchy a sister department, 122, psychology research, uh came over and said �well we�ll fund it out of our area,� embarrassed the hell out of our management.  And they bought it, gave it to us, and...

MSM:What were you looking for?

Thompson:Well it was interesting, they thought it was interesting.  They just had insight, and inspiration and unfortunately our management didn�t.  They were suffering from wounds, our management was suffering from wounds from the MULTICS days and you know ...

MSM:MULTICS really hurt?

Thompson:Yes.  Lots of promises to lots of people to develop software that would be everything to everybody.  It was sold, company wide, to be the computing utility.  There�d be, there would be a plug for 110 volts, and right next to it there would be a MULTICS plug, and you�d just plug it in and suck out whatever cycles you wanted for anything you wanted.  You know it just, it would just be <I>the</I> utility, you know just like a power utility or a phone utility, it was just the computing utility.  For <I>everybody</I>. Everybody would have all the cycles they wanted.  It was sold big all the way down the company and...

MSM:So it was a notion of once burned, twice wary .

Thompson:Anyway the 11 came in, um it say for a month in Osanna�s office, because uh, it had no disk, the disk was delayed, it didn�t come with it. And we�d type stand-alone type things, this stuff, um.  Then when the disk was just ready to ... you know the disk was just ordered and was on its way, they were actually starting to manufacture and we were on the waiting list, we brought the machine up next to the PDP-11, which was what we were working on, and we started writing all the cross stuff. In B. We wrote a PDP-11 assembler in B, and ran on the PDP-7 the PDP-11 assembly code and punched paper tape out of the 7, you know out of the...across the floor into the 11 and had fake file systems that were done in memory, and we got it almost running, the disk came in and in probably another week we got UNIX running on it...At that point a lot of things came into being...the topology of the directory structure was fixed on more convention than convention by that point...

MSM:When was this, 1971

Thompson:Yeah, let me see, 71?  Maybe �2?  I don�t know that.  It�s mentioned in one of the UNIX manuals, the dates rolled up....(unclear) And we moved over...Osanna...I was just interested in operating systems, I went along with the text processing (unclear).  It didn�t interfere with my plans so I ...went along with it.  The editing, and the stuff around the text processing, and Osanna did the... went on to the nroff, troff stuff or the text processing.  We instantly put all our secretaries on it.  They did our mail messages and our documents and did that so we did text processing for that, then we uh as part of the demonstration Osanna got the patent people, patent application to come over - they were just about to buy a horrible little commercial type setting package- called, we shouldn�t mention this...AstroText was the name of it...and it was just truly bad, and we could cobble together something that would be vastly superior to what they were about to pay real hard...you know a lot of hard money for. Um, and so we put their stuff together and developed a package for them that was specific to their applications, you know, they have very different kind of formatting (unclear).  Um and in fact they liked it and they still had this money in the budget for this AstroText thing, and we talked them into buying our system, physically, you know, the hardware, move it out, and we took their money and bought an 11/45 with it.  (Unclear)interim machine was a um.  Before the 11/45 was available we bought a PDP-11 that had PDP-10 memory management, KS-1, it was a one of a kind machine, and that was the first time we ran the production of program development along with these -all in assembly language- along with these typists typing real applications and uh (unclear) on unprotected machines.

MSM:You hadn�t gone over to C yet.

Thompson:No.  C was fairly late.

MSM:(unclear) DEC machines.  Did DEC ever show any interest in what you were doing?

Thompson:No.  At one point we put a notion to them, and said um...the way it started running internally, is the word just got around, and these random groups would come in and say you know....everyone, technically would look around for a machine and choose a DEC machine, and DEC had no software, they were real late in the delivery of their software, and when it came it was horrible, just...that was probably the early reason UNIX thrived is because it had no vendor competition at all, none.  It was the only software around for the DEC machine, and so they�d look around, they�d find DEC machines, they were just without technical peer.  And a project would buy a DEC machine and they�d look around for software after that, and they�d hear our names, they�d come and talk to us.  And they�d decide that they were going to run UNIX for their software development, develop their application and then run their application standalone; it never happened, they never got rid of UNIX.  You know their application would run on top of UNIX (unclear).  The story was always the same: that they were going to use software development, develop their application, and then deliver it with the application.  And these things kept proliferating, more and more and more of these things, it was all underground.  No one, you know, we were the only ones doing the development, and they�d want records or they�d want this or they�d want that, and we�d tell them no, we didn�t like that, doesn�t fit into our plans, so to hell with it.  Uh and that�s how the UNIX development  group got involved is to do the to be more responsive than we were to the needs of the people.  (Unclear) were starting to put these machines in.(Unclear) telephone applications.


MSM:Would you say... is this the point at which UNI X became standardized in some sense, got settled?

Thompson:No, no um we had momentum, in our department, we were working...these guys were just fighting - the development group � were just fighting to learn what it was.  By the time they learned, it was something else.  I mean things were really moving fast in those days, and they would spend most of their time, coming up to speed with some version they�d cloned in the past, and in the meantime there would be three more of their customers that would have cloned from us, because they needed some new thing that we had and, then they�d end up retrofitting our current version back into you know their version, and  most of their updates were in fact taking our version out.  And this went on for several years, where they were just some sort of conduit buffer, and trying to learn what was going on.  Um probably an unenviable position for them to be in.  And it wasn�t until there was a second group from (unclear) that cloned a version of our system and started doing...going off in their own direction, really doing their own work for it themselves.  And they merged um (unclear) and, and a combination of our system and their system turned into the development system, which was the standard system, which, I think, turned into System 3.  And from then on they were fairly separate, and just took ideas rather than massive amounts of code.

MSM:I was going to say, when did it wind down for you, or did it ever?

Thompson:Um at some point it got ponderous, and I decided to get out from under it.  And I did, I took a sabbatical at Berkeley, just disappeared for a year. And you know, if you�re here, you are indispensable; if you�re not here, you know, (laughing).

MSM:That�s why I�m going away next year... 

Thompson:Yeah so I went away for a year and when I came back it was just...I was just not in it anymore, not in the mainstream and not needed for(unclear).  It was actually planned.

MSM:So what did you go off to do?

Thompson:Uh, (unclear) I actually did a lot of system development for them, it was the start of their ascension.  Most of the names you know were in fact students of mine.

MSM:I see...(unclear) the development of UCB.

Thompson:Yeah...when I went there they had one UNIX machine .  It was (unclear) statistics, that they�d run it three days a week and statistics would run it three and they�d fight over it the last day, or run maintenance on it that day.  When I left it was in almost every one of their courses.  They had about three machines on order, they had three or four machines installed, real confident students.

MSM:Looking back (!phone!)...just one more, because  we have been going for a long while.  Um you look back on it...is there something fundamental you�d like to have done differently?

Thompson:Um, I had regrets about a couple things.  Um probably the biggest thing is I had some little lash-up applications, uh with remote shells, and distributed machines where you had a shell where you could execute pipelines with different parts of different machines.  Um and I never pursued that, and because of it there�s these, you know, the stuff that we laid out and distributed was hardly ever changed; our file system, the composed read/write, the pipes, and you know all these things.  The stuff that we left fuzzy, got done either poorly or multiple ways and their different, different systems and their addressing strange (unclear).  And I think that if we had worked harder, had the insight or done more in networking in those days then you know things would be different.  But uh it was, it�s, it�s nothing that I could have predicted, it had to be in retrospect to think of that.  I dabbled in that area, and just never, never installed it, never distributed it as part of the system.

MSM:It�s always easy to be wise after the fact, and hard to imagine how one thought otherwise about certain things, but, one thing about these timesharing systems of the late-60's...operating systems and the notion of making them time-sharing was the shared notion that computing was going to become generally available, it was going to be through a plug in the wall to a large central computer, when, in fact, that�s not how computing has become available to people at all.  Were you still thinking in the late-60's early-70's when you were doing UNIX about using a central computer, or did you...

Thompson:Yeah, in fact, I still think that way.  Um in those  days I typically thought of using one central computer, um mainly because of the expense and stuff like that, you know, RAM, and lack of networking although I�d done the interconnection of UNIXes to some extent.  But now I am thinking of still central computing, but with multiple central computers, designing new operating systems that way, um I think that there... the comp centers maintain hardware better than people do in their offices. And um if you compute in your office, like a workstation mentality notion, that you are always stuck with a small machine, that you can�t afford, on that machine, to put a hundred megabytes, but uh, on a central machine you can, and that for short periods of time you can use the 100megabytes... um for you applications.  And that the sum of these, the distributions of how much memory you need and how much I need averages out much quicker on big machines than they do with one person with one machine on your desk.  So I think that small amounts of sharing in central computing is better for everyone; it�s cheaper and everybody gets better service and better cycles than they do on their machine on their desk.  So I still feel that way.

MSM:But it would be a distributed system.

Thompson:Yeah, it would be several of these uh compute servers, call them whatever they are, but they�re just there for these economies of scale, and you get these economies of scale with a few users.
MSM:Ok...

 

{END} </DIR>

<h1>Interview with Ken Thompson</h1>

`this comes from a DrDobb's post May 18, 2011 - the article disappeared from the site so I'm just saving it here) to which I took this saved interview from <a href="https://www.paulstephenborile.com/2021/01/interview-with-ken-thompson/">Paul Stephen Borile's`

The Japan Prize, one of the highest honors awarded for outstanding contribution to science and technology, was awarded jointly this year to Ken Thompson and Dennis Ritchie for the creation of UNIX. The prize is normally given to the recipients at a lavish banquet in Tokyo attended by the emperor. However, due to the April earthquake and tsunami, the prizes this year were distributed at the honorees’ place of work. I was able to attend the ceremony for Ken Thompson, held at Google headquarters, where he currently works. After the ceremony, he consented to this exclusive interview.

*DDJ*: Congratulations on winning this prize.

*KT*: Thanks.

<h3>Developing UNIX</h3>

*DDJ*: You’ve received a lot of awards over the years for UNIX. At what point in UNIX’s development did it become clear it was going to be something much bigger than you’d anticipated?

*KT*: The actual magnitute, that no one could have guessed. I gather it’s still growing now. I thought it would be useful to essentially anybody like me because it was not built for someone else or some third party. That was a perjorative term then. It was written for Dennis and me and our group to do its work. And I think it would have been useful to anybody who did the kind of work that we did. And therefore, I always thought it was something really good that was going to take off.<br><br>Especially the language [C]. The language grew up with one of the rewritings of the system and, as such, it became perfect for writing systems. We would change it daily as we ran into trouble building UNIX out of the language and we’d modify it for our needs.

*DDJ*: A symbiosis of sorts&hellip;

*KT*: Yeah. It became the perfect language for what it was designed to do. I always thought the language and the system were widely applicable.

*DDJ*: In the presentation today, it mentioned that UNIX was open source. Was UNIX open source from the beginning?

*KT*: Well there was no such term as &ldquo;open source&rdquo; then.

*DDJ*: I was under the impression that UNIX really became open source with the Berkeley distribution.

*KT*: No, we charged $100, which was essentially the reproduction cost of the tape, and then send it out. And we distributed, oh, probably close to 100 copies to universities and others.

<h3>Go Language</h3>

*DDJ*: Skipping several decades of work, let’s speak about Go. I was just at the Google I/O Conference, where it was announced that Go will be supported on the Google App Engine. Does that presage a wider adoption of Go within Google, or is it still experimental?

*KT*: It’s expanding every day and not being forced down anybody’s throat. It’s hard to adopt it to a project inside of Google because of the learning curve. It’s brand new and there aren’t good manuals for it, except what’s on the Web. And then, of course, its label of being experimental, so people are a little afraid. In spite of that, it’s growing very fast inside of Google.

*DDJ*: In the presentation before the awarding of the Japan Prize today, you were quoted on the distinction between reasearch and development. [The former, Thompson stated, was directionless, whereas development had a specific goal in mind.] So in that context, is Go experimental?

*KT*: Yes. When the three of us [Thompson, Rob Pike, and Robert Griesemer] got started, it was pure research. The three of us got together and decided that we hated C++. [laughter]

*DDJ*: I think there’d be a lot of people who are with you on that.

*KT*: It’s too complex. And going back, if we’d thought of it, we’d have done an object-oriented version of C back in the old days.

*DDJ*: You’re saying you would have?

*KT*: Yes, but we were not evangelists of object orientation. [Returning to Go,] we started off with the idea that all three of us had to be talked into every feature in the language, so there was no extraneous garbage put into the language for any reason.

*DDJ*: It’s a lean language, indeed.

<h3>Collaboration with Dennis Ritchie</h3>

*DDJ*: Returning to UNIX, for a moment, when you and Dennis worked together, how did that collaboration operate? Were you working side by side?

*KT*: I did the first of two or three versions of UNIX all alone. And Dennis became an evangelist. Then there was a rewrite in a higher-level language that would come to be called C. He worked mostly on the language and on the I/O system, and I worked on all the rest of the operating system. That was for the PDP-11, which was serendipitous, because that was the computer that took over the academic community.

*DDJ*: Right.

*KT*: We collaborated every day. There was a lunch that we went to. And we’d talk over lunch. Then, at night, we each worked from our separate homes but we were in constant communication. In those days, we had mail and writ (pronounced ‘write’), and writ would pop up on your screen and say there was a message from so-and-so.

*DDJ*: So, IM essentially.

*KT*: Yes, IM. There was no doubt about that! And we discussed things from home with writ. We worked very well together and didn’t collaborate a lot except to decide who was going to do what. Then we’d run and very independently do separate things. Rarely did we ever work on the same thing.

*DDJ*: Was there any concept of looking at each other’s code or doing code reviews?

*KT*: [Shaking head] We were all pretty good coders.

*DDJ*: I suspect you probably were! [Laughter]

<h3>SCM</h3>

*DDJ*: Did you use any kind of source code management product when working together?

*KT*: No, those products really came later; after UNIX. We had something like it, which we called “the code motel” because you could check your code in but you couldn’t check it out! So, really, no we didn’t.

*DDJ*: I bet you use SCM today in your work on Go.

*KT*: Oh, yes, Google makes us do that!

I have for most of my life – because I was sort of born into it – run Apple. Now recently, meaning within the last five years, I've become more and more and more depressed… And what Apple is doing to something that should allow you to work is just atrocious… But they are taking a lot of space and time to do it, so it's okay. And I've come, within the last month or two, to say: even though I've invested a zillion years in Apple, I'm throwing it away, and I'm going to Linux. To Raspbian, in particular.

58 minute mark

[YT](https://www.youtube.com/watch?v=kaandEt_pKw)


## <a name=linus>Linus Torvalds</a>

### <a name=1994-04-01>1994-04-01</a>

by Robert Young

*RY*: Ken Thompson was once asked, if he had the chance to do it all again, what changes would he make in Unix. He said he would add an e to the creat system call.<br><br>How about you and Linux?

*LT*: Well, Considering how well it has turned out, I really can't say something went wrong: I have done a few design mistakes, and most often those have required re-writing code (sometimes only a bit, sometimes large chunks) to correct for them, but that can't be avoided when you don't really know all the problems.<br><br>If it's something I have problems with, it's usually the interface between user-level programs and the kernel: kernel-kernel relations I can fix easily in one place, but when I notice that the design of a system call is bad, changing that is rather harder, and mostly involves adding a new system call which has semantics that are the superset of the old and then leaving in a compatibility-hack so that the old calls still work. Ugly, and I avoid it unless it really has to be done.<br><br>Right now I'd actually prefer to change the semantics of the and write() system calls subtly, but the gains aren't really worth the trouble.

*RY*: The most consistent compliment that Linux receives is its stability on Intel PC computers. This is particularly true compared to “real Unices” that have been ported to the Intel platform.<br><br>What do you see that was done right in Linux that is causing problems for these other PC Unices?

*LT*: There are probably a couple of reasons. One is simply the design, which is rather simple, and naturally suits the PC architecture rather well. That makes many things easier. I'd suspect that the other reason is due to rather stable drivers: PC hardware is truly horrendous in that there are lots of different manufacturers, and not all of them do things the same (or even according to specs).<br><br>That results in major problems for anybody who needs to write a driver that works on different systems, but in the case of linux this is at least partially solved by reasonably direct access to a large number of different machines. The development cycle of linux helps find these hardware problems: with many small incremental releases, it's much easier to find out exactly what piece of code breaks/fixes some hardware. Other distributions (commercial or the BSD 386-project which uses a different release schedule) have more problems in finding out why something doesn't work on a few machines even though it seems to work on all the others.

*RY*: Have you heard of any problems running Linux on the Pentium chip? Do you expect any?

*LT*: I know from a number of reports that it works, and that the boot-up detection routines even identify the chip as a Pentium (“uname -a” will give “i586” with reasonably new kls, as I ignore Intel guidelines about the name). The problems are not likely to occur due to the actual processor itself, as much as with the surrounding hardware: with a Pentium chip, manufacturers are much more likely to use more exotic hardware controllers for better performance, and the drivers for them all won't necessarily exist for linux yet. So I've had a few reports of a Pentium PCI machine working fine, but that the kernel then doesn't recognize the SCSI hard disk, for example.<br><br>From a performance viewpoint, the current gcc compiler isn't able to do Pentium-specific optimizations, so sadly linux won't be able to take full advantage of the processor right now. I don't know when gcc will have Pentium-optimization support, but I expect it will come eventually (most of the logic for it should already be there, as gcc can already handle similar optimization problems for other complex processors).<br><br>One interesting thing is that the “bogo-mips” loop I use to calibrate a kernel timing loop seems to actually be slower on a Pentium than on an i486 at the same clock frequency. The real-world performance is probably better despite that (the timing loop is just a decrement operation followed by a conditional jump: the Pentium won't be able to do any super scalar execution optimizations).

*RY*: With the end of the road for Intel's 80XXX series chips in sight (although at least a few years away), what chip or hardware platform would you like to see Linux ported to?

*LT*: The Amiga 680x0 (x>=3, MMU required) port is already underway and reportedly mostly functional already. I haven't been in any close contact with the developers, as they seem to know what they are doing, but I understand they track the PC versions rather closely, and have most of the features working. I'd expect something truly functional by the end of this year, even though the installed machine base is much smaller.<br><br>As to other ports: I'd really enjoy some port to newer and more exotic hardware like the DEC Alpha chips or the PowerPC, but as far as I know nobody is really working on it. The main problem with non-i386 ports is simply lack of momentum: in order to get this kind of port going, you'd need hacker-type people with access to such hardware with “nothing better” to do on it. DEC or IBM has yet to show enough interest that they'd donate hardware and documentation to this worthwhile cause.

*RY*: What aspects of Linux are you taking responsibility for on an on-going basis?

*LT*: Everything that directly concerns the kernel: some of it I can't actually fix myself (mostly drivers for hardware I don't own and have no idea about), but in that case I still want to know about the problems and try to act as a “router” to the person who actually handles that piece of code. The areas I consider especially “mine” are memory management, the VFS layer and the “kernel proper” (scheduling, interrupt handling etc). Generally things that make up the very heart of the kernel, and on top of which all the other stuff has to go.

*RY*: Do you see yourself earning a living from your work in Linux in future?

*LT*: Well, I do hope and expect to be able to find a job much more easily due to linux, so yes, indirectly at least I hope to be able to make a living off this, even though the work itself might be completely unrelated. As to whether it would actually concern linux itself in some way, I don't know.

*RY*: The use of Linux is growing exponentially around the world. However, unlike commercial products, there is no central registry for Linux users<br><br>What is your “best guess” of the number of machines ruing Linux worldwide today and what would you base an estimate on.

*LT*: I actually have no good idea at all: I haven't really followed either the CD-ROM sales or any ftp statistics, so it's rather hard to say. I guesstimate a user base of about 50,000 active users: that may be way off-base, but it doesn't sound too unlikely. The c.o.l. newsgroup had about 80,000 readers according to the network statistics back before the split (and I haven't looked at the statistics since), and I saw a number like 10,000 CD-ROMs sold somewhere. Not all of those are active users, I'm sue, but that would put some kind of lower limit on the number.

*RY*: Hindsight being 20/20, do you occasionally wish you had patented, or otherwise retained rights to Linux?

*LT*: Definitely not. Even with 20/20 hindsight, I consider the linux copyright to be one of the very best design decisions I ever did, along with accepting code that was copyrighted by other holders (under the same copyright conditions, of course). I'm not fanatic about the GPL, but in the case of linux it has certainly worked out well enough. As to patents, I consider software patents a patently bad idea in the first place, and even if I didn't, I would abhor the paperwork needed. Getting a trade-mark on the name “linux” might be a good idea, and there was some talk about that, but nobody really found the thing important enough to bother about (especially as it does require both some funds and work).

*RY*: What is your field of study, and what do you plan to specialize in upon graduation?

*LT*: I'm studying mostly operating systems (surprise, surprise), and compiler design: rather low-level stuff mostly. I expect I'll expand that to communications and distributed systems for obvious reasons, but I haven't really decided on anything yet. So far, my “field” has been any courses that I find interesting, and I hope I won't have to specialize any more than that in the future either.

*RY*: Linux is benefiting from a worldwide development effort. The number and frequency of new releases of Linux, and drivers and utilities are amazing to anyone familiar with traditional UNIX development cycles. This seems to be giving Linux a huge “competitive advantage” over alternate UNIX-on-the-pc products.<br><br>What do you see as the future of Linux?

*LT*: I rather expect it to remain reasonably close to what it looks like now: the releases may become a bit less frequent as it all stabilizes, but that might just mean that I'll make my snapshots weekly instead of daily as I do now during intense development, and that the “real” releases will happen a couple of times a year instead of monthly or bi-monthly as now.<br><br>Similarly, there will probably remain several different “package releases”: some of them will be more or less commercial (currently the Yggdrasil CD-ROM, for example, or the various disk copying services), while others will continue to be mostly electronically distributed by ftp.

*RY*: What would you LIKE to see for the future of Linux?

*LT*: Related to the question above, I do hope to see one change: support and documentation. Some of this has actually already happened or is happening now, but there is still room for growth. I know of a few book projects (one of which went into print a couple of days ago), and a few support companies, and I hope that will still grow.<br><br>Then there are various interesting projects going on that I'd be very interested to see:<br><br>Windows emulation (being worked on, and the kernel support is already there);i386 SysV binary compatibility (already in early stages of testing) etc.;As well as the porting projects to various different hardware platforms, of course.<br><br>I also have various general (and vague) plans about actual kernel development, and some specifics I want to have implemented in the reasonably near future (I think I'll work mostly on memory management and related areas this spring, for example). Mostly, I just hope to have a stable and enjoyable platform

*RY*: Also, would you have a photo of yourself we could use to accompany the article? This is by no means required, but a huge number of Linux users are very curious about who you are, why you did Linux, etc... you know, all the human interest side to the Linux story.

*LT*: I'm “camera-shy”, so I have no good photos for this purpose, which has resulted in some rather weird photos being used in some places. A magazine in Holland used one of the gifs that were put out long ago (bad quality, and very much done in jest: I drink beer in most of them, including the one they used), and one Finnish magazine used a photo from a party I was at which also had lots of beer-cans in it.. I guess I should find some rather more presentable photos somewhere. I'll see.

*RY*: We saw a photo that was distributed over the net. One that has you smiling, with a beer bottle in front subtitled 'Linus Torvalds - creator of Linux'—In fact, for all the 'official' format for photos requires a tie and at least a semi-serious pose, I think that this was a VERY good photo, as it showed you as a happy, friendly human being.

*LT*: It's another of the 'party photos', although the party was a much smaller and more informal one. I don't know who has the originals anymore, so I'm unlikely to find it in time with most of the concerned people still being somewhere else as teaching at the university hasn't started yet. What the magazine from Holland did was actually to have a screen-shot of linux running X, and have the gif-picture in an xv window (with a few other windows like xload to give it some more lf); that way the quality of the picture didn't matter much, and it also looked like a clever idea. You could use some similar trick. I don't mind looking like a human being instead of a tie+shirt robot, so I don't mind the picture even though it was all done mostly in jest.

*RY*: We'd like to send you a complimentary subscription(s) to Linux Journal.

*LT*: I'd like a copy, please.

*RY*: Also, re your response on the 'other platforms' question, if you can find someone willing to do the work, we should be able to help find someone at IBM or HP (maybe even DEC, but I doubt SUN) who would be able to donate/loan some hardware.

*LT*: It would be fun, but as I can't make any promises and would need lots of technical documentation as well (and not under any non-disclosure), this is probably not really something companies like to do.

*RY*: Where did you learn to write English this well?

*LT*: I read more English than either Swedish (my mother tongue) or Finnish (which is the majority language in Finland, of course), so I while I'm not completely comfortable actually speaking the language (partly due to pronunciation), I don't have any problems reading, writing or indeed thinking in English.<br><br>The reason for reading English is simply that there are more interesting books available in English, and that they are usually cheaper even over here (larger printings, no translation costs, etc.). Besides, it's often the original language, so even when the book is available as a translation, I usually prefer to read it in English.

##  <a name=dickie>Matt Dickie</a>

### <a name=2018-05-15>2018-05-15</a>

*Interviewer*: Who are you, and what do you do?

*MD*: Under the abbreviated signature of "MDickie", I've been making games on my own terms since 2000. Originally for the PC, but in 2012 I reinvented myself as a mobile developer - which proved to be a better fit for my retro brand of gaming. My low-poly, low-resolution visuals are easy to criticize, but the performance I get out of a smaller download has allowed me to push a lot of boundaries. I've managed to release 10 different mobile apps in a row that have surpassed a million downloads, and maintained a 4-star review average under that scrutiny. The most popular is Wrestling Revolution 3D, which recently became the first game of its kind to reach the milestone of 50 million downloads.

*Interviewer*: What hardware do you use?

*MD*: I've always preferred to use laptops as I travel quite often and need to take my work with me. When I talk about being a "mobile developer", it refers to the games being made on the move as well as played on the move! My current laptop is a high-end Microsoft Surface Book because I liked the idea of it being touch-screen (although that has yet to manifest itself in any meaningful way). As a developer of touch-screen apps, I'm a firm believer in that technology - so much so that my car is even touch-screen since I got a Tesla!

I also grudgingly keep a MacBook Air for uploading iOS apps, but I wouldn't choose to use it for anything else as I find Apple products to be a "closed system". Of course, I also keep a wide range of mobiles and tablets to test my apps on. My preferred one for daily use would be something in the Samsung Galaxy S range. I developed my first app on a Samsung Galaxy S II, so my career has grown alongside that range.

*Interviewer*: And what software?

*MD*: My mobile apps are developed in Flash, which is now known as "Animate CC". As much as I like it personally, it seems to be falling behind the rest of the industry and is not widely supported anymore - so I may need to jump to a more stable platform like Unity eventually. I will do so grudgingly, however, as I've been getting good results out of Flash in 2D - and even in 3D with extensions like Flare 3D. I use 3ds Max for my modelling, whereas any 2D art tends to come together in Painter or Paint.NET. For my sound engineering, I use WavePad Sound Editor. I even used to make my own music in programs like Magix Music Maker, but it has been a while since I did that! I prefer to buy in music from professionals now. Not only is the quality better, but I get just as much pleasure from "discovering" new music as I did from making my own.

The software I use isn't necessarily the best there is. They're mainly old programs that I got into the habit of using and couldn't leave behind. My brand of game development is old-fashioned in every way, but I'm a pragmatist who sticks to what works.

*Interviewer*: What would be your dream setup?

*MD*: I'm fortunate enough to be able to turn my dreams into reality, so I have my own studio in my own house and whatever technology I feel would be useful. I'm something of a minimalist with it, though, so my office is very streamlined and tidy to keep my mind clear. My garage is where all the old laptops go to die! I try to keep them all just in case there's the occasional file that I wish I still had access to. I only have problems when I leave my bubble. I just wish countries like China had a truly free internet, as it's tiresome to navigate around everything being blocked or censored. It's one of the reasons I don't live there anymore.

##  <a name=kaye>Mel Kaye</a>

###  <a name=the-story-of-mel>The Story of Mel</a>

Mirrored from [catb.org](/catb.org/jargon/html/story-of-mel.html)

This was posted to Usenet by its author, Ed Nather on May 21, 1983

A recent article devoted to the _macho_ side of programming made the bald and unvarnished statement:

Real Programmers write in FORTRAN

Maybe they do now, in this decadent era of lite beer, hand calculators, and 'user-friendly' software but back in the Good Old Days, when the term 'software' sounded funny and Real Computers were made out of drums and vacuum tubes, Real Programmers wrote in machine code. Not FORTRAN. Not RATFOR. Not, even, assembly language.

Machine Code

Raw, unadorned, inscrutable hexadecimal numbers

Directly

Lest a whole new generation of programmers grow up in ignorance of this glorious past, I feel duty-bound to describe, as best I can through the generation gap, how a Real Programmer wrote code

I'll call him Mel, because that was his name

I first met Mel when I went to work for Royal McBee Computer Corp., a now-defunct subsidiary of the typewriter company. The firm manufactured the LGP-30, a small, cheap (by the standards of the day) drum-memory computer, and had just started to manufacture the RPC-4000, a much-improved, bigger, better, faster - drum-memory computer.

Cores cost too much, and weren't here to stay, anyway. (That's why you haven't heard of the company, or the computer.)

I had been hired to write a FORTRAN compiler for this new marvel and Mel was my guide to its wonders. Mel didn't approve of compilers.

"If a program can't rewrite its own code", he asked, "what good is it?"

Mel had written, in hexadecimal, the most popular computer program the company owned.  It ran on the LGP-30 and played blackjack with potential customers at computer shows.  Its effect was always dramatic.  The LGP-30 booth was packed at every show, and the IBM salesmen stood around talking to each other.  Whether or not this actually sold computers was a question we never discussed.

Mel's job was to re-write the blackjack program for the RPC-4000.  (Port?  What does that mean?) The new computer had a one-plus-one addressing scheme, in which each machine instruction, in addition to the operation code and the address of the needed operand, had a second address that indicated where, on the revolving drum, the next instruction was located.

In modern parlance, every single instruction was followed by a GO TO! Put _that_ in Pascal's pipe and smoke it

Mel loved the RPC-4000 because he could optimize his code: that is, locate instructions on the drum so that just as one finished its job, the next would be just arriving at the “<span class="quote">read head</span>” and available for immediate execution. There was a program to do that job, an “<span class="quote">optimizing assembler</span>”, but Mel refused to use it.

“<span class="quote">You never know where it's going to put things</span>”,
he explained, “<span class="quote">so you'd have to use separate constants</span>”.

It was a long time before I understood that remark.  Since Mel knew the numerical value of every operation code, and assigned his own drum addresses, every instruction he wrote could also be considered a numerical constant.  He could pick up an earlier “<span class="quote">add</span>” instruction, say, and multiply by it, if it had the right numeric value.  His code was not easy for someone else to modify.

I compared Mel's hand-optimized programs with the same code massaged by the optimizing assembler program, and Mel's always ran faster.  That was because the “<span class="quote">top-down</span>” method of program design hadn't been invented yet, and Mel wouldn't have used it anyway.  He wrote the innermost parts of his program loops first, so they would get first choice of the optimum address locations on the drum.  The optimizing assembler wasn't smart enough to do it that way

Mel never wrote time-delay loops, either, even when the balky Flexowriter required a delay between output characters to work right.  He just located instructions on the drum so each successive one was just <span class="emphasis"><em>past</em></span> the read head when it was needed; the drum had to execute another complete revolution to find the next instruction.  He coined an unforgettable term for this procedure.  Although “<span class="quote">optimum</span>” is an absolute term, like “<span class="quote">unique</span>”, it became common verbal practice to make it relative:

“<span class="quote">not quite optimum</span>” or “<span class="quote">less optimum</span>”
or “<span class="quote">not very optimum</span>”.
Mel called the maximum time-delay locations
the “<span class="quote">most pessimum</span>”.

After he finished the blackjack program
and got it to run
(“<span class="quote">Even the initializer is optimized</span>”,
he said proudly),
he got a Change Request from the sales department.
The program used an elegant (optimized)
random number generator
to shuffle the “<span class="quote">cards</span>” and deal from the “<span class="quote">deck</span>”,
and some of the salesmen felt it was too fair,
since sometimes the customers lost.
They wanted Mel to modify the program
so, at the setting of a sense switch on the console,
they could change the odds and let the customer win.

Mel balked.  He felt this was patently dishonest, which it was, and that it impinged on his personal integrity as a programmer, which it did, so he refused to do it.  The Head Salesman talked to Mel, as did the Big Boss and, at the boss's urging, a few Fellow Programmers.  Mel finally gave in and wrote the code, but he got the test backwards, and, when the sense switch was turned on, the program would cheat, winning every time.  Mel was delighted with this, claiming his subconscious was uncontrollably ethical, and adamantly refused to fix it.

After Mel had left the company for greener pastures, the Big Boss asked me to look at the code and see if I could find the test and reverse it.  Somewhat reluctantly, I agreed to look.  Tracking Mel's code was a real adventure.

I have often felt that programming is an art form, whose real value can only be appreciated by another versed in the same arcane art; there are lovely gems and brilliant coups hidden from human view and admiration, sometimes forever, by the very nature of the process.  You can learn a lot about an individual just by reading through his code, even in hexadecimal.  Mel was, I think, an unsung genius.

Perhaps my greatest shock came when I found an innocent loop that had no test in it.  No test.  <span class="emphasis"><em>None</em></span>.  Common sense said it had to be a closed loop, where the program would circle, forever, endlessly.  Program control passed right through it, however, and safely out the other side.  It took me two weeks to figure it out.

The RPC-4000 computer had a really modern facility called an index register.  It allowed the programmer to write a program loop that used an indexed instruction inside; each time through, the number in the index register was added to the address of that instruction, so it would refer to the next datum in a series.  He had only to increment the index register each time through.  Mel never used it.

Instead, he would pull the instruction into a machine register, add one to its address, and store it back.  He would then execute the modified instruction right from the register.  The loop was written so this additional execution time was taken into account — just as this instruction finished, the next one was right under the drum's read head, ready to go.  But the loop had no test in it.

The vital clue came when I noticed the index register bit, the bit that lay between the address and the operation code in the instruction word, was turned on — yet Mel never used the index register, leaving it zero all the time.  When the light went on it nearly blinded me.

He had located the data he was working on near the top of memory — the largest locations the instructions could address — so, after the last datum was handled, incrementing the instruction address would make it overflow.  The carry would add one to the operation code, changing it to the next one in the instruction set: a jump instruction.  Sure enough, the next program instruction was in address location zero, and the program went happily on its way.

I haven't kept in touch with Mel, so I don't know if he ever gave in to the flood of change that has washed over programming techniques since those long-gone days.  I like to think he didn't.  In any event, I was impressed enough that I quit looking for the offending test, telling the Big Boss I couldn't find it.  He didn't seem surprised.

When I left the company, the blackjack program would still cheat if you turned on the right sense switch, and I think that's how it should be.  I didn't feel comfortable hacking up the code of a Real Programmer.  </div>This is one of hackerdom's great heroic epics, free verse or no.  In a few spare images it captures more about the esthetics and psychology of hacking than all the scholarly volumes on the subject put together.  (But for an opposing point of view, see the entry for <a href="R/Real-Programmer.html"><i class="glossterm">Real Programmer</i></a>.)[1992 postscript — the author writes: “The original submission to the net was not in free verse, nor any approximation to it — it was straight prose style, in non-justified paragraphs.  In bouncing around the net it apparently got modified into the ‘free verse' form now popular.  In other words, it got hacked on the net.  That seems appropriate, somehow.” The author adds that he likes the ‘free-verse' version better than his prose original...][1999 update: Mel's last name is now known.  The manual for the LGP-30 refers to “<span class="quote">Mel Kaye of Royal McBee who did the bulk of the programming [...] of the ACT 1 system</span>”.][2001: The Royal McBee LPG-30 turns out to have one other claim to fame. It turns out that meteorologist Edward Lorenz was doing weather simulations on an LGP-30 when, in 1961, he discovered the “<span class="quote">Butterfly Effect</span>” and computational chaos.  This seems, somehow, appropriate.]

[2002: A copy of the programming manual for the LGP-30 lives at <a href="http://ed-thelen.org/comp-hist/lgp-30-man.html" target="_top">http://ed-thelen.org/comp-hist/lgp-30-man.html</a>]

##  <a name=rms>Richard Stallman</a>

###  <a name=2010-01-23>2010-01-23</a>

by usesthis.com

*?*: Who are you , and what do you do?

*RMS*: I'm Richard Stallman, founder of the Free Software Movement. I campaign for computer users' freedom -- for instance, your freedom to control the software you use, to redistribute the software to others. Software that respects the user's freedom is what we call free software.<br><br>In 1983 I announced the plan to develop a complete free operating system called GNU. The system that millions of people use, and often refer to as "Linux", is a variant of the GNU system.

*?*: What hardware do you use?

*RMS*: I am using a Lemote Yeelong, a netbook with a Loongson chip and a 9-inch display. This is my only computer, and I use it all the time. I chose it because I can run it with 100 percent free software even at the BIOS level.

*?*: And what software?

*RMS*: To initialize the machine and boot, it uses PMON. Above that, it uses gNewSense, one of the totally free GNU/Linux distros.<br><br>I spend most of my time using Emacs. I run it on a text console, so that I don't have to worry about accidentally touching the mouse-pad and moving the pointer, which would be a nuisance. I read and send mail with Emacs (mail is what I do most of the time).<br><br>I switch to the X console when I need to do something graphical, such as look at an image or a PDF file.<br><br>Most of the time I do not have an Internet connection. Once or twice or maybe three times a day I connect and transfer mail in and out. Before sending mail, I always review and revise the outgoing messages. That gives me a chance to catch mistakes and faux pas.

*?*: What would be your dream setup?

*RMS*: I would ideally like to have a machine with the speed and memory of a laptop, and the display size of a laptop too, combined with the same freedom that I have now on the Yeelong.<br><br>Until I can have them both, freedom is my priority. I've campaigned for freedom since 1983, and I am not going to surrender that freedom for the sake of a more convenient computer.<br><br>I do hope to switch soon to a newer model of Yeelong with a 10-inch display.

`This interview is available under the BY-ND Creative Commons licence`

##  <a name=pike>Rob Pike</a>

### <a name=2012-10-23>2012-10-23</a>

by usesthis.com

*?*: Who are you , and what do you do?

*RP*: I'm Rob Pike. I had a long stint at Bell Labs in the Computing Research Science Center, the lab that brought you Unix and C well before I got there. I helped bring the mouse to Unix. Later, I helped make the Internet multilingual. I'm now at Google. I work on lots of things, mostly the things under the things you work on. Most recently I was co-creator of the Go programming language. I've also written some books about computing.

*?*: What hardware do you use?

*RP*: A bunch of Macs at home, Macs and Linux at work, plus of course the Google compute clusters. When I was on Plan 9, everything was connected and uniform. Now everything isn't connected, just connected to the cloud, which isn't the same thing. And uniform? Far from it, except in mediocrity. This is 2012 and we're still stitching together little microcomputers with HTTPS and ssh and calling it revolutionary. I sorely miss the unified system view of the world we had at Bell Labs, and the way things are going that seems unlikely to come back any time soon.<br><br>That said, my two-year-old 11" MacBook Air is the only piece of computing hardware to make me happy since I can't remember when. For what it does, as opposed to what my dream setup would be, it's fast and light and smooth and comfortable.

*?*: And what software?

*RP*: I don't install a lot of extra stuff on those Macs, mostly to reduce maintenance. I like the freedom to wipe and reinstall without losing my world (see answer to question 2). However, two things always come along: The Go installation of course, and Plan 9 from User space, also known as plan9port, Russ Cox's port of the Plan 9 user experience (if not world view) to Unix.<br><br>As I've said elsewhere, the answer to "emacs or vi" is "neither". I mostly live inside acme, an editor-shell-IDE-oddball I wrote a while ago that has a different worldview and a very different user interface but that, when used well, is powerful and expressive. Russ recently created a nice screencast showing it off.

*?*: What would be your dream setup?

*RP*: I want no local storage anywhere near me other than maybe caches. No disks, no state, my world entirely in the network. Storage needs to be backed up and maintained, which should be someone else's problem, one I'm happy to pay to have them solve. Also, storage on one machine means that machine is different from another machine. At Bell Labs we worked in the Unix Room, which had a bunch of machines we called "terminals". Latterly these were mostly PCs, but the key point is that we didn't use their disks for anything except caching. The terminal was a computer but we didn't compute on it; computing was done in the computer center. The terminal, even though it had a nice color screen and mouse and network and all that, was just a portal to the real computers in the back. When I left work and went home, I could pick up where I left off, pretty much. My dream setup would drop the "pretty much" qualification from that.<br><br>A bit like phones: You have a phone just so you can access who/what is at the other end of the connection.<br><br>Twenty years ago, you expected a phone to be provided everywhere you went, and that phone worked the same everywhere. At a friend's house, or a restaurant, or a hotel, or a pay phone, you could pick up the receiver and make a call. You didn't carry a phone around with you; phones were part of the infrastructure. Computers, well, that was a different story. As laptops came in, people started carrying computers around with them everywhere. The reason was to have the state stored on the computer, not the computer itself. You carry around a computer so you can access its disk.<br><br>In summary, it used to be that phones worked without you having to carry them around, but computers only worked if you did carry one around with you. The solution to this inconsistency was to break the way phones worked rather than fix the way computers work.<br><br>My dream setup, then, is a computing world where I don't have to carry at least three computers - laptop, tablet, phone, not even counting cameras and iPod and other oddments - around with me in order to function in the modern world. The world should provide me my computing environment and maintain it for me and make it available everywhere. If this were done right, my life would become much simpler and so could yours.<br><br>I would allow the setup to force me to carry a computer screen around, as long as it rolled up and fit inside something the size of a pen and had touch input when unrolled. As long as it had no local storage.

##  <a name=cox>Russ Cox</a>

###  <a name=2011-04-09>2011-04-09</a>

By [usesthis.com](https://usesthis.com/interviews/russ.cox/)

*Interviewer*: Who are you , and what do you do?

*RC*: I write programs. For about a decade I worked on the operating system Plan 9 from Bell Labs. I now work at Google, where I created Google Code Search and along with it the RE2 regular expression library. For the last two and a half years I've been one of the core developers of the Go programming language. In free time outside of work, I wrote the last two major versions of the software behind the Online Encyclopedia of Integer Sequences.I also write about programs. The writing I'm most known for is my series about how to implement regular expressions and my construction of a zip file that contains itself.

*Interviewer*: What hardware do you use?

*RC*: I lost interest in having the new shiny a long time ago. I like to find things that work for me and stick with them. I also rarely bother to pay for something new when I can get the previous model for less.At home that means a refurbished Mac Mini from 2006, a used Dell 2001FP 20" LCD from 2004, and a Samsung ML-1750 laser printer from 2004. More recent additions include an Apple Time Capsule for backing up the Mac and running the home network, a Netgear ReadyNAS Duo (with mirrored disks) for networked storage, and a Fujitsu ScanSnap S510. I swear by the small Apple keyboard (in stores they have one that size with a USB cable too) and the Evoluent mouse. They all continue to serve me very well. The only thing I might replace if I were starting over would be the ReadyNAS box. The low-end model I have runs Linux on what appears to be a SPARC simulated by an FPGA; saying it's slow is an understatement, but it's only a disk. The printer and the scanner both seemed extravagant at the time, but they have been absolute workhorses and well worth the money.When I'm not at home, and even often when I am, I work on my laptop. I used an IBM Thinkpad X40 running Linux from 2004 until very recently. It was small, light, sturdy, and had three mouse buttons. What more could you want? I recently replaced my X40 with a refurbished Lenovo Thinkpad X201s, which is also small, light, sturdy, and has three mouse buttons. On top of that, it has a gorgeous high-resolution screen, an SSD, 4 cores, and 4 GB of RAM. I know it won't seem like much in a few years, but right now it sure feels like I'm living in the future.As far as gadgets, the ones that have lasted are my Bose QC2 headphones (the QC15 are just as nice), Nexus One phone, Nikon D90 with 18-200mm AF-S lens. I bought a Kindle 3 recently, and I like it, but it hasn't stood the test of time yet.I also use a lot of pens and 8.5x11 paper pads. I scribble constantly when I'm trying to work things out. I don't save any of it, but it helps me think.

*Interviewer*: And what software?

*RC*: I ran Plan 9 from Bell Labs as my day to day work environment until around 2002. By then two facts were painfully clear. First, the Internet was here to stay; and second, Plan 9 had no hope of keeping up with web browsers. Porting Mozilla to Plan 9 was far too much work, so instead I ported almost all the Plan 9 user level software to FreeBSD, Linux, and OS X. The result is called Plan 9 from User Space and is probably much more widely used today than Plan 9 ever was.I run acme full screen as my day to day work environment. It serves the role of editor, terminal, and window system. It's hard to get a feel for it without using it, but this video helps a little.Rob Pike's sam editor deserves special mention too. From a UI standpoint, it's a graphical version of ed, which you either love or hate, but it does two things better than any other editor I know. First, it is a true multi-file editor. I have used it to edit thousands of files at a time, interactively. Second, and even more important, it works insanely well over low-bandwidth, high-latency connections. I can run sam in Boston to edit files in Sydney over ssh connections where the round trip time would make vi or emacs unusable. Sam runs as two halves: the UI half runs locally and knows about the sections of the file that are on or near the screen, the back end half runs near the files, and the two halves communicate using a well-engineered custom protocol. The original target environment was 1200 bps modem lines in the early 1980s, so it's a little surprising how relevant the design remains, but in fact, it's the same basic design used by any significant JavaScript application on the web today. Finally, sam is the editor of choice for both Ken Thompson and Bjarne Stroustroup. If you can satisfy both of them, you're doing something right.Aside from the Plan 9 tools, I live mostly in Google software. I use Google Chrome to get at my Gmail on my vanity domain swtch.com, I use Blogger to manage my blog posts (but I write them in acme), I use Google Reader to follow sites on the web, I use Google Voice to direct my phone calls.I use Picasa to manage photos on my Mac and upload them to SmugMug for sharing with friends, and then I use SmugFolio to sync them nicely onto my Android phone. When I'm traveling, I'm a big fan of TripIt and their Android app. I'm excited about being able to run Android apps like SmugFolio on my Google TV box.I use Unison to sync files between my various computers. Dropbox seems to be the hot new thing, but I like that Unison doesn't ever store my files on someone else's computers.

*Interviewer*: What would be your dream setup?

*RC*: The thing I miss most about Plan 9 was the way that no matter which computer you sat down at, you had the same environment. Because we were working off a shared file server - there were no local disks on the Plan 9 workstations - you could go home and log in and all your work was there waiting. Of course, it only worked because we had good, fast connectivity to the file server, and only file state - not application state - transferred, but it was still a huge win.Today it's taken for granted that everyone has local files on disk and you need programs like Unison or Dropbox (or for the power users, Mercurial or Git) to synchronize them, but what we had in Plan 9 was completely effortless, and my dream is to return to that kind of environment. I want to be working on my home desktop, realize what time it is, run out the door to catch my train, open my laptop on the train, continue right where I left off, close the laptop, hop off the train, sit down at work, and have all my state sitting there on the monitor on my desk, all without even thinking about it. Moving everything into "The Cloud" may be a path to that dream, but we are definitely not there yet.

## <a name=davis>Terry Davis</a>

> _"They're glowing but Terry is shining"_

"You wanna place yourself in a position to give maximum glory to your Creator. So you go out there, and you be somebody glorious, okay?"

### <a name=2014-05-05>2014-05-05</a>

[source](https://usesthis.com/interviews/terry.davis/)

*Interviewer*: Who are you, and what do you do?

*TD*: My name's Terry Davis. I was chosen by God to make His temple, an [operating system](https://templeos.org). I made a complete operating system including making the tools. It has a kernel and 64-bit compiler. It also has an oracle for talking with God.

*Interviewer*: What hardware do you use?

*TD*: My PC is a Windows 7 desktop with an i7, 3.40GHz CPU, 8GB of RAM. It's a Dell.

I have a Sony stand-alone hand-held voice recorder.

*Interviewer*: And what software?

*TD*: I do almost all of my development in TempleOS with my own compiler, editor and tools. I use Windows for browsing the web with Internet Explorer.

I use Windows to help make videos for TempleOS. In TempleOS, I capture BMP files while recording my voice on the hand-held voice recorder. I use FFmpeg to convert my BMP files into a AVI movie. I use Audacity to convert my voice track to stereo and mix it with my TempleOS .SND output file. I mix AVI and WAV files into one file with Full Video Audio Mixer, a Windows program I bought.

I use VMware Workstation 8.0.6 because TempleOS won't run natively. I use the old VMware version because the PC speaker does not work in the new version.

*Interviewer*: What would be your dream setup?

*TD*: I would like Windows to abolish Secure-Boot, so I can run Win8 dual booted with TempleOS. I would like a machine with a disk controller and BIOS that used ATA/ATAPI PIO and a BIOS which also supported legacy PS/2 keyboard/mouse emulation, so I could run TempleOS natively. I am aware of a 70 core Knights Landing Intel CPU coming-out. That might be nice.
