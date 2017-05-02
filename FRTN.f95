module functions
  implicit none
  character, parameter :: item = ''
  character(len=*), parameter :: input_string = ""
  character :: rval = ""
  integer, dimension(:), allocatable :: return_arr
contains
  function remove(item, input_string) result (rval)
    implicit none
    character :: cchar
    character :: item
    character(len=*) :: input_string
    character(len=len(input_string)) :: middle_man
    character(len=50) :: rval
    integer :: index
    middle_man = ""
    do index = 1,len(trim(input_string))
      cchar = input_string(index:index)
      if (cchar /= item ) then
        middle_man = (trim(middle_man)//adjustl(trim(cchar)))
      end if
    end do
    if (len(middle_man) < 50) then
      rval = middle_man
    else
      print *, "Input string too long"
    end if
  end function remove
  function split(input_string) result (return_arr)
    implicit none
    character(len=*) :: input_string
    character, dimension(:), allocatable :: return_arr
    integer :: index
    integer :: max_index
    allocate(return_arr(len(trim(input_string))))
    max_index = (len(trim(input_string))) - 1
    do index = 1,max_index
      return_arr(index) = input_string(index:index)
    end do
  end function split
  function stringToNumList(input_string) result (return_arr)
    implicit none
    character(len=*) :: input_string
    integer, dimension(:), allocatable :: return_arr
    integer :: index
    integer :: max_index
    allocate(return_arr(len(trim(input_string))))
    max_index = (len(trim(input_string))) - 1
    do index = 1,max_index
      return_arr(index) = iachar(input_string(index:index))
    end do
  end function stringToNumList
end module


program frtn
  use functions
  implicit none
  character(len=20) :: input
  character :: remover
  character(len=50) :: output
  character, dimension(20) :: output_arr
  integer, dimension(20) :: s_output_arr
  input = "AADDAADA"
  remover = "A"
  output = remove(remover, input)
  print *, output
  output_arr = split(input)
  print *, output_arr
  s_output_arr = stringToNumList(input)
  print *, s_output_arr
end program frtn
