% PB-ARCHIVE(1)
% Vincent Perricone
% February 10, 2013

# NAME

pb-archive - archive your pinboard bookmarks

# SYNOPSIS

pb-archive [*options*] -u username -t security_token

# DESCRIPTION

pb-archive creates a backup of your pinboard bookmarks. Bookmarks
are then archived along with all other page requisites such as css files. 
Archived pages are laid out on the local filesystem according to the
bookmarked url. A report is created which holds the description, original 
url, filesystem location and all user set tags.

Interaction with Pinboard is done through their v1 api. pb-archive will only
use your username and security token and will not use your password. You can
easily reset your token at anytime.

All bookmarks with implicit extensions will have extensions added. Archived 
files are rewritten for local viewing.  A copy of each is made and will have the
'.orig' extension.

# OPTIONS

-v, \--verbose
:   Verbose Output.

-u *USERNAME*, \--user *USERNAME*
:   Your Pinboard username.

-t *TOKEN*, \--token *TOKEN*
:   Your Pinboard security token.

-c *CA_CERT*, \--ca-cert *CA_CERT*
:   Location of Certificate Authority File for wget.

-m, \--master
:   Enable master mode. Master mode creates one archive hierarchy. The default
    creates a new archive for each day pinboard-archive is ran. Enabling this
    will create an 'archive-master' directory instead of a 'archive-YYYY-MM-DD'

-U, \--update
:   Update your current archive. This option is required if you want to
    update your previously created archive.  Updates occur in-place. Use master
    mode (-m) to keep one consistent archive hierarchy. This option does nothing
    if today's YYYY-MM-DD doesn't match the directory 'archive-YYYY-MM-DD'.

-b, \--bookmark-file
:   Output filename of your intended bookmark file. 
    Default pinboard-bookmarks.json

-s, \--strict
:   Warning for each bookmark will be shown if the archive is not perfect.  Otherwise work is done on a best effort.  Example. Downloading a page with 
    an embedded flash video may fail. Enabling strict mode will warn you know 
    about it.  Assessment is done after archiving takes place.

--help
:   Show help menu.

# EXAMPLES

**Basic Archive:**

>\> pb-archive -u \<username\> -t \<token\>

**Update Archive**

>\> pb-archive -U -u \<username\> -t \<token\>

**Master Mode**

>\> pb-archive -m -u \<username\> -t \<token\>

# LICENSE

Please see the LICENSE file for License information.

pb-archive(1) is not a product of Nine Fives Software or Maciej Cegłowski.

