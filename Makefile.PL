use inc::Module::Install;

name 'npc-feed-collector';
all_from 'lib/npc/feed/collector.pm';

requires 'Moose';
requires 'Encode';
requires 'Storable';
requires 'Data::Dumper';
requires 'Exporter';

test_requires 'DBD::SQLite';
test_requires 'DateTime::Format::SQLite';

install_script glob('bin/*');
auto_install;

WriteAll;

