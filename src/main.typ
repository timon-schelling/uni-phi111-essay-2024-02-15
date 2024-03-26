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
  title: "Notwendigkeit von Axiomen in der Wissenschaft",
  authors: (
    "Timon Schelling",
  ),
  date: "2024-01-29",
  title-page-infos: [
    #set text(size: 0.97em)
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

Ob in der Mathematik die Axiome der Natürlichen Zahlen und der Mengenlehre, in der Physik die der klassischen Mechanik oder in der Biologie die der Evolutionstheorie, Axiome sind in der Wissenschaft allgegenwärtig.
Axiome sind Annahmen, die nicht bewiesen werden, sondern vorraussetzt werden.
Warum jedoch setzt die Wissenschaft Axiome voraus, wenn sie doch auf Beweisen und Experimenten beruht und eben die historische Abkehr von unteranderem Religösen Dogmen sein soll? Diese Frage soll in dieser Arbeit behandelt werden. Es soll gezeigt werden, warum Axiome in der Wissenschaft notwendig sind, um überhaupt wissenschaftliche Theorien aufstellen zu können, wie sie sich von Dogmen unterscheiden und warum sie nicht im Widerspruch zu wissenschaftlicher Methodik stehen, sondern diese erst ermöglichen.

= Der historische Kontext

Schon

= Basis aller Wissenschaft
Grundlegend muss jede Naturwissenschaft voraussetzen, dass die Welt Verstehbar ist, um überhaupt anzufangen sie verstehen zu wollen.
Auch diese Annahme ist ein Axiom.
Wenn eine wissenschaftliche Theorie aufgestellt wird, so ist immer ein "unter der voraussetzung, dass die Welt sich systematisch wissenschaftliche erkären lässt" axiomatisch impliziert.

= Erkährung A priori / A posteriori

In der Wissenschaft lassen sich zwei Arten von Erkentnissen unterscheiden. A priori und a posteriori. A priori Erkentnisse sind solche, die unabhängig von Erfahrung sind, allein auf Vernunft und logischen Schlussfolgerungen beruhen. A posteriori Erkentnisse sind solche, die auf Erfahrung beruhen und empirisch aber nicht rein logisch überprüfbar sind.
A priori Erkentnisse sind als resultat logischer Überlegung notwendigerweise wahr.

Eine Welt in der die Qudratwurzel aus 4096 nicht 64 ist, ist nicht vorstellbar unter der Foraussetzung, dass am Anfang der Überlegung die Gleichen Axiome verwendet werden, um beispielweise die Natürlichen Zahlen zu definieren.

Es darf nicht vergessen werden, dass diese Axiome in der Mathematik immer implizit vorausgesetzt werden.
Selbst wenn sich
Sie müssen nicht bewiesen werden und brauchen
