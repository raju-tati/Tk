use strict;
use warnings;
use utf8;

sub main() {
    use Tk;
    
    my $mainWindow = MainWindow->new();
    $mainWindow->geometry("1300x700");
    $mainWindow->title("Tk Window");
    
    MainLoop;
}

main();
