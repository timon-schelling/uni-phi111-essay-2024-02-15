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

In dieser Arbeit wird das Kapitel zur Hermeneutik aus Hans Posers Einführung in die Wissenschaftstheorie rekonstruiert. @poser2001[vgl.&217-242]

Hans Poser ist ein deutscher Philosoph und Wissenschaftstheoretiker, der sich in seinen Werken mit der Wissenschaftstheorie und der Philosophie der Geisteswissenschaften auseinandersetzt.
Sein Buch Einführung in die Wissenschaftstheorie bietet eine umfassende Darstellung der wichtigsten Themen und Debatten in der Wissenschaftstheorie. @poser2001[vgl.&5-9]
Das Hermeneutik-Kapitel beginnt Poser mit einer historischen Einordnung und Definition des Begriffs der Hermeneutik als Methode der Erkenntnisgewinnung, die das Verstehen und Interpretieren von Zeichen beschreibt. @poser2001[vgl.&217-222]
Anschließend behandelt er die Arbeit von verschiedenen Philosophen, zur hermeneutischen Methode und ihrer Weiterentwicklung. @poser2001[vgl.&223-228]
Besonders Tiefgehen wird dann die Weiterentwicklung durch Hans-Georg Gadamer behandelt die nach Poser den Hermeneutik-Diskurs in der Philosophie bis heute beherrscht. @poser2001[vgl.&228-233]
Zum Ende seiner Ausführungen adressiert Poser die herausfordernde Kritik an Gadamers Hermeneutik, erkundet die darauf folgenden Weiterentwicklungen durch Denker wie Jürgen Habermas und schließt mit einer fundierten Verteidigung von Gadamers philosophischen Standpunkten. @poser2001[vgl.&233-242]

// Poser behandelt im weiteren die Weiterentwicklung der Hermeneutik durch Philosophen, die die Hermeneutik jeweils erweiterten und vertieften.
// Die Hermeneutik, die Lehre der Interpretation und des Verstehens, erfährt in der wissenschaftlichen Diskussion eine tiefgreifende Analyse. Dieses Kapitel entfaltet die Dimensionen der Hermeneutik, beginnend mit ihrer historischen Entwicklung und erkenntnistheoretischen Problematiken (S. 218-219), über die methodologischen Ansätze von Schleiermacher und Dilthey (S. 222-224), bis hin zur modernen Kritik und Weiterentwicklung durch Gadamer, Habermas, und andere (S. 230-237). Es wird deutlich, dass Hermeneutik weit über die Textinterpretation hinausgeht und eine grundlegende Rolle in unserem Verständnis von Wissenschaft und Geschichte spielt. Die Bedeutung des hermeneutischen Zirkels, die Rolle von Tradition und Vorverständnis sowie die Herausforderungen und Kritiken, die mit dem Streben nach Verstehen verbunden sind, werden detailliert diskutiert. Diese Auseinandersetzung verdeutlicht die Komplexität der Hermeneutik und ihre Relevanz für die Geisteswissenschaften, indem sie die vielschichtigen Wege aufzeigt, auf denen Menschen Bedeutungen erschließen und Wissen generieren.

= Rekonstruktion

Die Debatte um das HO-Schema verdeutlicht eine zentrale philosophische Spannung: die zwischen dem ganzheitlichen Verstehen der Hermeneutik und der detailorientierten Analyse der analytischen Philosophie. @poser2001[vgl.&217-218]
Während die Hermeneutik das Verstehen innerhalb eines Kontextes als essenziell betrachtet und auf die wechselseitige Abhängigkeit des Ganzen und seiner Teile hinweist, fokussiert die analytische Philosophie sich auf die Zerlegung und Überprüfung einzelner Elemente, weil das ganze gar nicht zu verstehen sei. @poser2001[vgl.&217-218]
Verstehen bedeutet für Hermeneutiker, aus äußeren Zeichen ein dahinterliegendes (Geistiges) Konzept zu erfassen/erkennen. @poser2001[vgl.&220-221]
Beispielweise das gelesene Wort "Staat", ist beim lesen nicht das Papier, die Tinte oder die Form der Buchstaben, sondern steht als eben solch ein Zeichen für das Konzept des Staates, welches der Leser versteht, aufgrund des in seinem Verstand vorhandenen Kontextes. @poser2001[vgl.&221]
Poser betont, dass die Hermeneutik nicht auf Texte beschränkt ist, sondern auf alle Zeichen, die interpretiert werden können (Er erweitert damit das traditionelle Verständnis der Hermeneutik, welches häufig auf die Interpretation von Texten begrenzt wird, auf ein breiteres Spektrum von Zeichensystemen). @poser2001[vgl.&221]
Die Hermeneutik besagt jedes Verstehen fängt mit kleinen Einheiten an, diese werden nach und nach zu einem Gesamtbild ergänzt, bis das Ganze erkennbar wird. Aus der Perspektive dieses Ganzen kann sich die Bedeutung der einzelnen Teile neu ordnen oder sogar verändern. Diese Dynamik zwischen dem Verstehen von Teilen und dem Verstehen des Ganzen in Wiederholung wird als Hermeneutischer Zirkel bezeichnet. @poser2001[vgl.&221-222]

Nach Poser ergeben sich aus der Hermeneutik zwei voneinander abhängige Fragen, @poser2001[vgl.&221-222] deren Diskussion im weiteren Verlauf Thema sein soll. "1. Wie kann ich verstehen?" @poser2001[&222] "2. Warum kann ich verstehen?" @poser2001[&222]
Um diese Fragen zu beantworten, beschreibt Poser zunächst die Entwicklung der Hermeneutik, aus der Antike bis zur Christlichen Reformation, in der die Hermeneutik von Protestanten als Methode der Bibelauslegung heran gezogen wurde. @poser2001[vgl.&223]
Es zeigt sich dabei ein generelles Problem, das jede Form von Kommunikation betrifft, wie kann der Empfänger einer Nachricht sicher sein, dass er den Inhalt richtig verstanden hat, dass das innere was er dem äußeren Zeichen zuordnet, mit dem des Senders übereinstimmt. @poser2001[vgl.&223-224]
Im Grunde sind die beiden oben genannten Fragen, eine andere Formulierung dieses Problems. @poser2001[vgl.&224]

Poser führt an dieser Stelle die Überlegungen von Friedrich Schleiermacher ein, der Verstehen als das Einfühlen/Hineinversetzen in ein anderes Individuum definierte. @poser2001[vgl.&225]
Er betonte zwei wesentliche Methoden: Komparation und divinatorischer Akt. @poser2001[vgl.&225]
Komparation vergleicht Texte aufgrund von Ähnlichkeiten, was jedoch nur bei bekannten Inhalten greift. @poser2001[vgl.&225]
Für das Erfassen von Neuem sei der divinatorische Akt nötig, eine kreative Leistung des Verstehenden, die folglich in jedem Menschen vorhandenen sein müsste. @poser2001[vgl.&225-226]
"Verstehen wird so zu einem Rekonstruktionsprozess der fremden Individualität." @poser2001[&226]
Poser kritisiert Schleiermachers Ansatz, da er die Frage nach dem Warum des Verstehens nicht beantwortet, sondern sie nur auf eine als selbstverständlich angenommene Voraussetzung verlagert. @poser2001[vgl.&226]
"[N]ämlich, dass [...] die zeitliche Differenz zwischen [Leser] und einem (antiken) Autor einfach [übersprungen werden] kann." @poser2001[&226]

Für Poser unternahm Hans-Georg Gadamer, "unter Aufnahme einiger Konzeptionen Martin Heideggers", @poser2001[&228] den entscheidenden Schritt, der die heutige Diskussion in der Hermeneutik bis Heute prägt. @poser2001[vgl.&228]
Die Hermeneutik, wurde von einer Methodenlehre "zur fundamentalen ontologischen Theorie ausgeweitet". @poser2001[&229]
Kern Gadamers Theorie ist dabei das Gespräch, das Verstehen als ein Dialog der Sache wegen. @poser2001[vgl.&229-230]





// Die Entwicklung der Hermeneutik, ursprünglich aus der antiken Praxis entstanden, @poser2001[vgl.&217, 223] durchschritt im 16. Jahrhundert, durch das protestantische Bestreben Bibelverständnis jenseits orthodoxer Auslegungen rein aus dem Text selbst zu gewinnen, eine Richtungsänderung. @poser2001[vgl.&223]

// Die grundlegende damalige protestantische Vorstellung, dass eine Verstehensbewegung nach wenigen Durchgängen zur Ruhe kommt, stützt sich auf bestimmte Voraussetzungen, die zunächst als selbstverständlich angesehen wurden. Es wurde angenommen, dass die Bibel nicht nur verständlich, sondern auch in sich konsistent sei. @poser2001[vgl.&223-224]
// Dem heutigen Leser fehlt jedoch der Kontext des Verfassers, schon die verwendete Sprache ist nur noch übersetzt verständlich. @poser2001[vgl.&224] "Diese Übersetzungen aber sind Menschenwerk." @poser2001[&224] Schreib Poser und meint damit, fehleranfällig. @poser2001[vgl.&224] Poser benutzt dieses Beispiel, der Bibel, um eine generelle frage aufzuwerfen





// Thomas Kuhn's Paradigma-Konzept zeigt, dass wissenschaftliches Verständnis von vorherrschenden Theorien abhängt, welche wiederum nicht endgültig sind, sondern durch Paradigmenwechsel herausgefordert werden. Jede Erklärung basiert somit auf festsetzung, der selten hinterfragt wird.

= Fazit

= Ausblick
