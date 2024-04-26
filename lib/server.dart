const String baseAssetURL =
    'https://dartpad-workshops-io2021.web.app/getting_started_with_slivers/';

const Map<int, SimpleData> _kDummyData = {
  0: SimpleData(
    id: 0,
    dateTime: '24-04-2024',
    temp: 25,
    hum: 52,
    airquality: 48,
    roomName:
    'Kitchen',
  ),
  1: SimpleData(
    id: 1,
    dateTime: '24-04-2024',
    temp: 13,
    hum: 50,
    airquality: 36,
    roomName: 'Bedroom',
  ),
  2: SimpleData(
    id: 2,
    dateTime: '24-04-2024',
    temp: 28,
    hum: 55,
    airquality: 67,
    roomName: 'Living room',
  ),
  3: SimpleData(
    id: 3,
    dateTime: '24-04-2024',
    temp: 19,
    hum: 60,
    airquality: 22,
    roomName: 'Bedroom',
  ),
  4: SimpleData(
    id: 4,
    dateTime: '24-04-2024',
    temp: 9,
    hum: 60,
    airquality: 73,
    roomName: 'Dining room',
  ),
  5: SimpleData(
    id: 5,
    dateTime: '24-04-2024',
    temp: 25,
    hum: 57,
    airquality: 57,
    roomName: 'Toilet',
  ),
  6: SimpleData(
    id: 6,
    dateTime: '24-04-2024',
    temp: 27,
    hum: 58,
    airquality: 42,
    roomName: 'Bedroom',
  ),
};

class Server {
  static List<SimpleData> getSimpleDataList() =>
      _kDummyData.values.toList();

  static SimpleData getSimpleDataByID(int id) {
    assert(id >= 0);
    return _kDummyData[id]!;
  }
}


class SimpleData{
  const SimpleData({
    required this.id,
    required this.dateTime,
    required this.temp,
    required this.hum,
    required this.airquality,
    required this.roomName
  });

  final int id;
  final String dateTime;
  final double temp;
  final double hum;
  final double airquality;
  final String roomName;
}
