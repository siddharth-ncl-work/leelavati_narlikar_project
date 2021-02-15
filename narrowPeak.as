table narrowPeak
"BED6+4 Peaks of signal enrichment based on pooled, normalized (interpreted) data."
(
    string chrom;        "Reference sequence chromosome or scaffold"
    uint   chromStart;   "Start position in chromosome"
    uint   chromEnd;     "End position in chromosome"
    string name;	 "Name given to a region (preferably unique). Use . if no name is assigned"
    uint   score;        "Indicates how dark the peak will be displayed in the browser (0-1000) "
    char[1]  strand;     "+ or - or . for unknown"
    float  signalValue;  "Measurement of average enrichment for the region"
    float  pValue;       "Statistical significance of signal value (-log10). Set to -1 if not used."
    float  qValue;       "Statistical significance with multiple-test correction applied (FDR -log10). Set to -1 if not used."
    int   peak;         "Point-source called for this peak; 0-based offset from chromStart. Set to -1 if no point-source called."
)

* signalValue:
[https://www.biostars.org/p/203585/]
This is the average (between replicates) read count over the region. If the score is high, it means that a lot of chromatin from that region is pulled down by the IP and sequenced.
It can be interpreted as a frequency of the region

* pValue:
[https://en.wikipedia.org/wiki/Volcano_plot_(statistics)]
The concept of volcano plot can be generalized to other applications, where the x axis is related to a measure of the strength of a statistical signal, and y axis is related to a measure of the statistical significance of the signal.
low p values (highly significant) appearing toward the top of the plot.
higher is better.

* qValue:
[https://en.wikipedia.org/wiki/Q-value_(statistics)]
The q-value can be interpreted as the false discovery rate (FDR): the proportion of false positives among all positive results.
lower is better.

* peak:
Position of the signal peak from the start of the sequence chromosome
