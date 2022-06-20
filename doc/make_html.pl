#! /usr/bin/perl
use XML::LibXSLT;
use XML::LibXML;

my $parser = new XML::LibXML;
my $xsl = new XML::LibXSLT;

my ($xmlfile) = @ARGV;
#my $xsltchunk = "/usr/local/share/sgml/docbook/html/chunk.xsl";
my $xsltdocbook = "/usr/local/share/sgml/docbook/html/docbook.xsl";
my $outfile = $xmlfile;
$outfile =~ s/xml/html/;

if ($xmlfile) {
    $xml_src = $parser->parse_file($xmlfile);
#    $style_src = $parser->parse_file($xsltchunk);
#    $stylesheet = $xsl->parse_stylesheet($style_src);
#    $result = $stylesheet->transform($xml_src);
#    $stylesheet->output_file($result, $outfile);

    $style_src = $parser->parse_file($xsltdocbook);
    $stylesheet = $xsl->parse_stylesheet($style_src);
    $result = $stylesheet->transform($xml_src);
    $stylesheet->output_file($result, $outfile);

#    system('htmldoc --webpage  -f ScrudgeWare.pdf  ScrudgeWare.html');
} else {
   die("usage: exalt <xml file> \n");
} 
