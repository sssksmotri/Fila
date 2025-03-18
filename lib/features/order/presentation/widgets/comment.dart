import 'package:flutter/cupertino.dart';

import '../../../../config/themes/styles.dart';
import '../../../../core/widgets/rounded_container.dart';
import '../../../../core/widgets/text_area.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      header: Text(
        'Комментарий',
        style: AppStyles.headline,
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 16,
          ),
          TextArea(
            scrollPadding: EdgeInsets.only(bottom: 220),
            maxLines: 2,
            maxLength: 150,
            hintText: 'Напишите пожелания или пояснения\nк вашему заказу',
          ),
        ],
      ),
    );
  }
}
