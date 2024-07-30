import 'package:flutter/material.dart';
import '../../modelos/modelo_album.dart';

class ListviewAlbum extends StatefulWidget {
  final List<Album> albums;

  const ListviewAlbum(this.albums, {super.key});

  @override
  _ListviewAlbumState createState() => _ListviewAlbumState();
}

class _ListviewAlbumState extends State<ListviewAlbum> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('ID: ${widget.albums[index].id} - ${widget.albums[index].title}'),
          leading: Icon(Icons.album),
          trailing: Icon(Icons.arrow_forward),
        );
      },
      itemCount: widget.albums.length,
    );
  }
}