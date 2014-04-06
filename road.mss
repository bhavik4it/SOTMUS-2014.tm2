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
    
    line-color: #f0ece0;
    line-width: 0.5;
    [class='motorway'],
    [class='main'] {
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    
    [class='street'],
    [class='street_limited'] {
      
      [zoom>=14] { line-width: 1; }
      
      [zoom>=16] { 
        ::outline{
          line-color: #d5cfc6;
         //red option: 
         //line-color: #dc7f77;
         line-width: 6; 
        }
        line-color: #f0ece0;
        line-width: 3;
      }
     }
    
    //outline color? 
    //dc7f77
    [class='street_limited'] { line-dasharray: 4,1; }
  }
}