% Copyright 2018 The Spectector authors
%
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
%
%     http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
% ===========================================================================

:- module(_, [], [assertions, datafacts]).

:- doc(title, "Flags").

:- data window_size/1.

:- export(set_window_size/1).
set_window_size(N) :-
	set_fact(window_size(N)).

:- export(get_window_size/1).
get_window_size(N) :-
	( window_size(N0) -> N0 = N
	; N = 100 % default
	).

:- data step_limit/1.

:- export(set_step_limit/1).
set_step_limit(N) :-
	set_fact(step_limit(N)).

:- export(get_step_limit/1).
get_step_limit(N) :-
	( step_limit(N0) -> N0 = N
	; N = 100000 % default
	).