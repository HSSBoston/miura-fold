# Origami crease pattern for the Miura fold

This is a [Squeak Smalltalk](https://squeak.org/) implementation of a simple algorithm to generate an origami crease pattern (folding diagram) for the [Miura fold](https://en.wikipedia.org/wiki/Miura_fold). The Miura fold is a method to

- Fold a sheet of paper into a smaller area by pushing the paper's diagonally opposite ends in one motion, and
- Unpack the folded paper in one motion by pulling on its opposite ends. 

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/5/55/Miura-ori.gif" width="500" />
</p>

The Miura fold was used for a [spacecraft](https://en.wikipedia.org/wiki/Space_Flyer_Unit) to fold its large solar panel array before launch (so that it can reduce its volume and fit in the space of a rocket) and unfold the panel array in space . 



<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/3/33/STS072-720-042.jpg" width="500" />
</p>

peacock



The crease patterns of the Miura fold form a tessellation of parallelograms.

<p align="center">
  <img src="images/miura-desktop.jpg" width="800" />
</p>

This code base is pushed to GitHub with Squeak's Git Browser ([Squot](https://github.com/hpi-swa/Squot)). The GeoBot class is implemented by customizing a class that is covered in Stephane Ducasse's awesome book ["Squeak: Learn Programming with Robots (Technology in Action) 1st Corrected ed., Corr. 2nd printing Edition"](https://smile.amazon.com/Squeak-Programming-Robots-Technology-Action/dp/1590594916/).




I wrote this code in August 2019 to work on a summer research project about the Miura fold. See a research summary report and a [poster presentation](images/poster.jpg), both written in Japanese, if you can read Japanese. 
