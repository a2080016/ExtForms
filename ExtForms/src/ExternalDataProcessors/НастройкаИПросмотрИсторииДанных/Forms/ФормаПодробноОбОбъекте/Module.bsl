
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)

	ЗаполнитьЗначенияСвойств(ЭтаФорма, Параметры.ПараметрыИсторииДанных);

	ОбъектМетаданныхИмя = Параметры.ПараметрыИсторииДанных.Раздел + "."
		+ Параметры.ПараметрыИсторииДанных.Имя;
	ОбъектМетаданныхСиноним = Параметры.ПараметрыИсторииДанных.Раздел + " "
		+ Параметры.ПараметрыИсторииДанных.Синоним;

	Если ИспользованиеИсторииДанныхПредставление = "Включена" Тогда
		ИспользованиеИсторииДанныхПредставление = "Включена";
	ИначеЕсли ИспользованиеИсторииДанныхПредставление = "Отключена" Тогда
		ИспользованиеИсторииДанныхПредставление = "Отключена";
	Иначе
		Если НастройкиИсторииДанныхКонфигуратор = "НеИспользовать" Тогда
			ИспользованиеИсторииДанныхПредставление = "Отключена";
		Иначе
			ИспользованиеИсторииДанныхПредставление = "Включена";	
		КонецЕсли;
	КонецЕсли;
	
	СреднееКоличествоВерсийНаОбъект = КоличествоВерсий / ?(КоличествоОбъектов=0, 1, КоличествоОбъектов);

КонецПроцедуры

#КонецОбласти


#Область ОбработчикиСобытийЭлементовФормы



#КонецОбласти


#Область ОбработчикиКомандФормы



#КонецОбласти


#Область СлужебныеПроцедурыИФункции


#КонецОбласти
