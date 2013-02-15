use strict;

use ExtUtils::MakeMaker;


my %args = (
    NAME => 'QQQ',
    VERSION_FROM => 'lib/QQQ.pm',
    PREREQ_PM => {
      'common::sense' => 0,
    },
    LIBS              => [],
    DEFINE            => '',
    LICENSE => 'perl',
    dist => {
      PREOP => 'perldoc -uT lib/QQQ.pm > README.pod; pod2text README.pod > $(DISTVNAME)/README',
    },
);


my $eummv = eval ($ExtUtils::MakeMaker::VERSION);
if ($eummv >= 6.45) {
    $args{META_MERGE} = {
        resources => {
            repository => 'git://github.com/hoytech/QQQ.git',
            bugtracker => 'https://github.com/hoytech/QQQ/issues',
        },
    };
}

WriteMakefile(%args);
