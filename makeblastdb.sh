#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail -o posix

: ${DATA_STORE:=https://data.legumeinfo.org/}
: ${OUTDIR:=/db/out}
: ${WORKDIR:=/db/work}

# Assumes each sequence file is uniquely named
mkblastdb() (
  outdir=${OUTDIR}/${1}
  mkdir -p "${WORKDIR}" "${outdir}"
  cd "${WORKDIR}"
  seqfile=${2##*/}
  if [ -f "${seqfile}.done" ]; then return 0; fi
  case ${2} in
    https://*) url=${2} ;;
    *) url=${DATA_STORE}/${2} ;;
  esac
  curl --fail --no-progress-meter "${url}" |
    gzip -dc |
        makeblastdb -parse_seqids -hash_index -dbtype ${3} -taxid ${4} -title "${5}" -out "${seqfile}"
  mv ${seqfile}.* "${outdir}"
  touch "${seqfile}.done"
)

########################################
# main
########################################
mkblastdb Genomic_Sequence_Collection Aeschynomene/evenia/genomes/CIAT22838.gnm1.XF73/aesev.CIAT22838.gnm1.XF73.genome_main.fna.gz nucl 561484 'Aeschynomene evenia CIAT22838 v1 genome'
mkblastdb Genomic_Sequence_Collection Arachis/cardenasii/genomes/K10017.gnm1.DQ4M/araca.K10017.gnm1.DQ4M.genome_main.fna.gz nucl 51121 'Arachis cardenasii K10017 v1 genome'
mkblastdb Genomic_Sequence_Collection Arachis/duranensis/genomes/V14167.gnm2.J7QH/aradu.V14167.gnm2.J7QH.genome_main.fna.gz nucl 130453 'Arachis duranensis V14167 v2 genome'
mkblastdb Genomic_Sequence_Collection Arachis/hypogaea/genomes/Tifrunner.gnm2.J5K5/arahy.Tifrunner.gnm2.J5K5.genome_main.fna.gz nucl 3818 'Arachis hypogaea Tifrunner v2 genome'
mkblastdb Genomic_Sequence_Collection Arachis/ipaensis/genomes/K30076.gnm2.1GWY/araip.K30076.gnm2.1GWY.genome_main.fna.gz nucl 130454 'Arachis ipaensis K30076 v2 genome'
mkblastdb Genomic_Sequence_Collection Cajanus/cajan/genomes/ICPL87119.gnm2.KL9M/cajca.ICPL87119.gnm2.KL9M.genome_main.fna.gz nucl 3821 'Cajanus cajan ICPL87119 v2 genome'
mkblastdb Genomic_Sequence_Collection Cercis/canadensis/genomes/ISC453364.gnm3.GWXB/cerca.ISC453364.gnm3.GWXB.genome_main.fna.gz nucl 49801 'Cercis canadensis ISC453364 v3 genome'
mkblastdb Genomic_Sequence_Collection Chamaecrista/fasciculata/genomes/ISC494698.gnm1.8Q19/chafa.ISC494698.gnm1.8Q19.genome_main.fna.gz nucl 53854 'Chamaecrista fasciculata ISC494698 v1 genome'
mkblastdb Genomic_Sequence_Collection Cicer/arietinum/genomes/CDCFrontier.gnm1.GkHc/cicar.CDCFrontier.gnm1.GkHc.genome_main.fna.gz nucl 3827 'Cicer arietinum CDCFrontier v1 genome'
mkblastdb Genomic_Sequence_Collection Faidherbia/albida/genomes/WAFC.gnm1.ZT1R/faial.WAFC.gnm1.ZT1R.genome_main.fna.gz nucl 138055 'Faidherbia albida WAFC v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/cyrtoloba/genomes/G1267.gnm1.YWW6/glycy.G1267.gnm1.YWW6.genome_main.fna.gz nucl 45689 'Glycine cyrtoloba G1267 v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/D3-tomentella/genomes/G1403.gnm1.CL6K/glyd3.G1403.gnm1.CL6K.genome_main.fna.gz nucl 2908013 'Glycine D3-tomentella G1403 v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/dolichocarpa/genomes/G1134.gnm1.PP7B/glydo.G1134.gnm1.PP7B.genome_main.fna.gz nucl 82538 'Glycine dolichocarpa G1134 v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/falcata/genomes/G1718.gnm1.B1PY/glyfa.G1718.gnm1.B1PY.genome_main.fna.gz nucl 45690 'Glycine falcata G1718 v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/max/genomes/Wm82.gnm4.4PTR/glyma.Wm82.gnm4.4PTR.genome_main.fna.gz nucl 3847 'Glycine max Wm82 v4 genome'
mkblastdb Genomic_Sequence_Collection Glycine/soja/genomes/PI483463.gnm1.YJWS/glyso.PI483463.gnm1.YJWS.genome_main.fna.gz nucl 3848 'Glycine soja PI483463 v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/stenophita/genomes/G1974.gnm1.7MZB/glyst.G1974.gnm1.7MZB.genome_main.fna.gz nucl 96944 'Glycine stenophita G1974 v1 genome'
mkblastdb Genomic_Sequence_Collection Glycine/syndetika/genomes/G1300.gnm1.C11H/glysy.G1300.gnm1.C11H.genome_main.fna.gz nucl 713886 'Glycine syndetika G1300 v1 genome'
mkblastdb Genomic_Sequence_Collection Lotus/japonicus/genomes/MG20.gnm3.QPGB/lotja.MG20.gnm3.QPGB.genome_main.fna.gz nucl 34305 'Lotus japonicus MG20 v3 genome'
mkblastdb Genomic_Sequence_Collection Lupinus/albus/genomes/Amiga.gnm1.F4NR/lupal.Amiga.gnm1.F4NR.genome_main.fna.gz nucl 3870 'Lupinus albus Amiga v1 genome'
mkblastdb Genomic_Sequence_Collection Lupinus/angustifolius/genomes/Tanjil.gnm1.Qq0N/lupan.Tanjil.gnm1.Qq0N.genome_main.fna.gz nucl 3871 'Lupinus angustifolius Tanjil v1 genome'
mkblastdb Genomic_Sequence_Collection Medicago/sativa/genomes/XinJiangDaYe.gnm1.12MR/medsa.XinJiangDaYe.gnm1.12MR.genome_main.fna.gz nucl 3879 'Medicago sativa XinJiangDaYe v1 genome'
mkblastdb Genomic_Sequence_Collection Medicago/truncatula/genomes/A17.gnm5.MVZ2/medtr.A17.gnm5.MVZ2.genome_main.fna.gz nucl 3880 'Medicago truncatula A17 v5 genome'
mkblastdb Genomic_Sequence_Collection Phaseolus/acutifolius/genomes/Frijol_Bayo.gnm1.QH8L/phaac.Frijol_Bayo.gnm1.QH8L.genome_main.fna.gz nucl 33129 'Phaseolus acutifolius Frijol Bayo v1 genome'
mkblastdb Genomic_Sequence_Collection Phaseolus/lunatus/genomes/G27455.gnm1.7NXX/phalu.G27455.gnm1.7NXX.genome_main.fna.gz nucl 3884 'Phaseolus lunatus G27455 v1 genome'
mkblastdb Genomic_Sequence_Collection Phaseolus/vulgaris/genomes/G19833.gnm2.fC0g/phavu.G19833.gnm2.fC0g.genome_main.fna.gz nucl 3885 'Phaseolus vulgaris G19833 v2 genome'
mkblastdb Genomic_Sequence_Collection Pisum/sativum/genomes/Cameor.gnm1.P4FG/pissa.Cameor.gnm1.P4FG.genome_main.fna.gz nucl 3888 'Pisum sativum Cameor v1 genome'
mkblastdb Genomic_Sequence_Collection Trifolium/pratense/genomes/MilvusB.gnm2.gNmT/tripr.MilvusB.gnm2.gNmT.genome_main.fna.gz nucl 57577 'Trifolium pratense Milvus B v2 genome'
mkblastdb Genomic_Sequence_Collection Trifolium/subterraneum/genomes/Daliak.gnm2.VJZB/trisu.Daliak.gnm2.VJZB.genome_main.fna.gz nucl 3900 'Trifolium subterraneum Daliak v2 genome'
mkblastdb Genomic_Sequence_Collection Vigna/angularis/genomes/Gyeongwon.gnm3.JyYC/vigan.Gyeongwon.gnm3.JyYC.genome_main.fna.gz nucl 3914 'Vigna angularis Gyeongwon v3 genome'
mkblastdb Genomic_Sequence_Collection Vigna/radiata/genomes/VC1973A.gnm7.SB53/vigra.VC1973A.gnm7.SB53.genome_main.fna.gz nucl 157791 'Vigna radiata VC1973A v7 genome'
mkblastdb Genomic_Sequence_Collection Vigna/unguiculata/genomes/IT97K-499-35.gnm1.QnBW/vigun.IT97K-499-35.gnm1.QnBW.genome_main.fna.gz nucl 3917 'Vigna unguiculata IT97K-499-35 v1 genome'

mkblastdb mRNA_Sequence_Collection Aeschynomene/evenia/annotations/CIAT22838.gnm1.ann1.ZM3R/aesev.CIAT22838.gnm1.ann1.ZM3R.mrna_primary.fna.gz nucl 561484 'Aeschynomene evenia CIAT22838 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Arachis/duranensis/annotations/V14167.gnm1.ann1.cxSM/aradu.V14167.gnm1.ann1.cxSM.mrna.fna.gz nucl 130453 'Arachis duranensis V14167 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Arachis/hypogaea/annotations/Tifrunner.gnm2.ann1.4K0L/arahy.Tifrunner.gnm2.ann1.4K0L.mrna_primary.fna.gz nucl 3818 'Arachis hypogaea Tifrunner v2.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Arachis/ipaensis/annotations/K30076.gnm1.ann1.J37m/araip.K30076.gnm1.ann1.J37m.mrna.fna.gz nucl 130454 'Arachis ipaensis K30076 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Cajanus/cajan/annotations/ICPL87119.gnm2.ann1.L3ZH/cajca.ICPL87119.gnm2.ann1.L3ZH.mrna_primary.fna.gz nucl 3821 'Cajanus cajan ICPL87119 v2.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Cercis/canadensis/annotations/ISC453364.gnm3.ann1.3N1M/cerca.ISC453364.gnm3.ann1.3N1M.mrna.fna.gz nucl 49801 'Cercis canadensis ISC453364 v3.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Chamaecrista/fasciculata/annotations/ISC494698.gnm1.ann1.G7XW/chafa.ISC494698.gnm1.ann1.G7XW.cds_primary.fna.gz nucl 53854 'Chamaecrista fasciculata ISC494698 v1.1 pmRNAs'
mkblastdb mRNA_Sequence_Collection Cicer/arietinum/annotations/CDCFrontier.gnm1.ann1.nRhs/cicar.CDCFrontier.gnm1.ann1.nRhs.mrna.fna.gz nucl 3827 'Cicer arietinum CDCFrontier v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Faidherbia/albida/annotations/WAFC.gnm1.ann1.RTP9/faial.WAFC.gnm1.ann1.RTP9.mrna.fna.gz nucl 138055 'Faidherbia albida WAFC v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/cyrtoloba/annotations/G1267.gnm1.ann1.HRFD/glycy.G1267.gnm1.ann1.HRFD.mrna.fna.gz nucl 45689 'Glycine cyrtoloba G1267 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/D3-tomentella/annotations/G1403.gnm1.ann1.XNZQ/glyd3.G1403.gnm1.ann1.XNZQ.mrna.fna.gz nucl 2908013 'Glycine D3-tomentella G1403 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/dolichocarpa/annotations/G1134.gnm1.ann1.4BJM/glydo.G1134.gnm1.ann1.4BJM.mrna.fna.gz nucl 82538 'Glycine dolichocarpa G1134 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/falcata/annotations/G1718.gnm1.ann1.2KSV/glyfa.G1718.gnm1.ann1.2KSV.mrna.fna.gz nucl 45690 'Glycine falcata G1718 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/max/annotations/Wm82.gnm4.ann1.T8TQ/glyma.Wm82.gnm4.ann1.T8TQ.mrna_primary.fna.gz nucl 3847 'Glycine max Wm82 v4.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/soja/annotations/PI483463.gnm1.ann1.3Q3Q/glyso.PI483463.gnm1.ann1.3Q3Q.mrna_primary.fna.gz nucl 3848 'Glycine soja PI483463 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/stenophita/annotations/G1974.gnm1.ann1.F257/glyst.G1974.gnm1.ann1.F257.mrna.fna.gz nucl 96944 'Glycine stenophita G1974 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Glycine/syndetika/annotations/G1300.gnm1.ann1.RRK6/glysy.G1300.gnm1.ann1.RRK6.mrna.fna.gz nucl 713886 'Glycine syndetika G1300 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Lotus/japonicus/annotations/MG20.gnm3.ann1.WF9B/lotja.MG20.gnm3.ann1.WF9B.mrna_primary.fna.gz nucl 34305 'Lotus japonicus MG20 v3.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Lupinus/albus/annotations/Amiga.gnm1.ann1.3GKS/lupal.Amiga.gnm1.ann1.3GKS.mrna.fna.gz nucl 3870 'Lupinus albus Amiga v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Lupinus/angustifolius/annotations/Tanjil.gnm1.ann1.nnV9/lupan.Tanjil.gnm1.ann1.nnV9.mrna.fna.gz nucl 3871 'Lupinus angustifolius Tanjil v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Medicago/truncatula/annotations/A17.gnm5.ann1_6.L2RX/medtr.A17.gnm5.ann1_6.L2RX.mrna.fna.gz nucl 3880 'Medicago truncatula A17 v5.1.6 mRNAs'
mkblastdb mRNA_Sequence_Collection Medicago/sativa/annotations/XinJiangDaYe.gnm1.ann1.RKB9/medsa.XinJiangDaYe.gnm1.ann1.RKB9.mrna.fna.gz nucl 3879 'Medicago sativa XinJiangDaYe v1.1 mRNAs'
#exceeds parse_seqids length limit of 50 characters
#mkblastdb mRNA_Sequence_Collection Phaseolus/acutifolius/annotations/Frijol_Bayo.gnm1.ann1.ML22/phaac.Frijol_Bayo.gnm1.ann1.ML22.mrna_primary.fna.gz nucl 33129 'Phaseolus acutifolius Frijol Bayo v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Phaseolus/lunatus/annotations/G27455.gnm1.ann1.JD7C/phalu.G27455.gnm1.ann1.JD7C.mrna_primary.fna.gz nucl 3884 'Phaseolus lunatus G27455 v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Phaseolus/vulgaris/annotations/G19833.gnm2.ann1.PB8d/phavu.G19833.gnm2.ann1.PB8d.mrna_primary.fna.gz nucl 3885 'Phaseolus vulgaris G19833 v2.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Pisum/sativum/annotations/Cameor.gnm1.ann1.7SZR/pissa.Cameor.gnm1.ann1.7SZR.mrna_primary.fna.gz nucl 3888 'Pisum sativum Cameor v1.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Trifolium/pratense/annotations/MilvusB.gnm2.ann1.DFgp/tripr.MilvusB.gnm2.ann1.DFgp.mrna.fna.gz nucl 57577 'Trifolium pratense Milvus B v2.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Trifolium/subterraneum/annotations/Daliak.gnm2.ann1.MFKF/trisu.Daliak.gnm2.ann1.MFKF.mrna_primary.fna.gz nucl 3900 'Trifolium subterraneum Daliak v2.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Vigna/angularis/annotations/Gyeongwon.gnm3.ann1.3Nz5/vigan.Gyeongwon.gnm3.ann1.3Nz5.mrna_primary.fna.gz nucl 3914 'Vigna angularis Gyeongwon v3.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Vigna/radiata/annotations/VC1973A.gnm7.ann1.RWBG/vigra.VC1973A.gnm7.ann1.RWBG.mrna.fna.gz nucl 157791 'Vigna radiata VC1973A v7.1 mRNAs'
mkblastdb mRNA_Sequence_Collection Vigna/unguiculata/annotations/IT97K-499-35.gnm1.ann2.FD7K/vigun.IT97K-499-35.gnm1.ann2.FD7K.mrna_primary.fna.gz nucl 3917 'Vigna unguiculata IT97K-499-35 v1.2 mRNAs'

mkblastdb Protein_Sequence_Collection Aeschynomene/evenia/annotations/CIAT22838.gnm1.ann1.ZM3R/aesev.CIAT22838.gnm1.ann1.ZM3R.protein_primary.faa.gz prot 561484 'Aeschynomene evenia CIAT22838 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Arachis/duranensis/annotations/V14167.gnm1.ann1.cxSM/aradu.V14167.gnm1.ann1.cxSM.protein.faa.gz prot 130453 'Arachis duranensis V14167 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Arachis/hypogaea/annotations/Tifrunner.gnm2.ann1.4K0L/arahy.Tifrunner.gnm2.ann1.4K0L.protein_primary.faa.gz prot 3818 'Arachis hypogaea Tifrunner v2.1 proteins'
mkblastdb Protein_Sequence_Collection Arachis/ipaensis/annotations/K30076.gnm1.ann1.J37m/araip.K30076.gnm1.ann1.J37m.protein.faa.gz prot 130454 'Arachis ipaensis K30076 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Cajanus/cajan/annotations/ICPL87119.gnm2.ann1.L3ZH/cajca.ICPL87119.gnm2.ann1.L3ZH.protein_primary.faa.gz prot 3821 'Cajanus cajan ICPL87119 v2.1 proteins'
mkblastdb Protein_Sequence_Collection Cercis/canadensis/annotations/ISC453364.gnm3.ann1.3N1M/cerca.ISC453364.gnm3.ann1.3N1M.mrna.fna.gz prot 49801 'Cercis canadensis ISC453364 v3.1 proteins'
mkblastdb Protein_Sequence_Collection Chamaecrista/fasciculata/annotations/ISC494698.gnm1.ann1.G7XW/chafa.ISC494698.gnm1.ann1.G7XW.protein.faa.gz prot 53854 'Chamaecrista fasciculata ISC494698 v1.1 pproteins'
mkblastdb Protein_Sequence_Collection Cicer/arietinum/annotations/CDCFrontier.gnm1.ann1.nRhs/cicar.CDCFrontier.gnm1.ann1.nRhs.protein.faa.gz prot 3827 'Cicer arietinum CDCFrontier v1.1 proteins'
mkblastdb Protein_Sequence_Collection Faidherbia/albida/annotations/WAFC.gnm1.ann1.RTP9/faial.WAFC.gnm1.ann1.RTP9.protein.faa.gz prot 138055 'Faidherbia albida WAFC v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/cyrtoloba/annotations/G1267.gnm1.ann1.HRFD/glycy.G1267.gnm1.ann1.HRFD.protein.faa.gz prot 45689 'Glycine cyrtoloba G1267 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/D3-tomentella/annotations/G1403.gnm1.ann1.XNZQ/glyd3.G1403.gnm1.ann1.XNZQ.protein.faa.gz prot 2908013 'Glycine D3-tomentella G1403 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/dolichocarpa/annotations/G1134.gnm1.ann1.4BJM/glydo.G1134.gnm1.ann1.4BJM.protein.faa.gz prot 82538 'Glycine dolichocarpa G1134 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/falcata/annotations/G1718.gnm1.ann1.2KSV/glyfa.G1718.gnm1.ann1.2KSV.protein.faa.gz prot 45690 'Glycine falcata G1718 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/max/annotations/Wm82.gnm4.ann1.T8TQ/glyma.Wm82.gnm4.ann1.T8TQ.protein_primary.faa.gz prot 3847 'Glycine max Wm82 v4.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/soja/annotations/PI483463.gnm1.ann1.3Q3Q/glyso.PI483463.gnm1.ann1.3Q3Q.protein_primary.faa.gz prot 3848 'Glycine soja PI483463 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/stenophita/annotations/G1974.gnm1.ann1.F257/glyst.G1974.gnm1.ann1.F257.protein.faa.gz prot 96944 'Glycine stenophita G1974 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Glycine/syndetika/annotations/G1300.gnm1.ann1.RRK6/glysy.G1300.gnm1.ann1.RRK6.protein.faa.gz prot 713886 'Glycine syndetika G1300 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Lotus/japonicus/annotations/MG20.gnm3.ann1.WF9B/lotja.MG20.gnm3.ann1.WF9B.protein_primary.faa.gz prot 34305 'Lotus japonicus MG20 v3.1 proteins'
mkblastdb Protein_Sequence_Collection Lupinus/albus/annotations/Amiga.gnm1.ann1.3GKS/lupal.Amiga.gnm1.ann1.3GKS.protein.faa.gz prot 3870 'Lupinus albus Amiga v1.1 proteins'
mkblastdb Protein_Sequence_Collection Lupinus/angustifolius/annotations/Tanjil.gnm1.ann1.nnV9/lupan.Tanjil.gnm1.ann1.nnV9.protein.faa.gz prot 3871 'Lupinus angustifolius Tanjil v1.1 proteins'
mkblastdb Protein_Sequence_Collection Medicago/truncatula/annotations/A17.gnm5.ann1_6.L2RX/medtr.A17.gnm5.ann1_6.L2RX.protein.faa.gz prot 3880 'Medicago truncatula A17 v5.1.6 proteins'
mkblastdb Protein_Sequence_Collection Medicago/sativa/annotations/XinJiangDaYe.gnm1.ann1.RKB9/medsa.XinJiangDaYe.gnm1.ann1.RKB9.protein.faa.gz prot 3879 'Medicago sativa XinJiangDaYe v1.1 proteins'
#exceeds parse_seqids length limit of 50 characters
#RUN mkblastdb Protein_Sequence_Collection Phaseolus/acutifolius/annotations/Frijol_Bayo.gnm1.ann1.ML22/phaac.Frijol_Bayo.gnm1.ann1.ML22.protein_primary.faa.gz prot 33129 'Phaseolus acutifolius Frijol Bayo v1.1 proteins'
mkblastdb Protein_Sequence_Collection Phaseolus/lunatus/annotations/G27455.gnm1.ann1.JD7C/phalu.G27455.gnm1.ann1.JD7C.protein_primary.faa.gz prot 3884 'Phaseolus lunatus G27455 v1.1 proteins'
mkblastdb Protein_Sequence_Collection Phaseolus/vulgaris/annotations/G19833.gnm2.ann1.PB8d/phavu.G19833.gnm2.ann1.PB8d.protein_primary.faa.gz prot 3885 'Phaseolus vulgaris G19833 v2.1 proteins'
mkblastdb Protein_Sequence_Collection Pisum/sativum/annotations/Cameor.gnm1.ann1.7SZR/pissa.Cameor.gnm1.ann1.7SZR.protein_primary.faa.gz prot 3888 'Pisum sativum Cameor v1.1 proteins'
mkblastdb Protein_Sequence_Collection Trifolium/pratense/annotations/MilvusB.gnm2.ann1.DFgp/tripr.MilvusB.gnm2.ann1.DFgp.protein_primary.faa.gz prot 57577 'Trifolium pratense Milvus B v2.1 proteins'
mkblastdb Protein_Sequence_Collection Trifolium/subterraneum/annotations/Daliak.gnm2.ann1.MFKF/trisu.Daliak.gnm2.ann1.MFKF.protein_primary.faa.gz prot 3900 'Trifolium subterraneum Daliak v2.1 proteins'
mkblastdb Protein_Sequence_Collection Vigna/angularis/annotations/Gyeongwon.gnm3.ann1.3Nz5/vigan.Gyeongwon.gnm3.ann1.3Nz5.protein_primary.faa.gz prot 3914 'Vigna angularis Gyeongwon v3.1 proteins'
mkblastdb Protein_Sequence_Collection Vigna/radiata/annotations/VC1973A.gnm7.ann1.RWBG/vigra.VC1973A.gnm7.ann1.RWBG.protein.faa.gz prot 157791 'Vigna radiata VC1973A v7.1 proteins'
mkblastdb Protein_Sequence_Collection Vigna/unguiculata/annotations/IT97K-499-35.gnm1.ann2.FD7K/vigun.IT97K-499-35.gnm1.ann2.FD7K.protein_primary.faa.gz prot 3917 'Vigna unguiculata IT97K-499-35 v1.2 proteins'
