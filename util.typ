#let emptysign = [#overline(text(size: 8pt, baseline: 3pt, [(Подпись, дата)]), extent: 1cm)]
#let annotate(..args) = {
  box(place(..args))
  sym.wj
  h(0pt, weak: true)
}
#let check_person(person, person_type) = {
  if person_type == "студента" {
    if type(person) != dictionary {
      panic("Данные " + person_type + " задаются dictionary с ключами group и name. Полученный тип: " + type(person))
    }
  } else {
    if type(person) != dictionary {
      panic("Данные " + person_type + " задаются dictionary с ключами role и name. Полученный тип: " + type(person))
    }
  }
  if person_type == "студента" {
    if not person.keys().contains("group") { panic("Вы не задали поле group у " + person_type) }
  } else {
    if not person.keys().contains("role") { panic("Вы не задали поле role у " + person_type) }
  }
  if not person.keys().contains("name") { panic("Вы не задали поле name у " + person_type) }
}
