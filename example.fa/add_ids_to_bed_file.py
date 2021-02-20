import numpy as np
import pandas as pd

input_bed_filename='ENCFF030XPN_GRCh38.bed'
output_filename=input_bed_filename.split('.bed')[0]+'_with_ids.bed'

df=pd.read_csv(input_bed_filename,sep='\t',header=None)
df[3]=['seq_'+str(i) for i in np.arange(df.shape[0])]
df.to_csv(output_filename,index=False,header=False,sep='\t')
