from Bio import SeqIO
import sys

input_file=sys.argv[1]
output_file=sys.argv[2]


with open(input_file, "rU") as input_handle:
    with open(output_file, "w") as output_handle:
        sequences = SeqIO.parse(input_handle, "tab")
        count = SeqIO.write(sequences, output_handle, "fasta")

print("Converted %i records" % count)
