// Roads & Railways //

#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    
     //setup
    ::outline {
      line-width: 0;
     }
      line-width: 0;
    
    line-color: darken(#f0ece0, 3%);
    line-width: 0.5;
    [class='motorway'],
    [class='main'] {
      [zoom>=10] { line-width: 1; line-opacity: 0.5; }
      [zoom>=11] { line-width: 1.25; line-opacity: 0.7; }
      [zoom>=12] { line-width: 1.5; line-opacity: 0.8; }
      [zoom>=13] { line-color: darken(#f0ece0, 3%); line-width: 2; line-opacity: 0.9;}
      //[zoom>=14] { line-color: darken(#f0ece0, 3%); line-width: 3; line-opacity: 1;}
       [zoom>=14] { 
        ::outline {
         line-opacity: 1;
         line-color: darken(#f0ece0, 15%); 
         line-width: 4; 
        }
         line-color: darken(#f0ece0, 1%); 
         line-width: 2;
      }
      [zoom>=15] { 
        ::outline {
         line-color: darken(#f0ece0, 15%); 
         line-width: 6; 
        }
         line-width: 4;
      }
      [zoom>=16] { 
        ::outline {
         line-color: darken(#f0ece0, 15%); 
         line-width: 7; 
        }
         line-width: 5;
      }
      [zoom>=17] { line-color: red; }
    }
    
    [class='street'],
    [class='street_limited'] {
      line-color: #f0ece0;
      [zoom>=14] { line-width: 1; }
      [zoom>=15] { line-width: 1.5; }
      [zoom>=16] { line-width: 2; }
       // ::outline{
        //  line-color: lighten(#d5cfc6, 5%);
       // }
       // line-color: #f0ece0;
     
     }
    
    //outline color? 
    //dc7f77
    [class='street_limited'] { line-dasharray: 4,1; }
  }
}