#import "template/template.typ": *

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

Das folgende Argument könnte benutzt werden, um für Steuersenkungen für Reiche zu argumentieren, wie es beispielsweise die US-Regierung unter Bush getan hat. @bartels2005[vgl.&15] @lupia2007[vgl.&1-2]

#argument(
  (
    [Wenn von Steuersenkungen für Reiche die Gesamtwirtschaft profitiert, dann sind Steuersenkungen für Reiche eine gute Maßnahme.],
    [Von Steuersenkungen für Reiche profitiert die Gesamtwirtschaft.]
  ),
  [Steuersenkungen für Reiche sind eine gute Maßnahme.]
)

Die erste Prämisse des Arguments ist ein Konditional, sie besteht aus zwei Teilen, dem Antezedens und der Konsequenz. @beckermann2011[vgl.&150-152] @krimphove2012[vgl.&55-58]
Das Antezedens ist der erste Halbsatz der Prämisse, er beginnt hier mit "Wenn".
Die Konsequenz ist der zweite Halbsatz, er beginnt hier mit "dann".
Das Antezedens ist die Bedingung, die erfüllt sein muss, damit die Konsequenz wahr ist.
Die Konsequenz ist die Schlussfolgerung, die aus dem Antezedens folgt.
Die zweite Prämisse ist eine Aussage, die die Wahrheit der Konsequenz der ersten Prämisse behauptet.
Wenn das Konditional der ersten Prämisse wahr ist und die zweite Prämisse wahr ist, dann ist auch die Wahrheit der Konsequenz der ersten Prämisse garantiert.
Die Konklusion hat den gleichen Inhalt wie die Konsequenz der ersten Prämisse, die Wahrheit der Prämissen garantiert demnach auch die Wahrheit der Konklusion.
Das Argument hat sich als deduktiv gültig erwiesen.

Ohne viel fachsprachliches Vokabular erklärt, es ist keine Welt denkbar, in der beide Prämissen des Arguments wahr sind, die Konklusion aber falsch, also ist das Argument ein deduktiv Gültiges.

Zu beachten ist hier wieder, dass bei einem deduktiv gültigen Argument die Wahrheit der Prämissen nicht garantiert ist. @beckermann2011[vgl.&21-22]
Gültigkeit kann also nicht die einzige Eigenschaft sein, die ein Argument haben muss, um überzeugend zu sein, dafür ist die Wahrheit der Prämissen ebenso entscheidend, in der Logik wird diese Eigenschaft von Argumenten Stichhaltigkeit genannt. @krimphove2012[vgl.&8]
Wenn bei einem deduktiv gültigen Argument die Prämissen wahr sind, so handelt es sich um ein stichhaltiges Argument. @beckermann2011[vgl.&22]

Bei dem vorliegenden Argument besteht wissenschaftlich begründeter Zweifel an der Wahrheit der zweiten Prämisse. @hope2022[vgl.&555]
Es ist also mindestens fraglich, ob es sich bei dem Argument um ein stichhaltiges Argument handelt, was die Überzeugungskraft des Arguments deutlich schmälert.

= Induktive gültige Argumente

Weniger stark als die deduktive Gültigkeit ist die induktive Gültigkeit.

Ein Argument gilt als induktiv gültig, wenn die Wahrheit der Prämissen die Wahrheit der Konklusion wahrscheinlicher macht als die ihre Negation. @beckermann2011[vgl.&30-31]
Es ist also eine Welt denkbar, in der die Prämissen wahr sind, die Konklusion aber falsch.
Die Konklusion ist also nicht notwendigerweise wahr, wenn die Prämissen wahr sind.
Es ist auch möglich, die induktive Gültigkeit ohne die Verwendung von Wahrscheinlichkeiten zu definieren.
In einer solchen Definition sind Argumente genau dann induktiv gültig, wenn "es bei diesen Argumenten rational ist, die Konklusion für wahr zu halten, wenn alle Prämissen wahr sind, obwohl die Konklusion nicht logisch aus den Prämissen folgt". @beckermann2011[31]

Das folgende Argument könnte benutzt werden, um für die Einführung eines bedingungslosen Grundeinkommens zu argumentieren.

#argument(
  (
    [Wenn die Einführung eines bedingungslosen Grundeinkommens die Armut verringert, dann ist die Einführung eines bedingungslosen Grundeinkommens eine gute Maßnahme.],
    [Die Einführung eines bedingungslosen Grundeinkommens verringert meistens die Armut.]
  ),
  [Die Einführung eines bedingungslosen Grundeinkommens ist eine gute Maßnahme.]
)

Es handelt sich hier um eine nahezu identische Argumentstruktur, wie bei dem Beispiel Argumente aus dem Abschnitt zur deduktiven Gültigkeit.
Mit dem Unterschied, dass die zweite Prämisse den Antezedenz der ersten Prämisse nicht als wahr behauptet, sondern nur partiell bejaht, hier zuerkennen an dem Wort "meistens".
Die Konklusion ist also nicht notwendigerweise wahr, wenn die Prämissen wahr sind, es ist allerdings rational anzunehmen, dass die Konklusion wahr ist, wenn die Prämissen wahr sind.
Gleichermaßen ist die Konklusion, bei Wahrheit der Prämissen, wahrscheinlicher als ihre Negation.
Das Argument ist also induktiv gültig.

Ein induktiv gültiges Argument ist also weniger stark als ein deduktiv gültiges Argument, jedoch immer noch starker als ein ungültiges. @beckermann2011[vgl.&32]
Auch bei einem induktiv gültigen Argument ist die Wahrheit der Prämissen nicht garantiert, es ist also auch hier nicht die einzige Eigenschaft, die ein Argument haben muss, um überzeugend zu sein. @beckermann2011[vgl.&32]
Die Wahrheit der Prämissen ist auch hier entscheidend.

= Logik in politischer Bildung und Medienkompetenz <discussion>

Spätestens in den letzten Jahren ist die Bedeutung von Medienkompetenz auch für die breite Bevölkerung deutlich geworden. @mason2018[vgl.&6]
Im Englischen als "Fake News" bekannt gewordene Falschinformationen zeigten sich den Demokratien der Welt als einfluss mächtiges Instrument, um Wahlen im Speziellen und die öffentliche Meinung im Allgemeinen zu beeinflussen. @greifeneder2020[vgl.&1-3] @eleftheriadi-zacharaki2022[vgl.&145-146]
Genauere Analysen der Wahlen in Deutschland 2017 und den USA 2016 haben gezeigt, dass die Verbreitung von Falschinformationen, insbesondere über soziale Medien, zu genau diesem Zweck lange nicht mehr nur theoretisch existiert und das vor allem schaffen von Problembewusstsein in der Bevölkerung eine sinnvolle Maßnahme ist, um Einflussnahme von außen einzugrenzen. @kaiser2017[vgl.&446-447]
Die Fähigkeit, Falschinformationen zu erkennen und zu entlarven, ist ein relevanter Teil der Medienkompetenz, die in der Schule vermittelt werden sollte. @eikenbusch2018[vgl.&6-9] @kaiser2017[vgl.&59]
Es braucht jedoch nicht unbedingt Falschinformationen, um Menschen von Positionen zu überzeugen, die ihren eigenen Interessen oder Werten widersprechen, z.B. auch rhetorisch geschickte Argumente können dies leisten.
Sich gegen solche Argumente zu wappnen ist ebenfalls wichtig, um sich nicht von Positionen überzeugen zu lassen, die den eigenen Interessen oder Werten entgegenstehen.
Besonders hier, kann die Logik als Werkzeug dienen, um Argumente tiefer zu analysieren.
In den Abschnitten zur deduktiven und induktiven Gültigkeit wurden bereits einige Beispiele für Argumente gegeben, die in der politischen Debatte vorkommen und wie sich diese bewerten lassen.
Ein Argument ist deduktiv gültig, dann stellt es sich auch noch durch weitere Recherche als stichhaltig heraus, ein sehr gutes Argument, das überzeugen darf.
Es ist induktiv gültig, so sollte es weniger überzeugend sein als ein stichhaltiges, aber immer noch Überzeugungskraft zugesprochen bekomme.
Wohingegen Argumente, die einen logischen Fehlschluss enthalten oder auf andere Weise nicht gültig und stichhaltig sind, schnell als fragwürdig entlarvt werden können.
Die Logik ist also mindestens ein nützliches Werkzeug, um sich im politischen Diskurs zurechtzufinden.
Aus diesem Grund hat die Logik auch, außerhalb der Philosophie, für politischen Bildung eine Bedeutung.

= Fazit

= Ausblick

Ob und zu welchem Grad die Logik im Kontext der politischen Bildung vermittelt werden sollte, in welcher Form und in welchem Bildungsniveau, ist eine Frage, die den Umfang dieser Arbeit weit übersteigt. Es ist allerdings im Laufe dieser Arbeit klar geworden, dass sich Arbeit in diese Richtung anbietet.
