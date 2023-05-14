use strict;
use warnings;
use utf8;

sub main() {
    use Tk;
    use Tk::Photo;
    
    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Window");

    my $textBox = $mainWindow->Text(
        -width => 120,
        -height => 50,
        -font => "newspaper 10"
    );

    $textBox->insert('end', "Some text to insert");

    my $photo = $textBox->Photo(-format => 'bmp',
                                -file => 'Desert.bmp');
    
     my $canvas = $mainWindow->Canvas(
        -width => $photo->width,
        -height => $photo->height,
    )->pack(-side => 'bottom');
    
    $canvas->createImage(0,0, -image => $photo, -anchor => 'nw');

    $textBox->pack();
    
    MainLoop;
}

main();
