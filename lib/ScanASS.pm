package ScanASS;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};
get '/neet' => sub {
    template 'index';
};

true;
