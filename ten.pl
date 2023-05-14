use strict;
use warnings;
use utf8;
use experimentals;

sub buttonQuit($button, $mainWindow) {
    say "close the window";
}

sub main() {
    use Tk;
    use Tk::PNG;
    

    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Images");
    #$mainWindow->iconbitmap("path to Ico");

    my $photo = $mainWindow->Photo(-format => 'png',
                                   -file => '/home/bird/Pictures/macOS-Wallpapers/Desert_.png');
    
    # resize image before printing
    my $canvas = $mainWindow->Canvas(
        -width => $photo->width,
        #-height => $photo->height,
    )->pack(-side => 'left');
    
    $canvas->createImage(0,0, -image => $photo, -anchor => 'nw');

    my $buttonQuit = $mainWindow->Button(
        -text => "Exit Program"
    );
    $buttonQuit->configure(
        -command => [\&buttonQuit, $buttonQuit, $mainWindow]
    );

    $buttonQuit->pack();
    MainLoop;
}

main();
