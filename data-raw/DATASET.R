v <-
  tibble::tribble(~json, ~std,
                  
                  # hafvog leidangur
                  "dags_byrjun",   "D1",
                  "dags_endir",    "D2",
                  "leidangursteg", "cclass",
                  "synaflokkur",   "sclass",
                  "veidafaeri",    "gid",
                  "skip",          "vid",
                  "leidangur",     "cruise",
                  
                  # hafvog stöð
                  "stod_id",          ".stid",
                  "dags",             "date",
                  
                  "kastad_v_lengd",   "lon1",
                  "kastad_n_breidd ", "lat1",
                  "hift_v_lengd",     "lon2",
                  "hift_n_breidd",    "lat2",
                  
                  "reitur",           "sq",
                  "smareitur",        "ssq",
                  
                  "dypi_kastad",      "z1",
                  "dypi_hift",        "z2",
                  
                  "fishing_gear_no", "gid",
                  
                  # hafvog tögstod
                  "toghradi", "speed",
                  "togstefna", "heading",
                  "toglengd",  "towlength",
                  "togbyrjun", "t1",
                  "togtimi",   "towtime",
                  "togendir",  "t2",
                  "synis_id",  ".sid",
                  
                  # hafvog skraning
                  "lengd", "length",
                  "tegund", "sid",
                  "tegund_as_faedutegund", "sid_food",
                  "fjoldi", "n",
                  "kyn", "sex",
                  "magaastand", "stomach",
                  "kynthroski", "maturity",
                  "ranfiskurteg", "sid_pred",
                  "heildarthyngd", "wt",
                  "oslaegt", "gwt"
                  )

vocabulary <- stats::setNames(object = v$json, nm = v$std)

usethis::use_data(vocabulary, overwrite = TRUE)