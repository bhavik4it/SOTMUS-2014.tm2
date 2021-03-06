// Water Features //

#water {
  // Add an outline to the water without causing seams in the ocean
  ::outline  {
    line-width: 1;
    line-color: darken(@water,10%);
  }
  polygon-fill: @water;
  polygon-gamma: 0.6;
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}