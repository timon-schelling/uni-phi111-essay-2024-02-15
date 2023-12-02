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

Menschen, als teil der Gesellschaft, werden täglich mit Argumenten konfrontiert.
Sei es als teil des Politischen Diskurs, in Nachrichten, der Werbung oder im privaten Gespräch mit Freunden und Familie.
Von welchen Argumenten sollten wir uns überzeugen lassen und welche sollten wir ablehnen?
Es gibt verschiedene Ebenen auf denen sich Argumente bewerten lassen.
Argumente können literarisch wertvoll, originell oder auch rhetorisch geschickt sein.
In dieser Arbeit sollen allerdings allein Eigenschaften von Argumenten betrachtet werden, mit denen sich die Philosophische Disziplin der Logik beschäftigt, namentlich die Gültigkeit und die Stichhaltigkeit.
Im folgenden wird am Beispiel politischer Argumente eine Einführung in die Logik gegeben.
Fokus soll dabei auf der Logik as Werkzeug liegen, mit dem sich politische Argumente bewerten lassen liegen.

= Deduktive gültige Argumente

Um die Qualität politischer Argumente zu bewerten, ist es entscheidend, das Konzept der deduktiven Gültigkeit in der Logik zu verstehen.
Ein Argument gilt genau dann als deduktiv gültig, wenn die Konklusion aus den Prämissen folgt.
Die Wahrheit der Prämissen muss die Wahrheit der Konklusion garantieren.
Wenn es sich bei einem Argument also um ein deduktiv gültiges Argument handelt, ist keine Welt denkbar, in der die Prämissen wahr sind, aber die Konklusion falsch.
Es ist dabei egal ob die Prämissen tatsächlich wahr sind, es geht ausschließlich um den Zusammenhang zwischen den Prämissen und der Konklusion.

Das folgende Argument könnte Benutzt werden, um für Steuersenkungen für Reiche zu argumentieren, wie es Beispielweise die US Regierung unter Bush getan hat @bartels2005[vgl.&15], oder teile der FDP in Deutschland.
#argument(
  (
    [Wenn von Steuersenkungen für Reiche die Gesamtwirtschaft profitiert, dann sind Steuersenkungen für Reiche eine gute Maßnahme.],
    [Von Steuersenkungen für Reiche profitiert die Gesamtwirtschaft.]
  ),
  [Steuersenkungen für Reiche sind eine gute Maßnahme.]
)

// wenn die Struktur des Arguments so beschaffen ist, dass, falls die Prämissen wahr sind, die Konklusion notwendigerweise wahr sein muss. Mit anderen Worten, die Wahrheit der Prämissen garantiert die Wahrheit der Schlussfolgerung.

Das bedeutet nicht, dass die Prämissen selbst tatsächlich wahr sein müssen; es geht vielmehr um die Beziehung zwischen den Prämissen und der Schlussfolgerung. Wenn die Prämissen wahr sind und die Schlussfolgerung falsch ist, ist das Argument nicht deduktiv gültig.

- Einführung des Begriffs der Deduktiven Gültigkeit
  - Ein Argument ist deduktiv gültig, wenn die Konklusion aus den Prämissen folgt

- Zweites Beispiel eines politischen Arguments (deduktiv gültiges Argument)
  - Rekonstruktion des Arguments
    - Identifikation von Prämissen und Konklusion
    - Übersetzung in Standardform
  - Bewertung des Arguments
    - Erklärung der deduktiven Gültigkeit

- Einführung der Stichhaltigkeit
  - Ein Argument ist stichhaltig, wenn es deduktiv gültig ist und die Prämissen wahr sind
  - Referenz auf das zweite Beispiel
    - Erklärung warum das Argument aus dem zweiten Beispiel nicht Stichhaltig ist
    - Umformulierung des Arguments zu einem Stichhaltigen Argument, durch Änderung der Konklusion

= Induktive gültige Argumente

= Fazit

= Ausblick
