# This script attempts to match all countries that exist in both the
# SSB and the ISO country list by name.
#
# Presumably ISO data is more accurate (in terms of which countries
# exist and such), but the purpose of the output is only to deal with
# the SSB country codes so the mapping takes root in those.

# Helper to convert the country lists into a simple `name->code` map.
def to_countrymap: .
  | map({ (.name): .code })
  | add;

# Main filter:
. | (.iso | to_countrymap) as $iso
  | .ssb
  | map({ key: (.code | tostring)
        , value: { name: .name, iso: $iso[.name] } })
  | map(select(.value.iso == null))
  | from_entries
