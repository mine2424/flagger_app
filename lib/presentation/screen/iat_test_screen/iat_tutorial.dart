import 'package:flutter/material.dart';

import 'package:flagger_app/gen/assets.gen.dart';
import 'package:flagger_app/gen/colors.gen.dart';
import 'package:flagger_app/presentation/screen/iat_test_screen/iat_test_screen.dart';

class IatTutorial extends StatelessWidget {
  const IatTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'このような問題に答えてください',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: ColoredBox(
        color: AppColor.firstColor,
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetGenImage(
                      Assets.images.sampleIatPhoto.path,
                    ).provider(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              const Text(
                '条件',
                style: TextStyle(
                  color: AppColor.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                // ignore: lines_longer_than_80_chars
                '・どちらでもいいので、選択肢をタップしてください\n・選択肢の範囲にきまりはありません\n・制限時間が10秒で時間が経てば強制終了されます。\n・全10問です。',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: const Color.fromARGB(255, 50, 50, 50)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColor.secondColor,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (context) => IATTestScreen(),
            ),
          );
        },
        label: Text(
          '問題へ進む',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        icon: const Icon(
          Icons.skip_next,
          color: AppColor.accentColor,
        ),
      ),
      backgroundColor: AppColor.secondColor,
    );
  }
}
