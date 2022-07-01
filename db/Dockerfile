FROM ncbi/blast:2.12.0

WORKDIR /db

ENV DATA_STORE=https://data.legumeinfo.org/
RUN printf '%s\n' '#!/bin/bash' 'set -o pipefail -o errexit -o nounset; curl ${DATA_STORE}/${1} | gzip -dc | makeblastdb -parse_seqids -hash_index -dbtype ${2} -taxid ${3} -title "${4}" -out $(basename ${1#.f*.gz})' > /usr/local/bin/mkblastdb \
  && chmod +x /usr/local/bin/mkblastdb

WORKDIR "/db/Medicago_truncatula_Genomic_Sequence_Collection"
RUN mkblastdb Medicago/truncatula/genomes/A17_HM341.gnm4.2GZ9/medtr.A17_HM341.gnm4.2GZ9.genome_main.fna.gz nucl 3880 'M. truncatula A17 v4.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/A17.gnm5.MVZ2/medtr.A17.gnm5.MVZ2.genome_main.fna.gz nucl 3880 'M. truncatula A17 v5.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM002.gnm1.TWKJ/medtr.HM002.gnm1.TWKJ.genome_main.fna.gz nucl 3880 'M. truncatula HM002 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM004.gnm1.L7PM/medtr.HM004.gnm1.L7PM.genome_main.fna.gz nucl 3880 'M. truncatula HM004 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM005.gnm1.BQQH/medtr.HM005.gnm1.BQQH.genome_main.fna.gz nucl 3880 'M. truncatula HM005 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM006.gnm1.XKYH/medtr.HM006.gnm1.XKYH.genome_main.fna.gz nucl 3880 'M. truncatula HM006 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM010.gnm1.YDPY/medtr.HM010.gnm1.YDPY.genome_main.fna.gz nucl 3880 'M. truncatula HM010 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM017.gnm1.HSRX/medtr.HM017.gnm1.HSRX.genome_main.fna.gz nucl 3880 'M. truncatula HM017 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM018.gnm1.3NVM/medtr.HM018.gnm1.3NVM.genome_main.fna.gz nucl 3880 'M. truncatula HM018 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM020.gnm1.PNGN/medtr.HM020.gnm1.PNGN.genome_main.fna.gz nucl 3880 'M. truncatula HM020 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM022.gnm1.B190/medtr.HM022.gnm1.B190.genome_main.fna.gz nucl 3880 'M. truncatula HM022 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM023.gnm1.FFHH/medtr.HM023.gnm1.FFHH.genome_main.fna.gz nucl 3880 'M. truncatula HM023 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM026.gnm1.PH3S/medtr.HM026.gnm1.PH3S.genome_main.fna.gz nucl 3880 'M. truncatula HM026 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM034.gnm1.6VW9/medtr.HM034.gnm1.6VW9.genome_main.fna.gz nucl 3880 'M. truncatula HM034 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM050.gnm1.9JPP/medtr.HM050.gnm1.9JPP.genome_main.fna.gz nucl 3880 'M. truncatula HM050 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM056.gnm1.JBKN/medtr.HM056.gnm1.JBKN.genome_main.fna.gz nucl 3880 'M. truncatula HM056 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM058.gnm1.JVBP/medtr.HM058.gnm1.JVBP.genome_main.fna.gz nucl 3880 'M. truncatula HM058 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM060.gnm1.V7B2/medtr.HM060.gnm1.V7B2.genome_main.fna.gz nucl 3880 'M. truncatula HM060 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM095.gnm1.FBQK/medtr.HM095.gnm1.FBQK.genome_main.fna.gz nucl 3880 'M. truncatula HM095 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM125.gnm1.GFN2/medtr.HM125.gnm1.GFN2.genome_main.fna.gz nucl 3880 'M. truncatula HM125 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM129.gnm1.9HG9/medtr.HM129.gnm1.9HG9.genome_main.fna.gz nucl 3880 'M. truncatula HM129 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM185.gnm1.1G05/medtr.HM185.gnm1.1G05.genome_main.fna.gz nucl 3880 'M. truncatula HM185 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/HM324.gnm1.SJSJ/medtr.HM324.gnm1.SJSJ.genome_main.fna.gz nucl 3880 'M. truncatula HM324 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/truncatula/genomes/R108.gnmHiC_1.7RWS/medtr.R108.gnmHiC_1.7RWS.genome_main.fna.gz nucl 3880 'M. truncatula R108 vHiC_1.0 Genomic Sequence'

WORKDIR "/db/Medicago_truncatula_Transcript_Sequence_Collection"
RUN mkblastdb Medicago/truncatula/annotations/A17.gnm5.ann1_6.L2RX/medtr.A17.gnm5.ann1_6.L2RX.mrna.fna.gz nucl 3880 'M. truncatula A17 v5.1.6 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/R108.gnmHiC_1.ann1.Y8NH/medtr.R108.gnmHiC_1.ann1.Y8NH.mrna.fna.gz nucl 3880 'M. truncatula R108 vHiC_1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM004.gnm1.ann1.2XTB/medtr.HM004.gnm1.ann1.2XTB.mrna.fna.gz nucl 3880 'M. truncatula HM004 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM010.gnm1.ann1.WV9J/medtr.HM010.gnm1.ann1.WV9J.mrna.fna.gz nucl 3880 'M. truncatula HM010 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM022.gnm1.ann1.6C8N/medtr.HM022.gnm1.ann1.6C8N.mrna.fna.gz nucl 3880 'M. truncatula HM022 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM023.gnm1.ann1.WZN8/medtr.HM023.gnm1.ann1.WZN8.mrna.fna.gz nucl 3880 'M. truncatula HM023 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM034.gnm1.ann1.YR6S/medtr.HM034.gnm1.ann1.YR6S.mrna.fna.gz nucl 3880 'M. truncatula HM034 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM050.gnm1.ann1.GWRX/medtr.HM050.gnm1.ann1.GWRX.mrna.fna.gz nucl 3880 'M. truncatula HM050 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM056.gnm1.ann1.CHP6/medtr.HM056.gnm1.ann1.CHP6.mrna.fna.gz nucl 3880 'M. truncatula HM056 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM058.gnm1.ann1.LXPZ/medtr.HM058.gnm1.ann1.LXPZ.mrna.fna.gz nucl 3880 'M. truncatula HM058 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM060.gnm1.ann1.H41P/medtr.HM060.gnm1.ann1.H41P.mrna.fna.gz nucl 3880 'M. truncatula HM060 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM095.gnm1.ann1.55W4/medtr.HM095.gnm1.ann1.55W4.mrna.fna.gz nucl 3880 'M. truncatula HM095 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM125.gnm1.ann1.KY5W/medtr.HM125.gnm1.ann1.KY5W.mrna.fna.gz nucl 3880 'M. truncatula HM125 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM129.gnm1.ann1.7FTD/medtr.HM129.gnm1.ann1.7FTD.mrna.fna.gz nucl 3880 'M. truncatula HM129 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM185.gnm1.ann1.GB3D/medtr.HM185.gnm1.ann1.GB3D.mrna.fna.gz nucl 3880 'M. truncatula HM185 v1 mRNA Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM324.gnm1.ann1.SQH2/medtr.HM324.gnm1.ann1.SQH2.mrna.fna.gz nucl 3880 'M. truncatula HM324 v1 mRNA Sequence'

WORKDIR "/db/Medicago_truncatula_Protein_Sequence_Collection"
RUN mkblastdb Medicago/truncatula/annotations/A17.gnm5.ann1_6.L2RX/medtr.A17.gnm5.ann1_6.L2RX.protein.faa.gz prot 3880 'M. truncatula A17 v5.1.6 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/R108.gnmHiC_1.ann1.Y8NH/medtr.R108.gnmHiC_1.ann1.Y8NH.protein.faa.gz prot 3880 'M. truncatula R108 vHiC_1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM004.gnm1.ann1.2XTB/medtr.HM004.gnm1.ann1.2XTB.protein.faa.gz prot 3880 'M. truncatula HM004 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM010.gnm1.ann1.WV9J/medtr.HM010.gnm1.ann1.WV9J.protein.faa.gz prot 3880 'M. truncatula HM010 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM022.gnm1.ann1.6C8N/medtr.HM022.gnm1.ann1.6C8N.protein.faa.gz prot 3880 'M. truncatula HM022 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM023.gnm1.ann1.WZN8/medtr.HM023.gnm1.ann1.WZN8.protein.faa.gz prot 3880 'M. truncatula HM023 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM034.gnm1.ann1.YR6S/medtr.HM034.gnm1.ann1.YR6S.protein.faa.gz prot 3880 'M. truncatula HM034 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM050.gnm1.ann1.GWRX/medtr.HM050.gnm1.ann1.GWRX.protein.faa.gz prot 3880 'M. truncatula HM050 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM056.gnm1.ann1.CHP6/medtr.HM056.gnm1.ann1.CHP6.protein.faa.gz prot 3880 'M. truncatula HM056 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM058.gnm1.ann1.LXPZ/medtr.HM058.gnm1.ann1.LXPZ.protein.faa.gz prot 3880 'M. truncatula HM058 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM060.gnm1.ann1.H41P/medtr.HM060.gnm1.ann1.H41P.protein.faa.gz prot 3880 'M. truncatula HM060 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM095.gnm1.ann1.55W4/medtr.HM095.gnm1.ann1.55W4.protein.faa.gz prot 3880 'M. truncatula HM095 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM125.gnm1.ann1.KY5W/medtr.HM125.gnm1.ann1.KY5W.protein.faa.gz prot 3880 'M. truncatula HM125 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM129.gnm1.ann1.7FTD/medtr.HM129.gnm1.ann1.7FTD.protein.faa.gz prot 3880 'M. truncatula HM129 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM185.gnm1.ann1.GB3D/medtr.HM185.gnm1.ann1.GB3D.protein.faa.gz prot 3880 'M. truncatula HM185 v1 Protein Sequence'
RUN mkblastdb Medicago/truncatula/annotations/HM324.gnm1.ann1.SQH2/medtr.HM324.gnm1.ann1.SQH2.protein.faa.gz prot 3880 'M. truncatula HM324 v1 Protein Sequence'


WORKDIR "/db/Medicago_sativa_Genomic_Sequence_Collection"
RUN mkblastdb Medicago/sativa/genomes/XinJiangDaYe.gnm1.12MR/medsa.XinJiangDaYe.gnm1.12MR.genome_main.fna.gz nucl 3879 'M. sativa XinJiangDaYe v1.0 Genomic Sequence'
RUN mkblastdb Medicago/sativa/genomes/Zhongmu_No_1.gnm1.TRQW/medsa.Zhongmu_No_1.gnm1.TRQW.genome_main.fna.gz nucl 3879 'M. sativa Zhongmu No. 1 v1.0 Genomic Sequence'
RUN mkblastdb Medicago/sativa/genomes/CADL_HM342.gnm1.rVNY/medsa.CADL_HM342.gnm1.rVNY.genome_main.fna.gz nucl 3879 'M. sativa CADL v1.0 Genomic Sequence'
RUN mkblastdb Medicago/sativa/genomes/RegenSY27x.gnm0_9.2VSM/medsa.RegenSY27x.gnm0_9.2VSM.genome_main.fna.gz nucl 3879 'M. sativa RegenSY27x v0.9 Genomic Sequence'
RUN mkblastdb Medicago/sativa/genomes/PI464715.gnm1.8GK6/medsa.PI464715.gnm1.8GK6.genome_main.fna.gz nucl 3879 'M. sativa PI464715 v1.0 Genomic Sequence'

WORKDIR "/db/Medicago_sativa_Transcript_Sequence_Collection"
RUN mkblastdb Medicago/sativa/annotations/XinJiangDaYe.gnm1.ann1.RKB9/medsa.XinJiangDaYe.gnm1.ann1.RKB9.mrna.fna.gz nucl 3879 'M. sativa XinJiangDaYe v1.0 mRNA Sequence'

WORKDIR "/db/Medicago_sativa_Protein_Sequence_Collection"
RUN mkblastdb Medicago/sativa/annotations/XinJiangDaYe.gnm1.ann1.RKB9/medsa.XinJiangDaYe.gnm1.ann1.RKB9.protein.faa.gz prot 3879 'M. sativa XinJiangDaYe v1.0 Protein Sequence'

WORKDIR "/db/Medicago_ruthenica_Genomic_Sequence_Collection"
RUN mkblastdb Medicago/ruthenica/genomes/Xinghe.gnm1.KKFS/medru.Xinghe.gnm1.KKFS.genome_main.fna.gz nucl 70973 'M. ruthenica Xinghe v1.0 Genomic Sequence'

WORKDIR "/db/Medicago_polymorpha_Genomic_Sequence_Collection"
RUN mkblastdb Medicago/polymorpha/genomes/Huaiyang_Jinhuacai.gnm1.ZH4B/medpo.Huaiyang_Jinhuacai.gnm1.ZH4B.genome_main.fna.gz nucl 47084 'M. polymorpha Huaiyang Jinhuacai v1.0 Genomic Sequence'

VOLUME ["/db"]
