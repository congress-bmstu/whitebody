#import "util.typ": annotate, emptysign
#let titlepage_header(faculty, department) = {
  table(
    columns: (20%, auto),
    inset: 5pt,
    align: center + horizon,
    stroke: none,
    image("bmstu-logo.svg"),
    par(spacing: 0.5em)[#text(size: 12pt)[
        Министерство науки и высшего образования Российской Федерации Федеральное государственное бюджетное образовательное учреждение высшего образования "Московский государственный технический университет имени Н.~Э.~Баумана (национальный исследовательский университет)" (МГТУ им. Н.~Э.~Баумана)
      ]],
  )
  line(length: 100%, stroke: 0.9mm)
  v(-2.5mm)
  line(length: 100%, stroke: 0.2mm)
  v(5mm)
  text(size: 12pt)[
    #set par(first-line-indent: 0pt)
    #par()[ФАКУЛЬТЕТ~~#underline([#faculty#box(width: 1fr, repeat(" "))])]

    #v(5mm)

    #par()[КАФЕДРА~~#underline([#department#box(width: 1fr, repeat(" "))])]
  ]
  v(15.8mm)
}

#let titlepage_mid_nirs(title) = {
  text(size: 18pt)[
    #align(center)[
      *РАСЧЕТНО--ПОЯСНИТЕЛЬНАЯ ЗАПИСКА*
      #v(5mm)
      _К НАУЧНО--ИССЛЕДОВАТЕЛЬСКОЙ РАБОТЕ_
      #v(5mm)
      _НА ТЕМУ:_

      _"#title"_
    ]
  ]
}

#let titlepage_mid_report(subject, task_type, title, variant) = {
  align(center)[
    #text(size: 18pt)[
      #text(weight: "bold", "ОТЧЕТ")
      #v(2mm)
      #if task_type != none [по #task_type]

      #if subject != none [по курсу "#subject"]
    ]
    #v(1cm)
    #text(size: 16pt)[
      #if title != none [_"#title"_]
      #v(5mm)
      #if variant != none [Вариант #variant]

    ]
  ]
}

#let author_line(author) = align(bottom)[
  #table(
    columns: (45%, 25%, 30%),
    stroke: none,
    inset: (x: 0pt, y: 0pt),
    align: (left + horizon, center, center),
    [Студент #annotate(text(size: 8pt, baseline: 3pt, [(Группа)]), dy: 2pt, dx: 12pt)#underline(author.group)],
    emptysign,
    [#text(baseline: 4pt, author.name)\
      #overline(text(size: 8pt, baseline: 3pt, [(И. О. Фамилия)]), extent: 1cm)],
  )
]
#let professor_line(role, professor) = align(bottom)[
  #table(
    columns: (45%, 25%, 30%),
    stroke: none,
    inset: (x: 0pt, y: 0pt),
    align: (left + horizon, center, center),
    role,
    [#overline(text(size: 8pt, baseline: 3pt, [(Подпись, дата)]), extent: 1cm)],
    [#text(baseline: 4pt, professor.name)\
      #overline(text(size: 8pt, baseline: 3pt, [(И. О. Фамилия)]), extent: 1cm)],
  )
]

#let titlepage(class, faculty, department, subject, task_type, title, variant, author, professor) = {
  set page(numbering: none)
  titlepage_header(faculty, department)
  if class == "nirs" {
    titlepage_mid_nirs(title)
  } else if class == "report" {
    titlepage_mid_report(subject, task_type, title, variant)
  }
  author_line(author)
  if class == "nirs" {
    professor_line([Руководитель НИР], professor)
  } else if class == "report" {
    professor_line([Преподаватель], professor)
  }
  v(14mm)
  align(center)[_#datetime.today().display("[year]") г._]
  pagebreak()
}
