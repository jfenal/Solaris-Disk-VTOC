use ExtUtils::MakeMaker;

WriteMakefile(
    NAME => 'Solaris::Disk::VTOC',

    #    PREREQ_PM    => { undef },
    VERSION => '0.04',
    PM      => {
        map {
            ( "lib/$_.pm" => "\$(INST_LIBDIR)/" . ( split /\// )[-1] . ".pm" )
          } qw(
          Solaris/Disk/VTOC
          )
    },

    #    EXE_FILES    => [ ],
    PL_FILES => {},
    AUTHOR   => 'J�r�me Fenal <jfenal@free.fr>',
    ABSTRACT => 'Module to read Solaris Disk VTOC',
    clean    => { FILES => '*/*/*~' },
    dist     => {
        COMPRESS => 'gzip -9f',
        SUFFIX   => 'gz',
        SIGN     => 1,
    },
);

