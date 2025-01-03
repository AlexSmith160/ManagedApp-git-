﻿//++ task04 //-
&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	ЭтотОбъект.БазоваяЕдиницаИзмерения = ПолучитьБазовуюЕдиницуИзмерения();
	Если НЕ ЗначениеЗаполнено(ЭтотОбъект.БазоваяЕдиницаИзмерения) Тогда
		ЭтаФорма.Элементы.НадписьОшибкаПолученияБазовойЕдиницыИзмерения.Видимость = Истина;   
	Иначе
		ЭтаФорма.Элементы.НадписьОшибкаПолученияБазовойЕдиницыИзмерения.Видимость = Ложь;   
	КонецЕсли;
	
	ЭтаФорма.Элементы.ГруппаУстановкаЗначения.Видимость = НЕ ЭтаФорма.Элементы.НадписьОшибкаПолученияБазовойЕдиницыИзмерения.Видимость;
	
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьБазовуюЕдиницуИзмерения()

	Возврат Константы.БазоваяЕдиницаИзмерения.Получить();

КонецФункции

&НаКлиенте
Процедура ОшибкаПолученияБазовойЕдиницыИзмеренияНажатие(Элемент)  
	
	ОткрытьФорму("ОбщаяФорма.БазоваяЕдиницаИзмерения");
	
КонецПроцедуры
// task04 //