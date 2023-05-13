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

    my $labelOne = $mainWindow->Label(-text => "Hello World!");
    my $labelTwo = $mainWindow->Label(-text => "A Tk Label");
    
    $labelOne->grid(-row => 0, -column => 0);
    $labelTwo->grid(-row => 1, -column => 1);
    
    MainLoop;
}

main();
