# frozen_string_literal: true

class String
  # Strips indentation in heredocs.
  # Technically, it removes whatever amount of leading whitespace the first line has.
  def strip_heredoc_first_line
    gsub(/^#{scan(/^[ \t]*(?=\S)/)[0]}/, "")
  end
end
