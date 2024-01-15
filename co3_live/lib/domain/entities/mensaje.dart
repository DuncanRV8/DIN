enum Autor{ yo, otro }

class Mensaje{
  String texto;
  String? imgUrl;
  Autor autor;

  Mensaje({required this.texto, this.imgUrl, required this.autor});
}