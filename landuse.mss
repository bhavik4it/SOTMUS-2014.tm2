// Landuse areas //
#landuse {
  [class='park'] { polygon-fill: @park; }
}

#area_label {
  [class='park'] {
    [zoom<=13],  // automatic area filtering @ low zooms
    [zoom>=14][area>500000],
    [zoom>=16][area>10000],
    [zoom>=17] {
      text-name: @name;
      text-face-name: 'Source Sans Pro Italic';
      text-fill: darken(@park, 50%);
      text-size: 13;
      text-wrap-width: 100;
      text-wrap-before: true;
    }
  }
}

////////////\\\\\\\\\\\\\\////////////\\\\\\\\\
//park outline
#landuse {
  [class='park'] { 
  
    polygon-fill: @park; 
    line-color: #cbc9b7;
    //other options: 
    //line-color: #b9d5a7;
    //line-color: #898b61;
    //line-color: #b9cc32;
    
    //polygon-pattern-file: url(" ");
    [zoom>=7]{ line-width: 0.25; }
    [zoom>=8]{ line-width: 0.5; }
    [zoom>=9]{ line-width: 0.75; }
    [zoom>=10]{ line-width: 1; }
    [zoom>=11]{ line-width: 1.25; }
    [zoom>=12]{ line-width: 1.5; }
    [zoom>=13]{ line-width: 1.75; }
    [zoom>=14]{ line-width: 2;}
    [zoom>=15]{ line-width: 2.25;}
    [zoom>=16]{ line-width: 2.5; }
    [zoom>=17]{ line-width: 2.75; }
    [zoom>=18]{ line-width: 3; }
    [zoom>=19]{ line-width: 3.25; }
    [zoom>=20]{ line-width: 3.5; }
    [zoom>=21]{ line-width: 3.75; }
    [zoom>=22]{ line-width: 4; }
  }
 }

// Buildings //

#building {
  polygon-fill: #e0d5be;
  line-color: #e29e9d;
//  line-color: darken(#e0d5be, 5%);
  line-width: 1;
//  polygon-fill: #e29e9d;
 // polygon-fill: #f9f0e3;
}