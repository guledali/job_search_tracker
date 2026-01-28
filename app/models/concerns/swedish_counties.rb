module SwedishCounties
  extend ActiveSupport::Concern

  COUNTIES = {
    stockholms_lan: "Stockholms län",
    uppsala_lan: "Uppsala län",
    sodermanlands_lan: "Södermanlands län",
    ostergotlands_lan: "Östergötlands län",
    jonkopings_lan: "Jönköpings län",
    kronobergs_lan: "Kronobergs län",
    kalmar_lan: "Kalmar län",
    gotlands_lan: "Gotlands län",
    blekinge_lan: "Blekinge län",
    skane_lan: "Skåne län",
    hallands_lan: "Hallands län",
    vastra_gotalands_lan: "Västra Götalands län",
    varmlands_lan: "Värmlands län",
    orebro_lan: "Örebro län",
    vastmanlands_lan: "Västmanlands län",
    dalarnas_lan: "Dalarnas län",
    gavleborgs_lan: "Gävleborgs län",
    vasternorrlands_lan: "Västernorrlands län",
    jamtlands_lan: "Jämtlands län",
    vasterbottens_lan: "Västerbottens län",
    norrbottens_lan: "Norrbottens län"
  }.freeze
end
