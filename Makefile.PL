use strict;

use ExtUtils::MakeMaker;


my %args = (
    NAME => 'QQQ::QQQ',
    VERSION_FROM => 'lib/QQQ.pm',
    PREREQ_PM => {
      'common::sense' => 0,
    },
    LIBS => [],
    DEFINE => '',
    LICENSE => 'perl',
    dist => {
      PREOP => 'pod2text $(VERSION_FROM) > $(DISTVNAME)/README',
    },
    META_MERGE => {
      resources => {
        repository => 'git://github.com/hoytech/QQQ.git',
        bugtracker => 'https://github.com/hoytech/QQQ/issues',
      },
    },
);

WriteMakefile(%args);
