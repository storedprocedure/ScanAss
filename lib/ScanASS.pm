package ScanASS;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};
get '/neet' => sub {
    template 'index';
};

######################################################################
### Endpoint for FUNCTION
get '/alpha' => sub {
    template 'index';
};

######################################################################
### Endpoint for FUNCTION
get '/bravo' => sub {
    template 'index';
};

######################################################################
### Endpoint for FUNCTION
get '/charlie' => sub {
    template 'index';
};

true;
