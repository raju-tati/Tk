use strict;
use warnings;
use utf8;

sub main() {
    use Tk;
    
    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Window");

    my $screenWidth = $mainWindow->screenwidth;
    my $screenHeight = $mainWindow->screenheight;
    my $screenResolution = join("x", $screenWidth, $screenHeight);
    $mainWindow->geometry($screenResolution);
    
    MainLoop;
}

main();
