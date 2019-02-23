#!/bin/bash
apt update -y
apt upgrade -y
apt install perl uniscan wget make apt-get install libwww-perl libssleay-perl -y
wget https://cpan.metacpan.org/authors/id/H/HA/HAARG/local-lib-2.000024.tar.gz
tar xvf local-lib-2.000024.tar.gz
cd local-lib-2.000024
perl Makefile.PL --bootstrap
make test && make install
eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
export PERL_CPANM_HOME=/tmp/cpanm_$USER
export MANPATH=$MANPATH:~/perl5/man
cpan -i local::lib
cpan -i Moose
cpan -i threads
cpan -i threads::shared
cpan -i Thread::Queue
cpan -i HTTP::Response
cpan -i HTTP::Request
cpan -i LWP::UserAgent
cpan -i Net::SSLeay
cpan -i Getopt::Std 
cpan -i MIME::Base64
cpan -i YAML
