use strict;
use warnings;
use utf8;

sub main() {
    use Tk;
    use Tk::Frame;
    
    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Frame");
    #$mainWindow->iconbitmap('pathToIco');

    #my $screenWidth = $mainWindow->screenwidth;
    #my $screenHeight = $mainWindow->screenheight;
    #my $screenResolution = join("x", $screenWidth, $screenHeight);
    #$mainWindow->geometry($screenResolution);

    my $frame = $mainWindow->Frame(
        #-text => "My Frame...",
        -padx => 50,
        -pady => 50
    );

    $frame->pack(
        -padx => 100,
        -pady => 100
    );

    my $button = $frame->Button(-text => "Click");
    #$button->pack();
    #grid inside a frame
    $button->grid(
        -row => 0,
        -column => 0
    );

    my $button2 = $frame->Button(-text => "Click");
    #$button->pack();
    $button2->grid(
        -row => 0,
        -column => 1
    );

    MainLoop;
}

main();
