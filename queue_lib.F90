
# include "utils.h"
module queue_lib
   USE_UTILS_H
   use, intrinsic:: iso_fortran_env, only: INT8, INT16, INT32, INT64, REAL32, REAL64, REAL128
   implicit none

   private

   public:: push_queue
   public:: shift_queue

      interface push_queue
         module procedure pushRealDim0KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim0KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim0KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim0KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim0KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim0KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim0KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim0KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim0KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim1KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim1KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim1KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim1KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim1KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim1KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim1KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim1KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim1KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim2KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim2KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim2KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim2KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim2KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim2KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim2KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim2KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim2KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim3KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim3KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim3KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim3KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim3KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim3KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim3KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim3KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim3KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim4KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim4KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim4KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim4KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim4KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim4KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim4KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim4KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim4KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim5KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim5KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim5KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim5KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim5KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim5KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim5KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim5KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim5KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim6KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim6KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim6KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim6KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim6KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim6KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim6KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim6KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim6KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim7KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim7KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim7KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim7KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim7KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim7KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushRealDim7KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftRealDim7KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyRealDim7KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim0KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim0KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim0KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim0KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim0KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim0KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim0KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim0KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim0KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim0KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim0KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim0KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim1KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim1KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim1KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim1KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim1KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim1KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim1KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim1KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim1KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim1KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim1KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim1KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim2KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim2KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim2KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim2KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim2KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim2KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim2KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim2KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim2KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim2KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim2KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim2KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim3KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim3KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim3KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim3KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim3KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim3KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim3KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim3KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim3KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim3KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim3KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim3KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim4KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim4KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim4KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim4KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim4KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim4KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim4KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim4KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim4KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim4KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim4KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim4KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim5KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim5KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim5KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim5KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim5KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim5KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim5KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim5KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim5KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim5KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim5KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim5KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim6KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim6KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim6KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim6KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim6KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim6KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim6KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim6KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim6KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim6KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim6KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim6KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim7KindINT8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim7KindINT8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim7KindINT8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim7KindINT16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim7KindINT16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim7KindINT16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim7KindINT32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim7KindINT32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim7KindINT32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushIntegerDim7KindINT64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftIntegerDim7KindINT64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyIntegerDim7KindINT64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim0Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim0Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim0Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim3Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim3Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim3Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim5Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim5Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim5Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim6Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim6Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim6Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushLogicalDim7Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftLogicalDim7Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyLogicalDim7Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim0KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim0KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim0KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim0KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim0KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim0KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim0KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim0KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim0KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim1KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim1KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim1KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim1KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim1KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim1KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim1KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim1KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim1KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim2KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim2KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim2KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim2KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim2KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim2KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim2KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim2KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim2KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim3KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim3KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim3KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim3KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim3KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim3KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim3KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim3KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim3KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim4KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim4KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim4KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim4KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim4KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim4KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim4KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim4KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim4KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim5KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim5KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim5KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim5KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim5KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim5KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim5KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim5KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim5KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim6KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim6KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim6KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim6KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim6KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim6KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim6KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim6KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim6KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim7KindREAL32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim7KindREAL32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim7KindREAL32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim7KindREAL64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim7KindREAL64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim7KindREAL64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushComplexDim7KindREAL128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftComplexDim7KindREAL128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyComplexDim7KindREAL128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim0Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim0Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim0Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim1Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim1Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim1Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim2Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim2Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim2Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim3Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim3Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim3Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim4Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim4Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim4Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim5Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim5Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim5Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim6Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim6Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim6Len1024Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len1Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len1Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len1Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len2Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len2Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len2Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len4Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len4Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len4Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len8Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len8Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len8Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len16Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len16Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len16Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len32Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len32Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len32Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len64Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len64Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len64Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len128Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len128Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len128Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len256Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len256Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len256Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len512Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len512Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len512Queue
      end interface is_empty_queue
      interface push_queue
         module procedure pushCharacterDim7Len1024Queue
      end interface push_queue

      interface shift_queue
         module procedure shiftCharacterDim7Len1024Queue
      end interface shift_queue

      interface is_empty_queue
         module procedure is_emptyCharacterDim7Len1024Queue
      end interface is_empty_queue

   type, public:: Queue
   end type Queue

   type:: QueueNode
   end type QueueNode

      type, extends(Queue), public:: RealDim0KindREAL32Queue
         type(RealDim0KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim0KindREAL32QueueNode), pointer:: head => null()
      end type RealDim0KindREAL32Queue

      type, extends(QueueNode):: RealDim0KindREAL32QueueNode
         Real(kind = REAL32):: value
         type(RealDim0KindREAL32QueueNode), pointer:: next => null()
      end type RealDim0KindREAL32QueueNode
      type, extends(Queue), public:: RealDim0KindREAL64Queue
         type(RealDim0KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim0KindREAL64QueueNode), pointer:: head => null()
      end type RealDim0KindREAL64Queue

      type, extends(QueueNode):: RealDim0KindREAL64QueueNode
         Real(kind = REAL64):: value
         type(RealDim0KindREAL64QueueNode), pointer:: next => null()
      end type RealDim0KindREAL64QueueNode
      type, extends(Queue), public:: RealDim0KindREAL128Queue
         type(RealDim0KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim0KindREAL128QueueNode), pointer:: head => null()
      end type RealDim0KindREAL128Queue

      type, extends(QueueNode):: RealDim0KindREAL128QueueNode
         Real(kind = REAL128):: value
         type(RealDim0KindREAL128QueueNode), pointer:: next => null()
      end type RealDim0KindREAL128QueueNode
      type, extends(Queue), public:: RealDim1KindREAL32Queue
         type(RealDim1KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim1KindREAL32QueueNode), pointer:: head => null()
      end type RealDim1KindREAL32Queue

      type, extends(QueueNode):: RealDim1KindREAL32QueueNode
         Real(kind = REAL32), dimension(:), allocatable:: value
         type(RealDim1KindREAL32QueueNode), pointer:: next => null()
      end type RealDim1KindREAL32QueueNode
      type, extends(Queue), public:: RealDim1KindREAL64Queue
         type(RealDim1KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim1KindREAL64QueueNode), pointer:: head => null()
      end type RealDim1KindREAL64Queue

      type, extends(QueueNode):: RealDim1KindREAL64QueueNode
         Real(kind = REAL64), dimension(:), allocatable:: value
         type(RealDim1KindREAL64QueueNode), pointer:: next => null()
      end type RealDim1KindREAL64QueueNode
      type, extends(Queue), public:: RealDim1KindREAL128Queue
         type(RealDim1KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim1KindREAL128QueueNode), pointer:: head => null()
      end type RealDim1KindREAL128Queue

      type, extends(QueueNode):: RealDim1KindREAL128QueueNode
         Real(kind = REAL128), dimension(:), allocatable:: value
         type(RealDim1KindREAL128QueueNode), pointer:: next => null()
      end type RealDim1KindREAL128QueueNode
      type, extends(Queue), public:: RealDim2KindREAL32Queue
         type(RealDim2KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim2KindREAL32QueueNode), pointer:: head => null()
      end type RealDim2KindREAL32Queue

      type, extends(QueueNode):: RealDim2KindREAL32QueueNode
         Real(kind = REAL32), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL32QueueNode), pointer:: next => null()
      end type RealDim2KindREAL32QueueNode
      type, extends(Queue), public:: RealDim2KindREAL64Queue
         type(RealDim2KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim2KindREAL64QueueNode), pointer:: head => null()
      end type RealDim2KindREAL64Queue

      type, extends(QueueNode):: RealDim2KindREAL64QueueNode
         Real(kind = REAL64), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL64QueueNode), pointer:: next => null()
      end type RealDim2KindREAL64QueueNode
      type, extends(Queue), public:: RealDim2KindREAL128Queue
         type(RealDim2KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim2KindREAL128QueueNode), pointer:: head => null()
      end type RealDim2KindREAL128Queue

      type, extends(QueueNode):: RealDim2KindREAL128QueueNode
         Real(kind = REAL128), dimension(:, :), allocatable:: value
         type(RealDim2KindREAL128QueueNode), pointer:: next => null()
      end type RealDim2KindREAL128QueueNode
      type, extends(Queue), public:: RealDim3KindREAL32Queue
         type(RealDim3KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim3KindREAL32QueueNode), pointer:: head => null()
      end type RealDim3KindREAL32Queue

      type, extends(QueueNode):: RealDim3KindREAL32QueueNode
         Real(kind = REAL32), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL32QueueNode), pointer:: next => null()
      end type RealDim3KindREAL32QueueNode
      type, extends(Queue), public:: RealDim3KindREAL64Queue
         type(RealDim3KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim3KindREAL64QueueNode), pointer:: head => null()
      end type RealDim3KindREAL64Queue

      type, extends(QueueNode):: RealDim3KindREAL64QueueNode
         Real(kind = REAL64), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL64QueueNode), pointer:: next => null()
      end type RealDim3KindREAL64QueueNode
      type, extends(Queue), public:: RealDim3KindREAL128Queue
         type(RealDim3KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim3KindREAL128QueueNode), pointer:: head => null()
      end type RealDim3KindREAL128Queue

      type, extends(QueueNode):: RealDim3KindREAL128QueueNode
         Real(kind = REAL128), dimension(:, :, :), allocatable:: value
         type(RealDim3KindREAL128QueueNode), pointer:: next => null()
      end type RealDim3KindREAL128QueueNode
      type, extends(Queue), public:: RealDim4KindREAL32Queue
         type(RealDim4KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim4KindREAL32QueueNode), pointer:: head => null()
      end type RealDim4KindREAL32Queue

      type, extends(QueueNode):: RealDim4KindREAL32QueueNode
         Real(kind = REAL32), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL32QueueNode), pointer:: next => null()
      end type RealDim4KindREAL32QueueNode
      type, extends(Queue), public:: RealDim4KindREAL64Queue
         type(RealDim4KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim4KindREAL64QueueNode), pointer:: head => null()
      end type RealDim4KindREAL64Queue

      type, extends(QueueNode):: RealDim4KindREAL64QueueNode
         Real(kind = REAL64), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL64QueueNode), pointer:: next => null()
      end type RealDim4KindREAL64QueueNode
      type, extends(Queue), public:: RealDim4KindREAL128Queue
         type(RealDim4KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim4KindREAL128QueueNode), pointer:: head => null()
      end type RealDim4KindREAL128Queue

      type, extends(QueueNode):: RealDim4KindREAL128QueueNode
         Real(kind = REAL128), dimension(:, :, :, :), allocatable:: value
         type(RealDim4KindREAL128QueueNode), pointer:: next => null()
      end type RealDim4KindREAL128QueueNode
      type, extends(Queue), public:: RealDim5KindREAL32Queue
         type(RealDim5KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim5KindREAL32QueueNode), pointer:: head => null()
      end type RealDim5KindREAL32Queue

      type, extends(QueueNode):: RealDim5KindREAL32QueueNode
         Real(kind = REAL32), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL32QueueNode), pointer:: next => null()
      end type RealDim5KindREAL32QueueNode
      type, extends(Queue), public:: RealDim5KindREAL64Queue
         type(RealDim5KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim5KindREAL64QueueNode), pointer:: head => null()
      end type RealDim5KindREAL64Queue

      type, extends(QueueNode):: RealDim5KindREAL64QueueNode
         Real(kind = REAL64), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL64QueueNode), pointer:: next => null()
      end type RealDim5KindREAL64QueueNode
      type, extends(Queue), public:: RealDim5KindREAL128Queue
         type(RealDim5KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim5KindREAL128QueueNode), pointer:: head => null()
      end type RealDim5KindREAL128Queue

      type, extends(QueueNode):: RealDim5KindREAL128QueueNode
         Real(kind = REAL128), dimension(:, :, :, :, :), allocatable:: value
         type(RealDim5KindREAL128QueueNode), pointer:: next => null()
      end type RealDim5KindREAL128QueueNode
      type, extends(Queue), public:: RealDim6KindREAL32Queue
         type(RealDim6KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim6KindREAL32QueueNode), pointer:: head => null()
      end type RealDim6KindREAL32Queue

      type, extends(QueueNode):: RealDim6KindREAL32QueueNode
         Real(kind = REAL32), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL32QueueNode), pointer:: next => null()
      end type RealDim6KindREAL32QueueNode
      type, extends(Queue), public:: RealDim6KindREAL64Queue
         type(RealDim6KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim6KindREAL64QueueNode), pointer:: head => null()
      end type RealDim6KindREAL64Queue

      type, extends(QueueNode):: RealDim6KindREAL64QueueNode
         Real(kind = REAL64), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL64QueueNode), pointer:: next => null()
      end type RealDim6KindREAL64QueueNode
      type, extends(Queue), public:: RealDim6KindREAL128Queue
         type(RealDim6KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim6KindREAL128QueueNode), pointer:: head => null()
      end type RealDim6KindREAL128Queue

      type, extends(QueueNode):: RealDim6KindREAL128QueueNode
         Real(kind = REAL128), dimension(:, :, :, :, :, :), allocatable:: value
         type(RealDim6KindREAL128QueueNode), pointer:: next => null()
      end type RealDim6KindREAL128QueueNode
      type, extends(Queue), public:: RealDim7KindREAL32Queue
         type(RealDim7KindREAL32QueueNode), pointer:: tail => null()
         type(RealDim7KindREAL32QueueNode), pointer:: head => null()
      end type RealDim7KindREAL32Queue

      type, extends(QueueNode):: RealDim7KindREAL32QueueNode
         Real(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL32QueueNode), pointer:: next => null()
      end type RealDim7KindREAL32QueueNode
      type, extends(Queue), public:: RealDim7KindREAL64Queue
         type(RealDim7KindREAL64QueueNode), pointer:: tail => null()
         type(RealDim7KindREAL64QueueNode), pointer:: head => null()
      end type RealDim7KindREAL64Queue

      type, extends(QueueNode):: RealDim7KindREAL64QueueNode
         Real(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL64QueueNode), pointer:: next => null()
      end type RealDim7KindREAL64QueueNode
      type, extends(Queue), public:: RealDim7KindREAL128Queue
         type(RealDim7KindREAL128QueueNode), pointer:: tail => null()
         type(RealDim7KindREAL128QueueNode), pointer:: head => null()
      end type RealDim7KindREAL128Queue

      type, extends(QueueNode):: RealDim7KindREAL128QueueNode
         Real(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(RealDim7KindREAL128QueueNode), pointer:: next => null()
      end type RealDim7KindREAL128QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT8Queue
         type(IntegerDim0KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT8Queue

      type, extends(QueueNode):: IntegerDim0KindINT8QueueNode
         Integer(kind = INT8):: value
         type(IntegerDim0KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT16Queue
         type(IntegerDim0KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT16Queue

      type, extends(QueueNode):: IntegerDim0KindINT16QueueNode
         Integer(kind = INT16):: value
         type(IntegerDim0KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT32Queue
         type(IntegerDim0KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT32Queue

      type, extends(QueueNode):: IntegerDim0KindINT32QueueNode
         Integer(kind = INT32):: value
         type(IntegerDim0KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim0KindINT64Queue
         type(IntegerDim0KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim0KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim0KindINT64Queue

      type, extends(QueueNode):: IntegerDim0KindINT64QueueNode
         Integer(kind = INT64):: value
         type(IntegerDim0KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim0KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT8Queue
         type(IntegerDim1KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT8Queue

      type, extends(QueueNode):: IntegerDim1KindINT8QueueNode
         Integer(kind = INT8), dimension(:), allocatable:: value
         type(IntegerDim1KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT16Queue
         type(IntegerDim1KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT16Queue

      type, extends(QueueNode):: IntegerDim1KindINT16QueueNode
         Integer(kind = INT16), dimension(:), allocatable:: value
         type(IntegerDim1KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT32Queue
         type(IntegerDim1KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT32Queue

      type, extends(QueueNode):: IntegerDim1KindINT32QueueNode
         Integer(kind = INT32), dimension(:), allocatable:: value
         type(IntegerDim1KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim1KindINT64Queue
         type(IntegerDim1KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim1KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim1KindINT64Queue

      type, extends(QueueNode):: IntegerDim1KindINT64QueueNode
         Integer(kind = INT64), dimension(:), allocatable:: value
         type(IntegerDim1KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim1KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT8Queue
         type(IntegerDim2KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT8Queue

      type, extends(QueueNode):: IntegerDim2KindINT8QueueNode
         Integer(kind = INT8), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT16Queue
         type(IntegerDim2KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT16Queue

      type, extends(QueueNode):: IntegerDim2KindINT16QueueNode
         Integer(kind = INT16), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT32Queue
         type(IntegerDim2KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT32Queue

      type, extends(QueueNode):: IntegerDim2KindINT32QueueNode
         Integer(kind = INT32), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim2KindINT64Queue
         type(IntegerDim2KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim2KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim2KindINT64Queue

      type, extends(QueueNode):: IntegerDim2KindINT64QueueNode
         Integer(kind = INT64), dimension(:, :), allocatable:: value
         type(IntegerDim2KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim2KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT8Queue
         type(IntegerDim3KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT8Queue

      type, extends(QueueNode):: IntegerDim3KindINT8QueueNode
         Integer(kind = INT8), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT16Queue
         type(IntegerDim3KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT16Queue

      type, extends(QueueNode):: IntegerDim3KindINT16QueueNode
         Integer(kind = INT16), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT32Queue
         type(IntegerDim3KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT32Queue

      type, extends(QueueNode):: IntegerDim3KindINT32QueueNode
         Integer(kind = INT32), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim3KindINT64Queue
         type(IntegerDim3KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim3KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim3KindINT64Queue

      type, extends(QueueNode):: IntegerDim3KindINT64QueueNode
         Integer(kind = INT64), dimension(:, :, :), allocatable:: value
         type(IntegerDim3KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim3KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT8Queue
         type(IntegerDim4KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT8Queue

      type, extends(QueueNode):: IntegerDim4KindINT8QueueNode
         Integer(kind = INT8), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT16Queue
         type(IntegerDim4KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT16Queue

      type, extends(QueueNode):: IntegerDim4KindINT16QueueNode
         Integer(kind = INT16), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT32Queue
         type(IntegerDim4KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT32Queue

      type, extends(QueueNode):: IntegerDim4KindINT32QueueNode
         Integer(kind = INT32), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim4KindINT64Queue
         type(IntegerDim4KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim4KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim4KindINT64Queue

      type, extends(QueueNode):: IntegerDim4KindINT64QueueNode
         Integer(kind = INT64), dimension(:, :, :, :), allocatable:: value
         type(IntegerDim4KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim4KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT8Queue
         type(IntegerDim5KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT8Queue

      type, extends(QueueNode):: IntegerDim5KindINT8QueueNode
         Integer(kind = INT8), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT16Queue
         type(IntegerDim5KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT16Queue

      type, extends(QueueNode):: IntegerDim5KindINT16QueueNode
         Integer(kind = INT16), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT32Queue
         type(IntegerDim5KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT32Queue

      type, extends(QueueNode):: IntegerDim5KindINT32QueueNode
         Integer(kind = INT32), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim5KindINT64Queue
         type(IntegerDim5KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim5KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim5KindINT64Queue

      type, extends(QueueNode):: IntegerDim5KindINT64QueueNode
         Integer(kind = INT64), dimension(:, :, :, :, :), allocatable:: value
         type(IntegerDim5KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim5KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT8Queue
         type(IntegerDim6KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT8Queue

      type, extends(QueueNode):: IntegerDim6KindINT8QueueNode
         Integer(kind = INT8), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT16Queue
         type(IntegerDim6KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT16Queue

      type, extends(QueueNode):: IntegerDim6KindINT16QueueNode
         Integer(kind = INT16), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT32Queue
         type(IntegerDim6KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT32Queue

      type, extends(QueueNode):: IntegerDim6KindINT32QueueNode
         Integer(kind = INT32), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim6KindINT64Queue
         type(IntegerDim6KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim6KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim6KindINT64Queue

      type, extends(QueueNode):: IntegerDim6KindINT64QueueNode
         Integer(kind = INT64), dimension(:, :, :, :, :, :), allocatable:: value
         type(IntegerDim6KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim6KindINT64QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT8Queue
         type(IntegerDim7KindINT8QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT8QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT8Queue

      type, extends(QueueNode):: IntegerDim7KindINT8QueueNode
         Integer(kind = INT8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT8QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT8QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT16Queue
         type(IntegerDim7KindINT16QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT16QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT16Queue

      type, extends(QueueNode):: IntegerDim7KindINT16QueueNode
         Integer(kind = INT16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT16QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT16QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT32Queue
         type(IntegerDim7KindINT32QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT32QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT32Queue

      type, extends(QueueNode):: IntegerDim7KindINT32QueueNode
         Integer(kind = INT32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT32QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT32QueueNode
      type, extends(Queue), public:: IntegerDim7KindINT64Queue
         type(IntegerDim7KindINT64QueueNode), pointer:: tail => null()
         type(IntegerDim7KindINT64QueueNode), pointer:: head => null()
      end type IntegerDim7KindINT64Queue

      type, extends(QueueNode):: IntegerDim7KindINT64QueueNode
         Integer(kind = INT64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(IntegerDim7KindINT64QueueNode), pointer:: next => null()
      end type IntegerDim7KindINT64QueueNode
      type, extends(Queue), public:: LogicalDim0Queue
         type(LogicalDim0QueueNode), pointer:: tail => null()
         type(LogicalDim0QueueNode), pointer:: head => null()
      end type LogicalDim0Queue

      type, extends(QueueNode):: LogicalDim0QueueNode
         Logical:: value
         type(LogicalDim0QueueNode), pointer:: next => null()
      end type LogicalDim0QueueNode
      type, extends(Queue), public:: LogicalDim1Queue
         type(LogicalDim1QueueNode), pointer:: tail => null()
         type(LogicalDim1QueueNode), pointer:: head => null()
      end type LogicalDim1Queue

      type, extends(QueueNode):: LogicalDim1QueueNode
         Logical, dimension(:), allocatable:: value
         type(LogicalDim1QueueNode), pointer:: next => null()
      end type LogicalDim1QueueNode
      type, extends(Queue), public:: LogicalDim2Queue
         type(LogicalDim2QueueNode), pointer:: tail => null()
         type(LogicalDim2QueueNode), pointer:: head => null()
      end type LogicalDim2Queue

      type, extends(QueueNode):: LogicalDim2QueueNode
         Logical, dimension(:, :), allocatable:: value
         type(LogicalDim2QueueNode), pointer:: next => null()
      end type LogicalDim2QueueNode
      type, extends(Queue), public:: LogicalDim3Queue
         type(LogicalDim3QueueNode), pointer:: tail => null()
         type(LogicalDim3QueueNode), pointer:: head => null()
      end type LogicalDim3Queue

      type, extends(QueueNode):: LogicalDim3QueueNode
         Logical, dimension(:, :, :), allocatable:: value
         type(LogicalDim3QueueNode), pointer:: next => null()
      end type LogicalDim3QueueNode
      type, extends(Queue), public:: LogicalDim4Queue
         type(LogicalDim4QueueNode), pointer:: tail => null()
         type(LogicalDim4QueueNode), pointer:: head => null()
      end type LogicalDim4Queue

      type, extends(QueueNode):: LogicalDim4QueueNode
         Logical, dimension(:, :, :, :), allocatable:: value
         type(LogicalDim4QueueNode), pointer:: next => null()
      end type LogicalDim4QueueNode
      type, extends(Queue), public:: LogicalDim5Queue
         type(LogicalDim5QueueNode), pointer:: tail => null()
         type(LogicalDim5QueueNode), pointer:: head => null()
      end type LogicalDim5Queue

      type, extends(QueueNode):: LogicalDim5QueueNode
         Logical, dimension(:, :, :, :, :), allocatable:: value
         type(LogicalDim5QueueNode), pointer:: next => null()
      end type LogicalDim5QueueNode
      type, extends(Queue), public:: LogicalDim6Queue
         type(LogicalDim6QueueNode), pointer:: tail => null()
         type(LogicalDim6QueueNode), pointer:: head => null()
      end type LogicalDim6Queue

      type, extends(QueueNode):: LogicalDim6QueueNode
         Logical, dimension(:, :, :, :, :, :), allocatable:: value
         type(LogicalDim6QueueNode), pointer:: next => null()
      end type LogicalDim6QueueNode
      type, extends(Queue), public:: LogicalDim7Queue
         type(LogicalDim7QueueNode), pointer:: tail => null()
         type(LogicalDim7QueueNode), pointer:: head => null()
      end type LogicalDim7Queue

      type, extends(QueueNode):: LogicalDim7QueueNode
         Logical, dimension(:, :, :, :, :, :, :), allocatable:: value
         type(LogicalDim7QueueNode), pointer:: next => null()
      end type LogicalDim7QueueNode
      type, extends(Queue), public:: ComplexDim0KindREAL32Queue
         type(ComplexDim0KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim0KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim0KindREAL32Queue

      type, extends(QueueNode):: ComplexDim0KindREAL32QueueNode
         Complex(kind = REAL32):: value
         type(ComplexDim0KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim0KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim0KindREAL64Queue
         type(ComplexDim0KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim0KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim0KindREAL64Queue

      type, extends(QueueNode):: ComplexDim0KindREAL64QueueNode
         Complex(kind = REAL64):: value
         type(ComplexDim0KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim0KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim0KindREAL128Queue
         type(ComplexDim0KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim0KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim0KindREAL128Queue

      type, extends(QueueNode):: ComplexDim0KindREAL128QueueNode
         Complex(kind = REAL128):: value
         type(ComplexDim0KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim0KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim1KindREAL32Queue
         type(ComplexDim1KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim1KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim1KindREAL32Queue

      type, extends(QueueNode):: ComplexDim1KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim1KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim1KindREAL64Queue
         type(ComplexDim1KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim1KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim1KindREAL64Queue

      type, extends(QueueNode):: ComplexDim1KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim1KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim1KindREAL128Queue
         type(ComplexDim1KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim1KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim1KindREAL128Queue

      type, extends(QueueNode):: ComplexDim1KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:), allocatable:: value
         type(ComplexDim1KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim1KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim2KindREAL32Queue
         type(ComplexDim2KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim2KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim2KindREAL32Queue

      type, extends(QueueNode):: ComplexDim2KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim2KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim2KindREAL64Queue
         type(ComplexDim2KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim2KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim2KindREAL64Queue

      type, extends(QueueNode):: ComplexDim2KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim2KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim2KindREAL128Queue
         type(ComplexDim2KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim2KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim2KindREAL128Queue

      type, extends(QueueNode):: ComplexDim2KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:, :), allocatable:: value
         type(ComplexDim2KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim2KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim3KindREAL32Queue
         type(ComplexDim3KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim3KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim3KindREAL32Queue

      type, extends(QueueNode):: ComplexDim3KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim3KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim3KindREAL64Queue
         type(ComplexDim3KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim3KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim3KindREAL64Queue

      type, extends(QueueNode):: ComplexDim3KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim3KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim3KindREAL128Queue
         type(ComplexDim3KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim3KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim3KindREAL128Queue

      type, extends(QueueNode):: ComplexDim3KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:, :, :), allocatable:: value
         type(ComplexDim3KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim3KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim4KindREAL32Queue
         type(ComplexDim4KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim4KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim4KindREAL32Queue

      type, extends(QueueNode):: ComplexDim4KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim4KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim4KindREAL64Queue
         type(ComplexDim4KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim4KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim4KindREAL64Queue

      type, extends(QueueNode):: ComplexDim4KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim4KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim4KindREAL128Queue
         type(ComplexDim4KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim4KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim4KindREAL128Queue

      type, extends(QueueNode):: ComplexDim4KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:, :, :, :), allocatable:: value
         type(ComplexDim4KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim4KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim5KindREAL32Queue
         type(ComplexDim5KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim5KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim5KindREAL32Queue

      type, extends(QueueNode):: ComplexDim5KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim5KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim5KindREAL64Queue
         type(ComplexDim5KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim5KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim5KindREAL64Queue

      type, extends(QueueNode):: ComplexDim5KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim5KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim5KindREAL128Queue
         type(ComplexDim5KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim5KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim5KindREAL128Queue

      type, extends(QueueNode):: ComplexDim5KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:, :, :, :, :), allocatable:: value
         type(ComplexDim5KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim5KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim6KindREAL32Queue
         type(ComplexDim6KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim6KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim6KindREAL32Queue

      type, extends(QueueNode):: ComplexDim6KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim6KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim6KindREAL64Queue
         type(ComplexDim6KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim6KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim6KindREAL64Queue

      type, extends(QueueNode):: ComplexDim6KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim6KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim6KindREAL128Queue
         type(ComplexDim6KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim6KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim6KindREAL128Queue

      type, extends(QueueNode):: ComplexDim6KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:, :, :, :, :, :), allocatable:: value
         type(ComplexDim6KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim6KindREAL128QueueNode
      type, extends(Queue), public:: ComplexDim7KindREAL32Queue
         type(ComplexDim7KindREAL32QueueNode), pointer:: tail => null()
         type(ComplexDim7KindREAL32QueueNode), pointer:: head => null()
      end type ComplexDim7KindREAL32Queue

      type, extends(QueueNode):: ComplexDim7KindREAL32QueueNode
         Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL32QueueNode), pointer:: next => null()
      end type ComplexDim7KindREAL32QueueNode
      type, extends(Queue), public:: ComplexDim7KindREAL64Queue
         type(ComplexDim7KindREAL64QueueNode), pointer:: tail => null()
         type(ComplexDim7KindREAL64QueueNode), pointer:: head => null()
      end type ComplexDim7KindREAL64Queue

      type, extends(QueueNode):: ComplexDim7KindREAL64QueueNode
         Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL64QueueNode), pointer:: next => null()
      end type ComplexDim7KindREAL64QueueNode
      type, extends(Queue), public:: ComplexDim7KindREAL128Queue
         type(ComplexDim7KindREAL128QueueNode), pointer:: tail => null()
         type(ComplexDim7KindREAL128QueueNode), pointer:: head => null()
      end type ComplexDim7KindREAL128Queue

      type, extends(QueueNode):: ComplexDim7KindREAL128QueueNode
         Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(ComplexDim7KindREAL128QueueNode), pointer:: next => null()
      end type ComplexDim7KindREAL128QueueNode
      type, extends(Queue), public:: CharacterDim0Len1Queue
         type(CharacterDim0Len1QueueNode), pointer:: tail => null()
         type(CharacterDim0Len1QueueNode), pointer:: head => null()
      end type CharacterDim0Len1Queue

      type, extends(QueueNode):: CharacterDim0Len1QueueNode
         Character(len = 1):: value
         type(CharacterDim0Len1QueueNode), pointer:: next => null()
      end type CharacterDim0Len1QueueNode
      type, extends(Queue), public:: CharacterDim0Len2Queue
         type(CharacterDim0Len2QueueNode), pointer:: tail => null()
         type(CharacterDim0Len2QueueNode), pointer:: head => null()
      end type CharacterDim0Len2Queue

      type, extends(QueueNode):: CharacterDim0Len2QueueNode
         Character(len = 2):: value
         type(CharacterDim0Len2QueueNode), pointer:: next => null()
      end type CharacterDim0Len2QueueNode
      type, extends(Queue), public:: CharacterDim0Len4Queue
         type(CharacterDim0Len4QueueNode), pointer:: tail => null()
         type(CharacterDim0Len4QueueNode), pointer:: head => null()
      end type CharacterDim0Len4Queue

      type, extends(QueueNode):: CharacterDim0Len4QueueNode
         Character(len = 4):: value
         type(CharacterDim0Len4QueueNode), pointer:: next => null()
      end type CharacterDim0Len4QueueNode
      type, extends(Queue), public:: CharacterDim0Len8Queue
         type(CharacterDim0Len8QueueNode), pointer:: tail => null()
         type(CharacterDim0Len8QueueNode), pointer:: head => null()
      end type CharacterDim0Len8Queue

      type, extends(QueueNode):: CharacterDim0Len8QueueNode
         Character(len = 8):: value
         type(CharacterDim0Len8QueueNode), pointer:: next => null()
      end type CharacterDim0Len8QueueNode
      type, extends(Queue), public:: CharacterDim0Len16Queue
         type(CharacterDim0Len16QueueNode), pointer:: tail => null()
         type(CharacterDim0Len16QueueNode), pointer:: head => null()
      end type CharacterDim0Len16Queue

      type, extends(QueueNode):: CharacterDim0Len16QueueNode
         Character(len = 16):: value
         type(CharacterDim0Len16QueueNode), pointer:: next => null()
      end type CharacterDim0Len16QueueNode
      type, extends(Queue), public:: CharacterDim0Len32Queue
         type(CharacterDim0Len32QueueNode), pointer:: tail => null()
         type(CharacterDim0Len32QueueNode), pointer:: head => null()
      end type CharacterDim0Len32Queue

      type, extends(QueueNode):: CharacterDim0Len32QueueNode
         Character(len = 32):: value
         type(CharacterDim0Len32QueueNode), pointer:: next => null()
      end type CharacterDim0Len32QueueNode
      type, extends(Queue), public:: CharacterDim0Len64Queue
         type(CharacterDim0Len64QueueNode), pointer:: tail => null()
         type(CharacterDim0Len64QueueNode), pointer:: head => null()
      end type CharacterDim0Len64Queue

      type, extends(QueueNode):: CharacterDim0Len64QueueNode
         Character(len = 64):: value
         type(CharacterDim0Len64QueueNode), pointer:: next => null()
      end type CharacterDim0Len64QueueNode
      type, extends(Queue), public:: CharacterDim0Len128Queue
         type(CharacterDim0Len128QueueNode), pointer:: tail => null()
         type(CharacterDim0Len128QueueNode), pointer:: head => null()
      end type CharacterDim0Len128Queue

      type, extends(QueueNode):: CharacterDim0Len128QueueNode
         Character(len = 128):: value
         type(CharacterDim0Len128QueueNode), pointer:: next => null()
      end type CharacterDim0Len128QueueNode
      type, extends(Queue), public:: CharacterDim0Len256Queue
         type(CharacterDim0Len256QueueNode), pointer:: tail => null()
         type(CharacterDim0Len256QueueNode), pointer:: head => null()
      end type CharacterDim0Len256Queue

      type, extends(QueueNode):: CharacterDim0Len256QueueNode
         Character(len = 256):: value
         type(CharacterDim0Len256QueueNode), pointer:: next => null()
      end type CharacterDim0Len256QueueNode
      type, extends(Queue), public:: CharacterDim0Len512Queue
         type(CharacterDim0Len512QueueNode), pointer:: tail => null()
         type(CharacterDim0Len512QueueNode), pointer:: head => null()
      end type CharacterDim0Len512Queue

      type, extends(QueueNode):: CharacterDim0Len512QueueNode
         Character(len = 512):: value
         type(CharacterDim0Len512QueueNode), pointer:: next => null()
      end type CharacterDim0Len512QueueNode
      type, extends(Queue), public:: CharacterDim0Len1024Queue
         type(CharacterDim0Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim0Len1024QueueNode), pointer:: head => null()
      end type CharacterDim0Len1024Queue

      type, extends(QueueNode):: CharacterDim0Len1024QueueNode
         Character(len = 1024):: value
         type(CharacterDim0Len1024QueueNode), pointer:: next => null()
      end type CharacterDim0Len1024QueueNode
      type, extends(Queue), public:: CharacterDim1Len1Queue
         type(CharacterDim1Len1QueueNode), pointer:: tail => null()
         type(CharacterDim1Len1QueueNode), pointer:: head => null()
      end type CharacterDim1Len1Queue

      type, extends(QueueNode):: CharacterDim1Len1QueueNode
         Character(len = 1), dimension(:), allocatable:: value
         type(CharacterDim1Len1QueueNode), pointer:: next => null()
      end type CharacterDim1Len1QueueNode
      type, extends(Queue), public:: CharacterDim1Len2Queue
         type(CharacterDim1Len2QueueNode), pointer:: tail => null()
         type(CharacterDim1Len2QueueNode), pointer:: head => null()
      end type CharacterDim1Len2Queue

      type, extends(QueueNode):: CharacterDim1Len2QueueNode
         Character(len = 2), dimension(:), allocatable:: value
         type(CharacterDim1Len2QueueNode), pointer:: next => null()
      end type CharacterDim1Len2QueueNode
      type, extends(Queue), public:: CharacterDim1Len4Queue
         type(CharacterDim1Len4QueueNode), pointer:: tail => null()
         type(CharacterDim1Len4QueueNode), pointer:: head => null()
      end type CharacterDim1Len4Queue

      type, extends(QueueNode):: CharacterDim1Len4QueueNode
         Character(len = 4), dimension(:), allocatable:: value
         type(CharacterDim1Len4QueueNode), pointer:: next => null()
      end type CharacterDim1Len4QueueNode
      type, extends(Queue), public:: CharacterDim1Len8Queue
         type(CharacterDim1Len8QueueNode), pointer:: tail => null()
         type(CharacterDim1Len8QueueNode), pointer:: head => null()
      end type CharacterDim1Len8Queue

      type, extends(QueueNode):: CharacterDim1Len8QueueNode
         Character(len = 8), dimension(:), allocatable:: value
         type(CharacterDim1Len8QueueNode), pointer:: next => null()
      end type CharacterDim1Len8QueueNode
      type, extends(Queue), public:: CharacterDim1Len16Queue
         type(CharacterDim1Len16QueueNode), pointer:: tail => null()
         type(CharacterDim1Len16QueueNode), pointer:: head => null()
      end type CharacterDim1Len16Queue

      type, extends(QueueNode):: CharacterDim1Len16QueueNode
         Character(len = 16), dimension(:), allocatable:: value
         type(CharacterDim1Len16QueueNode), pointer:: next => null()
      end type CharacterDim1Len16QueueNode
      type, extends(Queue), public:: CharacterDim1Len32Queue
         type(CharacterDim1Len32QueueNode), pointer:: tail => null()
         type(CharacterDim1Len32QueueNode), pointer:: head => null()
      end type CharacterDim1Len32Queue

      type, extends(QueueNode):: CharacterDim1Len32QueueNode
         Character(len = 32), dimension(:), allocatable:: value
         type(CharacterDim1Len32QueueNode), pointer:: next => null()
      end type CharacterDim1Len32QueueNode
      type, extends(Queue), public:: CharacterDim1Len64Queue
         type(CharacterDim1Len64QueueNode), pointer:: tail => null()
         type(CharacterDim1Len64QueueNode), pointer:: head => null()
      end type CharacterDim1Len64Queue

      type, extends(QueueNode):: CharacterDim1Len64QueueNode
         Character(len = 64), dimension(:), allocatable:: value
         type(CharacterDim1Len64QueueNode), pointer:: next => null()
      end type CharacterDim1Len64QueueNode
      type, extends(Queue), public:: CharacterDim1Len128Queue
         type(CharacterDim1Len128QueueNode), pointer:: tail => null()
         type(CharacterDim1Len128QueueNode), pointer:: head => null()
      end type CharacterDim1Len128Queue

      type, extends(QueueNode):: CharacterDim1Len128QueueNode
         Character(len = 128), dimension(:), allocatable:: value
         type(CharacterDim1Len128QueueNode), pointer:: next => null()
      end type CharacterDim1Len128QueueNode
      type, extends(Queue), public:: CharacterDim1Len256Queue
         type(CharacterDim1Len256QueueNode), pointer:: tail => null()
         type(CharacterDim1Len256QueueNode), pointer:: head => null()
      end type CharacterDim1Len256Queue

      type, extends(QueueNode):: CharacterDim1Len256QueueNode
         Character(len = 256), dimension(:), allocatable:: value
         type(CharacterDim1Len256QueueNode), pointer:: next => null()
      end type CharacterDim1Len256QueueNode
      type, extends(Queue), public:: CharacterDim1Len512Queue
         type(CharacterDim1Len512QueueNode), pointer:: tail => null()
         type(CharacterDim1Len512QueueNode), pointer:: head => null()
      end type CharacterDim1Len512Queue

      type, extends(QueueNode):: CharacterDim1Len512QueueNode
         Character(len = 512), dimension(:), allocatable:: value
         type(CharacterDim1Len512QueueNode), pointer:: next => null()
      end type CharacterDim1Len512QueueNode
      type, extends(Queue), public:: CharacterDim1Len1024Queue
         type(CharacterDim1Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim1Len1024QueueNode), pointer:: head => null()
      end type CharacterDim1Len1024Queue

      type, extends(QueueNode):: CharacterDim1Len1024QueueNode
         Character(len = 1024), dimension(:), allocatable:: value
         type(CharacterDim1Len1024QueueNode), pointer:: next => null()
      end type CharacterDim1Len1024QueueNode
      type, extends(Queue), public:: CharacterDim2Len1Queue
         type(CharacterDim2Len1QueueNode), pointer:: tail => null()
         type(CharacterDim2Len1QueueNode), pointer:: head => null()
      end type CharacterDim2Len1Queue

      type, extends(QueueNode):: CharacterDim2Len1QueueNode
         Character(len = 1), dimension(:, :), allocatable:: value
         type(CharacterDim2Len1QueueNode), pointer:: next => null()
      end type CharacterDim2Len1QueueNode
      type, extends(Queue), public:: CharacterDim2Len2Queue
         type(CharacterDim2Len2QueueNode), pointer:: tail => null()
         type(CharacterDim2Len2QueueNode), pointer:: head => null()
      end type CharacterDim2Len2Queue

      type, extends(QueueNode):: CharacterDim2Len2QueueNode
         Character(len = 2), dimension(:, :), allocatable:: value
         type(CharacterDim2Len2QueueNode), pointer:: next => null()
      end type CharacterDim2Len2QueueNode
      type, extends(Queue), public:: CharacterDim2Len4Queue
         type(CharacterDim2Len4QueueNode), pointer:: tail => null()
         type(CharacterDim2Len4QueueNode), pointer:: head => null()
      end type CharacterDim2Len4Queue

      type, extends(QueueNode):: CharacterDim2Len4QueueNode
         Character(len = 4), dimension(:, :), allocatable:: value
         type(CharacterDim2Len4QueueNode), pointer:: next => null()
      end type CharacterDim2Len4QueueNode
      type, extends(Queue), public:: CharacterDim2Len8Queue
         type(CharacterDim2Len8QueueNode), pointer:: tail => null()
         type(CharacterDim2Len8QueueNode), pointer:: head => null()
      end type CharacterDim2Len8Queue

      type, extends(QueueNode):: CharacterDim2Len8QueueNode
         Character(len = 8), dimension(:, :), allocatable:: value
         type(CharacterDim2Len8QueueNode), pointer:: next => null()
      end type CharacterDim2Len8QueueNode
      type, extends(Queue), public:: CharacterDim2Len16Queue
         type(CharacterDim2Len16QueueNode), pointer:: tail => null()
         type(CharacterDim2Len16QueueNode), pointer:: head => null()
      end type CharacterDim2Len16Queue

      type, extends(QueueNode):: CharacterDim2Len16QueueNode
         Character(len = 16), dimension(:, :), allocatable:: value
         type(CharacterDim2Len16QueueNode), pointer:: next => null()
      end type CharacterDim2Len16QueueNode
      type, extends(Queue), public:: CharacterDim2Len32Queue
         type(CharacterDim2Len32QueueNode), pointer:: tail => null()
         type(CharacterDim2Len32QueueNode), pointer:: head => null()
      end type CharacterDim2Len32Queue

      type, extends(QueueNode):: CharacterDim2Len32QueueNode
         Character(len = 32), dimension(:, :), allocatable:: value
         type(CharacterDim2Len32QueueNode), pointer:: next => null()
      end type CharacterDim2Len32QueueNode
      type, extends(Queue), public:: CharacterDim2Len64Queue
         type(CharacterDim2Len64QueueNode), pointer:: tail => null()
         type(CharacterDim2Len64QueueNode), pointer:: head => null()
      end type CharacterDim2Len64Queue

      type, extends(QueueNode):: CharacterDim2Len64QueueNode
         Character(len = 64), dimension(:, :), allocatable:: value
         type(CharacterDim2Len64QueueNode), pointer:: next => null()
      end type CharacterDim2Len64QueueNode
      type, extends(Queue), public:: CharacterDim2Len128Queue
         type(CharacterDim2Len128QueueNode), pointer:: tail => null()
         type(CharacterDim2Len128QueueNode), pointer:: head => null()
      end type CharacterDim2Len128Queue

      type, extends(QueueNode):: CharacterDim2Len128QueueNode
         Character(len = 128), dimension(:, :), allocatable:: value
         type(CharacterDim2Len128QueueNode), pointer:: next => null()
      end type CharacterDim2Len128QueueNode
      type, extends(Queue), public:: CharacterDim2Len256Queue
         type(CharacterDim2Len256QueueNode), pointer:: tail => null()
         type(CharacterDim2Len256QueueNode), pointer:: head => null()
      end type CharacterDim2Len256Queue

      type, extends(QueueNode):: CharacterDim2Len256QueueNode
         Character(len = 256), dimension(:, :), allocatable:: value
         type(CharacterDim2Len256QueueNode), pointer:: next => null()
      end type CharacterDim2Len256QueueNode
      type, extends(Queue), public:: CharacterDim2Len512Queue
         type(CharacterDim2Len512QueueNode), pointer:: tail => null()
         type(CharacterDim2Len512QueueNode), pointer:: head => null()
      end type CharacterDim2Len512Queue

      type, extends(QueueNode):: CharacterDim2Len512QueueNode
         Character(len = 512), dimension(:, :), allocatable:: value
         type(CharacterDim2Len512QueueNode), pointer:: next => null()
      end type CharacterDim2Len512QueueNode
      type, extends(Queue), public:: CharacterDim2Len1024Queue
         type(CharacterDim2Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim2Len1024QueueNode), pointer:: head => null()
      end type CharacterDim2Len1024Queue

      type, extends(QueueNode):: CharacterDim2Len1024QueueNode
         Character(len = 1024), dimension(:, :), allocatable:: value
         type(CharacterDim2Len1024QueueNode), pointer:: next => null()
      end type CharacterDim2Len1024QueueNode
      type, extends(Queue), public:: CharacterDim3Len1Queue
         type(CharacterDim3Len1QueueNode), pointer:: tail => null()
         type(CharacterDim3Len1QueueNode), pointer:: head => null()
      end type CharacterDim3Len1Queue

      type, extends(QueueNode):: CharacterDim3Len1QueueNode
         Character(len = 1), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len1QueueNode), pointer:: next => null()
      end type CharacterDim3Len1QueueNode
      type, extends(Queue), public:: CharacterDim3Len2Queue
         type(CharacterDim3Len2QueueNode), pointer:: tail => null()
         type(CharacterDim3Len2QueueNode), pointer:: head => null()
      end type CharacterDim3Len2Queue

      type, extends(QueueNode):: CharacterDim3Len2QueueNode
         Character(len = 2), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len2QueueNode), pointer:: next => null()
      end type CharacterDim3Len2QueueNode
      type, extends(Queue), public:: CharacterDim3Len4Queue
         type(CharacterDim3Len4QueueNode), pointer:: tail => null()
         type(CharacterDim3Len4QueueNode), pointer:: head => null()
      end type CharacterDim3Len4Queue

      type, extends(QueueNode):: CharacterDim3Len4QueueNode
         Character(len = 4), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len4QueueNode), pointer:: next => null()
      end type CharacterDim3Len4QueueNode
      type, extends(Queue), public:: CharacterDim3Len8Queue
         type(CharacterDim3Len8QueueNode), pointer:: tail => null()
         type(CharacterDim3Len8QueueNode), pointer:: head => null()
      end type CharacterDim3Len8Queue

      type, extends(QueueNode):: CharacterDim3Len8QueueNode
         Character(len = 8), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len8QueueNode), pointer:: next => null()
      end type CharacterDim3Len8QueueNode
      type, extends(Queue), public:: CharacterDim3Len16Queue
         type(CharacterDim3Len16QueueNode), pointer:: tail => null()
         type(CharacterDim3Len16QueueNode), pointer:: head => null()
      end type CharacterDim3Len16Queue

      type, extends(QueueNode):: CharacterDim3Len16QueueNode
         Character(len = 16), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len16QueueNode), pointer:: next => null()
      end type CharacterDim3Len16QueueNode
      type, extends(Queue), public:: CharacterDim3Len32Queue
         type(CharacterDim3Len32QueueNode), pointer:: tail => null()
         type(CharacterDim3Len32QueueNode), pointer:: head => null()
      end type CharacterDim3Len32Queue

      type, extends(QueueNode):: CharacterDim3Len32QueueNode
         Character(len = 32), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len32QueueNode), pointer:: next => null()
      end type CharacterDim3Len32QueueNode
      type, extends(Queue), public:: CharacterDim3Len64Queue
         type(CharacterDim3Len64QueueNode), pointer:: tail => null()
         type(CharacterDim3Len64QueueNode), pointer:: head => null()
      end type CharacterDim3Len64Queue

      type, extends(QueueNode):: CharacterDim3Len64QueueNode
         Character(len = 64), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len64QueueNode), pointer:: next => null()
      end type CharacterDim3Len64QueueNode
      type, extends(Queue), public:: CharacterDim3Len128Queue
         type(CharacterDim3Len128QueueNode), pointer:: tail => null()
         type(CharacterDim3Len128QueueNode), pointer:: head => null()
      end type CharacterDim3Len128Queue

      type, extends(QueueNode):: CharacterDim3Len128QueueNode
         Character(len = 128), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len128QueueNode), pointer:: next => null()
      end type CharacterDim3Len128QueueNode
      type, extends(Queue), public:: CharacterDim3Len256Queue
         type(CharacterDim3Len256QueueNode), pointer:: tail => null()
         type(CharacterDim3Len256QueueNode), pointer:: head => null()
      end type CharacterDim3Len256Queue

      type, extends(QueueNode):: CharacterDim3Len256QueueNode
         Character(len = 256), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len256QueueNode), pointer:: next => null()
      end type CharacterDim3Len256QueueNode
      type, extends(Queue), public:: CharacterDim3Len512Queue
         type(CharacterDim3Len512QueueNode), pointer:: tail => null()
         type(CharacterDim3Len512QueueNode), pointer:: head => null()
      end type CharacterDim3Len512Queue

      type, extends(QueueNode):: CharacterDim3Len512QueueNode
         Character(len = 512), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len512QueueNode), pointer:: next => null()
      end type CharacterDim3Len512QueueNode
      type, extends(Queue), public:: CharacterDim3Len1024Queue
         type(CharacterDim3Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim3Len1024QueueNode), pointer:: head => null()
      end type CharacterDim3Len1024Queue

      type, extends(QueueNode):: CharacterDim3Len1024QueueNode
         Character(len = 1024), dimension(:, :, :), allocatable:: value
         type(CharacterDim3Len1024QueueNode), pointer:: next => null()
      end type CharacterDim3Len1024QueueNode
      type, extends(Queue), public:: CharacterDim4Len1Queue
         type(CharacterDim4Len1QueueNode), pointer:: tail => null()
         type(CharacterDim4Len1QueueNode), pointer:: head => null()
      end type CharacterDim4Len1Queue

      type, extends(QueueNode):: CharacterDim4Len1QueueNode
         Character(len = 1), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len1QueueNode), pointer:: next => null()
      end type CharacterDim4Len1QueueNode
      type, extends(Queue), public:: CharacterDim4Len2Queue
         type(CharacterDim4Len2QueueNode), pointer:: tail => null()
         type(CharacterDim4Len2QueueNode), pointer:: head => null()
      end type CharacterDim4Len2Queue

      type, extends(QueueNode):: CharacterDim4Len2QueueNode
         Character(len = 2), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len2QueueNode), pointer:: next => null()
      end type CharacterDim4Len2QueueNode
      type, extends(Queue), public:: CharacterDim4Len4Queue
         type(CharacterDim4Len4QueueNode), pointer:: tail => null()
         type(CharacterDim4Len4QueueNode), pointer:: head => null()
      end type CharacterDim4Len4Queue

      type, extends(QueueNode):: CharacterDim4Len4QueueNode
         Character(len = 4), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len4QueueNode), pointer:: next => null()
      end type CharacterDim4Len4QueueNode
      type, extends(Queue), public:: CharacterDim4Len8Queue
         type(CharacterDim4Len8QueueNode), pointer:: tail => null()
         type(CharacterDim4Len8QueueNode), pointer:: head => null()
      end type CharacterDim4Len8Queue

      type, extends(QueueNode):: CharacterDim4Len8QueueNode
         Character(len = 8), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len8QueueNode), pointer:: next => null()
      end type CharacterDim4Len8QueueNode
      type, extends(Queue), public:: CharacterDim4Len16Queue
         type(CharacterDim4Len16QueueNode), pointer:: tail => null()
         type(CharacterDim4Len16QueueNode), pointer:: head => null()
      end type CharacterDim4Len16Queue

      type, extends(QueueNode):: CharacterDim4Len16QueueNode
         Character(len = 16), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len16QueueNode), pointer:: next => null()
      end type CharacterDim4Len16QueueNode
      type, extends(Queue), public:: CharacterDim4Len32Queue
         type(CharacterDim4Len32QueueNode), pointer:: tail => null()
         type(CharacterDim4Len32QueueNode), pointer:: head => null()
      end type CharacterDim4Len32Queue

      type, extends(QueueNode):: CharacterDim4Len32QueueNode
         Character(len = 32), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len32QueueNode), pointer:: next => null()
      end type CharacterDim4Len32QueueNode
      type, extends(Queue), public:: CharacterDim4Len64Queue
         type(CharacterDim4Len64QueueNode), pointer:: tail => null()
         type(CharacterDim4Len64QueueNode), pointer:: head => null()
      end type CharacterDim4Len64Queue

      type, extends(QueueNode):: CharacterDim4Len64QueueNode
         Character(len = 64), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len64QueueNode), pointer:: next => null()
      end type CharacterDim4Len64QueueNode
      type, extends(Queue), public:: CharacterDim4Len128Queue
         type(CharacterDim4Len128QueueNode), pointer:: tail => null()
         type(CharacterDim4Len128QueueNode), pointer:: head => null()
      end type CharacterDim4Len128Queue

      type, extends(QueueNode):: CharacterDim4Len128QueueNode
         Character(len = 128), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len128QueueNode), pointer:: next => null()
      end type CharacterDim4Len128QueueNode
      type, extends(Queue), public:: CharacterDim4Len256Queue
         type(CharacterDim4Len256QueueNode), pointer:: tail => null()
         type(CharacterDim4Len256QueueNode), pointer:: head => null()
      end type CharacterDim4Len256Queue

      type, extends(QueueNode):: CharacterDim4Len256QueueNode
         Character(len = 256), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len256QueueNode), pointer:: next => null()
      end type CharacterDim4Len256QueueNode
      type, extends(Queue), public:: CharacterDim4Len512Queue
         type(CharacterDim4Len512QueueNode), pointer:: tail => null()
         type(CharacterDim4Len512QueueNode), pointer:: head => null()
      end type CharacterDim4Len512Queue

      type, extends(QueueNode):: CharacterDim4Len512QueueNode
         Character(len = 512), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len512QueueNode), pointer:: next => null()
      end type CharacterDim4Len512QueueNode
      type, extends(Queue), public:: CharacterDim4Len1024Queue
         type(CharacterDim4Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim4Len1024QueueNode), pointer:: head => null()
      end type CharacterDim4Len1024Queue

      type, extends(QueueNode):: CharacterDim4Len1024QueueNode
         Character(len = 1024), dimension(:, :, :, :), allocatable:: value
         type(CharacterDim4Len1024QueueNode), pointer:: next => null()
      end type CharacterDim4Len1024QueueNode
      type, extends(Queue), public:: CharacterDim5Len1Queue
         type(CharacterDim5Len1QueueNode), pointer:: tail => null()
         type(CharacterDim5Len1QueueNode), pointer:: head => null()
      end type CharacterDim5Len1Queue

      type, extends(QueueNode):: CharacterDim5Len1QueueNode
         Character(len = 1), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len1QueueNode), pointer:: next => null()
      end type CharacterDim5Len1QueueNode
      type, extends(Queue), public:: CharacterDim5Len2Queue
         type(CharacterDim5Len2QueueNode), pointer:: tail => null()
         type(CharacterDim5Len2QueueNode), pointer:: head => null()
      end type CharacterDim5Len2Queue

      type, extends(QueueNode):: CharacterDim5Len2QueueNode
         Character(len = 2), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len2QueueNode), pointer:: next => null()
      end type CharacterDim5Len2QueueNode
      type, extends(Queue), public:: CharacterDim5Len4Queue
         type(CharacterDim5Len4QueueNode), pointer:: tail => null()
         type(CharacterDim5Len4QueueNode), pointer:: head => null()
      end type CharacterDim5Len4Queue

      type, extends(QueueNode):: CharacterDim5Len4QueueNode
         Character(len = 4), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len4QueueNode), pointer:: next => null()
      end type CharacterDim5Len4QueueNode
      type, extends(Queue), public:: CharacterDim5Len8Queue
         type(CharacterDim5Len8QueueNode), pointer:: tail => null()
         type(CharacterDim5Len8QueueNode), pointer:: head => null()
      end type CharacterDim5Len8Queue

      type, extends(QueueNode):: CharacterDim5Len8QueueNode
         Character(len = 8), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len8QueueNode), pointer:: next => null()
      end type CharacterDim5Len8QueueNode
      type, extends(Queue), public:: CharacterDim5Len16Queue
         type(CharacterDim5Len16QueueNode), pointer:: tail => null()
         type(CharacterDim5Len16QueueNode), pointer:: head => null()
      end type CharacterDim5Len16Queue

      type, extends(QueueNode):: CharacterDim5Len16QueueNode
         Character(len = 16), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len16QueueNode), pointer:: next => null()
      end type CharacterDim5Len16QueueNode
      type, extends(Queue), public:: CharacterDim5Len32Queue
         type(CharacterDim5Len32QueueNode), pointer:: tail => null()
         type(CharacterDim5Len32QueueNode), pointer:: head => null()
      end type CharacterDim5Len32Queue

      type, extends(QueueNode):: CharacterDim5Len32QueueNode
         Character(len = 32), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len32QueueNode), pointer:: next => null()
      end type CharacterDim5Len32QueueNode
      type, extends(Queue), public:: CharacterDim5Len64Queue
         type(CharacterDim5Len64QueueNode), pointer:: tail => null()
         type(CharacterDim5Len64QueueNode), pointer:: head => null()
      end type CharacterDim5Len64Queue

      type, extends(QueueNode):: CharacterDim5Len64QueueNode
         Character(len = 64), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len64QueueNode), pointer:: next => null()
      end type CharacterDim5Len64QueueNode
      type, extends(Queue), public:: CharacterDim5Len128Queue
         type(CharacterDim5Len128QueueNode), pointer:: tail => null()
         type(CharacterDim5Len128QueueNode), pointer:: head => null()
      end type CharacterDim5Len128Queue

      type, extends(QueueNode):: CharacterDim5Len128QueueNode
         Character(len = 128), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len128QueueNode), pointer:: next => null()
      end type CharacterDim5Len128QueueNode
      type, extends(Queue), public:: CharacterDim5Len256Queue
         type(CharacterDim5Len256QueueNode), pointer:: tail => null()
         type(CharacterDim5Len256QueueNode), pointer:: head => null()
      end type CharacterDim5Len256Queue

      type, extends(QueueNode):: CharacterDim5Len256QueueNode
         Character(len = 256), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len256QueueNode), pointer:: next => null()
      end type CharacterDim5Len256QueueNode
      type, extends(Queue), public:: CharacterDim5Len512Queue
         type(CharacterDim5Len512QueueNode), pointer:: tail => null()
         type(CharacterDim5Len512QueueNode), pointer:: head => null()
      end type CharacterDim5Len512Queue

      type, extends(QueueNode):: CharacterDim5Len512QueueNode
         Character(len = 512), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len512QueueNode), pointer:: next => null()
      end type CharacterDim5Len512QueueNode
      type, extends(Queue), public:: CharacterDim5Len1024Queue
         type(CharacterDim5Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim5Len1024QueueNode), pointer:: head => null()
      end type CharacterDim5Len1024Queue

      type, extends(QueueNode):: CharacterDim5Len1024QueueNode
         Character(len = 1024), dimension(:, :, :, :, :), allocatable:: value
         type(CharacterDim5Len1024QueueNode), pointer:: next => null()
      end type CharacterDim5Len1024QueueNode
      type, extends(Queue), public:: CharacterDim6Len1Queue
         type(CharacterDim6Len1QueueNode), pointer:: tail => null()
         type(CharacterDim6Len1QueueNode), pointer:: head => null()
      end type CharacterDim6Len1Queue

      type, extends(QueueNode):: CharacterDim6Len1QueueNode
         Character(len = 1), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len1QueueNode), pointer:: next => null()
      end type CharacterDim6Len1QueueNode
      type, extends(Queue), public:: CharacterDim6Len2Queue
         type(CharacterDim6Len2QueueNode), pointer:: tail => null()
         type(CharacterDim6Len2QueueNode), pointer:: head => null()
      end type CharacterDim6Len2Queue

      type, extends(QueueNode):: CharacterDim6Len2QueueNode
         Character(len = 2), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len2QueueNode), pointer:: next => null()
      end type CharacterDim6Len2QueueNode
      type, extends(Queue), public:: CharacterDim6Len4Queue
         type(CharacterDim6Len4QueueNode), pointer:: tail => null()
         type(CharacterDim6Len4QueueNode), pointer:: head => null()
      end type CharacterDim6Len4Queue

      type, extends(QueueNode):: CharacterDim6Len4QueueNode
         Character(len = 4), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len4QueueNode), pointer:: next => null()
      end type CharacterDim6Len4QueueNode
      type, extends(Queue), public:: CharacterDim6Len8Queue
         type(CharacterDim6Len8QueueNode), pointer:: tail => null()
         type(CharacterDim6Len8QueueNode), pointer:: head => null()
      end type CharacterDim6Len8Queue

      type, extends(QueueNode):: CharacterDim6Len8QueueNode
         Character(len = 8), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len8QueueNode), pointer:: next => null()
      end type CharacterDim6Len8QueueNode
      type, extends(Queue), public:: CharacterDim6Len16Queue
         type(CharacterDim6Len16QueueNode), pointer:: tail => null()
         type(CharacterDim6Len16QueueNode), pointer:: head => null()
      end type CharacterDim6Len16Queue

      type, extends(QueueNode):: CharacterDim6Len16QueueNode
         Character(len = 16), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len16QueueNode), pointer:: next => null()
      end type CharacterDim6Len16QueueNode
      type, extends(Queue), public:: CharacterDim6Len32Queue
         type(CharacterDim6Len32QueueNode), pointer:: tail => null()
         type(CharacterDim6Len32QueueNode), pointer:: head => null()
      end type CharacterDim6Len32Queue

      type, extends(QueueNode):: CharacterDim6Len32QueueNode
         Character(len = 32), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len32QueueNode), pointer:: next => null()
      end type CharacterDim6Len32QueueNode
      type, extends(Queue), public:: CharacterDim6Len64Queue
         type(CharacterDim6Len64QueueNode), pointer:: tail => null()
         type(CharacterDim6Len64QueueNode), pointer:: head => null()
      end type CharacterDim6Len64Queue

      type, extends(QueueNode):: CharacterDim6Len64QueueNode
         Character(len = 64), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len64QueueNode), pointer:: next => null()
      end type CharacterDim6Len64QueueNode
      type, extends(Queue), public:: CharacterDim6Len128Queue
         type(CharacterDim6Len128QueueNode), pointer:: tail => null()
         type(CharacterDim6Len128QueueNode), pointer:: head => null()
      end type CharacterDim6Len128Queue

      type, extends(QueueNode):: CharacterDim6Len128QueueNode
         Character(len = 128), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len128QueueNode), pointer:: next => null()
      end type CharacterDim6Len128QueueNode
      type, extends(Queue), public:: CharacterDim6Len256Queue
         type(CharacterDim6Len256QueueNode), pointer:: tail => null()
         type(CharacterDim6Len256QueueNode), pointer:: head => null()
      end type CharacterDim6Len256Queue

      type, extends(QueueNode):: CharacterDim6Len256QueueNode
         Character(len = 256), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len256QueueNode), pointer:: next => null()
      end type CharacterDim6Len256QueueNode
      type, extends(Queue), public:: CharacterDim6Len512Queue
         type(CharacterDim6Len512QueueNode), pointer:: tail => null()
         type(CharacterDim6Len512QueueNode), pointer:: head => null()
      end type CharacterDim6Len512Queue

      type, extends(QueueNode):: CharacterDim6Len512QueueNode
         Character(len = 512), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len512QueueNode), pointer:: next => null()
      end type CharacterDim6Len512QueueNode
      type, extends(Queue), public:: CharacterDim6Len1024Queue
         type(CharacterDim6Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim6Len1024QueueNode), pointer:: head => null()
      end type CharacterDim6Len1024Queue

      type, extends(QueueNode):: CharacterDim6Len1024QueueNode
         Character(len = 1024), dimension(:, :, :, :, :, :), allocatable:: value
         type(CharacterDim6Len1024QueueNode), pointer:: next => null()
      end type CharacterDim6Len1024QueueNode
      type, extends(Queue), public:: CharacterDim7Len1Queue
         type(CharacterDim7Len1QueueNode), pointer:: tail => null()
         type(CharacterDim7Len1QueueNode), pointer:: head => null()
      end type CharacterDim7Len1Queue

      type, extends(QueueNode):: CharacterDim7Len1QueueNode
         Character(len = 1), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len1QueueNode), pointer:: next => null()
      end type CharacterDim7Len1QueueNode
      type, extends(Queue), public:: CharacterDim7Len2Queue
         type(CharacterDim7Len2QueueNode), pointer:: tail => null()
         type(CharacterDim7Len2QueueNode), pointer:: head => null()
      end type CharacterDim7Len2Queue

      type, extends(QueueNode):: CharacterDim7Len2QueueNode
         Character(len = 2), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len2QueueNode), pointer:: next => null()
      end type CharacterDim7Len2QueueNode
      type, extends(Queue), public:: CharacterDim7Len4Queue
         type(CharacterDim7Len4QueueNode), pointer:: tail => null()
         type(CharacterDim7Len4QueueNode), pointer:: head => null()
      end type CharacterDim7Len4Queue

      type, extends(QueueNode):: CharacterDim7Len4QueueNode
         Character(len = 4), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len4QueueNode), pointer:: next => null()
      end type CharacterDim7Len4QueueNode
      type, extends(Queue), public:: CharacterDim7Len8Queue
         type(CharacterDim7Len8QueueNode), pointer:: tail => null()
         type(CharacterDim7Len8QueueNode), pointer:: head => null()
      end type CharacterDim7Len8Queue

      type, extends(QueueNode):: CharacterDim7Len8QueueNode
         Character(len = 8), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len8QueueNode), pointer:: next => null()
      end type CharacterDim7Len8QueueNode
      type, extends(Queue), public:: CharacterDim7Len16Queue
         type(CharacterDim7Len16QueueNode), pointer:: tail => null()
         type(CharacterDim7Len16QueueNode), pointer:: head => null()
      end type CharacterDim7Len16Queue

      type, extends(QueueNode):: CharacterDim7Len16QueueNode
         Character(len = 16), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len16QueueNode), pointer:: next => null()
      end type CharacterDim7Len16QueueNode
      type, extends(Queue), public:: CharacterDim7Len32Queue
         type(CharacterDim7Len32QueueNode), pointer:: tail => null()
         type(CharacterDim7Len32QueueNode), pointer:: head => null()
      end type CharacterDim7Len32Queue

      type, extends(QueueNode):: CharacterDim7Len32QueueNode
         Character(len = 32), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len32QueueNode), pointer:: next => null()
      end type CharacterDim7Len32QueueNode
      type, extends(Queue), public:: CharacterDim7Len64Queue
         type(CharacterDim7Len64QueueNode), pointer:: tail => null()
         type(CharacterDim7Len64QueueNode), pointer:: head => null()
      end type CharacterDim7Len64Queue

      type, extends(QueueNode):: CharacterDim7Len64QueueNode
         Character(len = 64), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len64QueueNode), pointer:: next => null()
      end type CharacterDim7Len64QueueNode
      type, extends(Queue), public:: CharacterDim7Len128Queue
         type(CharacterDim7Len128QueueNode), pointer:: tail => null()
         type(CharacterDim7Len128QueueNode), pointer:: head => null()
      end type CharacterDim7Len128Queue

      type, extends(QueueNode):: CharacterDim7Len128QueueNode
         Character(len = 128), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len128QueueNode), pointer:: next => null()
      end type CharacterDim7Len128QueueNode
      type, extends(Queue), public:: CharacterDim7Len256Queue
         type(CharacterDim7Len256QueueNode), pointer:: tail => null()
         type(CharacterDim7Len256QueueNode), pointer:: head => null()
      end type CharacterDim7Len256Queue

      type, extends(QueueNode):: CharacterDim7Len256QueueNode
         Character(len = 256), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len256QueueNode), pointer:: next => null()
      end type CharacterDim7Len256QueueNode
      type, extends(Queue), public:: CharacterDim7Len512Queue
         type(CharacterDim7Len512QueueNode), pointer:: tail => null()
         type(CharacterDim7Len512QueueNode), pointer:: head => null()
      end type CharacterDim7Len512Queue

      type, extends(QueueNode):: CharacterDim7Len512QueueNode
         Character(len = 512), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len512QueueNode), pointer:: next => null()
      end type CharacterDim7Len512QueueNode
      type, extends(Queue), public:: CharacterDim7Len1024Queue
         type(CharacterDim7Len1024QueueNode), pointer:: tail => null()
         type(CharacterDim7Len1024QueueNode), pointer:: head => null()
      end type CharacterDim7Len1024Queue

      type, extends(QueueNode):: CharacterDim7Len1024QueueNode
         Character(len = 1024), dimension(:, :, :, :, :, :, :), allocatable:: value
         type(CharacterDim7Len1024QueueNode), pointer:: next => null()
      end type CharacterDim7Len1024QueueNode

contains

      subroutine pushRealDim0KindREAL32Queue(queue, value)
         type(RealDim0KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), intent(in):: value
         type(RealDim0KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0KindREAL32Queue
         !    type(RealDim0KindREAL32QueueNode), target:: root
         !    type(RealDim0KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim0KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim0KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim0KindREAL32Queue

      function shiftRealDim0KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim0KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0KindREAL32Queue

      function is_emptyRealDim0KindREAL32Queue(queue) result(answer)
         type(RealDim0KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim0KindREAL32Queue
      subroutine pushRealDim0KindREAL64Queue(queue, value)
         type(RealDim0KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), intent(in):: value
         type(RealDim0KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0KindREAL64Queue
         !    type(RealDim0KindREAL64QueueNode), target:: root
         !    type(RealDim0KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim0KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim0KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim0KindREAL64Queue

      function shiftRealDim0KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim0KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0KindREAL64Queue

      function is_emptyRealDim0KindREAL64Queue(queue) result(answer)
         type(RealDim0KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim0KindREAL64Queue
      subroutine pushRealDim0KindREAL128Queue(queue, value)
         type(RealDim0KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), intent(in):: value
         type(RealDim0KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim0KindREAL128Queue
         !    type(RealDim0KindREAL128QueueNode), target:: root
         !    type(RealDim0KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim0KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim0KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim0KindREAL128Queue

      function shiftRealDim0KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim0KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), intent(inout):: value
         Logical:: isSuccess
         type(RealDim0KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim0KindREAL128Queue

      function is_emptyRealDim0KindREAL128Queue(queue) result(answer)
         type(RealDim0KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim0KindREAL128Queue
      subroutine pushRealDim1KindREAL32Queue(queue, value)
         type(RealDim1KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:), intent(in):: value
         type(RealDim1KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1KindREAL32Queue
         !    type(RealDim1KindREAL32QueueNode), target:: root
         !    type(RealDim1KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim1KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim1KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim1KindREAL32Queue

      function shiftRealDim1KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim1KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1KindREAL32Queue

      function is_emptyRealDim1KindREAL32Queue(queue) result(answer)
         type(RealDim1KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim1KindREAL32Queue
      subroutine pushRealDim1KindREAL64Queue(queue, value)
         type(RealDim1KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:), intent(in):: value
         type(RealDim1KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1KindREAL64Queue
         !    type(RealDim1KindREAL64QueueNode), target:: root
         !    type(RealDim1KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim1KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim1KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim1KindREAL64Queue

      function shiftRealDim1KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim1KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1KindREAL64Queue

      function is_emptyRealDim1KindREAL64Queue(queue) result(answer)
         type(RealDim1KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim1KindREAL64Queue
      subroutine pushRealDim1KindREAL128Queue(queue, value)
         type(RealDim1KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:), intent(in):: value
         type(RealDim1KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim1KindREAL128Queue
         !    type(RealDim1KindREAL128QueueNode), target:: root
         !    type(RealDim1KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim1KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim1KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim1KindREAL128Queue

      function shiftRealDim1KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim1KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim1KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim1KindREAL128Queue

      function is_emptyRealDim1KindREAL128Queue(queue) result(answer)
         type(RealDim1KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim1KindREAL128Queue
      subroutine pushRealDim2KindREAL32Queue(queue, value)
         type(RealDim2KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2KindREAL32Queue
         !    type(RealDim2KindREAL32QueueNode), target:: root
         !    type(RealDim2KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim2KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim2KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim2KindREAL32Queue

      function shiftRealDim2KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim2KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2KindREAL32Queue

      function is_emptyRealDim2KindREAL32Queue(queue) result(answer)
         type(RealDim2KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim2KindREAL32Queue
      subroutine pushRealDim2KindREAL64Queue(queue, value)
         type(RealDim2KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2KindREAL64Queue
         !    type(RealDim2KindREAL64QueueNode), target:: root
         !    type(RealDim2KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim2KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim2KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim2KindREAL64Queue

      function shiftRealDim2KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim2KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2KindREAL64Queue

      function is_emptyRealDim2KindREAL64Queue(queue) result(answer)
         type(RealDim2KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim2KindREAL64Queue
      subroutine pushRealDim2KindREAL128Queue(queue, value)
         type(RealDim2KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :), intent(in):: value
         type(RealDim2KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim2KindREAL128Queue
         !    type(RealDim2KindREAL128QueueNode), target:: root
         !    type(RealDim2KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim2KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim2KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim2KindREAL128Queue

      function shiftRealDim2KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim2KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim2KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim2KindREAL128Queue

      function is_emptyRealDim2KindREAL128Queue(queue) result(answer)
         type(RealDim2KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim2KindREAL128Queue
      subroutine pushRealDim3KindREAL32Queue(queue, value)
         type(RealDim3KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3KindREAL32Queue
         !    type(RealDim3KindREAL32QueueNode), target:: root
         !    type(RealDim3KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim3KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim3KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim3KindREAL32Queue

      function shiftRealDim3KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim3KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3KindREAL32Queue

      function is_emptyRealDim3KindREAL32Queue(queue) result(answer)
         type(RealDim3KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim3KindREAL32Queue
      subroutine pushRealDim3KindREAL64Queue(queue, value)
         type(RealDim3KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3KindREAL64Queue
         !    type(RealDim3KindREAL64QueueNode), target:: root
         !    type(RealDim3KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim3KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim3KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim3KindREAL64Queue

      function shiftRealDim3KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim3KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3KindREAL64Queue

      function is_emptyRealDim3KindREAL64Queue(queue) result(answer)
         type(RealDim3KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim3KindREAL64Queue
      subroutine pushRealDim3KindREAL128Queue(queue, value)
         type(RealDim3KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :), intent(in):: value
         type(RealDim3KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim3KindREAL128Queue
         !    type(RealDim3KindREAL128QueueNode), target:: root
         !    type(RealDim3KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim3KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim3KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim3KindREAL128Queue

      function shiftRealDim3KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim3KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim3KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim3KindREAL128Queue

      function is_emptyRealDim3KindREAL128Queue(queue) result(answer)
         type(RealDim3KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim3KindREAL128Queue
      subroutine pushRealDim4KindREAL32Queue(queue, value)
         type(RealDim4KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4KindREAL32Queue
         !    type(RealDim4KindREAL32QueueNode), target:: root
         !    type(RealDim4KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim4KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim4KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim4KindREAL32Queue

      function shiftRealDim4KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim4KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4KindREAL32Queue

      function is_emptyRealDim4KindREAL32Queue(queue) result(answer)
         type(RealDim4KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim4KindREAL32Queue
      subroutine pushRealDim4KindREAL64Queue(queue, value)
         type(RealDim4KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4KindREAL64Queue
         !    type(RealDim4KindREAL64QueueNode), target:: root
         !    type(RealDim4KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim4KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim4KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim4KindREAL64Queue

      function shiftRealDim4KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim4KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4KindREAL64Queue

      function is_emptyRealDim4KindREAL64Queue(queue) result(answer)
         type(RealDim4KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim4KindREAL64Queue
      subroutine pushRealDim4KindREAL128Queue(queue, value)
         type(RealDim4KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :), intent(in):: value
         type(RealDim4KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim4KindREAL128Queue
         !    type(RealDim4KindREAL128QueueNode), target:: root
         !    type(RealDim4KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim4KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim4KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim4KindREAL128Queue

      function shiftRealDim4KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim4KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim4KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim4KindREAL128Queue

      function is_emptyRealDim4KindREAL128Queue(queue) result(answer)
         type(RealDim4KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim4KindREAL128Queue
      subroutine pushRealDim5KindREAL32Queue(queue, value)
         type(RealDim5KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5KindREAL32Queue
         !    type(RealDim5KindREAL32QueueNode), target:: root
         !    type(RealDim5KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim5KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim5KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim5KindREAL32Queue

      function shiftRealDim5KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim5KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5KindREAL32Queue

      function is_emptyRealDim5KindREAL32Queue(queue) result(answer)
         type(RealDim5KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim5KindREAL32Queue
      subroutine pushRealDim5KindREAL64Queue(queue, value)
         type(RealDim5KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5KindREAL64Queue
         !    type(RealDim5KindREAL64QueueNode), target:: root
         !    type(RealDim5KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim5KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim5KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim5KindREAL64Queue

      function shiftRealDim5KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim5KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5KindREAL64Queue

      function is_emptyRealDim5KindREAL64Queue(queue) result(answer)
         type(RealDim5KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim5KindREAL64Queue
      subroutine pushRealDim5KindREAL128Queue(queue, value)
         type(RealDim5KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :, :), intent(in):: value
         type(RealDim5KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim5KindREAL128Queue
         !    type(RealDim5KindREAL128QueueNode), target:: root
         !    type(RealDim5KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim5KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim5KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim5KindREAL128Queue

      function shiftRealDim5KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim5KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim5KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim5KindREAL128Queue

      function is_emptyRealDim5KindREAL128Queue(queue) result(answer)
         type(RealDim5KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim5KindREAL128Queue
      subroutine pushRealDim6KindREAL32Queue(queue, value)
         type(RealDim6KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6KindREAL32Queue
         !    type(RealDim6KindREAL32QueueNode), target:: root
         !    type(RealDim6KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim6KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim6KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim6KindREAL32Queue

      function shiftRealDim6KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim6KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6KindREAL32Queue

      function is_emptyRealDim6KindREAL32Queue(queue) result(answer)
         type(RealDim6KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim6KindREAL32Queue
      subroutine pushRealDim6KindREAL64Queue(queue, value)
         type(RealDim6KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6KindREAL64Queue
         !    type(RealDim6KindREAL64QueueNode), target:: root
         !    type(RealDim6KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim6KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim6KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim6KindREAL64Queue

      function shiftRealDim6KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim6KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6KindREAL64Queue

      function is_emptyRealDim6KindREAL64Queue(queue) result(answer)
         type(RealDim6KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim6KindREAL64Queue
      subroutine pushRealDim6KindREAL128Queue(queue, value)
         type(RealDim6KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: value
         type(RealDim6KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim6KindREAL128Queue
         !    type(RealDim6KindREAL128QueueNode), target:: root
         !    type(RealDim6KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim6KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim6KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim6KindREAL128Queue

      function shiftRealDim6KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim6KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim6KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim6KindREAL128Queue

      function is_emptyRealDim6KindREAL128Queue(queue) result(answer)
         type(RealDim6KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim6KindREAL128Queue
      subroutine pushRealDim7KindREAL32Queue(queue, value)
         type(RealDim7KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7KindREAL32Queue
         !    type(RealDim7KindREAL32QueueNode), target:: root
         !    type(RealDim7KindREAL32QueueNode), pointer:: tail => root
         !    type(RealDim7KindREAL32QueueNode), pointer:: head => root%next
         ! end type RealDim7KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim7KindREAL32Queue

      function shiftRealDim7KindREAL32Queue(queue, value) result(isSuccess)
         type(RealDim7KindREAL32Queue), intent(inout):: queue
         Real(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7KindREAL32Queue

      function is_emptyRealDim7KindREAL32Queue(queue) result(answer)
         type(RealDim7KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim7KindREAL32Queue
      subroutine pushRealDim7KindREAL64Queue(queue, value)
         type(RealDim7KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7KindREAL64Queue
         !    type(RealDim7KindREAL64QueueNode), target:: root
         !    type(RealDim7KindREAL64QueueNode), pointer:: tail => root
         !    type(RealDim7KindREAL64QueueNode), pointer:: head => root%next
         ! end type RealDim7KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim7KindREAL64Queue

      function shiftRealDim7KindREAL64Queue(queue, value) result(isSuccess)
         type(RealDim7KindREAL64Queue), intent(inout):: queue
         Real(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7KindREAL64Queue

      function is_emptyRealDim7KindREAL64Queue(queue) result(answer)
         type(RealDim7KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim7KindREAL64Queue
      subroutine pushRealDim7KindREAL128Queue(queue, value)
         type(RealDim7KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(RealDim7KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type RealDim7KindREAL128Queue
         !    type(RealDim7KindREAL128QueueNode), target:: root
         !    type(RealDim7KindREAL128QueueNode), pointer:: tail => root
         !    type(RealDim7KindREAL128QueueNode), pointer:: head => root%next
         ! end type RealDim7KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushRealDim7KindREAL128Queue

      function shiftRealDim7KindREAL128Queue(queue, value) result(isSuccess)
         type(RealDim7KindREAL128Queue), intent(inout):: queue
         Real(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(RealDim7KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftRealDim7KindREAL128Queue

      function is_emptyRealDim7KindREAL128Queue(queue) result(answer)
         type(RealDim7KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyRealDim7KindREAL128Queue
      subroutine pushIntegerDim0KindINT8Queue(queue, value)
         type(IntegerDim0KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), intent(in):: value
         type(IntegerDim0KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT8Queue
         !    type(IntegerDim0KindINT8QueueNode), target:: root
         !    type(IntegerDim0KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim0KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim0KindINT8Queue

      function shiftIntegerDim0KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim0KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT8Queue

      function is_emptyIntegerDim0KindINT8Queue(queue) result(answer)
         type(IntegerDim0KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim0KindINT8Queue
      subroutine pushIntegerDim0KindINT16Queue(queue, value)
         type(IntegerDim0KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), intent(in):: value
         type(IntegerDim0KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT16Queue
         !    type(IntegerDim0KindINT16QueueNode), target:: root
         !    type(IntegerDim0KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim0KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim0KindINT16Queue

      function shiftIntegerDim0KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim0KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT16Queue

      function is_emptyIntegerDim0KindINT16Queue(queue) result(answer)
         type(IntegerDim0KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim0KindINT16Queue
      subroutine pushIntegerDim0KindINT32Queue(queue, value)
         type(IntegerDim0KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), intent(in):: value
         type(IntegerDim0KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT32Queue
         !    type(IntegerDim0KindINT32QueueNode), target:: root
         !    type(IntegerDim0KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim0KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim0KindINT32Queue

      function shiftIntegerDim0KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim0KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT32Queue

      function is_emptyIntegerDim0KindINT32Queue(queue) result(answer)
         type(IntegerDim0KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim0KindINT32Queue
      subroutine pushIntegerDim0KindINT64Queue(queue, value)
         type(IntegerDim0KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), intent(in):: value
         type(IntegerDim0KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim0KindINT64Queue
         !    type(IntegerDim0KindINT64QueueNode), target:: root
         !    type(IntegerDim0KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim0KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim0KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim0KindINT64Queue

      function shiftIntegerDim0KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim0KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim0KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim0KindINT64Queue

      function is_emptyIntegerDim0KindINT64Queue(queue) result(answer)
         type(IntegerDim0KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim0KindINT64Queue
      subroutine pushIntegerDim1KindINT8Queue(queue, value)
         type(IntegerDim1KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:), intent(in):: value
         type(IntegerDim1KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT8Queue
         !    type(IntegerDim1KindINT8QueueNode), target:: root
         !    type(IntegerDim1KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim1KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim1KindINT8Queue

      function shiftIntegerDim1KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim1KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT8Queue

      function is_emptyIntegerDim1KindINT8Queue(queue) result(answer)
         type(IntegerDim1KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim1KindINT8Queue
      subroutine pushIntegerDim1KindINT16Queue(queue, value)
         type(IntegerDim1KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:), intent(in):: value
         type(IntegerDim1KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT16Queue
         !    type(IntegerDim1KindINT16QueueNode), target:: root
         !    type(IntegerDim1KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim1KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim1KindINT16Queue

      function shiftIntegerDim1KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim1KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT16Queue

      function is_emptyIntegerDim1KindINT16Queue(queue) result(answer)
         type(IntegerDim1KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim1KindINT16Queue
      subroutine pushIntegerDim1KindINT32Queue(queue, value)
         type(IntegerDim1KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:), intent(in):: value
         type(IntegerDim1KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT32Queue
         !    type(IntegerDim1KindINT32QueueNode), target:: root
         !    type(IntegerDim1KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim1KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim1KindINT32Queue

      function shiftIntegerDim1KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim1KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT32Queue

      function is_emptyIntegerDim1KindINT32Queue(queue) result(answer)
         type(IntegerDim1KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim1KindINT32Queue
      subroutine pushIntegerDim1KindINT64Queue(queue, value)
         type(IntegerDim1KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:), intent(in):: value
         type(IntegerDim1KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim1KindINT64Queue
         !    type(IntegerDim1KindINT64QueueNode), target:: root
         !    type(IntegerDim1KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim1KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim1KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim1KindINT64Queue

      function shiftIntegerDim1KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim1KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim1KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim1KindINT64Queue

      function is_emptyIntegerDim1KindINT64Queue(queue) result(answer)
         type(IntegerDim1KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim1KindINT64Queue
      subroutine pushIntegerDim2KindINT8Queue(queue, value)
         type(IntegerDim2KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT8Queue
         !    type(IntegerDim2KindINT8QueueNode), target:: root
         !    type(IntegerDim2KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim2KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim2KindINT8Queue

      function shiftIntegerDim2KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim2KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT8Queue

      function is_emptyIntegerDim2KindINT8Queue(queue) result(answer)
         type(IntegerDim2KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim2KindINT8Queue
      subroutine pushIntegerDim2KindINT16Queue(queue, value)
         type(IntegerDim2KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT16Queue
         !    type(IntegerDim2KindINT16QueueNode), target:: root
         !    type(IntegerDim2KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim2KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim2KindINT16Queue

      function shiftIntegerDim2KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim2KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT16Queue

      function is_emptyIntegerDim2KindINT16Queue(queue) result(answer)
         type(IntegerDim2KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim2KindINT16Queue
      subroutine pushIntegerDim2KindINT32Queue(queue, value)
         type(IntegerDim2KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT32Queue
         !    type(IntegerDim2KindINT32QueueNode), target:: root
         !    type(IntegerDim2KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim2KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim2KindINT32Queue

      function shiftIntegerDim2KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim2KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT32Queue

      function is_emptyIntegerDim2KindINT32Queue(queue) result(answer)
         type(IntegerDim2KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim2KindINT32Queue
      subroutine pushIntegerDim2KindINT64Queue(queue, value)
         type(IntegerDim2KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :), intent(in):: value
         type(IntegerDim2KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim2KindINT64Queue
         !    type(IntegerDim2KindINT64QueueNode), target:: root
         !    type(IntegerDim2KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim2KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim2KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim2KindINT64Queue

      function shiftIntegerDim2KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim2KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim2KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim2KindINT64Queue

      function is_emptyIntegerDim2KindINT64Queue(queue) result(answer)
         type(IntegerDim2KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim2KindINT64Queue
      subroutine pushIntegerDim3KindINT8Queue(queue, value)
         type(IntegerDim3KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT8Queue
         !    type(IntegerDim3KindINT8QueueNode), target:: root
         !    type(IntegerDim3KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim3KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim3KindINT8Queue

      function shiftIntegerDim3KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim3KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT8Queue

      function is_emptyIntegerDim3KindINT8Queue(queue) result(answer)
         type(IntegerDim3KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim3KindINT8Queue
      subroutine pushIntegerDim3KindINT16Queue(queue, value)
         type(IntegerDim3KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT16Queue
         !    type(IntegerDim3KindINT16QueueNode), target:: root
         !    type(IntegerDim3KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim3KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim3KindINT16Queue

      function shiftIntegerDim3KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim3KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT16Queue

      function is_emptyIntegerDim3KindINT16Queue(queue) result(answer)
         type(IntegerDim3KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim3KindINT16Queue
      subroutine pushIntegerDim3KindINT32Queue(queue, value)
         type(IntegerDim3KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT32Queue
         !    type(IntegerDim3KindINT32QueueNode), target:: root
         !    type(IntegerDim3KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim3KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim3KindINT32Queue

      function shiftIntegerDim3KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim3KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT32Queue

      function is_emptyIntegerDim3KindINT32Queue(queue) result(answer)
         type(IntegerDim3KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim3KindINT32Queue
      subroutine pushIntegerDim3KindINT64Queue(queue, value)
         type(IntegerDim3KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :), intent(in):: value
         type(IntegerDim3KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim3KindINT64Queue
         !    type(IntegerDim3KindINT64QueueNode), target:: root
         !    type(IntegerDim3KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim3KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim3KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim3KindINT64Queue

      function shiftIntegerDim3KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim3KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim3KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim3KindINT64Queue

      function is_emptyIntegerDim3KindINT64Queue(queue) result(answer)
         type(IntegerDim3KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim3KindINT64Queue
      subroutine pushIntegerDim4KindINT8Queue(queue, value)
         type(IntegerDim4KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT8Queue
         !    type(IntegerDim4KindINT8QueueNode), target:: root
         !    type(IntegerDim4KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim4KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim4KindINT8Queue

      function shiftIntegerDim4KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim4KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT8Queue

      function is_emptyIntegerDim4KindINT8Queue(queue) result(answer)
         type(IntegerDim4KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim4KindINT8Queue
      subroutine pushIntegerDim4KindINT16Queue(queue, value)
         type(IntegerDim4KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT16Queue
         !    type(IntegerDim4KindINT16QueueNode), target:: root
         !    type(IntegerDim4KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim4KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim4KindINT16Queue

      function shiftIntegerDim4KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim4KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT16Queue

      function is_emptyIntegerDim4KindINT16Queue(queue) result(answer)
         type(IntegerDim4KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim4KindINT16Queue
      subroutine pushIntegerDim4KindINT32Queue(queue, value)
         type(IntegerDim4KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT32Queue
         !    type(IntegerDim4KindINT32QueueNode), target:: root
         !    type(IntegerDim4KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim4KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim4KindINT32Queue

      function shiftIntegerDim4KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim4KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT32Queue

      function is_emptyIntegerDim4KindINT32Queue(queue) result(answer)
         type(IntegerDim4KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim4KindINT32Queue
      subroutine pushIntegerDim4KindINT64Queue(queue, value)
         type(IntegerDim4KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :), intent(in):: value
         type(IntegerDim4KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim4KindINT64Queue
         !    type(IntegerDim4KindINT64QueueNode), target:: root
         !    type(IntegerDim4KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim4KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim4KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim4KindINT64Queue

      function shiftIntegerDim4KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim4KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim4KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim4KindINT64Queue

      function is_emptyIntegerDim4KindINT64Queue(queue) result(answer)
         type(IntegerDim4KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim4KindINT64Queue
      subroutine pushIntegerDim5KindINT8Queue(queue, value)
         type(IntegerDim5KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT8Queue
         !    type(IntegerDim5KindINT8QueueNode), target:: root
         !    type(IntegerDim5KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim5KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim5KindINT8Queue

      function shiftIntegerDim5KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim5KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT8Queue

      function is_emptyIntegerDim5KindINT8Queue(queue) result(answer)
         type(IntegerDim5KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim5KindINT8Queue
      subroutine pushIntegerDim5KindINT16Queue(queue, value)
         type(IntegerDim5KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT16Queue
         !    type(IntegerDim5KindINT16QueueNode), target:: root
         !    type(IntegerDim5KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim5KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim5KindINT16Queue

      function shiftIntegerDim5KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim5KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT16Queue

      function is_emptyIntegerDim5KindINT16Queue(queue) result(answer)
         type(IntegerDim5KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim5KindINT16Queue
      subroutine pushIntegerDim5KindINT32Queue(queue, value)
         type(IntegerDim5KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT32Queue
         !    type(IntegerDim5KindINT32QueueNode), target:: root
         !    type(IntegerDim5KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim5KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim5KindINT32Queue

      function shiftIntegerDim5KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim5KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT32Queue

      function is_emptyIntegerDim5KindINT32Queue(queue) result(answer)
         type(IntegerDim5KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim5KindINT32Queue
      subroutine pushIntegerDim5KindINT64Queue(queue, value)
         type(IntegerDim5KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :, :), intent(in):: value
         type(IntegerDim5KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim5KindINT64Queue
         !    type(IntegerDim5KindINT64QueueNode), target:: root
         !    type(IntegerDim5KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim5KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim5KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim5KindINT64Queue

      function shiftIntegerDim5KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim5KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim5KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim5KindINT64Queue

      function is_emptyIntegerDim5KindINT64Queue(queue) result(answer)
         type(IntegerDim5KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim5KindINT64Queue
      subroutine pushIntegerDim6KindINT8Queue(queue, value)
         type(IntegerDim6KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT8Queue
         !    type(IntegerDim6KindINT8QueueNode), target:: root
         !    type(IntegerDim6KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim6KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim6KindINT8Queue

      function shiftIntegerDim6KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim6KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT8Queue

      function is_emptyIntegerDim6KindINT8Queue(queue) result(answer)
         type(IntegerDim6KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim6KindINT8Queue
      subroutine pushIntegerDim6KindINT16Queue(queue, value)
         type(IntegerDim6KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT16Queue
         !    type(IntegerDim6KindINT16QueueNode), target:: root
         !    type(IntegerDim6KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim6KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim6KindINT16Queue

      function shiftIntegerDim6KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim6KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT16Queue

      function is_emptyIntegerDim6KindINT16Queue(queue) result(answer)
         type(IntegerDim6KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim6KindINT16Queue
      subroutine pushIntegerDim6KindINT32Queue(queue, value)
         type(IntegerDim6KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT32Queue
         !    type(IntegerDim6KindINT32QueueNode), target:: root
         !    type(IntegerDim6KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim6KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim6KindINT32Queue

      function shiftIntegerDim6KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim6KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT32Queue

      function is_emptyIntegerDim6KindINT32Queue(queue) result(answer)
         type(IntegerDim6KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim6KindINT32Queue
      subroutine pushIntegerDim6KindINT64Queue(queue, value)
         type(IntegerDim6KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :, :, :), intent(in):: value
         type(IntegerDim6KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim6KindINT64Queue
         !    type(IntegerDim6KindINT64QueueNode), target:: root
         !    type(IntegerDim6KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim6KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim6KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim6KindINT64Queue

      function shiftIntegerDim6KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim6KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim6KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim6KindINT64Queue

      function is_emptyIntegerDim6KindINT64Queue(queue) result(answer)
         type(IntegerDim6KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim6KindINT64Queue
      subroutine pushIntegerDim7KindINT8Queue(queue, value)
         type(IntegerDim7KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT8Queue
         !    type(IntegerDim7KindINT8QueueNode), target:: root
         !    type(IntegerDim7KindINT8QueueNode), pointer:: tail => root
         !    type(IntegerDim7KindINT8QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim7KindINT8Queue

      function shiftIntegerDim7KindINT8Queue(queue, value) result(isSuccess)
         type(IntegerDim7KindINT8Queue), intent(inout):: queue
         Integer(kind = INT8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT8Queue

      function is_emptyIntegerDim7KindINT8Queue(queue) result(answer)
         type(IntegerDim7KindINT8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim7KindINT8Queue
      subroutine pushIntegerDim7KindINT16Queue(queue, value)
         type(IntegerDim7KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT16Queue
         !    type(IntegerDim7KindINT16QueueNode), target:: root
         !    type(IntegerDim7KindINT16QueueNode), pointer:: tail => root
         !    type(IntegerDim7KindINT16QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim7KindINT16Queue

      function shiftIntegerDim7KindINT16Queue(queue, value) result(isSuccess)
         type(IntegerDim7KindINT16Queue), intent(inout):: queue
         Integer(kind = INT16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT16Queue

      function is_emptyIntegerDim7KindINT16Queue(queue) result(answer)
         type(IntegerDim7KindINT16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim7KindINT16Queue
      subroutine pushIntegerDim7KindINT32Queue(queue, value)
         type(IntegerDim7KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT32Queue
         !    type(IntegerDim7KindINT32QueueNode), target:: root
         !    type(IntegerDim7KindINT32QueueNode), pointer:: tail => root
         !    type(IntegerDim7KindINT32QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim7KindINT32Queue

      function shiftIntegerDim7KindINT32Queue(queue, value) result(isSuccess)
         type(IntegerDim7KindINT32Queue), intent(inout):: queue
         Integer(kind = INT32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT32Queue

      function is_emptyIntegerDim7KindINT32Queue(queue) result(answer)
         type(IntegerDim7KindINT32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim7KindINT32Queue
      subroutine pushIntegerDim7KindINT64Queue(queue, value)
         type(IntegerDim7KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(IntegerDim7KindINT64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type IntegerDim7KindINT64Queue
         !    type(IntegerDim7KindINT64QueueNode), target:: root
         !    type(IntegerDim7KindINT64QueueNode), pointer:: tail => root
         !    type(IntegerDim7KindINT64QueueNode), pointer:: head => root%next
         ! end type IntegerDim7KindINT64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushIntegerDim7KindINT64Queue

      function shiftIntegerDim7KindINT64Queue(queue, value) result(isSuccess)
         type(IntegerDim7KindINT64Queue), intent(inout):: queue
         Integer(kind = INT64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(IntegerDim7KindINT64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftIntegerDim7KindINT64Queue

      function is_emptyIntegerDim7KindINT64Queue(queue) result(answer)
         type(IntegerDim7KindINT64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyIntegerDim7KindINT64Queue
      subroutine pushLogicalDim0Queue(queue, value)
         type(LogicalDim0Queue), intent(inout):: queue
         Logical, intent(in):: value
         type(LogicalDim0QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim0Queue
         !    type(LogicalDim0QueueNode), target:: root
         !    type(LogicalDim0QueueNode), pointer:: tail => root
         !    type(LogicalDim0QueueNode), pointer:: head => root%next
         ! end type LogicalDim0Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim0Queue

      function shiftLogicalDim0Queue(queue, value) result(isSuccess)
         type(LogicalDim0Queue), intent(inout):: queue
         Logical, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim0QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim0Queue

      function is_emptyLogicalDim0Queue(queue) result(answer)
         type(LogicalDim0Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim0Queue
      subroutine pushLogicalDim1Queue(queue, value)
         type(LogicalDim1Queue), intent(inout):: queue
         Logical, dimension(:), intent(in):: value
         type(LogicalDim1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim1Queue
         !    type(LogicalDim1QueueNode), target:: root
         !    type(LogicalDim1QueueNode), pointer:: tail => root
         !    type(LogicalDim1QueueNode), pointer:: head => root%next
         ! end type LogicalDim1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim1Queue

      function shiftLogicalDim1Queue(queue, value) result(isSuccess)
         type(LogicalDim1Queue), intent(inout):: queue
         Logical, dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim1Queue

      function is_emptyLogicalDim1Queue(queue) result(answer)
         type(LogicalDim1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim1Queue
      subroutine pushLogicalDim2Queue(queue, value)
         type(LogicalDim2Queue), intent(inout):: queue
         Logical, dimension(:, :), intent(in):: value
         type(LogicalDim2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim2Queue
         !    type(LogicalDim2QueueNode), target:: root
         !    type(LogicalDim2QueueNode), pointer:: tail => root
         !    type(LogicalDim2QueueNode), pointer:: head => root%next
         ! end type LogicalDim2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim2Queue

      function shiftLogicalDim2Queue(queue, value) result(isSuccess)
         type(LogicalDim2Queue), intent(inout):: queue
         Logical, dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim2Queue

      function is_emptyLogicalDim2Queue(queue) result(answer)
         type(LogicalDim2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim2Queue
      subroutine pushLogicalDim3Queue(queue, value)
         type(LogicalDim3Queue), intent(inout):: queue
         Logical, dimension(:, :, :), intent(in):: value
         type(LogicalDim3QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim3Queue
         !    type(LogicalDim3QueueNode), target:: root
         !    type(LogicalDim3QueueNode), pointer:: tail => root
         !    type(LogicalDim3QueueNode), pointer:: head => root%next
         ! end type LogicalDim3Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim3Queue

      function shiftLogicalDim3Queue(queue, value) result(isSuccess)
         type(LogicalDim3Queue), intent(inout):: queue
         Logical, dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim3QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim3Queue

      function is_emptyLogicalDim3Queue(queue) result(answer)
         type(LogicalDim3Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim3Queue
      subroutine pushLogicalDim4Queue(queue, value)
         type(LogicalDim4Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :), intent(in):: value
         type(LogicalDim4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim4Queue
         !    type(LogicalDim4QueueNode), target:: root
         !    type(LogicalDim4QueueNode), pointer:: tail => root
         !    type(LogicalDim4QueueNode), pointer:: head => root%next
         ! end type LogicalDim4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim4Queue

      function shiftLogicalDim4Queue(queue, value) result(isSuccess)
         type(LogicalDim4Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim4Queue

      function is_emptyLogicalDim4Queue(queue) result(answer)
         type(LogicalDim4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim4Queue
      subroutine pushLogicalDim5Queue(queue, value)
         type(LogicalDim5Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :, :), intent(in):: value
         type(LogicalDim5QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim5Queue
         !    type(LogicalDim5QueueNode), target:: root
         !    type(LogicalDim5QueueNode), pointer:: tail => root
         !    type(LogicalDim5QueueNode), pointer:: head => root%next
         ! end type LogicalDim5Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim5Queue

      function shiftLogicalDim5Queue(queue, value) result(isSuccess)
         type(LogicalDim5Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim5QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim5Queue

      function is_emptyLogicalDim5Queue(queue) result(answer)
         type(LogicalDim5Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim5Queue
      subroutine pushLogicalDim6Queue(queue, value)
         type(LogicalDim6Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :, :, :), intent(in):: value
         type(LogicalDim6QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim6Queue
         !    type(LogicalDim6QueueNode), target:: root
         !    type(LogicalDim6QueueNode), pointer:: tail => root
         !    type(LogicalDim6QueueNode), pointer:: head => root%next
         ! end type LogicalDim6Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim6Queue

      function shiftLogicalDim6Queue(queue, value) result(isSuccess)
         type(LogicalDim6Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim6QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim6Queue

      function is_emptyLogicalDim6Queue(queue) result(answer)
         type(LogicalDim6Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim6Queue
      subroutine pushLogicalDim7Queue(queue, value)
         type(LogicalDim7Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :, :, :, :), intent(in):: value
         type(LogicalDim7QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type LogicalDim7Queue
         !    type(LogicalDim7QueueNode), target:: root
         !    type(LogicalDim7QueueNode), pointer:: tail => root
         !    type(LogicalDim7QueueNode), pointer:: head => root%next
         ! end type LogicalDim7Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushLogicalDim7Queue

      function shiftLogicalDim7Queue(queue, value) result(isSuccess)
         type(LogicalDim7Queue), intent(inout):: queue
         Logical, dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(LogicalDim7QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftLogicalDim7Queue

      function is_emptyLogicalDim7Queue(queue) result(answer)
         type(LogicalDim7Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyLogicalDim7Queue
      subroutine pushComplexDim0KindREAL32Queue(queue, value)
         type(ComplexDim0KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), intent(in):: value
         type(ComplexDim0KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0KindREAL32Queue
         !    type(ComplexDim0KindREAL32QueueNode), target:: root
         !    type(ComplexDim0KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim0KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim0KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim0KindREAL32Queue

      function shiftComplexDim0KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim0KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0KindREAL32Queue

      function is_emptyComplexDim0KindREAL32Queue(queue) result(answer)
         type(ComplexDim0KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim0KindREAL32Queue
      subroutine pushComplexDim0KindREAL64Queue(queue, value)
         type(ComplexDim0KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), intent(in):: value
         type(ComplexDim0KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0KindREAL64Queue
         !    type(ComplexDim0KindREAL64QueueNode), target:: root
         !    type(ComplexDim0KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim0KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim0KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim0KindREAL64Queue

      function shiftComplexDim0KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim0KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0KindREAL64Queue

      function is_emptyComplexDim0KindREAL64Queue(queue) result(answer)
         type(ComplexDim0KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim0KindREAL64Queue
      subroutine pushComplexDim0KindREAL128Queue(queue, value)
         type(ComplexDim0KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), intent(in):: value
         type(ComplexDim0KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim0KindREAL128Queue
         !    type(ComplexDim0KindREAL128QueueNode), target:: root
         !    type(ComplexDim0KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim0KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim0KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim0KindREAL128Queue

      function shiftComplexDim0KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim0KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim0KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim0KindREAL128Queue

      function is_emptyComplexDim0KindREAL128Queue(queue) result(answer)
         type(ComplexDim0KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim0KindREAL128Queue
      subroutine pushComplexDim1KindREAL32Queue(queue, value)
         type(ComplexDim1KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1KindREAL32Queue
         !    type(ComplexDim1KindREAL32QueueNode), target:: root
         !    type(ComplexDim1KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim1KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim1KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim1KindREAL32Queue

      function shiftComplexDim1KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim1KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1KindREAL32Queue

      function is_emptyComplexDim1KindREAL32Queue(queue) result(answer)
         type(ComplexDim1KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim1KindREAL32Queue
      subroutine pushComplexDim1KindREAL64Queue(queue, value)
         type(ComplexDim1KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1KindREAL64Queue
         !    type(ComplexDim1KindREAL64QueueNode), target:: root
         !    type(ComplexDim1KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim1KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim1KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim1KindREAL64Queue

      function shiftComplexDim1KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim1KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1KindREAL64Queue

      function is_emptyComplexDim1KindREAL64Queue(queue) result(answer)
         type(ComplexDim1KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim1KindREAL64Queue
      subroutine pushComplexDim1KindREAL128Queue(queue, value)
         type(ComplexDim1KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:), intent(in):: value
         type(ComplexDim1KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim1KindREAL128Queue
         !    type(ComplexDim1KindREAL128QueueNode), target:: root
         !    type(ComplexDim1KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim1KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim1KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim1KindREAL128Queue

      function shiftComplexDim1KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim1KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim1KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim1KindREAL128Queue

      function is_emptyComplexDim1KindREAL128Queue(queue) result(answer)
         type(ComplexDim1KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim1KindREAL128Queue
      subroutine pushComplexDim2KindREAL32Queue(queue, value)
         type(ComplexDim2KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2KindREAL32Queue
         !    type(ComplexDim2KindREAL32QueueNode), target:: root
         !    type(ComplexDim2KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim2KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim2KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim2KindREAL32Queue

      function shiftComplexDim2KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim2KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2KindREAL32Queue

      function is_emptyComplexDim2KindREAL32Queue(queue) result(answer)
         type(ComplexDim2KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim2KindREAL32Queue
      subroutine pushComplexDim2KindREAL64Queue(queue, value)
         type(ComplexDim2KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2KindREAL64Queue
         !    type(ComplexDim2KindREAL64QueueNode), target:: root
         !    type(ComplexDim2KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim2KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim2KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim2KindREAL64Queue

      function shiftComplexDim2KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim2KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2KindREAL64Queue

      function is_emptyComplexDim2KindREAL64Queue(queue) result(answer)
         type(ComplexDim2KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim2KindREAL64Queue
      subroutine pushComplexDim2KindREAL128Queue(queue, value)
         type(ComplexDim2KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :), intent(in):: value
         type(ComplexDim2KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim2KindREAL128Queue
         !    type(ComplexDim2KindREAL128QueueNode), target:: root
         !    type(ComplexDim2KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim2KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim2KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim2KindREAL128Queue

      function shiftComplexDim2KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim2KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim2KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim2KindREAL128Queue

      function is_emptyComplexDim2KindREAL128Queue(queue) result(answer)
         type(ComplexDim2KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim2KindREAL128Queue
      subroutine pushComplexDim3KindREAL32Queue(queue, value)
         type(ComplexDim3KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3KindREAL32Queue
         !    type(ComplexDim3KindREAL32QueueNode), target:: root
         !    type(ComplexDim3KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim3KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim3KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim3KindREAL32Queue

      function shiftComplexDim3KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim3KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3KindREAL32Queue

      function is_emptyComplexDim3KindREAL32Queue(queue) result(answer)
         type(ComplexDim3KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim3KindREAL32Queue
      subroutine pushComplexDim3KindREAL64Queue(queue, value)
         type(ComplexDim3KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3KindREAL64Queue
         !    type(ComplexDim3KindREAL64QueueNode), target:: root
         !    type(ComplexDim3KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim3KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim3KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim3KindREAL64Queue

      function shiftComplexDim3KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim3KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3KindREAL64Queue

      function is_emptyComplexDim3KindREAL64Queue(queue) result(answer)
         type(ComplexDim3KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim3KindREAL64Queue
      subroutine pushComplexDim3KindREAL128Queue(queue, value)
         type(ComplexDim3KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :), intent(in):: value
         type(ComplexDim3KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim3KindREAL128Queue
         !    type(ComplexDim3KindREAL128QueueNode), target:: root
         !    type(ComplexDim3KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim3KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim3KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim3KindREAL128Queue

      function shiftComplexDim3KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim3KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim3KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim3KindREAL128Queue

      function is_emptyComplexDim3KindREAL128Queue(queue) result(answer)
         type(ComplexDim3KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim3KindREAL128Queue
      subroutine pushComplexDim4KindREAL32Queue(queue, value)
         type(ComplexDim4KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4KindREAL32Queue
         !    type(ComplexDim4KindREAL32QueueNode), target:: root
         !    type(ComplexDim4KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim4KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim4KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim4KindREAL32Queue

      function shiftComplexDim4KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim4KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4KindREAL32Queue

      function is_emptyComplexDim4KindREAL32Queue(queue) result(answer)
         type(ComplexDim4KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim4KindREAL32Queue
      subroutine pushComplexDim4KindREAL64Queue(queue, value)
         type(ComplexDim4KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4KindREAL64Queue
         !    type(ComplexDim4KindREAL64QueueNode), target:: root
         !    type(ComplexDim4KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim4KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim4KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim4KindREAL64Queue

      function shiftComplexDim4KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim4KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4KindREAL64Queue

      function is_emptyComplexDim4KindREAL64Queue(queue) result(answer)
         type(ComplexDim4KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim4KindREAL64Queue
      subroutine pushComplexDim4KindREAL128Queue(queue, value)
         type(ComplexDim4KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :), intent(in):: value
         type(ComplexDim4KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim4KindREAL128Queue
         !    type(ComplexDim4KindREAL128QueueNode), target:: root
         !    type(ComplexDim4KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim4KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim4KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim4KindREAL128Queue

      function shiftComplexDim4KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim4KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim4KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim4KindREAL128Queue

      function is_emptyComplexDim4KindREAL128Queue(queue) result(answer)
         type(ComplexDim4KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim4KindREAL128Queue
      subroutine pushComplexDim5KindREAL32Queue(queue, value)
         type(ComplexDim5KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5KindREAL32Queue
         !    type(ComplexDim5KindREAL32QueueNode), target:: root
         !    type(ComplexDim5KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim5KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim5KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim5KindREAL32Queue

      function shiftComplexDim5KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim5KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5KindREAL32Queue

      function is_emptyComplexDim5KindREAL32Queue(queue) result(answer)
         type(ComplexDim5KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim5KindREAL32Queue
      subroutine pushComplexDim5KindREAL64Queue(queue, value)
         type(ComplexDim5KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5KindREAL64Queue
         !    type(ComplexDim5KindREAL64QueueNode), target:: root
         !    type(ComplexDim5KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim5KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim5KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim5KindREAL64Queue

      function shiftComplexDim5KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim5KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5KindREAL64Queue

      function is_emptyComplexDim5KindREAL64Queue(queue) result(answer)
         type(ComplexDim5KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim5KindREAL64Queue
      subroutine pushComplexDim5KindREAL128Queue(queue, value)
         type(ComplexDim5KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :, :), intent(in):: value
         type(ComplexDim5KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim5KindREAL128Queue
         !    type(ComplexDim5KindREAL128QueueNode), target:: root
         !    type(ComplexDim5KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim5KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim5KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim5KindREAL128Queue

      function shiftComplexDim5KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim5KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim5KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim5KindREAL128Queue

      function is_emptyComplexDim5KindREAL128Queue(queue) result(answer)
         type(ComplexDim5KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim5KindREAL128Queue
      subroutine pushComplexDim6KindREAL32Queue(queue, value)
         type(ComplexDim6KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6KindREAL32Queue
         !    type(ComplexDim6KindREAL32QueueNode), target:: root
         !    type(ComplexDim6KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim6KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim6KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim6KindREAL32Queue

      function shiftComplexDim6KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim6KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6KindREAL32Queue

      function is_emptyComplexDim6KindREAL32Queue(queue) result(answer)
         type(ComplexDim6KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim6KindREAL32Queue
      subroutine pushComplexDim6KindREAL64Queue(queue, value)
         type(ComplexDim6KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6KindREAL64Queue
         !    type(ComplexDim6KindREAL64QueueNode), target:: root
         !    type(ComplexDim6KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim6KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim6KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim6KindREAL64Queue

      function shiftComplexDim6KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim6KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6KindREAL64Queue

      function is_emptyComplexDim6KindREAL64Queue(queue) result(answer)
         type(ComplexDim6KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim6KindREAL64Queue
      subroutine pushComplexDim6KindREAL128Queue(queue, value)
         type(ComplexDim6KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :, :, :), intent(in):: value
         type(ComplexDim6KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim6KindREAL128Queue
         !    type(ComplexDim6KindREAL128QueueNode), target:: root
         !    type(ComplexDim6KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim6KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim6KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim6KindREAL128Queue

      function shiftComplexDim6KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim6KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim6KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim6KindREAL128Queue

      function is_emptyComplexDim6KindREAL128Queue(queue) result(answer)
         type(ComplexDim6KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim6KindREAL128Queue
      subroutine pushComplexDim7KindREAL32Queue(queue, value)
         type(ComplexDim7KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7KindREAL32Queue
         !    type(ComplexDim7KindREAL32QueueNode), target:: root
         !    type(ComplexDim7KindREAL32QueueNode), pointer:: tail => root
         !    type(ComplexDim7KindREAL32QueueNode), pointer:: head => root%next
         ! end type ComplexDim7KindREAL32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim7KindREAL32Queue

      function shiftComplexDim7KindREAL32Queue(queue, value) result(isSuccess)
         type(ComplexDim7KindREAL32Queue), intent(inout):: queue
         Complex(kind = REAL32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7KindREAL32Queue

      function is_emptyComplexDim7KindREAL32Queue(queue) result(answer)
         type(ComplexDim7KindREAL32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim7KindREAL32Queue
      subroutine pushComplexDim7KindREAL64Queue(queue, value)
         type(ComplexDim7KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7KindREAL64Queue
         !    type(ComplexDim7KindREAL64QueueNode), target:: root
         !    type(ComplexDim7KindREAL64QueueNode), pointer:: tail => root
         !    type(ComplexDim7KindREAL64QueueNode), pointer:: head => root%next
         ! end type ComplexDim7KindREAL64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim7KindREAL64Queue

      function shiftComplexDim7KindREAL64Queue(queue, value) result(isSuccess)
         type(ComplexDim7KindREAL64Queue), intent(inout):: queue
         Complex(kind = REAL64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7KindREAL64Queue

      function is_emptyComplexDim7KindREAL64Queue(queue) result(answer)
         type(ComplexDim7KindREAL64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim7KindREAL64Queue
      subroutine pushComplexDim7KindREAL128Queue(queue, value)
         type(ComplexDim7KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(ComplexDim7KindREAL128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type ComplexDim7KindREAL128Queue
         !    type(ComplexDim7KindREAL128QueueNode), target:: root
         !    type(ComplexDim7KindREAL128QueueNode), pointer:: tail => root
         !    type(ComplexDim7KindREAL128QueueNode), pointer:: head => root%next
         ! end type ComplexDim7KindREAL128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushComplexDim7KindREAL128Queue

      function shiftComplexDim7KindREAL128Queue(queue, value) result(isSuccess)
         type(ComplexDim7KindREAL128Queue), intent(inout):: queue
         Complex(kind = REAL128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(ComplexDim7KindREAL128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftComplexDim7KindREAL128Queue

      function is_emptyComplexDim7KindREAL128Queue(queue) result(answer)
         type(ComplexDim7KindREAL128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyComplexDim7KindREAL128Queue
      subroutine pushCharacterDim0Len1Queue(queue, value)
         type(CharacterDim0Len1Queue), intent(inout):: queue
         Character(len = 1), intent(in):: value
         type(CharacterDim0Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len1Queue
         !    type(CharacterDim0Len1QueueNode), target:: root
         !    type(CharacterDim0Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len1Queue

      function shiftCharacterDim0Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len1Queue), intent(inout):: queue
         Character(len = 1), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len1Queue

      function is_emptyCharacterDim0Len1Queue(queue) result(answer)
         type(CharacterDim0Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len1Queue
      subroutine pushCharacterDim0Len2Queue(queue, value)
         type(CharacterDim0Len2Queue), intent(inout):: queue
         Character(len = 2), intent(in):: value
         type(CharacterDim0Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len2Queue
         !    type(CharacterDim0Len2QueueNode), target:: root
         !    type(CharacterDim0Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len2Queue

      function shiftCharacterDim0Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len2Queue), intent(inout):: queue
         Character(len = 2), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len2Queue

      function is_emptyCharacterDim0Len2Queue(queue) result(answer)
         type(CharacterDim0Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len2Queue
      subroutine pushCharacterDim0Len4Queue(queue, value)
         type(CharacterDim0Len4Queue), intent(inout):: queue
         Character(len = 4), intent(in):: value
         type(CharacterDim0Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len4Queue
         !    type(CharacterDim0Len4QueueNode), target:: root
         !    type(CharacterDim0Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len4Queue

      function shiftCharacterDim0Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len4Queue), intent(inout):: queue
         Character(len = 4), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len4Queue

      function is_emptyCharacterDim0Len4Queue(queue) result(answer)
         type(CharacterDim0Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len4Queue
      subroutine pushCharacterDim0Len8Queue(queue, value)
         type(CharacterDim0Len8Queue), intent(inout):: queue
         Character(len = 8), intent(in):: value
         type(CharacterDim0Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len8Queue
         !    type(CharacterDim0Len8QueueNode), target:: root
         !    type(CharacterDim0Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len8Queue

      function shiftCharacterDim0Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len8Queue), intent(inout):: queue
         Character(len = 8), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len8Queue

      function is_emptyCharacterDim0Len8Queue(queue) result(answer)
         type(CharacterDim0Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len8Queue
      subroutine pushCharacterDim0Len16Queue(queue, value)
         type(CharacterDim0Len16Queue), intent(inout):: queue
         Character(len = 16), intent(in):: value
         type(CharacterDim0Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len16Queue
         !    type(CharacterDim0Len16QueueNode), target:: root
         !    type(CharacterDim0Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len16Queue

      function shiftCharacterDim0Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len16Queue), intent(inout):: queue
         Character(len = 16), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len16Queue

      function is_emptyCharacterDim0Len16Queue(queue) result(answer)
         type(CharacterDim0Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len16Queue
      subroutine pushCharacterDim0Len32Queue(queue, value)
         type(CharacterDim0Len32Queue), intent(inout):: queue
         Character(len = 32), intent(in):: value
         type(CharacterDim0Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len32Queue
         !    type(CharacterDim0Len32QueueNode), target:: root
         !    type(CharacterDim0Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len32Queue

      function shiftCharacterDim0Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len32Queue), intent(inout):: queue
         Character(len = 32), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len32Queue

      function is_emptyCharacterDim0Len32Queue(queue) result(answer)
         type(CharacterDim0Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len32Queue
      subroutine pushCharacterDim0Len64Queue(queue, value)
         type(CharacterDim0Len64Queue), intent(inout):: queue
         Character(len = 64), intent(in):: value
         type(CharacterDim0Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len64Queue
         !    type(CharacterDim0Len64QueueNode), target:: root
         !    type(CharacterDim0Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len64Queue

      function shiftCharacterDim0Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len64Queue), intent(inout):: queue
         Character(len = 64), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len64Queue

      function is_emptyCharacterDim0Len64Queue(queue) result(answer)
         type(CharacterDim0Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len64Queue
      subroutine pushCharacterDim0Len128Queue(queue, value)
         type(CharacterDim0Len128Queue), intent(inout):: queue
         Character(len = 128), intent(in):: value
         type(CharacterDim0Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len128Queue
         !    type(CharacterDim0Len128QueueNode), target:: root
         !    type(CharacterDim0Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len128Queue

      function shiftCharacterDim0Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len128Queue), intent(inout):: queue
         Character(len = 128), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len128Queue

      function is_emptyCharacterDim0Len128Queue(queue) result(answer)
         type(CharacterDim0Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len128Queue
      subroutine pushCharacterDim0Len256Queue(queue, value)
         type(CharacterDim0Len256Queue), intent(inout):: queue
         Character(len = 256), intent(in):: value
         type(CharacterDim0Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len256Queue
         !    type(CharacterDim0Len256QueueNode), target:: root
         !    type(CharacterDim0Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len256Queue

      function shiftCharacterDim0Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len256Queue), intent(inout):: queue
         Character(len = 256), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len256Queue

      function is_emptyCharacterDim0Len256Queue(queue) result(answer)
         type(CharacterDim0Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len256Queue
      subroutine pushCharacterDim0Len512Queue(queue, value)
         type(CharacterDim0Len512Queue), intent(inout):: queue
         Character(len = 512), intent(in):: value
         type(CharacterDim0Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len512Queue
         !    type(CharacterDim0Len512QueueNode), target:: root
         !    type(CharacterDim0Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len512Queue

      function shiftCharacterDim0Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len512Queue), intent(inout):: queue
         Character(len = 512), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len512Queue

      function is_emptyCharacterDim0Len512Queue(queue) result(answer)
         type(CharacterDim0Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len512Queue
      subroutine pushCharacterDim0Len1024Queue(queue, value)
         type(CharacterDim0Len1024Queue), intent(inout):: queue
         Character(len = 1024), intent(in):: value
         type(CharacterDim0Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim0Len1024Queue
         !    type(CharacterDim0Len1024QueueNode), target:: root
         !    type(CharacterDim0Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim0Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim0Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim0Len1024Queue

      function shiftCharacterDim0Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim0Len1024Queue), intent(inout):: queue
         Character(len = 1024), intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim0Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim0Len1024Queue

      function is_emptyCharacterDim0Len1024Queue(queue) result(answer)
         type(CharacterDim0Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim0Len1024Queue
      subroutine pushCharacterDim1Len1Queue(queue, value)
         type(CharacterDim1Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:), intent(in):: value
         type(CharacterDim1Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len1Queue
         !    type(CharacterDim1Len1QueueNode), target:: root
         !    type(CharacterDim1Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len1Queue

      function shiftCharacterDim1Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len1Queue

      function is_emptyCharacterDim1Len1Queue(queue) result(answer)
         type(CharacterDim1Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len1Queue
      subroutine pushCharacterDim1Len2Queue(queue, value)
         type(CharacterDim1Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:), intent(in):: value
         type(CharacterDim1Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len2Queue
         !    type(CharacterDim1Len2QueueNode), target:: root
         !    type(CharacterDim1Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len2Queue

      function shiftCharacterDim1Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len2Queue

      function is_emptyCharacterDim1Len2Queue(queue) result(answer)
         type(CharacterDim1Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len2Queue
      subroutine pushCharacterDim1Len4Queue(queue, value)
         type(CharacterDim1Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:), intent(in):: value
         type(CharacterDim1Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len4Queue
         !    type(CharacterDim1Len4QueueNode), target:: root
         !    type(CharacterDim1Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len4Queue

      function shiftCharacterDim1Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len4Queue

      function is_emptyCharacterDim1Len4Queue(queue) result(answer)
         type(CharacterDim1Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len4Queue
      subroutine pushCharacterDim1Len8Queue(queue, value)
         type(CharacterDim1Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:), intent(in):: value
         type(CharacterDim1Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len8Queue
         !    type(CharacterDim1Len8QueueNode), target:: root
         !    type(CharacterDim1Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len8Queue

      function shiftCharacterDim1Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len8Queue

      function is_emptyCharacterDim1Len8Queue(queue) result(answer)
         type(CharacterDim1Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len8Queue
      subroutine pushCharacterDim1Len16Queue(queue, value)
         type(CharacterDim1Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:), intent(in):: value
         type(CharacterDim1Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len16Queue
         !    type(CharacterDim1Len16QueueNode), target:: root
         !    type(CharacterDim1Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len16Queue

      function shiftCharacterDim1Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len16Queue

      function is_emptyCharacterDim1Len16Queue(queue) result(answer)
         type(CharacterDim1Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len16Queue
      subroutine pushCharacterDim1Len32Queue(queue, value)
         type(CharacterDim1Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:), intent(in):: value
         type(CharacterDim1Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len32Queue
         !    type(CharacterDim1Len32QueueNode), target:: root
         !    type(CharacterDim1Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len32Queue

      function shiftCharacterDim1Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len32Queue

      function is_emptyCharacterDim1Len32Queue(queue) result(answer)
         type(CharacterDim1Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len32Queue
      subroutine pushCharacterDim1Len64Queue(queue, value)
         type(CharacterDim1Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:), intent(in):: value
         type(CharacterDim1Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len64Queue
         !    type(CharacterDim1Len64QueueNode), target:: root
         !    type(CharacterDim1Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len64Queue

      function shiftCharacterDim1Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len64Queue

      function is_emptyCharacterDim1Len64Queue(queue) result(answer)
         type(CharacterDim1Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len64Queue
      subroutine pushCharacterDim1Len128Queue(queue, value)
         type(CharacterDim1Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:), intent(in):: value
         type(CharacterDim1Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len128Queue
         !    type(CharacterDim1Len128QueueNode), target:: root
         !    type(CharacterDim1Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len128Queue

      function shiftCharacterDim1Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len128Queue

      function is_emptyCharacterDim1Len128Queue(queue) result(answer)
         type(CharacterDim1Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len128Queue
      subroutine pushCharacterDim1Len256Queue(queue, value)
         type(CharacterDim1Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:), intent(in):: value
         type(CharacterDim1Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len256Queue
         !    type(CharacterDim1Len256QueueNode), target:: root
         !    type(CharacterDim1Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len256Queue

      function shiftCharacterDim1Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len256Queue

      function is_emptyCharacterDim1Len256Queue(queue) result(answer)
         type(CharacterDim1Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len256Queue
      subroutine pushCharacterDim1Len512Queue(queue, value)
         type(CharacterDim1Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:), intent(in):: value
         type(CharacterDim1Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len512Queue
         !    type(CharacterDim1Len512QueueNode), target:: root
         !    type(CharacterDim1Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len512Queue

      function shiftCharacterDim1Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len512Queue

      function is_emptyCharacterDim1Len512Queue(queue) result(answer)
         type(CharacterDim1Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len512Queue
      subroutine pushCharacterDim1Len1024Queue(queue, value)
         type(CharacterDim1Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:), intent(in):: value
         type(CharacterDim1Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim1Len1024Queue
         !    type(CharacterDim1Len1024QueueNode), target:: root
         !    type(CharacterDim1Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim1Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim1Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim1Len1024Queue

      function shiftCharacterDim1Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim1Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim1Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim1Len1024Queue

      function is_emptyCharacterDim1Len1024Queue(queue) result(answer)
         type(CharacterDim1Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim1Len1024Queue
      subroutine pushCharacterDim2Len1Queue(queue, value)
         type(CharacterDim2Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :), intent(in):: value
         type(CharacterDim2Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len1Queue
         !    type(CharacterDim2Len1QueueNode), target:: root
         !    type(CharacterDim2Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len1Queue

      function shiftCharacterDim2Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len1Queue

      function is_emptyCharacterDim2Len1Queue(queue) result(answer)
         type(CharacterDim2Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len1Queue
      subroutine pushCharacterDim2Len2Queue(queue, value)
         type(CharacterDim2Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :), intent(in):: value
         type(CharacterDim2Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len2Queue
         !    type(CharacterDim2Len2QueueNode), target:: root
         !    type(CharacterDim2Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len2Queue

      function shiftCharacterDim2Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len2Queue

      function is_emptyCharacterDim2Len2Queue(queue) result(answer)
         type(CharacterDim2Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len2Queue
      subroutine pushCharacterDim2Len4Queue(queue, value)
         type(CharacterDim2Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :), intent(in):: value
         type(CharacterDim2Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len4Queue
         !    type(CharacterDim2Len4QueueNode), target:: root
         !    type(CharacterDim2Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len4Queue

      function shiftCharacterDim2Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len4Queue

      function is_emptyCharacterDim2Len4Queue(queue) result(answer)
         type(CharacterDim2Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len4Queue
      subroutine pushCharacterDim2Len8Queue(queue, value)
         type(CharacterDim2Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :), intent(in):: value
         type(CharacterDim2Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len8Queue
         !    type(CharacterDim2Len8QueueNode), target:: root
         !    type(CharacterDim2Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len8Queue

      function shiftCharacterDim2Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len8Queue

      function is_emptyCharacterDim2Len8Queue(queue) result(answer)
         type(CharacterDim2Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len8Queue
      subroutine pushCharacterDim2Len16Queue(queue, value)
         type(CharacterDim2Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :), intent(in):: value
         type(CharacterDim2Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len16Queue
         !    type(CharacterDim2Len16QueueNode), target:: root
         !    type(CharacterDim2Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len16Queue

      function shiftCharacterDim2Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len16Queue

      function is_emptyCharacterDim2Len16Queue(queue) result(answer)
         type(CharacterDim2Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len16Queue
      subroutine pushCharacterDim2Len32Queue(queue, value)
         type(CharacterDim2Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :), intent(in):: value
         type(CharacterDim2Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len32Queue
         !    type(CharacterDim2Len32QueueNode), target:: root
         !    type(CharacterDim2Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len32Queue

      function shiftCharacterDim2Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len32Queue

      function is_emptyCharacterDim2Len32Queue(queue) result(answer)
         type(CharacterDim2Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len32Queue
      subroutine pushCharacterDim2Len64Queue(queue, value)
         type(CharacterDim2Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :), intent(in):: value
         type(CharacterDim2Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len64Queue
         !    type(CharacterDim2Len64QueueNode), target:: root
         !    type(CharacterDim2Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len64Queue

      function shiftCharacterDim2Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len64Queue

      function is_emptyCharacterDim2Len64Queue(queue) result(answer)
         type(CharacterDim2Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len64Queue
      subroutine pushCharacterDim2Len128Queue(queue, value)
         type(CharacterDim2Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :), intent(in):: value
         type(CharacterDim2Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len128Queue
         !    type(CharacterDim2Len128QueueNode), target:: root
         !    type(CharacterDim2Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len128Queue

      function shiftCharacterDim2Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len128Queue

      function is_emptyCharacterDim2Len128Queue(queue) result(answer)
         type(CharacterDim2Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len128Queue
      subroutine pushCharacterDim2Len256Queue(queue, value)
         type(CharacterDim2Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :), intent(in):: value
         type(CharacterDim2Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len256Queue
         !    type(CharacterDim2Len256QueueNode), target:: root
         !    type(CharacterDim2Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len256Queue

      function shiftCharacterDim2Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len256Queue

      function is_emptyCharacterDim2Len256Queue(queue) result(answer)
         type(CharacterDim2Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len256Queue
      subroutine pushCharacterDim2Len512Queue(queue, value)
         type(CharacterDim2Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :), intent(in):: value
         type(CharacterDim2Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len512Queue
         !    type(CharacterDim2Len512QueueNode), target:: root
         !    type(CharacterDim2Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len512Queue

      function shiftCharacterDim2Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len512Queue

      function is_emptyCharacterDim2Len512Queue(queue) result(answer)
         type(CharacterDim2Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len512Queue
      subroutine pushCharacterDim2Len1024Queue(queue, value)
         type(CharacterDim2Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :), intent(in):: value
         type(CharacterDim2Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim2Len1024Queue
         !    type(CharacterDim2Len1024QueueNode), target:: root
         !    type(CharacterDim2Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim2Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim2Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim2Len1024Queue

      function shiftCharacterDim2Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim2Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim2Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim2Len1024Queue

      function is_emptyCharacterDim2Len1024Queue(queue) result(answer)
         type(CharacterDim2Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim2Len1024Queue
      subroutine pushCharacterDim3Len1Queue(queue, value)
         type(CharacterDim3Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len1Queue
         !    type(CharacterDim3Len1QueueNode), target:: root
         !    type(CharacterDim3Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len1Queue

      function shiftCharacterDim3Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len1Queue

      function is_emptyCharacterDim3Len1Queue(queue) result(answer)
         type(CharacterDim3Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len1Queue
      subroutine pushCharacterDim3Len2Queue(queue, value)
         type(CharacterDim3Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len2Queue
         !    type(CharacterDim3Len2QueueNode), target:: root
         !    type(CharacterDim3Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len2Queue

      function shiftCharacterDim3Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len2Queue

      function is_emptyCharacterDim3Len2Queue(queue) result(answer)
         type(CharacterDim3Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len2Queue
      subroutine pushCharacterDim3Len4Queue(queue, value)
         type(CharacterDim3Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len4Queue
         !    type(CharacterDim3Len4QueueNode), target:: root
         !    type(CharacterDim3Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len4Queue

      function shiftCharacterDim3Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len4Queue

      function is_emptyCharacterDim3Len4Queue(queue) result(answer)
         type(CharacterDim3Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len4Queue
      subroutine pushCharacterDim3Len8Queue(queue, value)
         type(CharacterDim3Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len8Queue
         !    type(CharacterDim3Len8QueueNode), target:: root
         !    type(CharacterDim3Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len8Queue

      function shiftCharacterDim3Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len8Queue

      function is_emptyCharacterDim3Len8Queue(queue) result(answer)
         type(CharacterDim3Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len8Queue
      subroutine pushCharacterDim3Len16Queue(queue, value)
         type(CharacterDim3Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len16Queue
         !    type(CharacterDim3Len16QueueNode), target:: root
         !    type(CharacterDim3Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len16Queue

      function shiftCharacterDim3Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len16Queue

      function is_emptyCharacterDim3Len16Queue(queue) result(answer)
         type(CharacterDim3Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len16Queue
      subroutine pushCharacterDim3Len32Queue(queue, value)
         type(CharacterDim3Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len32Queue
         !    type(CharacterDim3Len32QueueNode), target:: root
         !    type(CharacterDim3Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len32Queue

      function shiftCharacterDim3Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len32Queue

      function is_emptyCharacterDim3Len32Queue(queue) result(answer)
         type(CharacterDim3Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len32Queue
      subroutine pushCharacterDim3Len64Queue(queue, value)
         type(CharacterDim3Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len64Queue
         !    type(CharacterDim3Len64QueueNode), target:: root
         !    type(CharacterDim3Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len64Queue

      function shiftCharacterDim3Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len64Queue

      function is_emptyCharacterDim3Len64Queue(queue) result(answer)
         type(CharacterDim3Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len64Queue
      subroutine pushCharacterDim3Len128Queue(queue, value)
         type(CharacterDim3Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len128Queue
         !    type(CharacterDim3Len128QueueNode), target:: root
         !    type(CharacterDim3Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len128Queue

      function shiftCharacterDim3Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len128Queue

      function is_emptyCharacterDim3Len128Queue(queue) result(answer)
         type(CharacterDim3Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len128Queue
      subroutine pushCharacterDim3Len256Queue(queue, value)
         type(CharacterDim3Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len256Queue
         !    type(CharacterDim3Len256QueueNode), target:: root
         !    type(CharacterDim3Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len256Queue

      function shiftCharacterDim3Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len256Queue

      function is_emptyCharacterDim3Len256Queue(queue) result(answer)
         type(CharacterDim3Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len256Queue
      subroutine pushCharacterDim3Len512Queue(queue, value)
         type(CharacterDim3Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len512Queue
         !    type(CharacterDim3Len512QueueNode), target:: root
         !    type(CharacterDim3Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len512Queue

      function shiftCharacterDim3Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len512Queue

      function is_emptyCharacterDim3Len512Queue(queue) result(answer)
         type(CharacterDim3Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len512Queue
      subroutine pushCharacterDim3Len1024Queue(queue, value)
         type(CharacterDim3Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :), intent(in):: value
         type(CharacterDim3Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim3Len1024Queue
         !    type(CharacterDim3Len1024QueueNode), target:: root
         !    type(CharacterDim3Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim3Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim3Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim3Len1024Queue

      function shiftCharacterDim3Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim3Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim3Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim3Len1024Queue

      function is_emptyCharacterDim3Len1024Queue(queue) result(answer)
         type(CharacterDim3Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim3Len1024Queue
      subroutine pushCharacterDim4Len1Queue(queue, value)
         type(CharacterDim4Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len1Queue
         !    type(CharacterDim4Len1QueueNode), target:: root
         !    type(CharacterDim4Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len1Queue

      function shiftCharacterDim4Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len1Queue

      function is_emptyCharacterDim4Len1Queue(queue) result(answer)
         type(CharacterDim4Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len1Queue
      subroutine pushCharacterDim4Len2Queue(queue, value)
         type(CharacterDim4Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len2Queue
         !    type(CharacterDim4Len2QueueNode), target:: root
         !    type(CharacterDim4Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len2Queue

      function shiftCharacterDim4Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len2Queue

      function is_emptyCharacterDim4Len2Queue(queue) result(answer)
         type(CharacterDim4Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len2Queue
      subroutine pushCharacterDim4Len4Queue(queue, value)
         type(CharacterDim4Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len4Queue
         !    type(CharacterDim4Len4QueueNode), target:: root
         !    type(CharacterDim4Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len4Queue

      function shiftCharacterDim4Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len4Queue

      function is_emptyCharacterDim4Len4Queue(queue) result(answer)
         type(CharacterDim4Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len4Queue
      subroutine pushCharacterDim4Len8Queue(queue, value)
         type(CharacterDim4Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len8Queue
         !    type(CharacterDim4Len8QueueNode), target:: root
         !    type(CharacterDim4Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len8Queue

      function shiftCharacterDim4Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len8Queue

      function is_emptyCharacterDim4Len8Queue(queue) result(answer)
         type(CharacterDim4Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len8Queue
      subroutine pushCharacterDim4Len16Queue(queue, value)
         type(CharacterDim4Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len16Queue
         !    type(CharacterDim4Len16QueueNode), target:: root
         !    type(CharacterDim4Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len16Queue

      function shiftCharacterDim4Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len16Queue

      function is_emptyCharacterDim4Len16Queue(queue) result(answer)
         type(CharacterDim4Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len16Queue
      subroutine pushCharacterDim4Len32Queue(queue, value)
         type(CharacterDim4Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len32Queue
         !    type(CharacterDim4Len32QueueNode), target:: root
         !    type(CharacterDim4Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len32Queue

      function shiftCharacterDim4Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len32Queue

      function is_emptyCharacterDim4Len32Queue(queue) result(answer)
         type(CharacterDim4Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len32Queue
      subroutine pushCharacterDim4Len64Queue(queue, value)
         type(CharacterDim4Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len64Queue
         !    type(CharacterDim4Len64QueueNode), target:: root
         !    type(CharacterDim4Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len64Queue

      function shiftCharacterDim4Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len64Queue

      function is_emptyCharacterDim4Len64Queue(queue) result(answer)
         type(CharacterDim4Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len64Queue
      subroutine pushCharacterDim4Len128Queue(queue, value)
         type(CharacterDim4Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len128Queue
         !    type(CharacterDim4Len128QueueNode), target:: root
         !    type(CharacterDim4Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len128Queue

      function shiftCharacterDim4Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len128Queue

      function is_emptyCharacterDim4Len128Queue(queue) result(answer)
         type(CharacterDim4Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len128Queue
      subroutine pushCharacterDim4Len256Queue(queue, value)
         type(CharacterDim4Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len256Queue
         !    type(CharacterDim4Len256QueueNode), target:: root
         !    type(CharacterDim4Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len256Queue

      function shiftCharacterDim4Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len256Queue

      function is_emptyCharacterDim4Len256Queue(queue) result(answer)
         type(CharacterDim4Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len256Queue
      subroutine pushCharacterDim4Len512Queue(queue, value)
         type(CharacterDim4Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len512Queue
         !    type(CharacterDim4Len512QueueNode), target:: root
         !    type(CharacterDim4Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len512Queue

      function shiftCharacterDim4Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len512Queue

      function is_emptyCharacterDim4Len512Queue(queue) result(answer)
         type(CharacterDim4Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len512Queue
      subroutine pushCharacterDim4Len1024Queue(queue, value)
         type(CharacterDim4Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :), intent(in):: value
         type(CharacterDim4Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim4Len1024Queue
         !    type(CharacterDim4Len1024QueueNode), target:: root
         !    type(CharacterDim4Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim4Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim4Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim4Len1024Queue

      function shiftCharacterDim4Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim4Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim4Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim4Len1024Queue

      function is_emptyCharacterDim4Len1024Queue(queue) result(answer)
         type(CharacterDim4Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim4Len1024Queue
      subroutine pushCharacterDim5Len1Queue(queue, value)
         type(CharacterDim5Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len1Queue
         !    type(CharacterDim5Len1QueueNode), target:: root
         !    type(CharacterDim5Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len1Queue

      function shiftCharacterDim5Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len1Queue

      function is_emptyCharacterDim5Len1Queue(queue) result(answer)
         type(CharacterDim5Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len1Queue
      subroutine pushCharacterDim5Len2Queue(queue, value)
         type(CharacterDim5Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len2Queue
         !    type(CharacterDim5Len2QueueNode), target:: root
         !    type(CharacterDim5Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len2Queue

      function shiftCharacterDim5Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len2Queue

      function is_emptyCharacterDim5Len2Queue(queue) result(answer)
         type(CharacterDim5Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len2Queue
      subroutine pushCharacterDim5Len4Queue(queue, value)
         type(CharacterDim5Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len4Queue
         !    type(CharacterDim5Len4QueueNode), target:: root
         !    type(CharacterDim5Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len4Queue

      function shiftCharacterDim5Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len4Queue

      function is_emptyCharacterDim5Len4Queue(queue) result(answer)
         type(CharacterDim5Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len4Queue
      subroutine pushCharacterDim5Len8Queue(queue, value)
         type(CharacterDim5Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len8Queue
         !    type(CharacterDim5Len8QueueNode), target:: root
         !    type(CharacterDim5Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len8Queue

      function shiftCharacterDim5Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len8Queue

      function is_emptyCharacterDim5Len8Queue(queue) result(answer)
         type(CharacterDim5Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len8Queue
      subroutine pushCharacterDim5Len16Queue(queue, value)
         type(CharacterDim5Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len16Queue
         !    type(CharacterDim5Len16QueueNode), target:: root
         !    type(CharacterDim5Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len16Queue

      function shiftCharacterDim5Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len16Queue

      function is_emptyCharacterDim5Len16Queue(queue) result(answer)
         type(CharacterDim5Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len16Queue
      subroutine pushCharacterDim5Len32Queue(queue, value)
         type(CharacterDim5Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len32Queue
         !    type(CharacterDim5Len32QueueNode), target:: root
         !    type(CharacterDim5Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len32Queue

      function shiftCharacterDim5Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len32Queue

      function is_emptyCharacterDim5Len32Queue(queue) result(answer)
         type(CharacterDim5Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len32Queue
      subroutine pushCharacterDim5Len64Queue(queue, value)
         type(CharacterDim5Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len64Queue
         !    type(CharacterDim5Len64QueueNode), target:: root
         !    type(CharacterDim5Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len64Queue

      function shiftCharacterDim5Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len64Queue

      function is_emptyCharacterDim5Len64Queue(queue) result(answer)
         type(CharacterDim5Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len64Queue
      subroutine pushCharacterDim5Len128Queue(queue, value)
         type(CharacterDim5Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len128Queue
         !    type(CharacterDim5Len128QueueNode), target:: root
         !    type(CharacterDim5Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len128Queue

      function shiftCharacterDim5Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len128Queue

      function is_emptyCharacterDim5Len128Queue(queue) result(answer)
         type(CharacterDim5Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len128Queue
      subroutine pushCharacterDim5Len256Queue(queue, value)
         type(CharacterDim5Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len256Queue
         !    type(CharacterDim5Len256QueueNode), target:: root
         !    type(CharacterDim5Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len256Queue

      function shiftCharacterDim5Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len256Queue

      function is_emptyCharacterDim5Len256Queue(queue) result(answer)
         type(CharacterDim5Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len256Queue
      subroutine pushCharacterDim5Len512Queue(queue, value)
         type(CharacterDim5Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len512Queue
         !    type(CharacterDim5Len512QueueNode), target:: root
         !    type(CharacterDim5Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len512Queue

      function shiftCharacterDim5Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len512Queue

      function is_emptyCharacterDim5Len512Queue(queue) result(answer)
         type(CharacterDim5Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len512Queue
      subroutine pushCharacterDim5Len1024Queue(queue, value)
         type(CharacterDim5Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :, :), intent(in):: value
         type(CharacterDim5Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim5Len1024Queue
         !    type(CharacterDim5Len1024QueueNode), target:: root
         !    type(CharacterDim5Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim5Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim5Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim5Len1024Queue

      function shiftCharacterDim5Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim5Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim5Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim5Len1024Queue

      function is_emptyCharacterDim5Len1024Queue(queue) result(answer)
         type(CharacterDim5Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim5Len1024Queue
      subroutine pushCharacterDim6Len1Queue(queue, value)
         type(CharacterDim6Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len1Queue
         !    type(CharacterDim6Len1QueueNode), target:: root
         !    type(CharacterDim6Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len1Queue

      function shiftCharacterDim6Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len1Queue

      function is_emptyCharacterDim6Len1Queue(queue) result(answer)
         type(CharacterDim6Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len1Queue
      subroutine pushCharacterDim6Len2Queue(queue, value)
         type(CharacterDim6Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len2Queue
         !    type(CharacterDim6Len2QueueNode), target:: root
         !    type(CharacterDim6Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len2Queue

      function shiftCharacterDim6Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len2Queue

      function is_emptyCharacterDim6Len2Queue(queue) result(answer)
         type(CharacterDim6Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len2Queue
      subroutine pushCharacterDim6Len4Queue(queue, value)
         type(CharacterDim6Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len4Queue
         !    type(CharacterDim6Len4QueueNode), target:: root
         !    type(CharacterDim6Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len4Queue

      function shiftCharacterDim6Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len4Queue

      function is_emptyCharacterDim6Len4Queue(queue) result(answer)
         type(CharacterDim6Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len4Queue
      subroutine pushCharacterDim6Len8Queue(queue, value)
         type(CharacterDim6Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len8Queue
         !    type(CharacterDim6Len8QueueNode), target:: root
         !    type(CharacterDim6Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len8Queue

      function shiftCharacterDim6Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len8Queue

      function is_emptyCharacterDim6Len8Queue(queue) result(answer)
         type(CharacterDim6Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len8Queue
      subroutine pushCharacterDim6Len16Queue(queue, value)
         type(CharacterDim6Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len16Queue
         !    type(CharacterDim6Len16QueueNode), target:: root
         !    type(CharacterDim6Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len16Queue

      function shiftCharacterDim6Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len16Queue

      function is_emptyCharacterDim6Len16Queue(queue) result(answer)
         type(CharacterDim6Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len16Queue
      subroutine pushCharacterDim6Len32Queue(queue, value)
         type(CharacterDim6Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len32Queue
         !    type(CharacterDim6Len32QueueNode), target:: root
         !    type(CharacterDim6Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len32Queue

      function shiftCharacterDim6Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len32Queue

      function is_emptyCharacterDim6Len32Queue(queue) result(answer)
         type(CharacterDim6Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len32Queue
      subroutine pushCharacterDim6Len64Queue(queue, value)
         type(CharacterDim6Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len64Queue
         !    type(CharacterDim6Len64QueueNode), target:: root
         !    type(CharacterDim6Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len64Queue

      function shiftCharacterDim6Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len64Queue

      function is_emptyCharacterDim6Len64Queue(queue) result(answer)
         type(CharacterDim6Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len64Queue
      subroutine pushCharacterDim6Len128Queue(queue, value)
         type(CharacterDim6Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len128Queue
         !    type(CharacterDim6Len128QueueNode), target:: root
         !    type(CharacterDim6Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len128Queue

      function shiftCharacterDim6Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len128Queue

      function is_emptyCharacterDim6Len128Queue(queue) result(answer)
         type(CharacterDim6Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len128Queue
      subroutine pushCharacterDim6Len256Queue(queue, value)
         type(CharacterDim6Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len256Queue
         !    type(CharacterDim6Len256QueueNode), target:: root
         !    type(CharacterDim6Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len256Queue

      function shiftCharacterDim6Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len256Queue

      function is_emptyCharacterDim6Len256Queue(queue) result(answer)
         type(CharacterDim6Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len256Queue
      subroutine pushCharacterDim6Len512Queue(queue, value)
         type(CharacterDim6Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len512Queue
         !    type(CharacterDim6Len512QueueNode), target:: root
         !    type(CharacterDim6Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len512Queue

      function shiftCharacterDim6Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len512Queue

      function is_emptyCharacterDim6Len512Queue(queue) result(answer)
         type(CharacterDim6Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len512Queue
      subroutine pushCharacterDim6Len1024Queue(queue, value)
         type(CharacterDim6Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :, :, :), intent(in):: value
         type(CharacterDim6Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim6Len1024Queue
         !    type(CharacterDim6Len1024QueueNode), target:: root
         !    type(CharacterDim6Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim6Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim6Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim6Len1024Queue

      function shiftCharacterDim6Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim6Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim6Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim6Len1024Queue

      function is_emptyCharacterDim6Len1024Queue(queue) result(answer)
         type(CharacterDim6Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim6Len1024Queue
      subroutine pushCharacterDim7Len1Queue(queue, value)
         type(CharacterDim7Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len1QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len1Queue
         !    type(CharacterDim7Len1QueueNode), target:: root
         !    type(CharacterDim7Len1QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len1QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len1Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len1Queue

      function shiftCharacterDim7Len1Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len1Queue), intent(inout):: queue
         Character(len = 1), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len1QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len1Queue

      function is_emptyCharacterDim7Len1Queue(queue) result(answer)
         type(CharacterDim7Len1Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len1Queue
      subroutine pushCharacterDim7Len2Queue(queue, value)
         type(CharacterDim7Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len2QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len2Queue
         !    type(CharacterDim7Len2QueueNode), target:: root
         !    type(CharacterDim7Len2QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len2QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len2Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len2Queue

      function shiftCharacterDim7Len2Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len2Queue), intent(inout):: queue
         Character(len = 2), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len2QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len2Queue

      function is_emptyCharacterDim7Len2Queue(queue) result(answer)
         type(CharacterDim7Len2Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len2Queue
      subroutine pushCharacterDim7Len4Queue(queue, value)
         type(CharacterDim7Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len4QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len4Queue
         !    type(CharacterDim7Len4QueueNode), target:: root
         !    type(CharacterDim7Len4QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len4QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len4Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len4Queue

      function shiftCharacterDim7Len4Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len4Queue), intent(inout):: queue
         Character(len = 4), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len4QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len4Queue

      function is_emptyCharacterDim7Len4Queue(queue) result(answer)
         type(CharacterDim7Len4Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len4Queue
      subroutine pushCharacterDim7Len8Queue(queue, value)
         type(CharacterDim7Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len8QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len8Queue
         !    type(CharacterDim7Len8QueueNode), target:: root
         !    type(CharacterDim7Len8QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len8QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len8Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len8Queue

      function shiftCharacterDim7Len8Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len8Queue), intent(inout):: queue
         Character(len = 8), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len8QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len8Queue

      function is_emptyCharacterDim7Len8Queue(queue) result(answer)
         type(CharacterDim7Len8Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len8Queue
      subroutine pushCharacterDim7Len16Queue(queue, value)
         type(CharacterDim7Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len16QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len16Queue
         !    type(CharacterDim7Len16QueueNode), target:: root
         !    type(CharacterDim7Len16QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len16QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len16Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len16Queue

      function shiftCharacterDim7Len16Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len16Queue), intent(inout):: queue
         Character(len = 16), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len16QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len16Queue

      function is_emptyCharacterDim7Len16Queue(queue) result(answer)
         type(CharacterDim7Len16Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len16Queue
      subroutine pushCharacterDim7Len32Queue(queue, value)
         type(CharacterDim7Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len32QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len32Queue
         !    type(CharacterDim7Len32QueueNode), target:: root
         !    type(CharacterDim7Len32QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len32QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len32Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len32Queue

      function shiftCharacterDim7Len32Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len32Queue), intent(inout):: queue
         Character(len = 32), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len32QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len32Queue

      function is_emptyCharacterDim7Len32Queue(queue) result(answer)
         type(CharacterDim7Len32Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len32Queue
      subroutine pushCharacterDim7Len64Queue(queue, value)
         type(CharacterDim7Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len64QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len64Queue
         !    type(CharacterDim7Len64QueueNode), target:: root
         !    type(CharacterDim7Len64QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len64QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len64Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len64Queue

      function shiftCharacterDim7Len64Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len64Queue), intent(inout):: queue
         Character(len = 64), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len64QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len64Queue

      function is_emptyCharacterDim7Len64Queue(queue) result(answer)
         type(CharacterDim7Len64Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len64Queue
      subroutine pushCharacterDim7Len128Queue(queue, value)
         type(CharacterDim7Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len128QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len128Queue
         !    type(CharacterDim7Len128QueueNode), target:: root
         !    type(CharacterDim7Len128QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len128QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len128Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len128Queue

      function shiftCharacterDim7Len128Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len128Queue), intent(inout):: queue
         Character(len = 128), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len128QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len128Queue

      function is_emptyCharacterDim7Len128Queue(queue) result(answer)
         type(CharacterDim7Len128Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len128Queue
      subroutine pushCharacterDim7Len256Queue(queue, value)
         type(CharacterDim7Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len256QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len256Queue
         !    type(CharacterDim7Len256QueueNode), target:: root
         !    type(CharacterDim7Len256QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len256QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len256Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len256Queue

      function shiftCharacterDim7Len256Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len256Queue), intent(inout):: queue
         Character(len = 256), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len256QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len256Queue

      function is_emptyCharacterDim7Len256Queue(queue) result(answer)
         type(CharacterDim7Len256Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len256Queue
      subroutine pushCharacterDim7Len512Queue(queue, value)
         type(CharacterDim7Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len512QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len512Queue
         !    type(CharacterDim7Len512QueueNode), target:: root
         !    type(CharacterDim7Len512QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len512QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len512Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len512Queue

      function shiftCharacterDim7Len512Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len512Queue), intent(inout):: queue
         Character(len = 512), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len512QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len512Queue

      function is_emptyCharacterDim7Len512Queue(queue) result(answer)
         type(CharacterDim7Len512Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len512Queue
      subroutine pushCharacterDim7Len1024Queue(queue, value)
         type(CharacterDim7Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :, :, :, :), intent(in):: value
         type(CharacterDim7Len1024QueueNode), pointer:: newNode

         allocate(newNode)
         newNode%value = value

         ! ! If user defined type allows member variables with the target attribute, I would define Queue as:
         ! type CharacterDim7Len1024Queue
         !    type(CharacterDim7Len1024QueueNode), target:: root
         !    type(CharacterDim7Len1024QueueNode), pointer:: tail => root
         !    type(CharacterDim7Len1024QueueNode), pointer:: head => root%next
         ! end type CharacterDim7Len1024Queue
         ! ! and the following if-statement could be simplified as:
         ! queue%tail%next => newNode
         if(is_empty_queue(queue))then
            queue%head => newNode
         else
            queue%tail%next => newNode
         end if
         queue%tail => newNode
      end subroutine pushCharacterDim7Len1024Queue

      function shiftCharacterDim7Len1024Queue(queue, value) result(isSuccess)
         type(CharacterDim7Len1024Queue), intent(inout):: queue
         Character(len = 1024), dimension(:, :, :, :, :, :, :), allocatable, intent(inout):: value
         Logical:: isSuccess
         type(CharacterDim7Len1024QueueNode), pointer:: removedNode => null()

         if(is_empty_queue(queue))then
            isSuccess = .false.
            return
         end if

         value = queue%head%value
         removedNode => queue%head
         queue%head => queue%head%next
         deallocate(removedNode)
         isSuccess = .true.
      end function shiftCharacterDim7Len1024Queue

      function is_emptyCharacterDim7Len1024Queue(queue) result(answer)
         type(CharacterDim7Len1024Queue), intent(in):: queue
         Logical:: answer

         answer = .not.associated(queue%head)
      end function is_emptyCharacterDim7Len1024Queue
end module queue_lib
