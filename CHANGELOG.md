# BaitsTools Change Log  
Michael G. Campana, 2017  
Smithsonian Conservation Biology Institute  
Contact: campanam@si.edu  

## Table of Contents  
[aln2baits](#aln2baits)  
[annot2baits](#annot2baits)  
[baitstools](#baitstools)  
[bed2baits](#bed2baits)  
[checkbaits](#checkbaits)  
[stacks2baits](#stacks2baits)  
[tilebaits](#tilebaits)  
[vcf2baits](#vcf2baits)  
[Deprecated](#deprecated)  

## aln2baits  
### Version 0.5  
Upcasing removed since now read as upcased  
RNA output handling added  

### Version 0.4  
Version constant added to header  
Outputs bed files rather than coordinates tables  

### Version 0.3  
Parameter header updated  
Program now updates to screen when major steps started  
Completely revised Hap_Window.var_permutations to get all possible permutations and allow wobble bases  
Haplotype definition 'variants' is now 'variant' for consistency  
Updated the 'variant' options in aln2baits to use all permutations rather than random selection of original sequences. Output headers now say 'Alignment' since they do not correspond to original sequences.  
Option 'no_indels' moved to general filtration option (now -I rather than -N)  

### Version 0.2  
FASTA headers of generated baits now match the original source sequence  
Corrected double-tabbed output in parameters output  

## Version 0.1  
Preliminary script to generate weighted bait set from a fasta alignment  

## annot2baits  
### Version 0.3  
Upcasing removed  

### Version 0.2  
Version constant added to header  

### Version 0.1  
Preliminary script to generate baits from an annotation file and a reference sequence  

## baitstools  
### Version 0.7  
-H defaults to haplotype  
Ambiguity collapsing added to bait filtration  
Fa_Seq method 'make_dna' converts uracil residues to thymines for internal consistency  
make_dna upcases all sequences for later analyses  
read_fasta calls make_dna after each sequence read in  
frontend handling for RNA bait output  
RNA output handling for snp_to_baits and collapse_ambiguity  

### Version 0.6  
Incorporated baitslib into baitstools main script  
require statements for subcommands now require_relative  
Version constant added to header  
Subcommand script versions now reported by constants to minimize having to manually update  
Updated control program to output BED files rather than proprietary coordinates tables  
snp_to_baits now returns BED format information rather than coordinates tableswrite_baits outputs BED files rather than 'coords.txt' files  
Chromo_SNP now includes a reference allele variable  
Fixed option -A to accept values as needed  
Fixed options -t, -m, -L, -a, -b to avoid crashing when called without specifying a value  
Option -o, --coords is now -B, --bed to reflect updated file type  
Filter option -I, --no_Indels now -G, --nogaps to be more accurate and less confusing  
Option --no_Ns now --noNs for naming consistency  
Option --no_baits now --nobaits for naming consistency  
Option -G, --features now -U,--features  
--totalsnps now --totalvars to be more accurate  
get_command_line updated to reflect options revisions  
Updated snp_to_baits to properly apply indels in VCF files  
Help text and prompts updated for accuracy  
Fixed interactive checking of alpha values from command-line interface  
Fixed unnecessary request for NCBI headers when no_baits specified  

### Version 0.5  
Added checkbaits method  
Added annot2baits method  
Added code for new command-line options  
Removed non-functional code in baitstools main help output  
Help/interactive mode text cleaned up  
baitstools builds a FASTQ translation hash at the start-up to speed up FASTQ numeric translation in subprograms  
Changed the vcf2baits/stacks2baits default to outputting baits  
Options -e and -R (new) override -p (no baits) to fix conflicts  
Choosing parameters forces the required filtration options  
Commented code more thoroughly to describe the variables  
Program outputs the complete command line to screen on start-up  
Program outputs 'Program complete' on completion  

### Version 0.4  
Added stacks2baits method  
Fixed bug in selectsnps algorithm call that asked to filter baits even when bait output not selected  
Set tilebaits, coords2baits, and aln2baits to have $options.baits = true since these algorithms only output baits

### Version 0.3  
Added aln2baits to general help output for baitstools  
Fixed no_tiling bug for command-line -N option  

### Version 0.2  
First version but to make consistent with package numbering  
Allowed tiling offsets to be greater than bait length for everything except selectsnps (since it works differently)  
Changed bait length to -L to make consistent across scripts  
Allowed selectsnps to directly determine bait length (but lenaft and lenbef override if specified)  
Changed tiling offset to -O from -v to allow -v to be version  
New front-end for baitstools package (hence inconsistent version number)  
The word 'probe' changed to 'baits' in all instances for clarity  
Set default for tiling offset as 20 bp (from 60 for select_snps and 25 for tile_probes)  

## bed2baits  
### Version 0.3  
BaitsTools-specific coordinates table was more-or-less BED format with excess symbols. Converted the coordinates table to BED format.  
Version constant added to header  

### Version 0.2  
Updated algorithm to use quality scores as necessary  
Program now updates to screen when major steps started  
Popvar @alleles replaces @pnuc and @qnuc, which were otherwise unused  

### Version 0.1  
Preliminary script to turn a coordinates table and a reference sequence into baits  

## checkbaits  
### Version 0.3  
RNA output handling added  

### Version 0.2  
Version constant added to header  

### Version 0.1  
Preliminary script to filter predefined baits through quality filters  

## stacks2baits  
### Version 0.3  
Version constant added to header  

### Version 0.2  
Bait output now default  
Fixed possible bug in Popvar.in_hwe? method that used local variable rather pfreq rather than @pfreq  
Chromo_SNPs passed directly to selectsnps and snps_to_baits  
stacks2baits outputs filtered stacks summary tsvs (new method write_stacks)  
Improved method to read tsvs using array splitting rather than a cumbersome loop  
Program now updates to screen when major steps started  
Fixed bug in that reread reference sequence every time snps_to_baits run in stacks2baits  

### Version 0.1  
Preliminary script to turn a Stacks summary tsv file and a reference sequence into baits  

## tilebaits  
### Version 0.6  
RNA output handling added  

### Version 0.5  
Returns BED format information rather than coordinates tables  
Version constant added to header  

### Version 0.4  
Parameter header updated  
Updated algorithm to use quality scores as necessary  
Program now updates to screen when major steps started  

### Version 0.3  
Corrected double-tabbed output in parameters output  

### Version 0.2  
tilebaits can now take internally passed input rather than just from command-line  
Input now controlled by baitstools frontend. Converted to method tilebaits.  
renamed tilebaits for consistency  
The word 'probe' changed to 'baits' in all instances for clarity  
Input now controlled by baitslib read_fasta function  
Output now controlled by baitslib write_probes function  

### Version 0.1  
Preliminary script to divide genic/genomic sequences into tiled baits

## vcf2baits  
### Version 0.9  
Now records reference allele to allow proper application of indel variants  
Version constant added to header  
VCF header modification now uses version constants  

### Version 0.8  
Bait output now default  
Now uses Chromo_SNPs  to allow metadata  
Program now updates to screen when major steps started  
Revised algorithm to store original lines when reading vcf. No longer needs to reread vcfs when writing output  
Output vcfs now have BaitsTools command lines written into them for reference  
Added option to filter vcf variants by QUAL scores  

### Version 0.7  
Method involved in actual snp selection moved to baitslib as method selectsnps  
Method involved in bait generation moved to baitslib as method snp_to_baits  
Renamed to vcf2baits to be more consistent with nomenclature of other subprograms  

### Version 0.6  
Input now controlled by baitstools frontend. Converted to method selectsnps  
Renamed selectsnps for consistency  
The word 'probe' changed to 'baits' in all instances for clarity  
Most output now controlled by baitslib write_probes function  
Reference sequence now read in through read_fasta function in baitslib  
Can now tile/get complete baits across circular genomes  
Corrected probe locations for 0-based indexing of Ruby  

### Version 0.5  
Incorporated into BaitsTools package  
filter_probes definition removed into separate script for access by other scripts  

### Version 0.4  
Added the option to produce tiled baits for SNPs  
Added the option to output coordinates tables for the probes  
Added the option to scale number of SNPs per contig by contig length  
Added the option to filter by bait melting temperature  
Added -e option to output probe sequences without selecting SNPs  
Added the ability to output a table of bait filtering statistics  
Made filtering option output filtered VCF as well as selected VCF  
Changed GC filtering defaults and allowed this filter to be skipped if desired  
Fixed 'ouput' typo  
Removed unnecessary ::Version variable  

### Version 0.3  
GC content is now floating point
Altered the code to use OptionParser/ostruct.
Set defaults for all major variables
Fixed a bug that terminated reference sequence chromosome names only at spaces rather than line breaks

### Version 0.2  
Filters probes based on GC content, length.
Improved handling of Y/N prompts.

### Version 0.1  
Selects SNPs from VCFs
Outputs probes based on reference sequence

# Deprecated  
## baitslib  
### Version 0.4  
Added an exception to write_baits so that checkbaits does not output unfiltered baits  
Added @qual to class Fa_Seq to allow it to handle FASTQ files  
Modified read_fasta so that it can read standard format FASTQ  
read_fasta can now separate NCBI-style descriptions from sequence names  
Fixed filter_baits bug that always filtered by bait length completeness  
GC content output in parameters file in % rather than decimal  
filter_baits can filter by quality scores  
filter_baits can remove sequences with Ns and gap characters (-)  
Improved melting temperature calculations to use formamide concentrations and calculate for DNA hybridization  
Added method 'mean' to calculate mean value of an array  
Chromo_SNP updated to allow vcf metadata and store original vcf/stacks lines  
selectsnps now uses Chromo_SNPs for the SNP data to allow metadata  
snps_to_baits uses Chromo_SNPs and improved vcf2baits algorithm  
snps_to_baits now updates to screen when major steps started  
snps_to_baits can use quality scores as necessary. Parameter header updated  
snps_to_baits can apply alternate alleles (including indels) from stacks2baits and vcf2baits  
Fixed bug in snps_to_baits that reread reference sequence every time run in stacks2baits  
New method get_command_line gets complete command-line for user reference  

### Version 0.3  
Added class Chromo_SNP as a container for SNP data  
selectsnps method added (moved from vcf2baits)  
snps_to_baits method added (moved from vcf2baits)  
Modified write_baits to allow for different filestems (but defaulting to $options.infile)  
Fixed bug in params file output that reported raw number of GCes rather than GC%  

### Version 0.2
filter_probes renamed baitslib  
The word 'probe' changed to 'baits' in all instances for clarity  
New method read_fasta handles basic fasta input  
read_fasta removes #circ from appropriate sequence headers  
New class Fa_Seq is container for fasta format  
Fa_Seq is compatible with multi-line sequence fasta files  
New method write_probes handles basic output  

### Version 0.1  
filter_probes definition removed into separate script for access by other scripts  

## coords2baits  
Now bed2baits  

## filter_probes  
Became baitslib, now incorporated into baitstools  

## select_snps  
Now vcf2baits  

## selectsnps  
Now vcf2baits  

## tile_probes
Now tilebaits