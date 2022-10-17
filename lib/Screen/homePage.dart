import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA8A8A8),
      appBar: AppBar(
        title: const Text('Gallary'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
          const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 0),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 1),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(
                  index: 2,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 3),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 4),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 5),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 6),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 7),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Tile(index: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Tile({required int index}) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed('carousel_slider_screen', arguments: index);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 16,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/${gallery[index].mainPicture}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    gallery[index].pictureName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class iamgemodal {
  final int id;
  final String pictureName;
  final String mainPicture;
  final List<String> subPicture;

  iamgemodal({
    required this.id,
    required this.pictureName,
    required this.mainPicture,
    required this.subPicture,
  });
}

List<iamgemodal> gallery = <iamgemodal>[
  iamgemodal(
      id: 0,
      pictureName: 'Taj Mahal',
      mainPicture: 'taj.jpg',
      subPicture: ['taj.jpg', 'taj1.jpg', 'taj2.jpg', 'taj3.jpg']),
  iamgemodal(
      id: 1,
      pictureName: 'The Beaches of Goa',
      mainPicture: 'goa.jpg',
      subPicture: ['goa.jpg', 'g1.jpg', 'g2.jpg', 'g3.jpg']),
  iamgemodal(
      id: 2,
      pictureName: 'India Gate',
      mainPicture: 'gate.jpg',
      subPicture: ['gate.jpg', 'gate1.jpg', 'gate2.jpg', 'gate3.jpg']),
  iamgemodal(
      id: 3,
      pictureName: 'Qutab Minar',
      mainPicture: 'i1.jpg',
      subPicture: ['i1.jpg', 'qu1.jpg', 'qu2.jpg', 'qu3.jpg']),
  iamgemodal(
      id: 4,
      pictureName: 'Mysore Palace',
      mainPicture: 'mysore.jpg',
      subPicture: ['mysore.jpg', 'my1.jpg', 'my2.jpg', 'my3.jpg']),
  iamgemodal(
      id: 5,
      pictureName: 'The Ellora Caves',
      mainPicture: 'ellora.jpg',
      subPicture: ['ellora.jpg', 'e1.jpg', 'e2.jpg', 'e3.jpg']),
  iamgemodal(
      id: 6,
      pictureName: 'Mahabodhi Temple',
      mainPicture: 'mahabodhi.jpg',
      subPicture: ['mahabodhi.jpg', 'maha1.jpg', 'maha2.jpg', 'maha3.jpg']),
  iamgemodal(
      id: 7,
      pictureName: 'Jal Mahal',
      mainPicture: 'jal.jpg',
      subPicture: ['jal.jpg', 'jal1.jpg', 'jal2.jpg', 'jal3.jpg']),
  iamgemodal(
      id: 8,
      pictureName: 'Ranthambore National Park',
      mainPicture: 'ranth.jpg',
      subPicture: ['ranth.jpg', 'r1.jpg', 'r2.jpg', 'r3.jpg']),
];
