require 'pp'
require './candidates'
require './filters'

# Print title/divider
def divider(title, len = 70)
  puts "\n#{"=" * len}\n#{title}\n#{"=" * len}\n"
end

divider("@candidates")
pp @candidates

divider("find(9, @candidates)")
pp find(@candidates, 9)

divider("HELPER FUNCTIONS")
puts "> @candidates[2]"
pp @candidates[2]
puts "> experienced?(@candidates[2])"
pp experienced?(@candidates[2])
puts "> has_points?(@candidates[2], 100)"
pp has_points?(@candidates[2], 100)
puts "> has_lang?(@candidates[2], 'Ruby')"
pp has_lang?(@candidates[2], 'Ruby')
puts "> applied_within?(@candidates[2], 15)"
pp applied_within?(@candidates[2], 15)

divider("qualified_candidates(@candidates)")
pp qualified_candidates(@candidates)

divider("ordered_by_qualifications(@candidates)")
pp ordered_by_qualifications(@candidates)
