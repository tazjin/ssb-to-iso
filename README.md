Norwegian SSB to ISO country codes
==================================

The Norwegian Central Bureau of Statistics (and other parts of the
Norwegian government) uses a [custom standard][] (Standard for land og
statsborgerskap i personstatistikk) for denoting citizenships with
three-digit numeric codes.

We had a use-case where this data needed to be mapped to ISO country
codes. The mapping (and the method for establishing it) are in this
repository in the file `ssb-to-iso.json`.

## Notes

The mapping was established by matching the names of countries in a
list of ISO codes and the Norwegian government's country list. Some
names had to be edited manually, and some countries are not mapped:

* The Dutch territories "Curaçao", "Sint Maarten" and "Bonaire, Sint
  Eustatius og Saba" are all mapped to the `NL` country code.
* As SSB data deals with citizenships primarly, and not countries,
  there are no mappings for stateless people.

See `combine.jq` for the mapping logic used.

[custom standard]: https://www.ssb.no/klass/klassifikasjoner/91
