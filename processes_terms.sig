sig processes_terms.

kind pt type.

%%%%%%%%%
% TERMS
%%%%%%%%%

type abs (pt -> pt) -> pt.
type app pt -> pt -> pt.
type esub (pt -> pt) -> pt -> pt.


%%%%%%%%%
% PROCESSES
%%%%%%%%%

type zero   pt.
type nu 	(pt -> pt) -> pt.
type par	pt -> pt -> pt.
type out	pt -> pt -> pt.
type out2	pt -> pt -> pt -> pt.
type in		pt -> (pt -> pt) -> pt.
type in2 	pt -> (pt -> pt -> pt) -> pt.


%%%%%%%%%
% NATURAL NUMBERS
%%%%%%%%%

kind nat type.

type     z        nat.
type     s        nat -> nat.
