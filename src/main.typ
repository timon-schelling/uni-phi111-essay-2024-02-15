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

= Folgen des Induktionsproblems

Induktives Schließen beduetet aus spezifischen Beobachtungen allgemeine Schlussfolgerungen zu ziehen und zu Theorien zu entwickeln.
Im Gegensatz zum deduktiven Schließen, bei dem aus allgemeinen Prämissen spezifische Schlüsse gezogen werden.
Ein klassisches Beispiel für induktives Schließen ist die Beobachtung, dass die Sonne jeden Tag im Osten aufgeht.
Aus einer Vielzahl solcher Beobachtungen könnte man induktiv schließen, dass die Sonne immer im Osten aufgehen wird. Diese Art der Schlussfolgerung ist jedoch prinzipiell unsicher, da sie auf der Annahme beruht, dass zukünftige Beobachtungen mit vergangenen Beobachtungen übereinstimmen werden.
Das Induktionsproblem, das erstmals von David Hume im 18. Jahrhundert artikuliert wurde, stellt genau diese Annahme in Frage.
Hume argumentierte, dass es keine rationale Rechtfertigung dafür gibt anzunehmen, dass die Zukunft der Vergangenheit ähneln wird.
Mit anderen Worten, nur weil die Sonne bisher immer im Osten aufgegangen ist, gibt es keine logische Notwendigkeit, die garantiert, dass sie es morgen wieder tun wird.
Diese Erkenntnis wirft ernsthafte Zweifel an der Zuverlässigkeit induktiver Schlussfolgerungen auf, da sie letztlich auf einer ungesicherten Annahme über die Regelmäßigkeit der Natur beruhen.
Verschiedene Philosophen und Wissenschaftstheoretiker haben versucht, das Induktionsproblem zu lösen oder zumindest dessen Auswirkungen abzumildern.
Das Induktionsproblem bleibt jedoch ein fundamentales ungelöst.
Es zwingt uns, die Grenzen unseres Wissens, aus Erfahrung zu gewinnen, anzuerkennen und zeigt die Notwendigkeit einer kritischen Haltung gegenüber unseren induktiven Schlussfolgerungen auf.

= Axiome als Grundlage wissenschaftlicher Theorien

Wenn also Induktion keine stabiele Grundlage für wissenschaftliche Theorien bietet, was soll die allternative sein?
Deduktion?
Auf Basis von was?
Für die Deduktion fehlt es an sicheren wahrheiten auf dessen Grundlage weiter gedacht werden kann.
Der Axiomatische Ansatz bietet hier eine Lösung.
Es wird eine Menge von Axiomen festgelegt, im grunde Aussagen die als wahr angenommen werden und von denen aus deduktiv weiter gearbeitet werden kann.
Die Axiome sind dabei keineswegs willkürlich, sondern müssen überlegt gewählt werden.
Sie müssen so gewählt werden, dass sie den Gewünschten Geltungsberreich abdecken, dabei aber trotzdem so begrenzt wie möglich sind.
Keineswegs dürfen sie aussagen enthalten die nicht notwendig sind und über den Geltungsberreich hinausgehen.
Die Axiome einer Theorie grenzen also auch den Geltungsberreich der Theorie ab.
Offensichtilich müssen sie auch konsistent sein.
Axiome eines Systems dürfen sich nicht widersprechen, weder untereinander noch durch die deduktiven Schlüsse die aus ihnen gezogen werden oder werden können.
Eine Axiomatische Theorie definiert mit ihren Axiomen voraussetzung unter denen die sie gilt.
Nehmen wir zum Beispiel die Mathematik und die Axiome der Natürlichen Zahlen und der Mengenlehre auf denen sie aufbaut.
Bei Verwendung der Gleichen Axiome, wird immer logisch beweisbar sein, dass $sqrt(4096) = plus.minus 64$ (die Qudratwurzel aus $4096$ eqivalent $plus.minus 64$ ist).
Eine auf Axiomen basierende Theorie Folgt der Form:

$ A_1, A_2, dots.h, A_n -> T_1, T_2, dots.h, T_n $

Wobei $A_1, A_2, dots.h, A_n$ die Axiome und $T_1, T_2, dots.h, T_n$ die Theoreme sind.
Die Theoreme sind dabei Aussagen die aus den Axiomen folgen.
Sie folgen deduktiv logisch aus den Axiomen.
Die Wahrheit der Theoreme und mit ihnen die Wahrheit der Theorie, hängt also von der Wahrheit der Axiome ab.
Der Inhalt einer Theorie wird so zu relativem Wissen, relativ zu den jeweiligen Axiomen.
Im weiteren Sinne kann man bei diesem Wissen von relativem a priori sprechen.
Nicht als "es könnte auch anders sein", sondern im Sinne von "es ist so, unter der voraussetzung, der Axiome".
Ohne absolute Wahrheiten zu kennen, kann so dennoch Wissen generiert werden.
Wissen das die Zusammenhänge, Strukturen und Logik des Geltungsberreichs der Theorie beschreibt.
Axiomatisierung macht so wissenschaftliche Arbeit außerhalb von experimenteller Falsifikation möglich.

= Basis aller Naturwissenschaft

In vielen Wissenschaften sind auch Axiome vorausgesetzt die nicht expleziet ausformuliert werden.
Sie sind dann in der jeweiligen wissenschaftsgemeinschaft Kontext der für selbstverständlich gehalten wird.
Grundlegend muss z.B. jede Naturwissenschaft voraussetzen, dass die Welt (und der spezifische Geltungsberreich) Verstehbar ist, um überhaupt anzufangen sie verstehen zu wollen.
Auch diese Annahme ist ein Axiom.
Wenn so eine Theorie aufgestellt wird, so ist immer ein "unter der voraussetzung, dass die Welt sich systematisch wissenschaftliche erkären lässt" axiomatisch impliziert.
Je nach wissenschaftlicher Disziplin, werden dann spezifische Axiome angenommen, in der Physik meinetwegen aussagen über Zeit und Raum.

= Unterschied zu Dogmen

Axiome unterscheiden sich von Dogmen in ihrer Natur. Dogmen sind unveränderliche, unantastbare Wahrheiten, die nicht hinterfragt werden dürfen. Axiome hingegen sind Annahmen, die als wahr angenommen werden, um von ihnen aus weiter zu denken. Sie sind nicht in zwangweise unveränderlich, sondern können und müssen hinterfragt und auch angepasst werden, wenn sie sich als falsch herausstellen oder stärkere gefunden werden. Axiome sind zwangweise konsistent und logisch und damit nicht willkürlich, eine einschränkung die für Dogmen nicht gemacht wird. Axiome sind nicht in Widerspruch zur wissenschaftlichen Methode, sondern ihre Voraussetzung.

= Der historische Kontext

Im Folgenden ein auf Jaakko Hintikkas Arbeit @hintikka2011 basierender historischer Überblick über die axiomatische Methode in der Mathematik und Logik.

Die historische Entwicklung der axiomatischen Methode offenbart eine Evolution im Kern der mathematischen und logischen Theoriebildung. @hintikka2011[vgl.&72]
ursprünglich im antiken Griechenland als ein Weg zur systematischen Grundlegung mathematischer Beweise konzipiert; @hintikka2011[vgl.&72]
erfuhr sie im 19. Jahrhundert  eine entscheidende Neukonzeptualisierung, maßgeblich angetrieben durch das Bestreben, Mathematik durch die Präzisierung ihrer Grundlagen neu zu definieren. @hintikka2011[vgl.&69-70]
Die Metatheorie eines Axiomensystems, also die Untersuchung der Eigenschaften und der Struktur des Systems selbst, wurde zu einem zentralen Bestandteil der axiomatischen Methode. @hintikka2011[vgl.&70-71]
Diese Entwicklung reflektiert das Verständnis, dass die Ableitung von Theoremen aus Axiomen nicht lediglich neue Tiefeninformationen erzeugt, sondern vielmehr Oberflächeninformationen liefert, die für das Verständnis der Struktur und der inneren Logik des Systems unerlässlich sind. @hintikka2011[vgl.&69, 78]
Die Auseinandersetzung mit der Axiomatisierung der Logik und der Mengenlehre verdeutlichte die Grenzen und Herausforderungen, die mit der axiomatischen Methode einhergehen. @hintikka2011[vgl.&75]
Insbesondere die Versuche, die Logik axiomatisch zu fassen, stießen auf das Problem, dass ein logisches System zur Untersuchung seiner selbst verwendet wird, was eine Reihe von Paradoxien und Unklarheiten mit sich brachte. @hintikka2011[vgl.&75-76]
Ähnlich verhält es sich mit der Axiomatisierung der Mengenlehre, deren Modelle nicht adäquat die Strukturen von Mengen widerspiegeln, wie ursprünglich beabsichtigt. @hintikka2011[vgl.&79]
Die historische Betrachtung der axiomatischen Methode offenbart nicht nur ihre zentrale Bedeutung für die Entwicklung der Mathematik und Logik, sondern auch die tiefgreifenden philosophischen und methodologischen Fragen, die mit ihr verbunden sind. @hintikka2011[vgl.&84-85] Diese reichen von der Natur mathematischer Wahrheit und der Rolle von Axiomen in der Theoriebildung bis hin zu den Grenzen logischer und mathematischer Systeme. @hintikka2011[vgl.&84-85]

= Mangel an Allternativen

Es gibt Zahlreiche scheinbare Allternativen zur axiomatischen Methode, die sich jedoch bei genauerer Betrachtung als unzureichend oder im grunde äquivalent herausstellen.
Entweder sie scheintern am Induktionsproblem, sind im Kern selbst axiomatisch, es wird nur nicht expliziet von Axiomen gesprochen, oder sie wiedersprechen der axiomatischen Methode nicht und formilieren z.B. nur aus wie eine axiomatische Theorie durch eine andere ersetzt werden kann (Paradigmenwechsel, Hermeneutische Spriralbewegung des Verstehens).
Zum Beispiel wird die Annahme, dass die Welt Verstehbar ist und sich systematisch wissenschaftlich erkären lässt, implizit vorausgesetzt.
Oder auch einfach ein anderes Wort für Axiome verwendet, z.B. Festsetzung.
Es scheint der Wissenschaft also an Allternativen zum axiomatischen Ansatz zu mangeln.

= Fazit



//TODO: use this
// Be this as it may, the power of a theory to serve as its own metatheory, offers an interesting way of comparing different axiom systems with each other.

// = Erkährung A priori / A posteriori

// In der Wissenschaft lassen sich zwei Arten von Erkentnissen unterscheiden. A priori und a posteriori. A priori Erkentnisse sind solche, die unabhängig von Erfahrung sind, allein auf Vernunft und logischen Schlussfolgerungen beruhen. A posteriori Erkentnisse sind solche, die auf Erfahrung beruhen und empirisch aber nicht rein logisch überprüfbar sind.
// A priori Erkentnisse sind als resultat logischer Überlegung notwendigerweise wahr.

// Es darf nicht vergessen werden, dass diese Axiome in der Mathematik immer implizit vorausgesetzt werden.
// Selbst wenn sich
// Sie müssen nicht bewiesen werden und brauchen
