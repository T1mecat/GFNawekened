# GFNawekened

# Котятки, всё упало. 
# Еще один сайт пал смертью храбрых и больше не отвечает на запросы(в этот раз, его просто не проплатили на хероку, там теперь всё платное, ага)

# Готовлю патч, переезжаем на новый сервис (приложение официально теперь принадлежит к цыганам) и ускоряю всё что можно ускорить. 
# С новым сервисом вещь будет опознаваться не 2-3 секунды, а менее чем за одну ❤️ 

# Крепитесь и ожидайте, вечером - утром уже будет готово. 

Позволяет изспользовать Awakened PoE Trade, https://github.com/SnosMe/awakened-poe-trade через GeForce NOW.

Реализовано большинство функций, не работают всякие сортировки и я пока не придумал, как могу это поправить. Но все оценщиики и проверяльщики - к вашим услугам.

Перед использованием нужно сделать всего два шага. Ниже всё показано и рассказано <3

Дискорд для вопросов и помощи: https://discord.gg/vFGybQ3Jze

Поблагодарить и проспонсировать улучшение проекта: https://www.donationalerts.com/r/time_cat или https://donate.qiwi.com/payin/Timecat

# ПОДГОТОВКА STEAM

Заходим в PoE через стим (аккаунты из стандартного лаунчера прекрасно себя там чувствуют) и в игре, в любом месте, открываем Steam оверлей(Shift + TAB).

Нажимаем на кнопку "НАСТРОЙКИ"

![Awakened_PoE_Trade_Pu2CY03hSI](https://user-images.githubusercontent.com/58136226/196454626-955916bf-a5b1-47c8-b1a8-52f2a2f6acfd.jpg)

Тут, на вкладке "БРАУЗЕР", меняем значение в указанной строке на `http://dontfile.com/"любые английские буквы и цифры, без этих кавычек"`.

Я использую собственный никнейм: `http://dontfile.com/timecat`

Нажимаем "ОК".

Теперь, нажимаем на кнопку вызова браузера

![image](https://user-images.githubusercontent.com/58136226/196455469-0529cfa2-19d1-480c-8752-acedfad3b64b.png)

Белая страничка сайта должна красоваться в вашем стим оверлее. Лучше развернуть её на весь экран, но достаточно, что-бы поле ввода было в середине вашего монитора. Оставляем её в покое и просто закрываем оверлей (Shift + TAB).

![Awakened_PoE_Trade_5HuN2cRJA7](https://user-images.githubusercontent.com/58136226/196455725-f4bdf264-3053-4142-bab3-ed09cd5b5769.png)

# ПОДГОТОВКА Awakened PoE Trade

Поетрейд по умолчанию открывается ТОЛЬКО в PoE и совершенно неумеет реагировать на ту же игру но в GFN.

Научим его.

Открываем Awakened PoE Trade и в трее нажимаем на него правой кнопкой мыши.

Нажимаем "Open logs folder"

![DfNkLOc8Hh](https://user-images.githubusercontent.com/58136226/196456536-416a8167-0800-4446-9daa-5e44eb9f7c4d.png)

В папке нас интересует "config.json"

Жмём по нему правой кнопкой мыши и открываем с помощью блокнота

Ищем строку "windowTitle": "Path of Exile",

![image](https://user-images.githubusercontent.com/58136226/196457152-e4a6ff07-23fe-4f5d-874d-0d00265607a9.png)

И меняем Path of Exile на Path of Exile в GeForce NOW

![image](https://user-images.githubusercontent.com/58136226/196457353-50a476eb-68a5-402d-9d91-dac9154196f5.png)

ПЕРЕЗАПУСКАЕМ Awakened PoE Trade

Теперь поетрейд знает об игре и готов на неё смотреть. 

В игре, при запущенном Awakened PoE Trade нажимаем Shift + Пробел и попадаем в настройки.

Нажимаем на шестерёнку и назначаем функции на горячие клавиши как на этом скриншоте.

![Awakened_PoE_Trade_xlrZFFkvZ4](https://user-images.githubusercontent.com/58136226/197243550-89d80148-104c-4938-95f7-6db1d425b4d3.png)

Все функции указанные тут работают.

# ИСПОЛЬЗОВАНИЕ ПРОГРАММЫ

После подготовки, скачиваем .exe файл из последнего релиза программы: https://github.com/T1mecat/GFNawekened/releases

Браузер и винда будут ругаться, но они и на поетрейд ругаются, а для душевного спокойсвия прилагаю ссылку на вирустотал : https://www.virustotal.com/gui/url/0af3b5691a6b93571cff0dac08d1bbb253daabff82ff0f7ec728f21a170f870e

Открываем программу и в единственное доступное поле вписываем окончание ссылки, которое для себя выбрали.

![image](https://user-images.githubusercontent.com/58136226/196458220-35c6533f-fddc-41cd-9f2b-34881e98c660.png)

![image](https://user-images.githubusercontent.com/58136226/196458278-c0b42b13-0509-41b7-8195-3619e6370754.png)

Нажимаем готово и всё уже работает. 

В игре наводим на предмет, нажимаем комбинацию из указанных на скриншоте ниже. (Пока не прикрутил переназначение горячих клавиш, но скоро сделаю.) И получаем оценку, переходим на вики или проверяем карту.

![Awakened_PoE_Trade_xlrZFFkvZ4](https://user-images.githubusercontent.com/58136226/197243728-ac572176-cb5c-4792-9af9-d76cc840dada.png)

# ССЫЛОЧКИ НА ПОХОЖУЮ РАБОТУ

Придумал и начал реализовывать всё это я около года назад, но всё останавливалось на подходящем сервисе для отправки данных. Мои версии программы работали, но о стабильности и удобстве настройки я даже не мог задуматься, ведь сторонний сервис просто вставлял палки в колёса. Использовал я https://cl1p.net и он внезапно стал платным, наложил квоты и вообще, работал так себе. Но сейчас я использую сервис, который используется в этом посте https://www.reddit.com/r/pathofexile/comments/vsk1jl/awakened_poe_trade_on_geforce_now/ . В России он стал работать недавно и он тоже не самый стабильный, но хотя-бы работает.

Программа делает буквально то же самое и отличается незначительно. 

У меня есть идеи по улучшению, но для этого мне нужно будет поднять собственный сервис обмена данными, а тратить деньги на проект для пары человек - не звучит как что-то очень интересное. Ссылочки на "поблагодарить" есть в самом начале. Если кто-то кинет в меня деньгами, я просто сделаю всё лучше.

Хе-хе, через месяц после всего этого, донтпад перестал адекватно сохранять данные. Теперь используем донтпад, немного разочарован в его интерфейсе, но теперь не использую никаких функций для поиска текста, просто сплитаю до нужного.

