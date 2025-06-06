#import "notes.typ": *
#import "@preview/cetz:0.3.2"
#import "titlepage.typ": *
#import "@preview/cetz-plot:0.1.1": *

#show math.lt.eq: math.lt.slant
#show math.gt.eq: math.gt.slant

#show: notes.with(author: "Andrey", title: "Теория игр и исследование операций ДЗ 1")

#align(
  center,
  text(17pt)[
    *МАТЕМАТИЧЕСКОЕ МОДЕЛИРОВАНИЕ*
    \
    *ВОПРОСЫ К ЭКЗАМЕНУ*
  ],
)
\
\

// TODO: не работают подписи к картинкам

#outline()

#pagebreak()

// Билет 1

= Сформулируйте основные положения системной динамики Форресора.
+ *Фокус на обратных связях*

  Системы рассматриваются через призму *петель обратной связи* (положительных и отрицательных), которые определяют их поведение. Положительные обратные связи усиливают изменения, а отрицательные - стабилизируют систему.

+ *Динамическое моделирование*

  Акцент на изучении *изменений системы во времени*, а не на статическом анализе. Модели описываются дифференциальными уравнениями, отражающими накопление (запасы) и перемещение ресурсов (потоки).

+ *Структура определяет поведение*

  Поведение системы обусловлено её внутренней структурой (взаимосвязями элементов), а не внешними воздействиями. Для изменения результатов необходимо модифицировать структуру, а не только параметры.

+ *Запасы и потоки*

  Основные элементы модели:
  - *Запасы* (аккумуляторы) - величины, накапливающие ресурсы (например, население, капитал).
  - *Потоки* - процессы, изменяющие запасы (рождаемость, инвестиции).

+ *Нелинейность и задержки*

  Учитываются *нелинейные зависимости* и *временные задержки* в системе, которые часто приводят к неочевидным последствиям и колебаниям.

+ *Эндогенный подход*

  Причины поведения системы ищутся внутри неё, а не во внешних факторах. Внешние воздействия рассматриваются как часть общей структуры.

+ *Компьютерное моделирование*

  Для анализа используются имитационные модели, позволяющие тестировать сценарии и прогнозировать долгосрочные эффекты решений. Пример - модель "Мировая динамика" Форрестера, изучающая глобальные процессы.

+ *Применение в междисциплинарных областях*

  Методология применяется в управлении, экономике, экологии, урбанистике и других сферах для решения сложных проблем с множеством взаимосвязанных факторов.

Системная динамика Форрестера помогает понять, как сложные системы эволюционируют, и находить точки воздействия для достижения желаемых изменений.

= Приведите пример модели построенной по принципам системной динамики.
SIR-модель - классический пример, иллюстрирующий принципы системной динамики. Она описывает распространение инфекционного заболевания в популяции и включает:


*1. Основные элементы (запасы и потоки):*
- *Запасы (уровни):*
  - *S (Susceptible)* - здоровые, восприимчивые к болезни.
  - *I (Infected)* - зараженные, распространяющие инфекцию.
  - *R (Recovered)* - выздоровевшие или умершие (невосприимчивые).
- *Потоки:*
  - *Заражение* - переход из S в I (зависит от контактов между S и I).
  - *Выздоровление* - переход из I в R (определяется средней длительностью болезни).

*2. Обратные связи:*
- *Положительная обратная связь:*
  Чем больше зараженных (I), тем выше скорость заражения (S $->$ I), что приводит к экспоненциальному росту I.

- *Отрицательная обратная связь:*
  Уменьшение числа восприимчивых (S) и рост выздоровевших (R) снижают скорость заражения, стабилизируя систему.

*3. Динамические уравнения:*
Модель описывается системой дифференциальных уравнений:
- $(d S) / (d t) = - beta dot S dot I$ (убыль восприимчивых),
- $(d I) / (d t) = beta dot S dot I - gamma dot I$ (рост зараженных минус выздоровевшие),
- $(d R) / (d t) = gamma dot I$ (прирост выздоровевших),

где:
- $beta$ --- коэффициент заражения,
- $gamma$ --- скорость выздоровления.

*4. Нелинейность и задержки:*
- *Нелинейность:* Скорость заражения зависит от произведения $S dot I$ (нелинейная зависимость).
- *Задержки:* Время между заражением и выздоровлением создает инерцию в системе (например, пик эпидемии возникает позже момента введения карантина).

*5. Пример поведения системы:*
- Начальный рост числа зараженных (I) из-за положительной обратной связи.
- После достижения "иммунного порога" (когда S становится мало) эпидемия затухает (отрицательная обратная связь).
- Результат: кривая эпидемии (пик и спад), которую можно предсказать с помощью моделирования.

*6. Практическое применение:*
- Прогнозирование развития эпидемий (например, COVID-19).
- Оценка эффекта мер: карантин (снижение $beta$), вакцинация (увеличение $R$), лечение (увеличение $gamma$).

*Иллюстрация принципов Форрестера:*
- *Структура (S-I-R + связи)* определяет динамику эпидемии.
- *Эндогенные факторы:* Распространение зависит от внутренних взаимодействий, а не только от внешних условий.
- *Компьютерное моделирование:* Решение уравнений позволяет строить графики и тестировать сценарии.

Эта модель демонстрирует, как системная динамика помогает анализировать сложные процессы через взаимодействие элементов системы.

= Множества Жулиа.
*Множества Жулиа* — это фрактальные структуры, возникающие при изучении итераций комплексных функций. Они названы в честь французского математика *Гастона Жулиа*, который исследовал их в 1910-х годах. Эти множества демонстрируют удивительную сложность и бесконечную детализацию, характерные для фракталов.

*Основные понятия:*
1. *Определение:*
  Множество Жулиа для комплексной функции $f(z)$ (чаще всего $f(z)=z^2+c$) — это множество точек $z$ в комплексной плоскости, для которых последовательность итераций $z, f(z), f(f(z)), f(f(f(z))),...$ *не стремится к бесконечности*.
  - Точки, остающиеся ограниченными, принадлежат множеству Жулиа.
  - Точки, "убегающие" в бесконечность, — не принадлежат.

2. *Параметр $c$:*
  Каждому значению комплексной константы $c$ соответствует своё уникальное множество Жулиа. Например:
  - При $c = 0$: $f(z) = z^2$, множество Жулиа — окружность радиуса 1.
  - При $c \neq 0$: возникают сложные фрактальные формы (например, "кролик" или "морской конёк").

*Как строится множество Жулиа?*
1. *Алгоритм:*
  - Для каждой точки $z$ в комплексной плоскости проверяют, как быстро последовательность $z, f(z), f(f(z)), ...$ превышает некоторый радиус (например, 2).
  - Точки, для которых последовательность остаётся ограниченной, окрашиваются в чёрный цвет (множество Жулиа).
  - Остальные точки раскрашиваются в зависимости от скорости "убегания".

2. *Пример функции:*
  Для $f(z) = z^2 + c$:
  - Итерация: $z_(n+1) = z_n^2 + c$.
  - Если $|z_n| > 2$, точка считается "убежавшей".


*Связь с множеством Мандельброта:*
- *Множество Мандельброта* — это множество всех параметров $c$, для которых соответствующее множество Жулиа *связно* (не распадается на отдельные части).
- Каждая точка на множестве Мандельброта соответствует уникальному множеству Жулиа. Например:
  - Если $c$ лежит внутри Мандельброта, Жулиа связно.
  - Если $c$ вне Мандельброта, Жулиа превращается в "пыль" (несвязное множество).

#figure(
  placement: auto,
  image("images/julia.png", width: 70%),
  caption: [Примеры множеств Жулиа],
)

*Свойства множеств Жулиа:*
1. *Фрактальность:*
  Обладают самоподобием — увеличение фрагмента повторяет структуру целого.
2. *Граница хаоса:*
  Граница множества Жулиа — область динамической неустойчивости, где малые изменения начальных условий приводят к кардинально разному поведению.
3. *Симметрия:*
  Для $f(z) = z^2 + c$ множества Жулиа симметричны относительно начала координат.
4. *Квадратичные и не только:*
  Хотя классические примеры используют $z^2 + c$, аналогичные множества можно построить для других функций (например, $z^3 + c$).


= Свойства хаотического отображения. Приведите примеры.
*Хаотическое отображение* — это дискретная динамическая система,
демонстрирующая хаотическое поведение, которое характеризуется высокой
чувствительностью к начальным условиям, сложной структурой и кажущейся
случайностью, несмотря на детерминированность. Такие отображения часто
описываются простыми математическими формулами, но порождают крайне
сложные траектории.

*Основные свойства хаотических отображений:*
<основные-свойства-хаотических-отображений>
+ *Чувствительность к начальным условиям* \
  Даже микроскопические различия в начальных точках экспоненциально
  нарастают со временем, делая долгосрочное предсказание невозможным
  эффект бабочки. \
  _Пример:_ Расхождение траекторий в логистическом отображении при
  малом изменении начального значения.

+ *Перемешивание (Mixing)* \
  Траектории системы со временем «забывают» начальное состояние и
  равномерно заполняют фазовое пространство. \
  _Пример:_ Поведение частиц в турбулентном потоке.

+ *Плотность периодических орбит* \
  В любой окрестности точки в фазовом пространстве существуют
  периодические орбиты \(траектории, которые возвращаются в исходную
  точку). \
  _Пример:_ Логистическое отображение при параметре \( r \= 4 ).

+ *Детерминированность* \
  Система описывается точными уравнениями без случайных элементов, но её
  эволюция выглядит стохастической. \
  _Пример:_ Отображение Эно \(Hénon map).

+ *Наличие странного аттрактора* \
  Траектории системы стремятся к множеству сложной фрактальной
  структуры, которое притягивает их, но не является периодическим. \
  _Пример:_ Аттрактор Лоренца \(для непрерывных систем), аттрактор
  Эно \(для дискретных).


*Примеры хаотических отображений:*
1. *Логистическое отображение*
<логистическое-отображение>
Формула: \
$ x_(n+1) = r x_n (1 - x_n) $
где $r$ — параметр роста. \
- При $r$ начинается хаос периоды бесконечно удлиняются. \
- При $r = 4$ : Полностью хаотический режим с чувствительностью к начальным условиям.

#figure(
  placement: auto,
  image("images/Logistic_Bifurcation_map_High_Resolution.png", width: 80%),
  caption: [
    Логистическое отображение
  ],
)

2. *Стандартное отображение \(Standard map)*
<стандартное-отображение-standard-map>
Формула: \
$
  cases(
    p_(n+1) = p_n + K sin(theta_n), \
    theta_(n+1) = (theta_n + p_{n+1}) mod 2 pi
  )
$
где $K$ — параметр хаоса.

При $K > 5$ : Фазовое пространство заполняется хаотическими траекториями.

3. *Tent map \(«палаточное» отображение)*
<tent-map-палаточное-отображение>
Формула: \
$
  x_(n+1) = cases(
    mu x_n\, "if" x_n < 0.5, \
    mu (1 - x_n)\, "otherwise"
  )
$
где $mu in [1,2]$. \
- При $mu=2$: Максимальный хаос с равномерным распределением точек.

*Применение хаотических отображений:*
<применение-хаотических-отображений>
- *Криптография:* Генерация псевдослучайных чисел для шифрования.
  \
- *Физика:* Моделирование турбулентности, динамики частиц в
  ускорителях. \
- *Биология:* Анализ популяционной динамики, сердечных ритмов. \
- *Экономика:* Прогнозирование нелинейных процессов на рынках.

*Почему это важно?* \
Хаотические отображения показывают, как сложное поведение может
возникать из простых правил, что меняет наше понимание природы
случайности и предсказуемости. Например, погодные модели или колебания
численности видов в экосистемах часто описываются такими системами.

// Билет 2
= *Период малых колебаний в системе Вольтерра:*
Линеаризация системы около нетривиального равновесия $(x^*, y^*) = (gamma / delta, alpha / beta)$ приводит к уравнениям:
$ eta'' + alpha gamma eta = 0 $, где $eta$ — отклонение численности.
Период колебаний:
$ T = (2 pi) / (sqrt(alpha gamma)) $,
где $alpha$ — коэффициент рождаемости жертв, $gamma$ — смертность хищников.

= *Средняя численность жертвы за период:*
Для исходной системы Вольтерра $ dot(x) = x(alpha - beta y) , dot(y) = y(-gamma + delta x) $,
среднее значение $ dash(x) = gamma / delta $ (равно координате равновесия). Это следует из интегрирования $integral_0^T x(t) d t / T$, так как колебания симметричны около $x^*$.

= *Кривая Пеано:*
Непрерывная сюръективная функция $ f: [0,1] -> [0,1] times [0,1] $, полностью заполняющая квадрат.
Свойства:
1. Самоподобие: каждый сегмент кривой содержит уменьшенную копию всей кривой.
2. Топологическая размерность 1, хаусдорфова размерность 2.
3. Недифференцируема (всюду «изломанная» структура).
4. Построение: рекурсивное разбиение отрезка на 9 частей и их геометрическое преобразование.

= *Система итерированных функций (IFS):*
Конечный набор сжимающих отображений $ {f_i: X -> X} $ задающих фрактал как инвариантное множество.
Примеры:
1. *Канторово множество:*
  $f_1(x) = x / 3$, $f_2(x) = x / 3 + 2 / 3$ (коэффициент сжатия 1/3).
2. *Снежинка Коха:*
  $f_1(z) = z / 3$, $f_2(z) = z / 3 e^{i pi / 3} + 1 / 3$, $f_3(z) = z / 3 e^{-i pi / 3} + 1 / 2 + i sqrt(3) / 6$.

// Билет 3
= *Модель конкуренции без самолимитирования:*
Система Лотки-Вольтерра для двух видов:
$ dot(x) = x(r_1 - a_1 y),quad dot(y) = y(r_2 - a_2 x) $,
где $r_1, r_2$ — скорости роста, $a_1, a_2$ — коэффициенты конкуренции.

= *Фазовый портрет:*
1. Нуль-изоклины:
  - $dot(x) = 0$: $x = 0$ или $y = r_1 / a_1$,
  - $dot(y) = 0$: $y = 0$ или $x = r_2 / a_2$.
2. Равновесия:
  - $(0,0)$ (неустойчивый узел),
  - $(r_2 / a_2, r_1 / a_1)$ (седло),
  - оси координат (устойчивы при $r_i < 0$).
3. Траектории: гиперболы, стремящиеся к осям (выживает один вид).

= *Пыль Кантора:*
Фрактал, получаемый рекурсивным удалением средней трети отрезка.
Свойства:
1. Совершенное множество: замкнутое и без изолированных точек.
2. Несвязное: между любыми точками есть разрыв.
3. Лебегова мера нуль: сумма длин удалённых интервалов равна 1.
4. Мощность континуума: эквивалентна отрезку [0,1].

= *Фрактальная размерность канторовой пыли:*
По формуле Хаусдорфа: $D = log N / log(1 / s)$,
где $N = 2$ (число частей), $s = 1 / 3$ (масштабный коэффициент).
$ D = log(2) / log(3) approx 0.6309 $.

// Билет 4
= *Прямое разложение уравнения $u'' + u + epsilon u^3 = 0$:*
Метод возмущений (Линдштедт-Пуанкаре):
1. Замена $tau = omega t$, $omega = 1 + epsilon omega_1 + ...$.
2. Разложение $u(t) = u_0(tau) + epsilon u_1(tau) + ...$.
3. Решение нулевого порядка: $u_0 = A cos(tau + phi)$.
4. Устранение секулярных членов в $u_1$ даёт $omega_1 = -3A^2 / 8$.
Итог:
$ u(t) approx A cos(omega t + phi) + epsilon (A^3 / 32)(cos(3omega t + phi) - 3 cos(omega t + phi)) $.

= *Фрактальная размерность:*
Мера, описывающая заполнение пространства. Определения:
1. *Хаусдорфова:* $dim_H X = inf { d >= 0 : H^d(X) = 0 }$,
  где $H^d$ — d-мерная мера Хаусдорфа.
2. *Бокс-каунтинг:* $dim_B X = lim_{epsilon -> 0} log N(epsilon) / log(1 / epsilon)$,
  где $N(epsilon)$ — минимальное число кубов размера $epsilon$, покрывающих X.

= *Система итерированных функций:*
См. билет 2.

= *СИФ для ковра Серпинского:*
8 аффинных преобразований с коэффициентом сжатия 1/3:
$ f_1(x,y) = (x / 3, y / 3) $
$ f_2(x,y) = (x / 3 + 1 / 3, y / 3) $
$ f_3(x,y) = (x / 3 + 2 / 3, y / 3) $
$ f_4(x,y) = (x / 3, y / 3 + 1 / 3) $
$ f_5(x,y) = (x / 3 + 2 / 3, y / 3 + 1 / 3) $
$ f_6(x,y) = (x / 3, y / 3 + 2 / 3) $
$ f_7(x,y) = (x / 3 + 1 / 3, y / 3 + 2 / 3) $
$ f_8(x,y) = (x / 3 + 2 / 3, y / 3 + 2 / 3) $
(Центральный квадрат удаляется на каждой итерации.)

// Билет 5

= Дискретные отображения. Положение равновесия. Критерий его устойчивости.

Дискретное отображение задается правилом $x_(n + 1) = f(x_n)$, где $x_n$ --- состояние системы в момент $n$, а $f$ --- функция определяющая динамику.

Состояние $x^*$, которое не меняется при применении дискретного отображения назвается положением равновесия: $x^* = f(x^*)$

_Критерий устойчивости._ Если $abs(f'(x^*)) < 1$.

= Универсальность Фейгенбаума.

Это фундаментальное свойство нелинейных динамических систем, описывающее единые закономерности перехода от порядка к хаосу через каскад бифуркаций удвоения периода в широком классе дискретных отображений.

Честно хз что еще тут писать, тип какие-то константы нашел, которые для разных систем одинаковые $delta$ и $alpha$ --- скорость сходимости параметров бифуркаций и масштабный множитель для расстояний между ветвями аттрактора, соответственно.

Дальше я ни\*\*\я не понял, как думаю и БТ.

= Найдите равновесные решения уравнения $\ (d u) / (d t) = (9 - mu u) (mu + 7 u - u^2) (mu + u - u^2) ((mu - 10)^2 + (u - 3)^2 - 4)$.

В равновесии скорость изменения равна нулю, $(d x) / (d t) = 0$. Потому приравняем правую часть к нулю.

$
  (9 - mu u) (mu + 7 u - u^2) (mu + u - u^2) ((mu - 10)^2 + (u - 3)^2 - 4) = 0
$

Решения:
#list(
  [$u_1 = 1 / 2 (1 - sqrt(4 mu + 1)), mu >= - 1 / 4$],
  [$u_2 = 1 / 2 (1 + sqrt(4 mu + 1)), mu >= - 1 / 4$],
  [$u_3 = 1 / 2 (7 - sqrt(4 mu + 49)), mu >= - 49 / 4$],
  [$u_4 = 1 / 2 (7 + sqrt(4 mu + 49)), mu >= - 49 / 4$],
  [$u_5 = 3 - sqrt(- mu^2 + 20 mu - 96), 8 <= mu <= 12$],
  [$u_6 = 3 + sqrt(- mu^2 + 20 mu - 96), 8 <= mu <= 12$],
  [$u_7 = 9 / mu, mu cancel(=) 0$],
)

\
Также у Тани в билете встречалось очень похожее:
$
  (d u) / (d t) = (9 - mu u) (mu + 7 u - u^2) (mu + u - u^2) ((mu - 10)^2 + (u - 3)^2 - 1)
$

Приложу ее решения:

#figure(image("images/image-5.png", width: 80%))


= Исследовать устойчивость равновесных решений уравнения $(d u) / (d t) = (9 - mu u) (mu + 7 u - u^2) (mu + u - u^2) ((mu - 10)^2 + (u - 3)^2 - 4)$.

Для проверки на устойчивость надо взять производную от правой части по $u$, при дефференцировании у нас будет оставаться только слагаемое, из которого получен рассматриваемый корень. Рассмотрю для примера $u_7 = 9 / mu$, а остальное по аналогии, потому что лениво.

$
  f'(u_7) = - mu (mu + 7 u - u^2) (mu + u - u^2) ((mu - 10)^2 + (u - 3)^2 - 4)
$

Подставляем $u = 9 / mu$:
$
  f'(9 / mu, mu) = - mu dot (mu + 63 / mu - 81 / mu^2) (mu + 9 / mu - 81 / mu^2) ((mu - 10)^2 + (9 / mu - 3)^2 - 4)
$

Т.о. _методом пристального взгляда_:
+ Если $mu > 0$, то $f' < 0$ $=>$ устойчиво
+ Иначе, $f' > 0$ $=>$ неустойчиво

Аналогично, анализируем, когда и при каких $u$-шках значения производной больше/меньше нуля. Это и будет исследование устойчивости.

\
Также у Тани в билете встречалось очень похожее:
$
  (d u) / (d t) = (9 - mu u) (mu + 7 u - u^2) (mu + u - u^2) ((mu - 10)^2 + (u - 3)^2 - 1)
$

Приложу ее решения:

#figure(image("images/image-4.png", width: 80%))

// Билет 6

= Модели одной популяции --- Мальтуса, Ферхюльста, Капицы.
\
*1. Модель Мальтуса (Экспоненциальный рост)*:
$
  (d N) / (d t) = r N,
$
где #list(
  [$N(t)$ --- численность популяции],
  [$r = b - d$ --- удельная скорость роста ($b$ --- рождаемость, $d$ --- смертность).],
)

Решение:
$
  N(t) = N_0 e^(r t)
$

*2. Модель Ферхюльста (Логистический рост)*

$
  (d N) / (d t) = r N (1 - N / K),
$
где #list([$K$ --- ёмкость среды (максимальная численность при данных ресурсах)])

Решение:
$
  N(t) = K / (1 + ((K - N_0) / N_0) e^(-r t))
$

Пример: Динамика бактерий в чашке Петри.

\
*3. Модель Капицы*

$
  (d N) / (d t) = r(t) N (1 - N / (K(t))),
$
где #list([$r(t)$ и $K(t)$ --- изменяющиеся параметры (рождаемость и ёмкость среды)])

= Свойства моделей одной популяции --- Мальтуса, Ферхюльста, Капицы.

*1. Мальтуса*:
#list(
  [Бесконечный рост при $r > 0$ (не учитывает ограниченность ресурсов)],
  [Применяется только на коротких временных интервалах.],
)

*2. Ферхюльста*:
#list(
  [Рост замедляется при приблежении к $K$],
  [$S$-образная кривая (сигмоида)],
  [Учитывает внутривидовую конкуренцию],
)

*3. Капицы*:
Выделяют три фазы роста
#list(
  [Доклассическая: высокая рождаемость и смертность],
  [Переходная: снижение смертности $->$ взрывной рост],
  [Современная: снижение рождаемости $->$ стабилизация],
)

= Что такое множество Мандельброта?

Это фрактальное множество на комплексной плоскости, определяемое как множество точек $c in CC$, для которых последовательность итераций:
$
  z_(n + 1) = z_n^2 + c, "при" z_0 = 0
$
остается ограниченной при $n -> infinity$. Это один из самых известных фракталов, открытый Бенуа Мандельбротом в 1980 году.

Раскрытое для каждой точки $c$ на комплексной плоскости описание
$
  c &= x + i dot y,
  \
  z_0 &= 0,
  \
  z_1 &= z_0^2 + c \
  &= x + i y,
  \
  z_2 &= z_1^2 + c = \
  &= (x + i y)^2 + x + i y = \
  &= x^2 + 2 i x y - y^2 + x + i y = \
  &= x^2 - y^2 + x + (2 x y + y) i, \
  z_3 &= z_2^2 + c = dots
$
и так далее.

= Свойства множества Мандельброта.

Множество Мандельброта является связным, это следует из того что оно является пересечением вложенных связных компактных множеств. Однако неизвестно, является ли оно локально связным.

Число итераций для любой точки в построении множества очень близко к логарифму электрического потенциала, который возникает, если зарядить множество Мандельброта. Точнее предел $ln(ln(abs(z_n)) / 2^n) + "const"$ совпадает с этим потенциалом.

// Билет 7

= Модели клеточных автоматов.

Вообще есть классификация Вольфрама, но DeepSeek мне написал классификацию по размерности и принципам каким-то, поэтому я решил написать обе этих классификаций.

Классификация Вольфрама (по типам поведения):
#list(
  [*Класс 1.* Результатом эволюции начальных условий является быстрый переход к гомогенной стабильности. Любые негомогенные конструкции быстро исчезают],
  [*Класс 2.* Результатом начальных условий является быстрый переход в неизменяемое негомогенное состояние либо возникновение циклической последовательности. Большинство структур начальных условий быстро исчезает, но некоторые остаются. Локальные изменения в начальных условиях оказывают локальный характер на дальнейший ход эволюции системы],
  [*Класс 3.* Результатом почти всех начальных условий являются псевдо-случайные, хаотические последовательности. Любые стабильные структуры, которые возникают почти сразу же уничтожаются окружающим их шумом. Локальные изменения в начальных условиях оказывают неопределяемое влияние на ход эволюции системы],
  [*Класс 4.* Результатом эволюции являются структуры, которые взаимодействуют сложным образом с формированием локальных устойчивых структур. В результате эволюции могут получаться некоторые последовательности Класса 2, описанного выше. Локальные изменения в начальных условиях оказывают неопределяемое влияние на ход эволюции системы. Некоторые клеточные автоматы этого класса обладают свойством универсальности по Тьюрингу, что доказано для правила игры "Жизнь"],
)
\
\
Вариант DeepSeek))

1. Одномерные клеточные автоматы

Структура:
#list(
  [Клетки расположены в линию],
  [Каждая клетка имеет два соседа (левый и правый)],
)
\
Правила:

Состояния клетки на следующем шаге зависит от её текущего состояния и состояний соседей.
\
\

2. Двумерные клеточные автоматы

Структура:
#list(
  [Клетки образуют сетку],
  [Соседи определяются по окрестности (фон Неймана или Мура)],
)

Примеры: Игра "Жизнь" Конвея, модель распространения лесных пожаров.

3. Трехмерные и многомерные КА

Применение: Моделирование физических процессов (диффузия, кристаллизация), биологические системы (рост тканей).
\
\
4. Вероятностные клеточные автоматы

Переходы можду состояниями задаются вероятностью.

Примеры: Модель эпидемий, диффузионные процессы.
\
\
5. Гибридные и нестандартные КА

#list(
  [Неоднородные КА: разные правила для разных клеток],
  [КА с памятью: состояние зависит от предыдущих шагов],
  [Квантовые: Состояния описываются суперпозицией],
)

= Агентные модели на основе роевого интеллекта. Приведите примеры.

Роевой интеллект ---- это децентрализованное коллективное поведение простых агентов, взаимодействующих через локальные правила. Агентные модели на его основе применяются для решения сложных задач оптимизации, управления и моделирования.

Примеры:
#list(
  [Классические примеры:

    a. Алгоритм муравьиной колонии. Суть: Моделирование поведения муравьев, оставляющих феромонные следы. Применение: оптимизация маршрутов, логистика и планирование цепей поставок.

    b. Алгоритм роя частиц. Суть: агенты движутся в пространстве решений, корректируя скорость на основе личного и коллективного опыта. Применение: оптимизация нейронных сетей, настройка параметрво в инженерии.

    c. Алгоритм пчелиной колонии. Суть: имитация поведения пчел-сборщиц, разведчиков и наблюдателей. Применение: кластеризация данных, распределенные вычисления.
  ],
  [Прикладные примеры моделей:

    a. Модель поведения стаи птиц. Правила: сближение, выравнивание, разделение. Применение: анимация в кино, моделирование толпы;

    b. Роевое управление роботами. Пример: Координация дронов без центрального управления. Задачи: поиск и спасение, доставка грузов;

    c. Оптимизация трафика. Модель: агенты-транспортные средства, выбирающие маршруты на основе данных соседей. Результат: Снижение заторов на 20-30%.
  ],
)

= Дайте определение сжимающего отображения.
Сжимающее отображение --- отображение метрического пространства в себя, уменьщающее расстояние между любыми точками в некотором сильном смысле.

Пусть на метрическом пространстве $(MM, d)$ определенно отображение $A: MM -> MM$ оно называется сжимающим на $MM$, если существует такое неотрицательное число $alpha < 1$, что для любых двух точек $x, y in MM$ выполняется неравенство
$
  d(A x, A y) <= alpha d(x, y).
$
Число $alpha$ часто называют коэффициентом сжатия.

= Пусть $f(x) = cos(x)$. Показать, что для любого $x$ при $0 < x < pi / 2$, $f(x)$ --- сжимающее отображение $[0, x]$.

Рассмотрим отрезок $[0, x]$, где $0 < x < pi / 2$.

Вычислим производню: $f'(x) = - sin(x)$.

На интервале $(0, pi / 2)$:
#list(
  [$sin(x)$ возрастает от $0$ до $1$],
  [$f'(x) = - sin(x) in (-1, 0)$],
  [Модуль производной: $abs(f'(x)) = sin(x)$],
)

По теореме Лагранжа о среднем значении, для любых $x_1, x_2 in [0, x]$ существует $c in (x_1, x_2)$ такое, что:
$
  abs(f(x_1) - f(x_2)) = abs(f'(c)) dot abs(x_1 - x_2) = sin(c) dot abs(x_1 - x_2)
$

Поскольку $c in (0, x)$ и $x < pi / 2$, то:
$
  sin(c) < sin(x) < 1.
$

Т.о.:
$
  abs(f(x_1) - f(x_2)) <= sin(x) dot abs(x_1 - x_2), "где" sin(x) < 1.
$

Так как $sin(x) < 1$ при $x in (0, pi / 2)$, отображение является сжимающим с коэффициентом $q = sin(x)$.

Вывод:
Функция $f(x) = cos(x)$ удовлетворяет условию сжимающего отображения на $[0, x]$ для любого $0 < x < pi / 2$, так как:
#list(
  [$abs(f'(c)) = sin(c) < sin(x) < 1$ для всех $c in (0, x)$],
  [Неравенство $abs(f(x_1) - f(x_2)) <= sin(x) abs(x_1 - x_2)$ выполняется.],
)



// Билет 8

= Напишите модель демографического процесса в дискретном времени (модель Лесли).

Модель Лесли --- это матричная модель, описывающая динамику возрастной структуры популяции за дискретные промежутки времени (напримеры, годы). Основные элементы:
#list(
  [Возрастные группы: $x_1(t), x_2(t), dots, x_n(t)$, где $x_i(t)$ --- численность $i$-й возрастной группы в момент $t$],
  [Выживаемость: $p_i$ --- вероятность перехода из группы $i$ в группу $i + 1$],
  [Рождаемость: $f_i$ --- среднее число потомков от одной особи $i$-й группы],
)

Матрица Лесли:
$
  L = mat(
    f_1, f_2, dots, f_(n - 1), f_n;
    p_1, 0, dots, 0, 0;
    dots, dots, dots, dots, dots;
    0, 0, dots, p_(n-1), 0
  )
$

Уравнение динамики:
$
  x(t + 1) = L dot x(t)
$
где $x(t) = (x_1(t), dots, x_n (t))^T$.

= Напишите модель демографического процесса в непрерывном времени (модель фон Фёстерра).

Модель фон Фёстера описывает популяцию с непрерывным возрастом $a$ и временем $t$:
#list(
  [Плотность популяции: $rho(a, t)$ --- число особей возраста $a$ в момент $t$;],
  [Смертность: $mu(a)$ --- возрастозависимый коэффициент;],
  [Рождаемость: $b(a)$ --- интенсивность рождения потомков.],
)

Уравнение:
$
  (partial rho) / (partial t) + (partial rho) / (partial a) = - mu(a) rho(a, t),
$
с граничными условиями:
#list(
  [Начальное распределение: $rho(a, 0) = rho_0 (a)$,],
  [Рождаемость: $rho(0, t) = integral_0^infinity b(a) rho(a, t) d a$.],
)

Решение методом характеристики:
$
  rho(a, t) = rho_0 (a - t) e^(- integral_0^t mu (a - t + s) d s), "если " a >= t,
  \
  rho(a, t) = rho(0, t - a) e^(- integral_0^a mu(s) d s), "если " a < t.
$

Упрощенный случай (экспоненциальный рост):
Если $mu(a) = mu, b(a) = b$, то:
$
  rho(a, t) = rho_0 e^(b t - mu a).
$

= Вычислить фрактальную размерность.

#figure(
  image("images/image.png", width: 50%),
  caption: ["Билет 8"],
)

$
  log(3) / log(2)
$

#figure(
  image("images/image-1.png", width: 50%),
  caption: ["Билет 11"],
)

$
  log(18) / log(6)
$

// Билет 9

= Приведите уравнения модели Осипова-Ланчестера 1-го и 2-го рода.

#figure(
  image("images/image-2.png", width: 70%),
  caption: ["Уравнения модели Осипова-Ланчестера и их интегралы"],
)

= Найти интегралы моделей Осипова--Ланчестера 1-го и 2-го рода.

См. предыдущий вопрос.

// Билет 10

= Сформулируйте при каких ограничениях в системе "хищник-жертва" А.Н. Колмогорова существуют предельные циклы $cases((d n_1) / (d t) = epsilon(n_1) n_1 - V(n_1) n_2, (d n_2) / (d t) = V(n_1) n_2)$.

#figure(image("images/image-3.png", width: 71%))


= Докажите существования предельного цикла в модели "хищник-жертва" А.Н. Колмогорова.

ХЗ (с) Таня.

// Билет 11

= Модель Вольтерра "хищник-жертва". Сформулируйте свойства этой математической модели.

#figure(image("images/image-6.png", width: 80%))

#figure(image("images/image-7.png", width: 75%))

= Получить интеграл модели "хищник-жертва" Вольтерра.

См. предыдущий вопрос.

// Билет 12

= Приведите уравнения модели Лоренца. Что такое странный аттрактор?

#figure(image("images/image-8.png", width: 85%))

= Докажите условия устойчивости $p$-кратного цикла одномерного дискретного отображения.

#figure(image("images/image-9.png", width: 65%))

#figure(image("images/image-10.jpg", width: 70%))

#figure(image("images/image-11.jpg", width: 83%))

#figure(image("images/image-12.png", width: 65%))
