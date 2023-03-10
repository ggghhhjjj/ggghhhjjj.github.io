---
layout: post
title: "Колко далеч е хоризонтът?"
categories: геодезия
author:
- Авокадо
meta: "София"
---

| Височина [m]  | Хоризонт [km] | Къде се среща                                                                     |
|---------------|---------------|-----------------------------------------------------------------------------------|
| 1             | 3,57          |                                                                                   |
| 1,6           | 4,52          |                                                                                   |
| 1,8	        | 4,79	        |                                                                                   |
| 10	        | 11,29	        |                                                                                   |
| 20	        | 15,97	        |                                                                                   |
| 1345	        | 130,93	    | [м. Копитото, Витоша](https://bg.wikipedia.org/wiki/Копитото)                     |
| 2019	        | 160,41	    | [Кафе-панорама на кула Снежанка](https://bg.wikipedia.org/wiki/Снежанка_(връх))   |
| 2290	        | 170,84	    | [Черни Връх](https://bg.wikipedia.org/wiki/Черни_връх)                            |
| 2376	        | 174,02	    | [Връх Ботев](https://bg.wikipedia.org/wiki/Ботев_(връх))                          |
| 2914	        | 192,71	    | [Връх Вихрен](https://bg.wikipedia.org/wiki/Вихрен)                               |
| 2925,4	    | 193,09	    | [Връх Мусала](https://bg.wikipedia.org/wiki/Мусала)                               |
| 10000	        | 357,00	    | Пътнически самолет                                                                |

Видимото разстояние в километри до хоризонта приблизително равно на

<math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mi>L</mi><mo>=</mo><mn>3,57</mn><mo>×</mo><msqrt><mi>h</mi></msqrt></mrow><annotation encoding="application/x-tex">L = 3,57\sqrt{h}</annotation></semantics></math>

, където h e височината в метри, от която гледаме.

Например, ако гледаме от Черни връх, разположен на височина 2290m, то хоризонта приблизително ще виждаме на 171km, ако не пречеха планините.

<math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mn>3,57</mn><mo>×</mo><msqrt><mrow><mn>2290</mn></mrow></msqrt><mo>&asymp;</mo><mn>171</mn><mi>km</mi></mrow><annotation encoding="application/x-tex">3,57\sqrt{2290} &asymp; 171km</annotation></semantics></math>

![Схема видимост от Черни връх]({{ site.baseurl }}/assets/2022-04-22-how-far-horizon/black-peak.jpg "Видимост от Черни връх")

Човек, с височина 1,7 m от кея в Бургас, висок около 4,3 m ще вижда приблизително 8 км навътре в морето и остров Св. Анастасия ще се вижда (ако не отчитаме оптичните изкривявания на въздуха).

<math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mn>3,57</mn><mo>×</mo><msqrt><mrow><mn>5</mn></mrow></msqrt><mo>&asymp;</mo><mn>8</mn><mi>km</mi></mrow><annotation encoding="application/x-tex">3,57\sqrt{5} &asymp; 8km</annotation></semantics></math>

Ако гледа от плажа, то ще вижда хоризонта на около 4,7 км и остров Св. Анастасия не би трябвало да се вижда (ако няма оптично изкривяване от въздуха).

<math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><mn>3,57</mn><mo>×</mo><msqrt><mrow><mn>1,7</mn></mrow></msqrt><mo>&asymp;</mo><mn>4,7</mn><mi>km</mi></mrow><annotation encoding="application/x-tex">3,57\sqrt{1,7} &asymp; 4,7km</annotation></semantics></math>


![Схема видимост от бургаския кей]({{ site.baseurl }}/assets/2022-04-22-how-far-horizon/burgas.jpg "Видимост от бургаския кей")

## Защо е така?

[Радиусът на Земята](https://bg.wikipedia.org/wiki/Земен_радиус) е между 6378 km (на екватора) и 6357 km (на полюсите) или средно около 6371 км.

![Схема на земни радиуси](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/WGS84_mean_Earth_radius.svg/220px-WGS84_mean_Earth_radius.svg.png "Земни радиуси")
![Схема на далечина на хоризонта](https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/GeometricDistanceToHorizon.png/600px-GeometricDistanceToHorizon.png "Далечина на хоризонта")

Прилагаме [теоремата на Питагор](https://bg.wikipedia.org/wiki/Питагорова_теорема)

<math xmlns="http://www.w3.org/1998/Math/MathML"><msup><mi>R</mi><mn>2</mn></msup><mo>+</mo><msup><mi>d</mi><mn>2</mn></msup><mo>=</mo><msup><mrow><mo>(</mo><mrow><mi>R</mi><mo>+</mo><mi>h</mi></mrow><mo>)</mo></mrow><mn>2</mn></msup></math>

<math xmlns="http://www.w3.org/1998/Math/MathML"><msup><mi>d</mi><mn>2</mn></msup><mo>=</mo><mn>2</mn><mo>⁢</mo><mi>R</mi><mo>⁢</mo><mi>h</mi><mo>+</mo><msup><mi>h</mi><mn>2</mn></msup>
</math>

Сравнена с радиуса на Земята (*6371 км*), височината *h* е хиляди пъти по-малка. Например, най-високят връх е около 8 км, което е 0,0012 част от радиуса. Следователно, второто събираемо може да бъде пренебрегнато. Оценка на грешката ще направим след това.

<math xmlns="http://www.w3.org/1998/Math/MathML"><msup><mi>d</mi><mn>2</mn></msup><mo>&asymp;</mo><mn>2</mn><mo>⁢</mo><mi>R</mi><mo>⁢</mo><mi>h</mi>
</math>

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>&asymp;</mo><msqrt><mn>2</mn><mo>⁢</mo><mi>R</mi><mo>⁢</mo><mi>h</mi></msqrt>
</math>

Заместване радиуса

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>&asymp;</mo><msqrt><mn>2</mn><mo>⁢x</mo><mi>6371</mi><mo>⁢</mo><mi>h</mi></msqrt>
</math>

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>&asymp;</mo><mn>113</mn><mo>×</mo><msqrt><mi>h</mi></msqrt>
</math>

В получената формула *h* трябва да се задава в километри. Това не е удобно. Нека приведем към метри, като ги делим на 1000.

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>&asymp;</mo><mn>113</mn><mo>×</mo><msqrt><mfrac><mi>h</mi><mn>1000</mn></mfrac></msqrt>
</math>

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>&asymp;</mo><mfrac><mn>113</mn><msqrt><mn>1000</mn></msqrt></mfrac><mo>×</mo><msqrt><mi>h</mi></msqrt>
</math>

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>&asymp;</mo><mn>3,57</mn><mo>×</mo><msqrt><mi>h</mi></msqrt>
</math>

Където *h* е височината в метри, от която гледаме, а *d* е далечината на хоризонта в километри.

## Каква е грешката?

Пренебрегнахме едно от събираемите, защото приносът му бе твърде малък към далечината на хоризонта. Нека оценим разликата между истинската стойност и приближената.

<math xmlns="http://www.w3.org/1998/Math/MathML"><mi>d</mi><mo>-</mo><mover><mi>d</mi><mo>‾</mo></mover><mo>=</mo><msqrt><mn>12,742</mn><mo>⁢</mo><mi>h</mi><mo>+</mo><mfrac><msup><mi>h</mi><mn>2</mn></msup><mn>1000000</mn></mfrac></msqrt><mo>-</mo><mn>3,57</mn><mo></mo><msqrt><mi>h</mi></msqrt>
</math>

| Височина [m]  |	Далечина [km]   |	Далечина без събираемото [km]   |	Грешка [km]	| Относителна грешка [%]    |
|---------------|-------------------|-----------------------------------|---------------|---------------------------|
|1	            |3,57               |3,570	                            |-0,0004        |-0,0114%                   |
|2290           |170,83             |170,839                            |-0,0041        |-0,0024%                   |
|8000	        |319,37	            |319,311	                        |0,0639	        |0,0200%                    |
|16000	        |451,81	            |451,573	                        |0,2320	        |0,0514%                    |
|32000	        |639,35	            |638,621	                        |0,7287	        |0,1140%                    |
|39054	        |706,51	            |705,506	                        |1,0000	        |0,1415%                    |
|64000	        |905,31	            |903,146	                        |2,1623	        |0,2388%                    |
|128000	        |1283,50	        |1277,242	                        |6,2532	        |0,4872%                    |
|256000	        |1824,14	        |1806,293	                        |17,8473	    |0,9784%                    |
|512000	        |2605,00	        |2554,484	                        |50,5204	    |1,9394%                    |

![Графика на относителната грешка]({{ site.baseurl }}/assets/2022-04-22-how-far-horizon/error.jpg "Oтносителната грешка")

Гледайки от височина 8км, хоризонтът е на разстояние 319 km и 370 m. Формулата с пренебрегнатото събираемо дава грешка 64 m, което е 0,02% от разстоянието.

При 512 км височина грешката е 1,9% (50 km), когато видимостта на хоризонта е на разстояние 2605 km.
