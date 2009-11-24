use inc::Module::Install 0.91;

name     'POE-Session-YieldCC';
all_from 'lib/POE/Session/YieldCC.pm';
author   'Benjamin Smith <bsmith@cpan.org>';

requires 'POE' => '1.004';
requires 'Coro' => '5.131';

build_requires 'Test::More';

auto_provides;
auto_install;

resources repository =>
    'git://github.com/rkitover/poe-session-yieldcc.git';

if ($Module::Install::AUTHOR) {
    system('pod2text lib/POE/Session/YieldCC.pm > README');
}

realclean_files 'README';

WriteAll;
