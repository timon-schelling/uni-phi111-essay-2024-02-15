#import "template/template.typ": *

#show: project.with(
  title: "Einführung in die Logik am Beispiel politischer Argumente",
  authors: (
    "Timon Schelling",
  ),
  font: "Times New Roman"
)

#let argument(premises, conclusion) = align(left, [
  // #set text(weight: "semibold", size: 0.9em)
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

// Warum wird dem einen Argument mehr Glauben geschenkt als dem anderen? Wie lassen gute und schlechte Argumente unterscheiden? Fragen, die nicht nur Journalisten und Politiker beschäftigen sollten, sondern eigentlich jeden, denn wir alle werden täglich mit Argumenten konfrontiert.

Menschen, als Teil der Gesellschaft, werden täglich mit Argumenten konfrontiert.
Sei es als Teil des politischen Diskurses, in Nachrichten, der Werbung oder im privaten Gespräch mit Freunden und Familie.
Von welchen Argumenten sollten wir uns überzeugen lassen und welche sollten wir ablehnen?
Es gibt verschiedene Ebenen, auf denen sich Argumente bewerten lassen.
Argumente können literarisch wertvoll, originell oder auch rhetorisch geschickt sein.
In dieser Arbeit sollen allerdings allein Eigenschaften von Argumenten betrachtet werden, mit denen sich die philosophische Disziplin der Logik beschäftigt, namentlich die Gültigkeit und die Stichhaltigkeit.
Im Folgenden wird am Beispiel politischer Argumente eine Einführung in die Logik gegeben.
Fokus soll dabei auf der Logik als Werkzeug liegen, mit dem sich politische Argumente bewerten lassen.
Im #link(<discussion>, [_letzten Kapitel der Arbeit_]) wird zusätzlich diskutiert, inwiefern die Logik für politische Bildung im allgemeinen und Medienkompetenz im speziellen nützlich ist.

= Deduktive gültige Argumente

Um die Qualität politischer Argumente zu bewerten, ist es hilfreich, das Konzept der deduktiven Gültigkeit in der Logik zu verstehen.
Ein Argument gilt genau dann als deduktiv gültig, wenn die Konklusion aus den Prämissen folgt. @beckermann2011[vgl.&21]
Die Wahrheit der Prämissen muss die Wahrheit der Konklusion garantieren. @beckermann2011[vgl.&20]
Wenn es sich bei einem Argument also um ein deduktiv gültiges Argument handelt, ist keine Welt denkbar, in der die Prämissen wahr sind, aber die Konklusion falsch.
Es ist dabei, für die deduktive Gültigkeit, egal ob die Prämissen tatsächlich wahr sind, es geht ausschließlich um den Zusammenhang zwischen den Prämissen und der Konklusion. @beckermann2011[vgl.&21-22]

Das folgende Argument könnte Benutzt werden, um für Steuersenkungen für Reiche zu argumentieren, wie es Beispielweise die US Regierung unter Bush getan hat. @bartels2005[vgl.&15] @lupia2007[vgl.&1-2] // TODO: add reference to fdp

#argument(
  (
    [Wenn von Steuersenkungen für Reiche die Gesamtwirtschaft profitiert, dann sind Steuersenkungen für Reiche eine gute Maßnahme.],
    [Von Steuersenkungen für Reiche profitiert die Gesamtwirtschaft.]
  ),
  [Steuersenkungen für Reiche sind eine gute Maßnahme.]
)

Die erste Prämisse des Arguments ist ein Konditional, sie besteht aus zwei Teilen, dem Antezedens und dem Konsequens. @beckermann2011[vgl.&150-152] @krimphove2012[vgl.&55-58]
// TODO: welche artikel für antezedens und konsequens?
Das Antezedens ist der Erste Halbsatz der Premisse, er beginnt hier mit "Wenn".
Die Konsequens ist der zweite Halbsatz, er beginnt hier mit "dann".
Das Antezedens ist die Bedingung, die erfüllt sein muss, damit die Konsequens wahr ist.
Die Konsequens ist die Schlussfolgerung, die aus dem Antezedens folgt.
Die zweite Prämisse ist eine Aussage, die die Wahrheit der Konsequens der ersten Prämisse behauptet.
Wenn das Konditional der ersten Prämisse wahr ist und die zweite Prämisse wahr ist, dann ist auch die Wahrheit der Konsequens der ersten Prämisse garantiert.
Die Konklusion hat den gleichen Inhalt wie das Konsequens der ersten Prämisse, die Wahrheit der Prämissen garantiert demnach auch die Wahrheit der Konklusion.
Das Argument hat sich als deduktiv gültig erwiesen.

Ohne viel fachsprachliches Vokabular erklärt, es ist keine Welt denkbar, in der Beide Prämissen des Arguments wahr sind, die Konklusion aber falsch, also ist das Argument ein deduktiv Gültiges.

Zu beachten ist hier wieder, dass bei einem deduktiv gültigen Argument die Wahrheit der Prämissen nicht garantiert ist. @beckermann2011[vgl.&21-22]
Gültigkeit kann also nicht die einzige Eigenschaft sein, die ein Argument haben muss, um überzeugend zu sein, dafür ist die Wahrheit der Prämissen ebenso entscheidend, in der Logik wird diese Eigenschaft von Argumenten Stichhaltigkeit genannt. @krimphove2012[vgl.&8]
Wenn bei einem deduktiv gültigen Argument die Prämissen wahr sind, so handelt es sich um ein Stichhaltiges Argument. @beckermann2011[vgl.&22]

Bei dem vorliegenden Argument besteht wissenschaftlich begründeter Zweifel an der Wahrheit der zweiten Prämisse. @hope2022[vgl.&555]
Es ist also mindestens fraglich, ob es sich bei dem Argument um ein stichhaltiges Argument handelt, was die Überzeugungskraft des Arguments deutlich schmälert.

// Es ist offensichtlich, dass die Konklusion aus den Prämissen folgt, die Wahrheit der Prämissen garantiert die Wahrheit der Konklusion.
// Das Argument hat sich erneut als deduktiv gültig erwiesen.

// wenn die Struktur des Arguments so beschaffen ist, dass, falls die Prämissen wahr sind, die Konklusion notwendigerweise wahr sein muss. Mit anderen Worten, die Wahrheit der Prämissen garantiert die Wahrheit der Schlussfolgerung.

// Das bedeutet nicht, dass die Prämissen selbst tatsächlich wahr sein müssen; es geht vielmehr um die Beziehung zwischen den Prämissen und der Schlussfolgerung. Wenn die Prämissen wahr sind und die Schlussfolgerung falsch ist, ist das Argument nicht deduktiv gültig.

= Induktive gültige Argumente

Weniger stark als die deduktive Gültigkeit ist die induktive Gültigkeit.

Ein Argument gilt als induktiv gültig, wenn die Wahrheit der Prämissen die Wahrheit der Konklusion wahrscheinlich macht als die ihre Negation.

= Logik in politischer Bildung und Medienkompetenz <discussion>

Spätestens in den letzten Jahren ist die Bedeutung von Medienkompetenz auch für die breite Bevölkerung deutlich geworden. @mason2018[vgl.&6]
Im Englischen als "Fake News" bekannt gewordene, Falschinformationen zeigten sich den Demokratien der Welt als einflussmächtiges Instrument um Wahlen im speziellen und die öffentliche Meinung im allgemeinen zu beeinflussen. @greifeneder2020[vgl.&1-3] @eleftheriadi-zacharaki2022[vgl.&145-146]
Genauere Analysen der Wahlen in Deutschland 2017 und den USA 2016 haben gezeigt, dass die Verbreitung von Falschinformationen, insbesondere über soziale Medien, zu genau diesem Zweck lange nicht mehr nur theoretisch existiert und das vorallem schaffen von Problembewusstsein in der Bevölkerung eine sinnvolle Massnahme ist, um Einflussnahme von außen einzugrenzen. @kaiser2017[vgl.&446-447]
Die Fähigkeit, Falschinformationen zu erkennen und zu entlarven ist eine relevanter Teil der Medienkompetenz, die in der Schule vermittelt werden sollte. @eikenbusch2018[vgl.&6-9] @kaiser2017[vgl.&59]
Es braucht jedoch nicht unbedingt Faschinformationen, um Menschen von Positionen zu überzeugen, die ihren eigenen Interessen oder werten widersprechen, z.B. auch rhetorisch geschickte Argumente können dies leisten.
Sich gegen solche Argumente zu wappnen ist ebenfalls wichtig, um sich nicht von Positionen überzeugen zu lassen, die den eigenen Interessen oder Werten entgegestehen.
Besonders hier, kann die Logik als Werkzeug dienen, um Argumente tiefer zu analysieren.

In den abschnitten zur deduktiven und induktiven Gültigkeit wurden bereits einige Beispiele für Argumente gegeben, die in der politischen Debatte vorkommen und wie sich diese bewerten lassen.
Ein argument ist deduktiv gültig, dann stellt es sich auch noch durch weitere recherche als stichhaltik heraus, ein sehr gutes argument, das überzeugen darf.
Es ist induktiv gültig, so sollte es weniger überzeugend sein als ein stichhaltiges, aber immer noch Überzeugungskraft zugesprochen bekomme.
Wohingegen Argumente, die einen logischen fehlschluss enthalten oder nicht gültig sind, schnell als fragwürdig entlarvt werden können.
Solche Argumente

= Fazit

= Ausblick
