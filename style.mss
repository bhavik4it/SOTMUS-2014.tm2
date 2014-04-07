// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Common Colors //
//@water: #b5cec8;
@water: #b1d0c0;
//@water: polygon-pattern-file: url("images/bluedot.png");


//bright green
//outline:
//@park: #b9cc32;

@park: #d7dfa3;
//@park: #d0da7e;

Map {
 // background-color: #f0ece0;
  //background-image: url("images/background_texture_V2.png");
  background-image: url("images/background_texture_V3.png");
  background-color: lighten(#e0d5be, 3%);
}


// Political boundaries //
#admin {
  line-join: round;
  line-color: lighten(#000, 3%);
  [maritime=1] { line-color: darken(@water, 3%); }
  // Countries
  [admin_level=2] {
    line-width: 1.4;
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 4; }
    [disputed=1] { line-dasharray: 4,4; }
  }
  // States / Provices / Subregions
  [admin_level>=3] {
    line-width: 0.4;
    line-dasharray: 10,3,3,3;
    [zoom>=6] { line-width: 1; }
    [zoom>=8] { line-width: 2; }
    [zoom>=12] { line-width: 3; }
  }
}












