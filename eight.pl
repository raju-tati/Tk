use strict;
use warnings;
use utf8;

sub main() {
    use Tk;
    
    my $mainWindow = MainWindow->new();
    $mainWindow->title("Tk Text");

    my $textBox = $mainWindow->Text(
        -width => 120,
        -height => 50,
        -font => "newspaper 10"
    );

    $textBox->pack();
    
    MainLoop;
}

main();
