// import 'package:flutter/material.dart';

// class KeyboardDemo extends StatefulWidget {
//   @override
//   const _KeyboardDemoState createState() => _KeyboardDemoState();
// }

// class _KeyboardDemoState extends State<KeyboardDemo> {
//   TextEditingController _controller = TextEditingController();
//   bool _readOnly = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Column(
//         children: [
//           SizedBox(height: 50),
//           TextField(
//             controller: _controller,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(3),
//               ),
//             ),
//             style: TextStyle(fontSize: 24),
//             autofocus: true,
//             showCursor: true,
//             readOnly: _readOnly,
//           ),
//           IconButton(
//             icon: Icon(Icons.keyboard),
//             onPressed: () {
//               setState(() {
//                 _readOnly = !_readOnly;
//               });
//             },
//           ),
//           Spacer(),
//           CustomKeyboard(
//             onTextInput: (myText) {
//               _insertText(myText);
//             },
//             onBackspace: () {
//               _backspace();
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   void _insertText(String myText) {
//     final text = _controller.text;
//     final textSelection = _controller.selection;
//     final newText = text.replaceRange(
//       textSelection.start,
//       textSelection.end,
//       myText,
//     );
//     final myTextLength = myText.length;
//     _controller.text = newText;
//     _controller.selection = textSelection.copyWith(
//       baseOffset: textSelection.start + myTextLength,
//       extentOffset: textSelection.start + myTextLength,
//     );
//   }

//   void _backspace() {
//     final text = _controller.text;
//     final textSelection = _controller.selection;
//     final selectionLength = textSelection.end - textSelection.start;

//     // There is a selection.
//     if (selectionLength > 0) {
//       final newText = text.replaceRange(
//         textSelection.start,
//         textSelection.end,
//         '',
//       );
//       _controller.text = newText;
//       _controller.selection = textSelection.copyWith(
//         baseOffset: textSelection.start,
//         extentOffset: textSelection.start,
//       );
//       return;
//     }

//     // The cursor is at the beginning.
//     if (textSelection.start == 0) {
//       return;
//     }

//     // Delete the previous character
//     final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
//     final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
//     final newStart = textSelection.start - offset;
//     final newEnd = textSelection.start;
//     final newText = text.replaceRange(
//       newStart,
//       newEnd,
//       '',
//     );
//     _controller.text = newText;
//     _controller.selection = textSelection.copyWith(
//       baseOffset: newStart,
//       extentOffset: newStart,
//     );
//   }

//   bool _isUtf16Surrogate(int value) {
//     return value & 0xF800 == 0xD800;
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// class CustomKeyboard extends StatelessWidget {
//   CustomKeyboard({
//     required Key key,
//     required this.onTextInput,
//     required this.onBackspace,
//   }) : super(key: key);

//   final ValueSetter<String> onTextInput;
//   final VoidCallback onBackspace;

//   void _textInputHandler(String text) => onTextInput.call(text);

//   void _backspaceHandler() => onBackspace.call();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 160,
//       color: Colors.blue,
//       child: Column(
//         children: [
//           buildRowOne(),
//           buildRowTwo(),
//           buildRowThree(),
//         ],
//       ),
//     );
//   }

//   Expanded buildRowOne() {
//     return Expanded(
//       child: Row(
//         children: [
//           TextKey(
//             text: '1',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: '2',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: '3',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: '4',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: '5',
//             onTextInput: _textInputHandler,
//           ),
//         ],
//       ),
//     );
//   }

//   Expanded buildRowTwo() {
//     return Expanded(
//       child: Row(
//         children: [
//           TextKey(
//             text: 'a',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: 'b',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: 'c',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: 'd',
//             onTextInput: _textInputHandler,
//           ),
//           TextKey(
//             text: 'e',
//             onTextInput: _textInputHandler,
//           ),
//         ],
//       ),
//     );
//   }

//   Expanded buildRowThree() {
//     return Expanded(
//       child: Row(
//         children: [
//           TextKey(
//             text: ' ',
//             flex: 4,
//             onTextInput: _textInputHandler,
//           ),
//           BackspaceKey(
//             onBackspace: _backspaceHandler,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TextKey extends StatelessWidget {
//   const TextKey({
//     required Key key,
//     required this.text,
//     required this.onTextInput,
//     this.flex = 1,
//   }) : super(key: key);

//   final String text;
//   final ValueSetter<String> onTextInput;
//   final int flex;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: flex,
//       child: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Material(
//           color: Colors.blue.shade300,
//           child: InkWell(
//             onTap: () {
//               onTextInput?.call(text);
//             },
//             child: Center(child: Text(text)),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class BackspaceKey extends StatelessWidget {
//   const BackspaceKey({
//     required Key key,
//     required this.onBackspace,
//     this.flex = 1,
//   }) : super(key: key);

//   final VoidCallback onBackspace;
//   final int flex;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: flex,
//       child: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Material(
//           color: Colors.blue.shade300,
//           child: InkWell(
//             onTap: () {
//               onBackspace.call();
//             },
//             child: Center(
//               child: Icon(Icons.backspace),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
