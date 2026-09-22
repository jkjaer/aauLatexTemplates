module = "aau-report"
bundle = "aau-classes"

typesetfiles = {"aau-report.dtx"}
docfiles     = {"README.md","examples/minimal.tex"}

sourcefiles  = {
  "aau-report.dtx",
  "aau-report.ins",
  "assets/aau_waves.pdf",
  "assets/stars.jpg",
  "assets/aau_logo_en.pdf",
  "assets/aau_logo_da.pdf",
  "assets/aau_logo_circle_en.pdf",
  "assets/aau_logo_circle_da.pdf",
}

installfiles = {
  "aau-report.cls",
  "aau_waves.pdf",
  "stars.jpg",
  "aau_logo_en.pdf",
  "aau_logo_da.pdf",
  "aau_logo_circle_en.pdf",
  "aau_logo_circle_da.pdf",
}

typesetexe  = "lualatex"
typesetruns = 2

uploadconfig = {
  pkg         = "aau-report",
  version     = "1.0.0",
  author      = "Martin Kedmenec",
  uploader    = "Martin Kedmenec",
  email       = "mkedme23@student.aau.dk",
  summary     = "AAU report & thesis class with cover styles and project info page",
  license     = "lppl1.3c",
  ctanPath    = "/macros/latex/contrib/aau-report",
  repository  = "https://github.com/<org>/<repo>/tree/main/aau-report",
  bugtracker  = "https://github.com/<org>/<repo>/issues",
  topic       = {"class","thesis","university"},
  description = "A LuaLaTeX class for AAU semester projects and theses with two cover styles, language switching, and an automated project information page.",
}
