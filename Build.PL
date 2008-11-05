use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::WebService::HtmlKitCom::FavIconFromImage',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/WebService/HtmlKitCom/FavIconFromImage.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                                     => 1.04,
        'WebService::HtmlKitCom::FavIconFromImage' => 0.001,
        'POE'                                      => 0.9999,
        'POE::Component::NonBlockingWrapper::Base' => 0.002,
    },
    add_to_cleanup      => [ 'POE-Component-WebService-HtmlKitCom-FavIconFromImage-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
