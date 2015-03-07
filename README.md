# Invitation Generator #

This is what I used to create the personalized invitations for my sister's bridal shower.
I adapted the invitation template from [this page](http://karenandjustin.blogspot.ca/2009/03/latex-wedding-invitation-howto.html).
I wrapped it (and the envelope template) in a LaTeX macro, and wrote a short python script to iterate through the guestlist and call these macros for each person.

I prepared the guestlist using a table in emacs org-mode, which I exported as a csv file.
Of course, a csv file could be created any other way as well.
The sample guestlist here is based on the [most common names in America](http://www.lifesmith.com/comnames.html), or at least the most common names circa 1990.

We got some nice cardstock, printed them, and they turned out great.
This was also the first time I used LaTeX for something outside of school, which was very satisfying.
