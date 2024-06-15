import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Singlechildeg(),
  ));
}

class Singlechildeg extends StatelessWidget {
  const Singlechildeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red[50],
      appBar: AppBar(backgroundColor: Colors.greenAccent[100],
        title: Center(child: Text("Story",style: GoogleFonts.abhayaLibre(fontWeight: FontWeight.bold),)),
      ),
      body: Column(
        children: [
          Text(
            "THE KING",
            style: GoogleFonts.asap(fontSize: 15,fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Text(
              """The Sleepless King Story for Kids
Are you fond of the stories of kings and queens? Do you ever feel curious about what exactly a king may do throughout his day? Though kings live in grand palaces and have a royal lifestyle, every king has a unique personality. There are numerous funny incidents and petty problems that are part of a king’s day-to-day life. So, here’s a king story for kids that tells us about a sleepless king and how he could finally sleep.
   
The Sleepless King
In a faraway kingdom, there once lived a king who was known for his grandeur and humility. He had a loving and adorable queen. The king had a magnificent palace, loaded with royal commodities. His bed was soft as cotton, the sheets were impeccably white and smooth as silk, his room smelled of freshly blooming flowers, yet the king complained of not getting a good sleep at night.


One day the queen thought of getting a new crown for herself. She had ordered the crown to be loaded with precious jewels. So she was busy all day shopping for her new crown. Merchants and traders came from distant lands to offer their best jewels to the queen. So she was busy shopping for her stone-studded crown all day long. The king stayed back at the palace the whole day. 


Later, the king and the queen sat down to dine together. The queen was so tired that she almost dozed off when the dessert was served, and there was ice cream all over her face. So, she knew it was bedtime for her. She said to the king, “Good night dear.” and went to bed. 





The King and The Queen Dining Together


However, the king was wide awake and he was not tired a bit. After dinner, he brushed his teeth, wore his nightgown, and went straight into his royal bed. Hours later, he was still not able to sleep and kept tossing and turning in his bed. Then he thought to himself that spending some time in the castle might help him get some sleep.


The king slid out of his bed and came down the stairs. The first person he met downstairs was the royal treasurer. He was busy with bags full of coins, piles of precious jewels, and stacks of gold. When he heard of the king’s sleepless nights, he started to think about a solution. The treasurer came up with an idea to give the king a golden cloth. He said to the king, “This is the cloth with which I polish the royal treasures. Every time I clean the treasure with this cloth, I doze off.” He suggested that the king should also try it to get some sleep.





The King with His Treasures


The king took the cloth and started to polish the treasure, readily. Soon the diamonds glittered, the coins shone brightly, the sapphires sparkled, and the king had polished it all. The treasurer thanked the king for completing his work and went off to sleep. However, the king still wasn’t sleepy and went on his stroll about the palace.


The king thought to himself, perhaps some delicious snack might help him get some sleep. So he went to the kitchen. There he found the cook was busy kneading the dough for the next day’s bread. When the king told him of his problem, the cook said, “You’ve come to the right place, Your Majesty. Kneading the dough for the next day’s fresh bread makes me sleepy every night.” So, the cook suggested the king try and knead the dough.
 
The king was glad to hear this and was ready with a heap of flour right infront of him. He pressed and pushed and tucked the flour till it turned into a smooth soft dough. The cook thanked the king for making the dough and went off to bed. However, the king wasn’t sleepy and the flour he sniffed while making the dough caused him to sneeze. 





The King Walking in His Garden


Thereafter, the king thought to get some fresh air in the garden outside. While he took a stroll in the beautiful royal garden, he met his gardener. The gardener was trimming the grass with a tiny pair of scissors. When the king told him of his sleeplessness, the gardener immediately came up with a solution to it. He told the king when he trims the grass every day, it makes him feel sleepy. The gardener had to ensure that every blade of grass was to be of the same height. On hearing this, the king took the pair of scissors and knelt down to trim the grass. 





The Sleeping King


Meanwhile, the queen woke up in the middle of the night and saw the king kneeling down in the garden. She went to him and asked if he was alright. The king said, “I can’t get any sleep and nobody can help.” The queen had a solution, so she took him inside. She gave him a glass of warm milk. After drinking the milk, he lay down on his bed. Just when the queen was about to tell him a story, she could hear him snoring. At last, the sleepless king fell asleep.


Conclusion
The king was not able to sleep as he did not have any work throughout the day. He wondered how everyone in his palace was able to sleep. However, when he did some of the work of his men, he was tired and fell asleep as soon as he lay on his bed. Therefore, the moral of this king story for kids, says that a good night’s sleep comes from a day full of hard work.""",
              style: GoogleFonts.arapey(fontSize: 20),
            ),
          ))
        ],
      ),
    );
  }
}
