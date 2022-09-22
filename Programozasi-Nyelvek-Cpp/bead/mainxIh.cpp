// Az array_appender már korábban létrehozott hagyományos, C tömbök logikai
// egymásután fűzését támogatja, azaz az elemek indexeléssel elérhetőek, de
// ténylegesen ott maradnak az eredeti tömbben. Az array_appender template
// paramétere megadja, hogy a kezelendő tömbökben milyen típusú elemek
// vannak. Az append művelettel egy tömböt lehet az eddigiek végéhez fűzni,
// a size()-zal lekérdezhető az elemszám, az at és indexelés egyaránt a tömb
// elemeit kérdezi le és engedi felülírni.

#include "arrapp.h"
#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include "arrapp.h"

const int max = 1000;

bool check()
{
  int s[] = { 3, 2 };
  array_appender<int> ia( s, sizeof( s ) / sizeof( s[0] ) );
  for ( int i = 0; i < max - 1; ++i )
  {
    ia.append( s, sizeof( s ) / sizeof( s[0] ) );
  }

  std::string hw[] = { "Hello", "World" };
  std::string langs[] = { "C++", "Ada", "Brainfuck" };
  std::string x[] = { "Goodbye", "Cruel", "World" };
  array_appender<std::string> sa( hw, sizeof( hw ) / sizeof( hw[0] ) );
  sa.append( langs, sizeof( langs ) / sizeof( langs[0] ) );
  sa.append( x, sizeof( x ) / sizeof( x[0] ) );

  const array_appender<std::string> ha( hw, sizeof( hw ) / sizeof( hw[0] ) );

  if ( max * 2 != ia.size() || 3 != ia.at( max ) || &( ha.at( 0 ) ) != hw ||
       &( s[0] ) != &( ia.at(max / 2) ) || 2 != ha.size() || 8 != sa.size() ||
       "C++" != sa.at( 2 ) || 7 != sa.at( 5 ).length() || 2 != ia.at( 3 ) ||
       ia.at( max + 1 ) != 2 )
  {
    return false;
  }

  sa[ 0 ] = "Hallo";
  ++ia[ 1 ];
  if ( 'a' != hw[ 0 ][ 1 ] || "Ada" != sa[ 3 ] ||
       "World" != ha[ 1 ] || ia[ max - 1 ] != 3 )
  {
    return false;
  }

  std::vector<int> vi;
  vi.push_back( 1 );
  ia.append( vi );
  ia[ 2 * max ] = 4;

  std::vector<std::string> vs;
  vs.push_back( "Some" );
  vs.push_back( "Text" );

  sa.append( vs );
  sa.append( vs );

  if ( 1 + 2 * max != ia.size() || 12 != sa.size() ||
       "Some" != sa[ 10 ] || 4 != vi[ 0 ] )
  {
    return false;
  }

  return true;
}

int main()
{
  std::cout << "Your solution is "
            << (check() ? "" : "not ")
            << "ready for submission."
            << std::endl;
}
