PrettyPrint
=====================
PrettyPrint is cli tool for pritty printing.
It supports JSON and XML format.

## Install

    $ gem install prettyprint

## Usage

prittyprint has 2 subcommands; json, xml.
prittyprint supports file and stdin.

Pretty printing JSON from file:

    $ prettyprint json input.json

Pretty printing XML from stdin:

    $ echo '<html><title>prettyprint</title><body>happy pretty printing</body></html>' | prettyprint xml
    <html>
     <title>
      prettyprint
     </title>
     <body>
      happy pretty printing
     </body>
    </html>
