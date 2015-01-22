# Credentials Chef Cookbook

## Description

A cookbook for working with encrypted credentials. Sensitive data stored in an encrypted data bag is decrypted and made available as attributes within your kitchen.

## Usage

Create an encypted databag (if you are using knife solo, make sure you have the knife solo data bag plugin installed first).

    $ knife solo data bag create credentials production --secret-file 'data_bag_key'
    $ knife solo data bag edit credentials production --secret-file 'data_bag_key'

With some data like the following:

    {
      "id" : "production"
      "psql_password" : "super secret"
    }

Now include the credentials cookbook at the start of your run\_list 'recipe[credentials]' and you will be able access your encrypted credentials from within the rest of your kitchen:

node['psql_password']

## Installation using Librarian-Chef

[Librarian-Chef](https://github.com/applicationsonline/librarian#readme) is a bundler for your chef cookbooks. To install Librarian-Chef:

	cd chef-repo
	gem install librarian
	librarian-chef init

To use credentials:

	echo "cookbook 'credentials', git: 'git://github.com/cfreeman/chef-credentials.git'" >> Cheffile

## Recipes

### default

This recipe decripts the 'credentials' data bag and stores the contents direction within the node attributes.

## License

Copyright 2015, Clinton Freeman

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
