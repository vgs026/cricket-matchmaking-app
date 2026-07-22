import 'package:cricket_matchmaking_mobile/core/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders the Home placeholder', (tester) async {
    await tester.pumpWidget(const CricketMatchmakingApp());

    expect(find.text('Home placeholder'), findsOneWidget);
  });
}
