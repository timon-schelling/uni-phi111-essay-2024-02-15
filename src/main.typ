#import "template/template.typ": *

#let bib-urls = {
  sys.inputs.at("urls", default: none) != none
}

#let theme = {
  sys.inputs.at("theme", default: none)
}

#set page(fill: rgb("1a1a1a")) if theme == "dark"
#set text(fill: rgb("c7c7c7")) if theme == "dark"

#show: project.with(
  title: "Rekonstruktion des Kapitels zu Hermeneutik aus Hans Posers Einführung in die Wissenschaftstheorie - Ergebnisprotokoll zur Sitzung am 08.01.2024",
  authors: (
    "Timon Schelling",
  ),
  date: "2024-01-29",
  title-page-infos: [
    #table(
      columns: (8em, auto),
      inset: (x: 0em, y: 0.6em),
      stroke: none,
      [Universität:], [Carl von Ossietzky Universität Oldenburg],
      [Fakultät:], [Fakultät IV - Human- und Gesellschaftswissenschaften],
      [Studiengang:], [Philosophie/Werte und Normen Zwei-Fächer-Bachelor],
      [Semester:], [Wintersemester 2023/2024],
      [Veranstaltung:], [Seminar: 4.03.1107 Wissenschaftstheorie - Eine philosophische Einführung],
      [Dozent:], [Simon Fischer],
      [Mail:], [#link("mailto:me@timon.zip"), #link("mailto:timon.schelling@uol.de")]
    )
  ],
  font: "Times New Roman",
  bib-urls: bib-urls,
)

#let argument(premises, conclusion) = align(left, [
  #set text(style: "italic")
  #table(inset: (x: 0.8em, y: 0em), stroke: none)[
    #table(
      stroke: none,
      inset: (x: 0.1em, y: 0.4em),
      columns: 3,
      ..premises.enumerate(start: 1).map(e => {
        let (i, premise) = e
        ([$P_#i$], [$:$], premise)
      }).flatten(),
      ..([$K$], [$:$], conclusion)
    )
  ]
])

= Einleitung

In dieser Arbeit wird das Kapitel zur Hermeneutik aus Hans Posers Einführung in die Wissenschaftstheorie rekonstruiert. @poser2001[siehe. & 217-242]

Hans Poser ist ein deutscher Philosoph und Wissenschaftstheoretiker, der sich in seinen Werken mit der Wissenschaftstheorie und der Philosophie der Geisteswissenschaften auseinandersetzt.
Sein Buch Einführung in die Wissenschaftstheorie bietet eine umfassende Darstellung der wichtigsten Themen und Debatten in der Wissenschaftstheorie.
Das Hermeneutik-Kapitel beginnt Poser mit einer historischen Einordnung und Definition des Begriffs der Hermeneutik als Methode der Erkenntnisgewinnung, die das Verstehen und Interpretieren von Zeichen beschreibt.
Anschließend behandelt er die Arbeit von verschiedenen Philosophen, zur hermeneutischen Methode und ihrer Weiterentwicklung.
Besonders Tiefgehen wird dann die Weiterentwicklung durch Hans-Georg Gadamer behandelt die nach Poser den Hermeneutik-Diskurs in der Philosophie bis heute beherrscht.
Zum Ende seiner Ausführungen adressiert Poser die herausfordernde Kritik an Gadamers Hermeneutik, erkundet die darauf folgenden Weiterentwicklungen durch Denker wie Jürgen Habermas und schließt mit einer fundierten Verteidigung von Gadamers philosophischen Standpunkten.

// Poser behandelt im weiteren die Weiterentwicklung der Hermeneutik durch Philosophen, die die Hermeneutik jeweils erweiterten und vertieften.
// Die Hermeneutik, die Lehre der Interpretation und des Verstehens, erfährt in der wissenschaftlichen Diskussion eine tiefgreifende Analyse. Dieses Kapitel entfaltet die Dimensionen der Hermeneutik, beginnend mit ihrer historischen Entwicklung und erkenntnistheoretischen Problematiken (S. 218-219), über die methodologischen Ansätze von Schleiermacher und Dilthey (S. 222-224), bis hin zur modernen Kritik und Weiterentwicklung durch Gadamer, Habermas, und andere (S. 230-237). Es wird deutlich, dass Hermeneutik weit über die Textinterpretation hinausgeht und eine grundlegende Rolle in unserem Verständnis von Wissenschaft und Geschichte spielt. Die Bedeutung des hermeneutischen Zirkels, die Rolle von Tradition und Vorverständnis sowie die Herausforderungen und Kritiken, die mit dem Streben nach Verstehen verbunden sind, werden detailliert diskutiert. Diese Auseinandersetzung verdeutlicht die Komplexität der Hermeneutik und ihre Relevanz für die Geisteswissenschaften, indem sie die vielschichtigen Wege aufzeigt, auf denen Menschen Bedeutungen erschließen und Wissen generieren.

= Rekonstruktion

== Historische Einordnung und Definition



= Fazit

= Ausblick
