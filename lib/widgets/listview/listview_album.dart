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
        return Card(
          child: ListTile(
            title: Text('${widget.albums[index].title}'),
            subtitle: Text('ID: ${widget.albums[index].id} - UserID: ${widget.albums[index].userId}'),
            leading: const Icon(Icons.album),
            trailing: const Icon(Icons.arrow_forward),
          ),
        );
      },
      itemCount: widget.albums.length,
    );
  }
}