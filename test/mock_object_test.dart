import 'package:belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import "mock_object_test.mocks.dart";

void main() {
  group('BookService', () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("Save new book must success", () {
      bookService.save('1', 'Tutorial Dart', 100);
      verify(bookRepository.save(Book('1', 'Tutorial Dart', 100)))
          .called(1); // wajib melakukan verifikasi dan called
    });

    test('Find by id not found', () {
      expect(() {
        bookService.find('1');
      }, throwsException);
    });

    test('Find by id success', () {
      when(bookRepository.findById('1'))
          .thenReturn(Book('1', 'Tutorial Dart', 100));

      var book = bookService.find('1');
      expect(book, equals(Book('1', 'Tutorial Dart', 100)));

      verify(bookRepository.findById('1')).called(1);
    });

    test('Find by id eko123', () {
      when(bookRepository.findById(argThat(startsWith('eko'))))
          .thenReturn(Book('eko123', 'Tutorial Dart', 100));

      var book = bookService.find('eko123');
      expect(book, Book('eko123', 'Tutorial Dart', 100));

      verify(bookRepository.findById(any)).called(1);
    });
  });
}
