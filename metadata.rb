name             'credentials'
maintainer       'Clinton Freeman'
maintainer_email 'YOUR_EMAIL'
license          'The MIT License'
description      'Installs/Configures credentials'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'

recipe 'credentials', 'Decrypts the crentials databag and places contents within attributes.'
