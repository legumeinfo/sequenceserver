FROM ncbi/blast:2.12.0

WORKDIR /db

ENV DATA_STORE=https://data.legumeinfo.org/
RUN printf '%s\n' '#!/bin/bash' 'set -o pipefail -o errexit -o nounset; curl ${DATA_STORE}/${1} | gzip -dc | makeblastdb -parse_seqids -hash_index -dbtype ${2} -taxid ${3} -title "${4}" -out $(basename ${1#.f*.gz})' > /usr/local/bin/mkblastdb \
  && chmod +x /usr/local/bin/mkblastdb

WORKDIR "/db/Vigna_unguiculata_Genomic_Sequence_Collection"
RUN mkblastdb Vigna/unguiculata/genomes/IT97K-499-35.gnm1.QnBW/vigun.IT97K-499-35.gnm1.QnBW.genome_main.fna.gz nucl 3917 'V. unguiculata IT97K-499-35 v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/CB5-2.gnm1.WDTB/vigun.CB5-2.gnm1.WDTB.genome_main.fna.gz nucl 3917 'V. unguiculata CB5-2 v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/Sanzi.gnm1.YNCM/vigun.Sanzi.gnm1.YNCM.genome_main.fna.gz nucl 3917 'V. unguiculata Sanzi v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/Suvita2.gnm1.5QLL/vigun.Suvita2.gnm1.5QLL.genome_main.fna.gz nucl 3917 'V. unguiculata Suvita v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/TZ30.gnm1.TX9W/vigun.TZ30.gnm1.TX9W.genome_main.fna.gz nucl 3917 'V. unguiculata TZ30 v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/UCR779.gnm1.M7KZ/vigun.UCR779.gnm1.M7KZ.genome_main.fna.gz nucl 3917 'V. unguiculata UCR779 v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/ZN016.gnm1.997F/vigun.ZN016.gnm1.997F.genome_main.fna.gz nucl 3917 'V. unguiculata ZN016 v1.0 Genomic Sequence'
RUN mkblastdb Vigna/unguiculata/genomes/Xiabao_II.gnm1.WDBP/vigun.Xiabao_II.gnm1.WDBP.genome_main.fna.gz nucl 3917 'V. unguiculata Xiabao_II v1.0 Genomic Sequence'

WORKDIR "/db/Vigna_unguiculata_mRNA_Sequence_Collection"
RUN mkblastdb Vigna/unguiculata/annotations/IT97K-499-35.gnm1.ann2.FD7K/vigun.IT97K-499-35.gnm1.ann2.FD7K.mrna.fna.gz nucl 3917 'Vigna unguiculata IT97K-499-35 v1.2 mRNAs'
RUN mkblastdb Vigna/unguiculata/annotations/CB5-2.gnm1.ann1.0GKC/vigun.CB5-2.gnm1.ann1.0GKC.mrna.fna.gz nucl 3917 'Vigna unguiculata CB5-2 v1.1 mRNAs'
RUN mkblastdb Vigna/unguiculata/annotations/Sanzi.gnm1.ann1.HFH8/vigun.Sanzi.gnm1.ann1.HFH8.mrna.fna.gz nucl 3917 'Vigna unguiculata Sanzi v1.1 mRNAs'
RUN mkblastdb Vigna/unguiculata/annotations/Suvita2.gnm1.ann1.1PF6/vigun.Suvita2.gnm1.ann1.1PF6.mrna.fna.gz nucl 3917 'Vigna unguiculata Suvita2 v1.1 mRNAs'
RUN mkblastdb Vigna/unguiculata/annotations/TZ30.gnm1.ann2.59NL/vigun.TZ30.gnm1.ann2.59NL.mrna.fna.gz nucl 3917 'Vigna unguiculata TZ30 v1.2 mRNAs'
RUN mkblastdb Vigna/unguiculata/annotations/UCR779.gnm1.ann1.VF6G/vigun.UCR779.gnm1.ann1.VF6G.mrna.fna.gz nucl 3917 'Vigna unguiculata UCR779 v1.1 mRNAs'
RUN mkblastdb Vigna/unguiculata/annotations/ZN016.gnm1.ann2.C7YV/vigun.ZN016.gnm1.ann2.C7YV.mrna.fna.gz nucl 3917 'Vigna unguiculata ZN016 v1.2 mRNAs'
#BLAST Database creation error: Near line 679663, the local id is too long.  Its length is 51 but the maximum allowed local id length is 50.  Please find and correct all local ids that are too long.
#RUN mkblastdb Vigna/unguiculata/annotations/Xiabao_II.gnm1.ann1.4JFL/vigun.Xiabao_II.gnm1.ann1.4JFL.mrna.fna.gz nucl 3917 'Vigna unguiculata Xiabao_II v1.1 mRNAs'

WORKDIR "/db/Vigna_unguiculata_Protein_Sequence_Collection"
RUN mkblastdb Vigna/unguiculata/annotations/IT97K-499-35.gnm1.ann2.FD7K/vigun.IT97K-499-35.gnm1.ann2.FD7K.protein.faa.gz prot 3917 'Vigna unguiculata IT97K-499-35 v1.2 Proteins'
RUN mkblastdb Vigna/unguiculata/annotations/CB5-2.gnm1.ann1.0GKC/vigun.CB5-2.gnm1.ann1.0GKC.protein.faa.gz prot 3917 'Vigna unguiculata CB5-2 v1.1 Proteins'
RUN mkblastdb Vigna/unguiculata/annotations/Sanzi.gnm1.ann1.HFH8/vigun.Sanzi.gnm1.ann1.HFH8.protein.faa.gz prot 3917 'Vigna unguiculata Sanzi v1.1 Proteins'
RUN mkblastdb Vigna/unguiculata/annotations/Suvita2.gnm1.ann1.1PF6/vigun.Suvita2.gnm1.ann1.1PF6.protein.faa.gz prot 3917 'Vigna unguiculata Suvita2 v1.1 Proteins'
RUN mkblastdb Vigna/unguiculata/annotations/TZ30.gnm1.ann2.59NL/vigun.TZ30.gnm1.ann2.59NL.protein.faa.gz prot 3917 'Vigna unguiculata TZ30 v1.2 Proteins'
RUN mkblastdb Vigna/unguiculata/annotations/UCR779.gnm1.ann1.VF6G/vigun.UCR779.gnm1.ann1.VF6G.protein.faa.gz prot 3917 'Vigna unguiculata UCR779 v1.1 Proteins'
RUN mkblastdb Vigna/unguiculata/annotations/ZN016.gnm1.ann2.C7YV/vigun.ZN016.gnm1.ann2.C7YV.protein.faa.gz prot 3917 'Vigna unguiculata ZN016 v1.2 Proteins'
#BLAST Database creation error: Near line 266696, the local id is too long.  Its length is 51 but the maximum allowed local id length is 50.  Please find and correct all local ids that are too long.
#RUN mkblastdb Vigna/unguiculata/annotations/Xiabao_II.gnm1.ann1.4JFL/vigun.Xiabao_II.gnm1.ann1.4JFL.protein.faa.gz prot 3917 'Vigna unguiculata Xiabao_II v1.1 Proteins'

WORKDIR "/db/Vigna_angularis_Genomic_Sequence_Collection"
RUN mkblastdb Vigna/angularis/genomes/Gyeongwon.gnm3.JyYC/vigan.Gyeongwon.gnm3.JyYC.genome_main.fna.gz nucl 3914 'V. angularis Gyeongwon v3.0 Genomic Sequence'
RUN mkblastdb Vigna/angularis/genomes/Shumari.gnm1.V0CS/vigan.Shumari.gnm1.V0CS.genome_main.fna.gz nucl 3914 'V. angularis Shumari v1.0 Genomic Sequence'

WORKDIR "/db/Vigna_angularis_mRNA_Sequence_Collection"
RUN mkblastdb Vigna/angularis/annotations/Gyeongwon.gnm3.ann1.3Nz5/vigan.Gyeongwon.gnm3.ann1.3Nz5.mrna.fna.gz nucl 3914 'Vigna angularis Gyeongwon v3.1 mRNAs'
RUN mkblastdb Vigna/angularis/annotations/Shumari.gnm1.ann1.8BRS/vigan.Shumari.gnm1.ann1.8BRS.mrna.fna.gz nucl 3914 'Vigna Shumari Gyeongwon v1.1 mRNAs'

WORKDIR "/db/Vigna_angularis_Protein_Sequence_Collection"
RUN mkblastdb Vigna/angularis/annotations/Gyeongwon.gnm3.ann1.3Nz5/vigan.Gyeongwon.gnm3.ann1.3Nz5.protein.faa.gz prot 3914 'Vigna angularis Gyeongwon v3.1 Proteins'
RUN mkblastdb Vigna/angularis/annotations/Shumari.gnm1.ann1.8BRS/vigan.Shumari.gnm1.ann1.8BRS.protein.faa.gz prot 3914 'Vigna Shumari Gyeongwon v1.1 Proteins'

WORKDIR "/db/Vigna_radiata_Genomic_Sequence_Collection"
RUN mkblastdb Vigna/radiata/genomes/VC1973A.gnm6.3nL8/vigra.VC1973A.gnm6.3nL8.genome_main.fna.gz nucl 157791 'V. radiata VC1973A v6.0 Genomic Sequence'

WORKDIR "/db/Vigna_radiata_mRNA_Sequence_Collection"
RUN mkblastdb Vigna/radiata/annotations/VC1973A.gnm6.ann1.M1Qs/vigra.VC1973A.gnm6.ann1.M1Qs.mrna.fna.gz nucl 157791 'Vigna radiata VC1973A v6.1 mRNAs'

WORKDIR "/db/Vigna_radiata_Protein_Sequence_Collection"
RUN mkblastdb Vigna/radiata/annotations/VC1973A.gnm6.ann1.M1Qs/vigra.VC1973A.gnm6.ann1.M1Qs.protein.faa.gz prot 157791 'Vigna radiata VC1973A v6.1 Proteins'

VOLUME ["/db"]
