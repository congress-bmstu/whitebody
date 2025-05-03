#import "util.typ": annotate, emptysign
#let lineup_page(author, professor, normocontroller) = {
  align(center, text(weight: "bold", "СПИСОК ИСПОЛНИТЕЛЕЙ"))
  v(10pt)
  set text(size: 12pt)
  table(
    columns: (45%, 25%, 30%),
    stroke: none,
    inset: (x: 0pt, y: 1em),
    align: (left + horizon, center + bottom, center + bottom),
    [Руководитель курсовой работы,\
      #professor.role,\
      #none],
    emptysign,
    [#text(baseline: 4pt, professor.name)\
      #overline(text(size: 8pt, baseline: 3pt, [(И. О. Фамилия)]), extent: 1cm)],

    [Исполнитель,\
      студент группы #annotate(text(size: 8pt, baseline: 3pt, [(Группа)]), dy: 2pt, dx: 12pt)#underline(author.group)],
    emptysign,
    [#text(baseline: 4pt, author.name)\
      #overline(text(size: 8pt, baseline: 3pt, [(И. О. Фамилия)]), extent: 1cm)],

    [Нормоконтролёр,\
      #normocontroller.role],
    emptysign,
    [#text(baseline: 4pt, normocontroller.name)\
      #overline(text(size: 8pt, baseline: 3pt, [(И. О. Фамилия)]), extent: 1cm)],
  )
  pagebreak()
}
