identification division.
       program-id. NoSpace.

       data division.
       working-storage section.
       01 i pic 9(2).
       linkage section.
       01 strng.
          03  strLen  pic 9(2).
          03  sChar   pic x 
              occurs 0 to 80 times depending on strLen.
       01 result.
          03  resLen  pic 9(2).
          03  resChar pic x
              occurs 0 to 80 times depending on resLen.
       

       procedure division using strng result.
          initialize result
          perform varying i from 1 by 1 until i > strLen
             if sChar(i) not = space
                add 1 to resLen
                move sChar(i) to resChar(resLen)
             end-if
          end-perform
          goback.
       end program NoSpace.
