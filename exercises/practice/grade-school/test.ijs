load 'grade-school.ijs'


grade_school_test_01_ignore=: 0
test_grade_school_test_01  =: monad define
  Description=: 'Roster is empty when no student is added'

  NB. students=. ''
  NB. expected=. ''
  assert '' -: roster ''
)

grade_school_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_02  =: monad define
  Description=: 'Add a student'

  NB. students=. 'Aimee' ; 2
  NB. expected=. ,1
  assert (,1) = add (<'Aimee') ,: < 2
)

grade_school_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_03  =: monad define
  Description=: 'Student is added to the roster'

  NB. students=. 'Aimee' ; 2
  NB. expected=. (,<'Aimee')
  assert (,<'Aimee') = roster (<'Aimee') ,: < 2
)

grade_school_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_04  =: monad define
  Description=: 'Adding multiple students in the same grade in the roster'

  NB. students=. (;:'Blair James Paul'),: <"0 (2 2 2)
  NB. expected=. 1 1 1
  assert 1 1 1 -: add (;:'Blair James Paul'),: <"0 (2 2 2)
)

grade_school_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_05  =: monad define
  Description=: 'Multiple students in the same grade are added to the roster'

  NB. students=. (;:'Blair James Paul'),: <"0 (2 2 2)
  NB. expected=. 'Blair James Paul'
  assert (;:'Blair James Paul') -: roster (;:'Blair James Paul'),: <"0 (2 2 2)
)

grade_school_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_06  =: monad define
  Description=: 'Cannot add student to same grade in the roster more than once'

  NB. students=. (;:'Blair James James Paul'),: <"0 (2 2 2 2)
  NB. expected=. 1 1 0 1
  assert 1 1 0 1 -: add (;:'Blair James James Paul'),: <"0 (2 2 2 2)
)

grade_school_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_09  =: monad define
  Description=: 'Student not added to same grade in the roster more than once'

  NB. expected=. 'Blair James Paul'
  assert (;:'Blair James Paul') -: roster (;:'Blair James James Paul'),: <"0 (2 2 2 2)
)

grade_school_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_10  =: monad define
  Description=: 'Adding students in multiple grades'

  NB. students=. (;:'Chelsea Logan'),: <"0 (3 7)
  NB. expected=. 1 1
  assert 1 1 -: add (;:'Chelsea Logan'),: <"0 (3 7)
)

grade_school_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_11  =: monad define
  Description=: 'Students in multiple grades are added to the roster'

  NB. students=. (;:'Chelsea Logan'),: <"0 (3 7)
  NB. expected=. 'Chelsea Logan'
  assert (;:'Chelsea Logan') -: roster (;:'Chelsea Logan'),: <"0 (3 7)
)

grade_school_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_12  =: monad define
  Description=: 'Cannot add same student to multiple grades in the roster'

  NB. students=. (;:'Blair James James Paul'),: <"0 (2 2 3 3)
  NB. expected=. 1 1 0 1
  assert 1 1 0 1 -: add (;:'Blair James James Paul'),: <"0 (2 2 3 3)
)

grade_school_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_14  =: monad define
  Description=: 'Student not added to multiple grades in the roster'

  NB. students=. (;:'Blair James James Paul'),: <"0 (2 2 3 3)
  NB. expected=. 'Blair James Paul'
  assert (;:'Blair James Paul') -: roster (;:'Blair James James Paul'),: <"0 (2 2 3 3)
)

grade_school_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_15  =: monad define
  Description=: 'Students are sorted by grades in the roster'

  NB. students=. (;:'Jim Peter Anna'),: <"0 (3 2 1)
  NB. expected=. 'Anna Peter Jim'
  assert (;:'Anna Peter Jim') -: roster (;:'Jim Peter Anna'),: <"0 (3 2 1)
)

grade_school_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_16  =: monad define
  Description=: 'Students are sorted by name in the roster'

  NB. students=. (;:'Peter Zoe Alex'),: <"0 (2 2 2)
  NB. expected=. 'Alex Peter Zoe'
  assert (;:'Alex Peter Zoe') -: roster (;:'Peter Zoe Alex'),: <"0 (2 2 2)
)

grade_school_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_17  =: monad define
  Description=: 'Students are sorted by grades and then by name in the roster'

  NB. students=. (;:'Peter Anna Barb Zoe Alex Jim Charlie'),: <"0 (2 1 1 2 2 3 1)
  NB. expected=. 'Anna Barb Charlie Alex Peter Zoe Jim'
  assert (;:'Anna Barb Charlie Alex Peter Zoe Jim') -: roster (;:'Peter Anna Barb Zoe Alex Jim Charlie'),: <"0 (2 1 1 2 2 3 1)
)

grade_school_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_18  =: monad define
  Description=: 'Grade is empty if no students in the roster'

  NB. students=. ''
  NB. desiredGrade=. 1
  NB. expected=. ''
  assert '' -: '' grade 1
)

grade_school_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_19  =: monad define
  Description=: 'Grade is empty if no students in that grade'

  NB. students=. (;:'Peter Zoe Alex Jim'),: <"0 (2 2 2 3)
  NB. desiredGrade=. 1
  NB. expected=. ''
  assert '' -: ((;:'Peter Zoe Alex Jim'),: <"0 (2 2 2 3)) grade 1
)

grade_school_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_20  =: monad define
  Description=: 'Student not added to same grade more than once'

  NB. students=. (;:'Blair James James Paul'),: <"0 (2 2 2 2)
  NB. desiredGrade=. 2
  NB. expected=. 'Blair James Paul'
  assert (;:'Blair James Paul') -: ((;:'Blair James James Paul'),: <"0 (2 2 2 2)) grade 2
)

grade_school_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_21  =: monad define
  Description=: 'Student not added to multiple grades'

  NB. students=. (;:'Blair James James Paul'),: <"0 (2 2 3 3)
  NB. desiredGrade=. 2
  NB. expected=. 'Blair James'
  assert (;:'Blair James') -: ((;:'Blair James James Paul'),: <"0 (2 2 3 3)) grade 2
)

grade_school_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_22  =: monad define
  Description=: 'Student not added to other grade for multiple grades'

  NB. students=. (;:'Blair James James Paul'),: <"0 (2 2 3 3)
  NB. desiredGrade=. 3
  NB. expected=. (,<'Paul')
  assert (,<'Paul') = ((;:'Blair James James Paul'),: <"0 (2 2 3 3)) grade 3
)

grade_school_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_grade_school_test_23  =: monad define
  Description=: 'Students are sorted by name in a grade'

  NB. students=. (;:'Franklin Bradley Jeff'),: <"0 (5 5 1)
  NB. desiredGrade=. 5
  NB. expected=. 'Bradley Franklin'
  assert (;:'Bradley Franklin') -: ((;:'Franklin Bradley Jeff'),: <"0 (5 5 1)) grade 5
)
