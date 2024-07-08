FROM ncbi/blast:2.12.0

WORKDIR /db

#HACK: fix this later
#ENV DATA_STORE=http://172.20.1.1:50011/datastore/v2/
ENV DATA_STORE=https://data.legumeinfo.org/
RUN printf '#!/bin/bash\nset -o pipefail -o errexit -o nounset; curl ${DATA_STORE}/${1} | gzip -dc | makeblastdb -parse_seqids -hash_index -dbtype ${2} -taxid ${3} -title "${4}" -out $(basename ${1#.f*.gz})\n' > /usr/local/bin/mkblastdb \
  && chmod +x /usr/local/bin/mkblastdb

WORKDIR "/db/Cicer_arietinum_Genomic_Sequence_Collection"
RUN mkblastdb Cicer/arietinum/genomes/CDCFrontier.gnm3.QT0P/cicar.CDCFrontier.gnm3.QT0P.genome_main.fna.gz nucl 3827 'C. arietinum CDCFrontier v3 genome'
RUN mkblastdb /Cicer/arietinum/genomes/CDCFrontier.gnm2.S2FF/cicar.CDCFrontier.gnm2.S2FF.genome_main.fna.gz nucl 3827 'C. arietinum CDCFrontier v2 genome'
RUN mkblastdb Cicer/arietinum/genomes/CDCFrontier.gnm1.GkHc/cicar.CDCFrontier.gnm1.GkHc.genome_main.fna.gz nucl 3827 'C. arietinum CDCFrontier v1 genome'
RUN mkblastdb Cicer/arietinum/genomes/ICC4958.gnm2.bg5m/cicar.ICC4958.gnm2.bg5m.genome_main.fna.gz nucl 3827 'C. arietinum ICC4958 v2 genome'

WORKDIR "/db/Cicer_arietinum_mRNA_Sequence_Collection"
RUN mkblastdb Cicer/arietinum/annotations/CDCFrontier.gnm3.ann1.NPD7/cicar.CDCFrontier.gnm3.ann1.NPD7.mrna.fna.gz nucl 3827 'C. arietinum CDCFrontier v3.1 mRNAs'
RUN mkblastdb Cicer/arietinum/annotations/CDCFrontier.gnm2.ann1.9M1L/cicar.CDCFrontier.gnm2.ann1.9M1L.mrna_primary.fna.gz nucl 3827 'C. arietinum CDCFrontier v2.1 mRNAs'
RUN mkblastdb Cicer/arietinum/annotations/CDCFrontier.gnm1.ann1.nRhs/cicar.CDCFrontier.gnm1.ann1.nRhs.mrna.fna.gz nucl 3827 'C. arietinum CDCFrontier v1.1 mRNAs'
RUN mkblastdb Cicer/arietinum/annotations/ICC4958.gnm2.ann1.LCVX/cicar.ICC4958.gnm2.ann1.LCVX.mrna_primary.fna.gz nucl 3827 'C. arietinum ICC4958 v2.1 mRNAs'

WORKDIR "/db/Cicer_arietinum_Protein_Sequence_Collection"
RUN mkblastdb Cicer/arietinum/annotations/CDCFrontier.gnm3.ann1.NPD7/cicar.CDCFrontier.gnm3.ann1.NPD7.protein.faa.gz prot 3827 'C. arietinum CDCFrontier v3.1 Proteins'
RUN mkblastdb Cicer/arietinum/annotations/CDCFrontier.gnm2.ann1.9M1L/cicar.CDCFrontier.gnm2.ann1.9M1L.protein_primary.faa.gz prot 3827 'C. arietinum CDCFrontier v2.1 Proteins'
RUN mkblastdb Cicer/arietinum/annotations/CDCFrontier.gnm1.ann1.nRhs/cicar.CDCFrontier.gnm1.ann1.nRhs.protein.faa.gz prot 3827 'C. arietinum CDCFrontier v1.1 Proteins'
RUN mkblastdb Cicer/arietinum/annotations/ICC4958.gnm2.ann1.LCVX/cicar.ICC4958.gnm2.ann1.LCVX.protein_primary.faa.gz prot 3827 'C. arietinum ICC4958 v2.1 Proteins'

WORKDIR "/db/Cicer_echinospermum_Genomic_Sequence_Collection"
RUN mkblastdb Cicer/echinospermum/genomes/S2Drd065.gnm1.R888/cicec.S2Drd065.gnm1.R888.genome_main.fna.gz nucl 90897 'C. echinospermum S2Drd065 v1 genome'

WORKDIR "/db/Cicer_echinospermum_mRNA_Sequence_Collection"
RUN mkblastdb Cicer/echinospermum/annotations/S2Drd065.gnm1.ann1.YZ9H/cicec.S2Drd065.gnm1.ann1.YZ9H.mrna.fna.gz nucl 90897 'C. echinospermum v1.1 mRNAs'

WORKDIR "/db/Cicer_echinospermum_Protein_Sequence_Collection"
RUN mkblastdb Cicer/echinospermum/annotations/S2Drd065.gnm1.ann1.YZ9H/cicec.S2Drd065.gnm1.ann1.YZ9H.protein.faa.gz prot 90897 'C. echinospermum v1.1 Proteins'

WORKDIR "/db/Cicer_reticulatum_Genomic_Sequence_Collection"
RUN mkblastdb Cicer/reticulatum/genomes/Besev079.gnm1.2FZC/cicre.Besev079.gnm1.2FZC.genome_main.fna.gz nucl 90898 'C. reticulatum Besev079 v1 genome'

WORKDIR "/db/Cicer_reticulatum_mRNA_Sequence_Collection"
RUN mkblastdb Cicer/reticulatum/annotations/Besev079.gnm1.ann1.F01Z/cicre.Besev079.gnm1.ann1.F01Z.mrna.fna.gz nucl 90898 'C. reticulatum Besev079 v1.1 mRNAs'

WORKDIR "/db/Cicer_reticulatum_Protein_Sequence_Collection"
RUN mkblastdb Cicer/reticulatum/annotations/Besev079.gnm1.ann1.F01Z/cicre.Besev079.gnm1.ann1.F01Z.protein.faa.gz prot 90898 'C. reticulatum Besev079 v1.1 Proteins'

VOLUME ["/db"]

