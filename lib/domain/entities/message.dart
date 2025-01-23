enum FromWho {me, hers, another}

class Message {

final String textDat;
final String? imagedat;

final FromWho fromWho;


Message({
  required this.textDat,
  this.imagedat,
  required this.fromWho

});


}