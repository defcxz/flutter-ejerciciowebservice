import 'package:flutterejerciciowebservice/modelos/modelo_album.dart';

class ServicioAlbum {
  static List<Album> getAlbums() {
    return[
      Album(userId: 1, id: 1, title: 'The Dark Side of the Moon'),
      Album(userId: 1, id: 2, title: 'AM'),
      Album(userId: 1, id: 3, title: 'Volcano'),
    ];
  }
}