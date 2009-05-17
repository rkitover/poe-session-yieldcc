use inc::Module::Install;

name     'POE-Session-YieldCC';
all_from 'lib/POE/Session/YieldCC.pm';
author   'Benjamin Smith <bsmith@cpan.org>';
include  'Module::AutoInstall';

requires 'POE' => '1.004';
requires 'Coro' => '5.131';

auto_install;

WriteAll;
