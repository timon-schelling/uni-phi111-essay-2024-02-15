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
Warum jedoch setzt die Wissenschaft Axiome voraus, wenn sie doch auf Beweisen und Experimenten beruht und eben die historische Abkehr unteranderem von Religösen Dogmen sein soll? Diese Frage soll in dieser Arbeit behandelt werden. Es soll gezeigt werden, warum Axiome in der Wissenschaft notwendig sind, um überhaupt wissenschaftliche Theorien aufstellen zu können, wie sie sich von Dogmen unterscheiden und warum sie nicht im Widerspruch zu wissenschaftlicher Methodik stehen, sondern diese erst ermöglichen.

= Der historische Kontext

Im Folgenden ein auf Jaakko Hintikkas Arbeit @hintikka2011 basierender historischer Überblick über die axiomatische Methode in der Mathematik und Logik.

Die historische Entwicklung der axiomatischen Methode offenbart eine faszinierende Evolution im Kern der mathematischen und logischen Theoriebildung, ursprünglich im antiken Griechenland als ein Weg zur systematischen Grundlegung mathematischer Beweise konzipiert. @hintikka2011[vgl.&72]
Im 19. Jahrhundert erfuhr sie eine entscheidende Neukonzeptualisierung, maßgeblich angetrieben durch das Bestreben, Mathematik durch die Präzisierung ihrer Grundlagen neu zu definieren, was die Erfassung von Klassen von Strukturen als Modelle eines axiomatischen Systems einschloss. @hintikka2011[vgl.&69-70]
Die Metatheorie eines Axiomensystems, also die Untersuchung der Eigenschaften und der Struktur des Systems selbst, wurde zu einem zentralen Bestandteil der axiomatischen Methode. @hintikka2011[vgl.&70-71]
Diese Entwicklung reflektiert das Verständnis, dass die Ableitung von Theoremen aus Axiomen nicht lediglich neue Tiefeninformationen erzeugt, sondern vielmehr Oberflächeninformationen liefert, die für das Verständnis der Struktur und der inneren Logik des Systems unerlässlich sind. @hintikka2011[vgl.&69, 78]
Die Auseinandersetzung mit der Axiomatisierung der Logik und der Mengenlehre verdeutlichte die Grenzen und Herausforderungen, die mit der axiomatischen Methode einhergehen. @hintikka2011[vgl.&75]
Insbesondere die Versuche, die Logik axiomatisch zu fassen, stießen auf das Problem, dass ein logisches System zur Untersuchung seiner selbst verwendet wird, was eine Reihe von Paradoxien und Unklarheiten mit sich brachte. @hintikka2011[vgl.&75-76]
Ähnlich verhält es sich mit der Axiomatisierung der Mengenlehre, deren Modelle nicht adäquat die Strukturen von Mengen widerspiegeln, wie ursprünglich beabsichtigt. @hintikka2011[vgl.&79]
Die historische Betrachtung der axiomatischen Methode offenbart nicht nur ihre zentrale Bedeutung für die Entwicklung der Mathematik und Logik, sondern auch die tiefgreifenden philosophischen und methodologischen Fragen, die mit ihr verbunden sind. @hintikka2011[vgl.&84-85] Diese reichen von der Natur mathematischer Wahrheit und der Rolle von Axiomen in der Theoriebildung bis hin zu den Grenzen logischer und mathematischer Systeme. @hintikka2011[vgl.&84-85]

//TODO: use this
// Be this as it may, the power of a theory to serve as its own metatheory, offers an interesting way of comparing different axiom systems with each other.

// Ein wesentlicher Aspekt der axiomatischen Methode aus historischer Perspektive ist ihre epistemologische Rolle. @hintikka2011[vgl.&81-82]
// Entgegen der Annahme, dass Axiome aufgrund ihrer Einfachheit und Evidenz eine höhere epistemologische Glaubwürdigkeit genießen, zeigt die historische Entwicklung, dass die Glaubwürdigkeit eines axiomatischen Systems auf der empirischen Verifizierung seiner Axiome beruht, ähnlich wie bei jeder anderen wissenschaftlichen Theorie. @hintikka2011[vgl.&82-83]

= Folgen des Induktionsproblems

Wenn also Induktion keine stabiele Grundlage für wissenschaftliche Theorien bietet, was soll die allternative sein? Deduktion? Auf Basis von was? Für die Deduktion fehlt es an sicheren wahrheiten auf dessen Grundlage weiter gedacht werden kann. Der Axiomatische Ansatz bietet hier eine Lösung. Es werden Axiome
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
