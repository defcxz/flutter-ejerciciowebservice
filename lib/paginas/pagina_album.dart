import 'package:flutter/material.dart';
import 'package:flutterejerciciowebservice/servicios/servicio_album.dart';
import 'package:flutterejerciciowebservice/widgets/listview/listview_album.dart';

import '../modelos/modelo_album.dart';

class PaginaAlbum extends StatefulWidget {
  const PaginaAlbum({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PaginaAlbumState();
}

class _PaginaAlbumState extends State<PaginaAlbum> {
  List<Album> albumsListado = ServicioAlbum.getAlbums();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Web Service'),
      ),
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Listar Albums'),
        ),
        body: ListviewAlbum(albumsListado),
      )
    );
  }
}