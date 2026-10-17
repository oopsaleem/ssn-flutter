import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/constants/app_const.dart';
import '../../../l10n/generated/l10n.dart';
import '../../../l10n/l10n.dart';
import '../../../settings/controllers/settings.dart';

class LanguagePickerWidget extends ConsumerWidget {
  const LanguagePickerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownSearch<LanguageModel>(
            selectedItem: L10n.supportedLanguages.firstWhere(
              (i) => i.isOfCode(ref.watch(Settings.localeProvider)!),
            ),
            items: (text, _) async => getData(text, context),
            onSelected: (value) =>
                ref.read(Settings.localeProvider.notifier).set(value?.code),
            compareFn: (i, s) => i.isEqual(s),
            popupProps: const PopupProps.dialog(
              disableFilter: true,
              showSelectedItems: true,
              showSearchBox: true,
              itemBuilder: _customPopupItemBuilderLanguages,
            ),
          ),
        ],
      ),
    );
  }

  List<LanguageModel> getData(String filter, BuildContext context) {
    if (filter.isEmpty) return L10n.supportedLanguages;

    final String lowerCaseFilter = filter.toLowerCase();
    return L10n.supportedLanguages.where((i) {
      return i.locName.toLowerCase().contains(lowerCaseFilter) ||
          i.enName.toLowerCase().contains(lowerCaseFilter) ||
          i.code.toLowerCase().contains(lowerCaseFilter) ||
          T
              .of(context)
              .localeLanguageWritten(i.enName)
              .toLowerCase()
              .contains(lowerCaseFilter);
    }).toList();
  }
}

Widget _customPopupItemBuilderLanguages(
  BuildContext context,
  LanguageModel model,
  bool isDisabled,
  bool isSelected,
) {
  return DecoratedBox(
    decoration: !isSelected
        ? const BoxDecoration()
        : BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            // borderRadius: BorderRadius.circular(5),
            color: Theme.of(context).secondaryHeaderColor,
          ),
    child: ListTile(
      selected: isSelected,
      title: Text(model.locName),
      subtitle: Text(T.of(context).localeLanguageWritten(model.enName)),
      // Text(model.enName),
      leading: Text(
        AppConst.kIsWeb ? model.code : model.flag,
        style: const TextStyle(fontSize: 28),
      ),
    ),
  );
}
