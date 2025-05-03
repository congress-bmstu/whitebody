#import "notes.typ": (
  notes,
  todo,
  centerchapter,
  includepdf,
  theorem,
  theorem_,
  THEOREM,
  THEOREM_,
  proof,
  proposition,
  proposition_,
  PROPOSITION,
  PROPOSITION_,
  lemma,
  lemma_,
  LEMMA,
  LEMMA_,
  corollary,
  corollary_,
  COROLLARY,
  COROLLARY_,
  definition,
  definition_,
  DEFINITION,
  DEFINITION_,
  example,
  example_,
  EXAMPLE,
  EXAMPLE_,
  remark,
  remark_,
  REMARK,
  REMARK_,
  note,
  note_,
  NOTE,
  NOTE_,
  algo,
  algo_,
  ALGO,
  ALGO_,
  claim,
  claim_,
  CLAIM,
  CLAIM_,
  question,
  question_,
  QUESTION,
  QUESTION_,
  axiom,
  axiom_,
  AXIOM,
  AXIOM_,
)
#import "@preview/cetz:0.3.2"


#show: notes.with(author: "Andrey", title: "Test note")

#outline()
#centerchapter("Шаблон для кайфа")

== Красивые блоки кода
Используется плагин: #underline(link("https://typst.app/universe/package/codly")[codly])
```python
def xi_from_epsilon(epsilon):
    global DANO_N, DANO_sigma, DANO_alpha, DANO_beta
    xi = [epsilon[0],
          epsilon[0] + epsilon[1] * (1 + DANO_alpha * epsilon[0])]
    for i in range(2, DANO_N):
        xi.append( xi[i-1] + epsilon[i] *
                  (1 + DANO_alpha*epsilon[i-1] + DANO_beta*epsilon[i-2]) )
    return xi
```
// вот так код из файла:
// #raw(read("notes.typ"), lang: "typ", block: true)

== Окружения
Есть тудушка
#todo[#lorem(10)]<todo>

Есть куча окружений, каждое из которых в 4 вариациях
#theorem(title: "Название теоремы можно указать здесь")[Нумерованное простое]
#theorem_[Ненумерованное простое]
#THEOREM[Нумерованное *выделенное*]<123>
#THEOREM_[Ненумерованное *выделенное*]
#proof[
  #lorem(10)
  Уравнениям автоматически добавляются номера, если на них ссылаются: @det @dt @et
  $ a^2+b^2=c^2 $
  $ D=b^2-4 a c $<det>
  $ D=b^2-4 a c $<dt>
  $ a^2+b^2=c^2 $
  $ D=b^2-4 a c $<et>
]
= 123

#pagebreak()
#theorem(title: "Пифагора ")[
  В прямоугольном треугольнике квадрат длины гипотенузы равен сумме квадратов длин катетов. Формула теоремы Пифагора:
  $ a^2 + b^2 = c^2, $
  где $a,b$ -- катеты, $c$ -- гипотенуза.
  #figure(
    cetz.canvas(
      {
        import cetz.draw: *
        // Your drawing code goes here
        line((0, 0), (0, 2), name: "a")
        line((0, 0), (1, 0), name: "b")
        line((1, 0), (0, 2), name: "c")
        content("a.centroid", [$a$], anchor: "east", padding: 0.1)
        content("b.centroid", [$b$], anchor: "north", padding: 0.1)
        content("c.centroid", [$c$], anchor: "west", padding: 0.1)
      },
      length: 3em,
    ),
    caption: [Иллюстрация теоремы Пифагора],
  )
]
#proof[
  Построим отрезок равный $a$ на продолжении катета $b$. Из полученной точки $M$ опустим перпендикуляр равный $b$. Достроим полученную фигуру до трапеции, см. @pythagoras_proof.
  #figure(
    cetz.canvas(
      {
        import cetz.draw: *
        // Your drawing code goes here
        line((0, 0), (0, 2), name: "a")
        line((0, 0), (1, 0), name: "b")
        line((1, 0), (0, 2), name: "c")
        content("a.centroid", [$a$], anchor: "east", padding: 0.1)
        content("b.centroid", [$b$], anchor: "north", padding: 0.1)
        content("c.centroid", [$c$], anchor: "west", padding: 0.1)
        line((1, 0), (3, 0), name: "a'")
        content("a'.centroid", [$a$], anchor: "north", padding: 0.1)
        content("a'.end", [$M$], anchor: "west", padding: 0.1)
        line((3, 0), (3, 1), name: "b'")
        content("b'.centroid", [$b$], anchor: "west", padding: 0.1)
        line((1, 0), (3, 1), name: "c'")
        content("c'.centroid", [$c$], anchor: "south", padding: 0.1)
        line((0, 2), (3, 1))
      },
      length: 3em,
    ),
    caption: [Иллюстрация теоремы Пифагора],
  )<pythagoras_proof>
  Площадь полученной трапеции равняется сумме площадей трёх треугольников:
  $ S = (a b) / 2 + (a b) / 2 + (c^2) / 2 $<pythagoras_1>
  И в то же время по формуле площади трапеции (полусумма оснований на высоту):
  $ S = (a+b) / 2 dot (a+b) $<pythagoras_2>
  Из @pythagoras_1 и @pythagoras_2 следует, что:
  $ (a b) / 2 + (a b) / 2 + (c^2) / 2 = (a+b) / 2 dot (a+b) arrow.r.double a^2 + b^2 = c^2 $
]
#pagebreak()

Ссылки выглядят так:
+ @123 (номер раздела, номер теоремы)
+ @todo (номер раздела, номер уравнения)

#ALGO[123]

