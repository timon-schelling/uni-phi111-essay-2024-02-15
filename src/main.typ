#import "template/template.typ": *

// #let bib-urls = {
//   sys.inputs.at("urls", default: none) != none
// }

#show: project.with(
  title: "Einführung in die Logik am Beispiel politischer Argumente",
  authors: (
    "Timon Schelling",
  ),
  font: "Times New Roman",
  // bib-urls: bib-urls,
)

#include "content.typ"
