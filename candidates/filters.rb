# Return the candidate with the given id or nil if none exist
def find(candidates, id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
end

# Return true if the given candidate has 2+ years of experience
def experienced?(candidate)
  return candidate[:years_of_experience] >= 2
end

# Return true if the candidate has the given amount of GitHub points
def has_points?(candidate, points)
  return candidate[:github_points] >= points
end

# Return true if the candidate has the given language
def has_lang?(candidate, language)
  return candidate[:languages].include?(language)
end

# Return true if the candidate applied within the given number of days
def applied_within?(candidate, days)
  return Date.today - candidate[:date_applied] <= days
end

# Return a subset of candidates that fulfill the following conditions:
#   experienced (2+ years), have 100+ GitHub points, knows at least Ruby or Python,
#   applied in the last 15 days, and are aged 18+
def qualified_candidates(candidates)
  result = []
  @candidates.each do |candidate|
    if (experienced?(candidate) &&
       has_points?(candidate, 100) &&
       (has_lang?(candidate, "Ruby") || has_lang?(candidate, "Python")) &&
       applied_within?(candidate, 15) &&
       candidate[:age] >= 18)
      result.push(candidate)
    end
  end
  return result
end

# Return candidates sorted by years of experience and GitHub points
def ordered_by_qualifications(candidates)
  result = candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }
  return result.reverse
end
