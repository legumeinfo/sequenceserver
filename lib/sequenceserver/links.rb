require 'erb'

module SequenceServer
  # Module to contain methods for generating sequence retrieval links.
  module Links
    # Provide a method to URL encode _query parameters_. See [1].
    include ERB::Util
    alias encode url_encode

    # Link generators are methods that return a Hash as defined below.
    #
    # {
    #   # Required. Display title.
    #   :title => "title",
    #
    #   # Required. Generated url.
    #   :url => url,
    #
    #   # Optional. Left-right order in which the link should appear.
    #   :order => num,
    #
    #   # Optional. Classes, if any, to apply to the link.
    #   :class => "class1 class2",
    #
    #   # Optional. Class name of a FontAwesome icon to use.
    #   :icon => "fa-icon-class"
    # }
    #
    # If no url could be generated, return nil.
    #
    # Helper methods
    # --------------
    #
    # Following helper methods are available to help with link generation.
    #
    #   encode:
    #     URL encode query params.
    #
    #     Don't use this function to encode the entire URL. Only params.
    #
    #     e.g:
    #         sequence_id = encode sequence_id
    #         url = "http://www.ncbi.nlm.nih.gov/nucleotide/#{sequence_id}"
    #
    #   dbtype:
    #     Returns the database type (nucleotide or protein) that was used for
    #     BLAST search.
    #
    #   whichdb:
    #     Returns the databases from which the hit could have originated. To
    #     ensure that one and the correct database is returned, ensure that
    #     your sequence ids are unique across different FASTA files.
    #     NOTE: This method is slow.
    #
    #   coordinates:
    #     Returns min alignment start and max alignment end coordinates for
    #     query and hit sequences.
    #
    #     e.g.,
    #     query_coords = coordinates[0]
    #     hit_coords = coordinates[1]

    def lis
      if id.match("gnm.*\.ann") 
          url = "https://www.legumefederation.org/en/linkout_mgr/?gene=" + id
          {
            order: 2,
            title: 'LIS gene linkouts',
            url:   url,
            icon:  'fa-link'
          }
      else
          url = "https://www.legumefederation.org/en/linkout_mgr/?seqname=" + id + "&start=" + coordinates[1][0].to_s() + "&end=" + coordinates[1][1].to_s()
          {
            order: 2,
            title: 'LIS region linkouts',
            url:   url,
            icon:  'fa-link'
          }
      end
    end

    def jbrowse
      # Create the JBrowse link only for genomic regions, not genes
      if id.match("gnm.*\.ann")
        return
      end

      # Prepare other fields besides sessionTracks
      locStart = coordinates[1][0].to_s()
      locEnd = coordinates[1][1].to_s()
      assembly = id.match('^.+gnm\d+')[0]
      tracks = 'sequenceserver_track'

      # Prepare the sessionTracks field
      sessionTracks = '[{"type":"FeatureTrack","trackId":"sequenceserver_track","name":"SequenceServer Hits","assemblyNames":["' + assembly + '"],"adapter":{"type":"FromConfigAdapter","features":['
      hsps.each_with_index do |hsp, i|
        if i > 0
          sessionTracks << ','
        end
        uid = query.id + '-' + hsp.number.to_s()
        # Ensure sstart < send
        sstart = hsp.sstart
        send = hsp.send
        if sstart > send
          tmp = send
          send = sstart
          sstart = tmp
        end
        # Put evalue in scientific notation only if nonzero (positive)
        e = '0'
        if hsp.evalue > 0
          e = ("%#.2e" % hsp.evalue).to_s()
        end
        sessionTracks << '{'
          sessionTracks << '"uniqueId":"' + uid + '"'
          sessionTracks << ',"refName":"' + id + '"'
          sessionTracks << ',"start":' + sstart.to_s()
          sessionTracks << ',"end":' + send.to_s()
          sessionTracks << ',"name":"' + uid + '"'
          sessionTracks << ',"assembly":"' + assembly + '"'
          sessionTracks << ',"bit_score":' + hsp.bit_score.round(2).to_s()
          sessionTracks << ',"score":' + hsp.score.to_s()
          sessionTracks << ',"evalue":' + e
          sessionTracks << ',"identity":"' + hsp.identity.to_s() + '/' + hsp.length.to_s()
          sessionTracks << ' (' + (100.0*hsp.identity/hsp.length).round(1).to_s() + '%)"'
          sessionTracks << ',"positives":"' + hsp.positives.to_s() + '/' + hsp.length.to_s()
          sessionTracks << ' (' + (100.0*hsp.positives/hsp.length).round(1).to_s() + '%)"'
          sessionTracks << ',"gaps":"' + hsp.gaps.to_s() + '/' + hsp.length.to_s()
          sessionTracks << ' (' + (100.0*hsp.gaps/hsp.length).round(1).to_s() + '%)"'
          sessionTracks << ',"hit_frame":' + hsp.sframe.to_s()
        sessionTracks << '}'
      end
      sessionTracks << ']}}]'

      # Assemble the JBrowse link URL from the fields above
      url = 'https://dev.peanutbase.org/tools/jbrowse2/'
      url << '?loc=' + id + ':' + locStart + '-' + locEnd
      url << '&assembly=' + assembly
      url << '&tracks=' + tracks
      url << '&sessionTracks=' + sessionTracks

      # Return the link object
      {
        order: 3,
        title: 'JBrowse2',
        url: url,
        icon: 'fa-external-link'
      }
    end
  end
end

# [1]: https://stackoverflow.com/questions/2824126/whats-the-difference-between-uri-escape-and-cgi-escape
