import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:monobox/injection_container.dart';

import '../../../../config/themes/colors.dart';
import '../../../../config/themes/styles.dart';
import '../../../../core/widgets/rounded_container.dart';
import '../bloc/pages/pages_bloc.dart';

@RoutePage()
class AboutPaymentsPage extends StatefulWidget {
  const AboutPaymentsPage({super.key});

  @override
  State<AboutPaymentsPage> createState() => _AboutPaymentsPageState();
}

class _AboutPaymentsPageState extends State<AboutPaymentsPage> {
  late PagesBloc pagesBloc;

  @override
  void initState() {
    pagesBloc = getIt<PagesBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // pagesBloc.state.mapOrNull(
    //   initial: (value) => pagesBloc.add(const PagesEvent.getPage('payment')),
    // );
    return BlocProvider.value(
      value: pagesBloc..add(const PagesEvent.getPage('payment')),
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.white.withOpacity(.05),
              blurRadius: 8.0,
              offset: const Offset(
                0.0,
                4.0,
              ),
            )
          ],
        ),
        child: AppBar(
          elevation: 0.0,
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          titleSpacing: 0,
          leadingWidth: (32 + 16),
          leading: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => context.popRoute(),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 17.33,
                      height: 12.67,
                      child: SvgPicture.asset(
                        'assets/icons/arrow_back_android.svg',
                        width: 17.33,
                        height: 5,
                        colorFilter: const ColorFilter.mode(
                          AppColors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocBuilder<PagesBloc, PagesState>(
                  builder: (context, state) {
                    return Text(
                      state.maybeWhen(
                        orElse: () => 'Об оплате',
                        success: (page) => page.title,
                      ),
                      style: AppStyles.headline.copyWith(height: 1),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
  ) {
    return SingleChildScrollView(
      child: BlocBuilder<PagesBloc, PagesState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Container(),
            loading: () => const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            ),
            success: (page) => Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                RoundedContainer(
                  child: HtmlWidget(page.content),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          );
        },
      ),
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          RoundedContainer(
            header: Text(
              'Способы оплаты',
              style: AppStyles.headline,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Мы принимаем:\nНаличные\nФизические банковские карты\nОнлайн оплата с помощью систем Мир, Visa, Mastercard\nСБП (система быстрых платежей)',
                  style: AppStyles.body.copyWith(
                    color: AppColors.darkGray,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Оформить заказ можно через приложение Monobox, наш сайт monobox.app, или по номеру +7 924 348-95-43.',
                  style: AppStyles.body.copyWith(
                    color: AppColors.darkGray,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 84,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: AppColors.superLight,
                        ),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Порядок проведения операций с использованием карт в интернет-магазинах',
                        style: AppStyles.headline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  '''
Порядок проведения операций с использованием карт в интернет-магазинах

1. Перечень карт
Указан выше, в данном разделе в пункте «Банковской картой».

2. Контактные телефоны
Поддержка по вопросам работы программного и аппаратного обеспечения СПЭП:
+7 963 136-92-22
Телефоны банка (решение организационных, финансовых и иных вопросов):
+7 495 500-55-50

Держатель карты обращается на сайт Интернет-магазина и формирует заказ на оплату товара/услуг, подтверждает условия оформления заказа (наименование товаров, способ доставки, выбор средства оплаты, сумма платежа) и выбирает в качестве средства оплаты банковскую карту.
Проведение операций оплаты товаров/услуг с использованием банковских карт в сети Интернет осуществляется с применением 3DSecure технологий.
Интернет-магазин обрабатывает заказ и создаёт запрос в СПЭП на регистрацию заказа Держателя карты. В запросе Интернет-магазина передаётся набор данных о заказе-описание заказа, сумма, обратные адреса, на которые необходимо возвращать Держателя карты в случае успешного и в случае неуспешного платежа, и др. В случае успешной регистрации заказа СПЭП возвращает уникальный номер заказа в Интернет-магазин.
Интернет-магазин осуществляет переадресацию Держателя карты на платёжную страницу СПЭП, на которой отображаются параметры платежа, также предлагается ввести реквизиты карты. Держатель карты выбирает тип карты, которой он будет расплачиваться, и вводит информацию о параметрах своей карты:
тип карты;
номер карты;
дату окончания срока действия карты;
имя и фамилию, как указано на карте;
начения CVC2 или CVV2;
подтверждает своё согласие оплатить заказ вводом специального пароля. Специальный пароль представляет собой цифровую/буквенно-цифровую последовательность, однозначно идентифицирующую клиента как Держателя карты. Проверка специального пароля обеспечивается банком-эмитентом.

Провайдер услуг проверяет корректность формата вводимых параметров карты и осуществляет дополнительные процедуры аутентификации Держателя карты в соответствии с международными стандартами (3DSecure) и передаёт запрос на авторизацию операции в банк.
Банк проверяет право Интернет-магазина провести операцию в соответствии с регистрацией и проводит авторизацию операций в установленном соответствующими международными платёжными системами порядке.
При получении отрицательного результата авторизации банк отправляет уведомление об отказе в СПЭП, который, в свою очередь, передаёт данную информацию Интернет-магазину и Держателю карты с указанием причин отказа.
При получении положительного результата авторизации банк передаёт в СПЭП подтверждение положительного результата авторизации операции. СПЭП одновременно передаёт подтверждения положительного результата проводимой авторизации операции в Интернет-магазин и Держателю карты.
После получения подтверждения о положительном результате авторизации Интернет-магазин оказывает услугу (осуществляет работу, отпускает товар) Держателю карты.
Обработка успешно авторизованных операций осуществляется автоматически не позднее следующего рабочего дня за днём совершения операции

3. Отмена операции оплаты товаров/услуг в сети Интернет
В случае если после проведения операции оплаты товара/услуг с использованием карты в сети Интернет возникла необходимость её отмены (Держатель карты отказался от заказа и т.п.) Интернет-магазин может провести отмену операции. Отмена операции осуществляется до проведения банком процедуры закрытия дня (до 23:59 часов Московского времени дня совершения операции) в соответствии с «Руководством по использованию аппаратно-программного комплекса электронной коммерции».
Для отмены операции после проведения банком процедуры закрытия дня необходимо заполнить «Заявку на отмену операции» по форме приложения № 5 к настоящему Договору и предоставить её в банк.
Описание процесса передачи данных
Для оплаты (ввода реквизитов вашей карты) вы будете перенаправлены на платёжный шлюз ПАО Сбербанк. Соединение с платёжным шлюзом и передача информации осуществляется в защищённом режиме с использованием протокола шифрования SSL. В случае если ваш банк поддерживает технологию безопасного проведения интернет-платежей Verified By Visa или Mastercard SecureCode, для проведения платежа также может потребоваться ввод специального пароля. Настоящий сайт поддерживает 256-битное шифрование. Конфиденциальность сообщаемой персональной информации обеспечивается ПАО Сбербанк. Введённая информация не будет предоставлена третьим лицам за исключением случаев, предусмотренных законодательством РФ. Проведение платежей по банковским картам осуществляется в строгом соответствии с требованиями платёжных систем Мир, Visa Int. и Mastercard Europe Sprl.''',
                  style: AppStyles.body.copyWith(
                    color: AppColors.darkGray,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Город разбит на цветные сектора, стоимость доставки зависит от сектора.',
                  style: AppStyles.body.copyWith(
                    color: AppColors.darkGray,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
