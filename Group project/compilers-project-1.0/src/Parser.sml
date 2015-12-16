local
type t__1__ = (int*int)
type t__2__ = (int*int)
type t__3__ = (int*int)
type t__4__ = char*(int*int)
type t__5__ = (int*int)
type t__6__ = (int*int)
type t__7__ = (int*int)
type t__8__ = (int*int)
type t__9__ = (int*int)
type t__10__ = (int*int)
type t__11__ = bool*(int*int)
type t__12__ = (int*int)
type t__13__ = string*(int*int)
type t__14__ = (int*int)
type t__15__ = (int*int)
type t__16__ = (int*int)
type t__17__ = (int*int)
type t__18__ = (int*int)
type t__19__ = (int*int)
type t__20__ = (int*int)
type t__21__ = (int*int)
type t__22__ = (int*int)
type t__23__ = (int*int)
type t__24__ = (int*int)
type t__25__ = (int*int)
type t__26__ = (int*int)
type t__27__ = int*(int*int)
type t__28__ = (int*int)
type t__29__ = (int*int)
type t__30__ = (int*int)
type t__31__ = (int*int)
type t__32__ = (int*int)
type t__33__ = (int*int)
type t__34__ = (int*int)
type t__35__ = string*(int*int)
type t__36__ = (int*int)
type t__37__ = (int*int)
type t__38__ = bool*(int*int)
type t__39__ = (int*int)
in
datatype token =
    AND of t__1__
  | BOOL of t__2__
  | CHAR of t__3__
  | CHARLIT of t__4__
  | COMMA of t__5__
  | DEQ of t__6__
  | DIVIDE of t__7__
  | ELSE of t__8__
  | EOF of t__9__
  | EQ of t__10__
  | FALSE of t__11__
  | FUN of t__12__
  | ID of t__13__
  | IF of t__14__
  | IN of t__15__
  | INT of t__16__
  | IOTA of t__17__
  | LBRACKET of t__18__
  | LCURLY of t__19__
  | LET of t__20__
  | LPAR of t__21__
  | LTH of t__22__
  | MAP of t__23__
  | MINUS of t__24__
  | NEGATE of t__25__
  | NOT of t__26__
  | NUM of t__27__
  | OR of t__28__
  | PLUS of t__29__
  | RBRACKET of t__30__
  | RCURLY of t__31__
  | READ of t__32__
  | REDUCE of t__33__
  | RPAR of t__34__
  | STRINGLIT of t__35__
  | THEN of t__36__
  | TIMES of t__37__
  | TRUE of t__38__
  | WRITE of t__39__
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";


(* A parser definition for Fasto, for use with mosmlyac. *)

open Fasto
open Fasto.UnknownTypes

(* Line 12, file Parser.sml *)
val yytransl = #[
  257 (* AND *),
  258 (* BOOL *),
  259 (* CHAR *),
  260 (* CHARLIT *),
  261 (* COMMA *),
  262 (* DEQ *),
  263 (* DIVIDE *),
  264 (* ELSE *),
  265 (* EOF *),
  266 (* EQ *),
  267 (* FALSE *),
  268 (* FUN *),
  269 (* ID *),
  270 (* IF *),
  271 (* IN *),
  272 (* INT *),
  273 (* IOTA *),
  274 (* LBRACKET *),
  275 (* LCURLY *),
  276 (* LET *),
  277 (* LPAR *),
  278 (* LTH *),
  279 (* MAP *),
  280 (* MINUS *),
  281 (* NEGATE *),
  282 (* NOT *),
  283 (* NUM *),
  284 (* OR *),
  285 (* PLUS *),
  286 (* RBRACKET *),
  287 (* RCURLY *),
  288 (* READ *),
  289 (* REDUCE *),
  290 (* RPAR *),
  291 (* STRINGLIT *),
  292 (* THEN *),
  293 (* TIMES *),
  294 (* TRUE *),
  295 (* WRITE *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\003\000\003\000\004\000\004\000\004\000\
\\004\000\005\000\005\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\007\000\
\\007\000\000\000";

val yylen = "\002\000\
\\002\000\003\000\002\000\007\000\006\000\001\000\001\000\001\000\
\\003\000\004\000\002\000\001\000\001\000\001\000\001\000\001\000\
\\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\\002\000\002\000\003\000\003\000\006\000\004\000\003\000\004\000\
\\004\000\003\000\006\000\004\000\004\000\006\000\008\000\003\000\
\\001\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\042\000\000\000\007\000\008\000\006\000\
\\000\000\000\000\000\000\001\000\000\000\002\000\000\000\009\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\
\\014\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\012\000\000\000\000\000\017\000\013\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\010\000\000\000\000\000\031\000\000\000\000\000\000\000\
\\000\000\018\000\000\000\034\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\036\000\030\000\000\000\037\000\040\000\000\000\000\000\032\000\
\\000\000\033\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\038\000\000\000\000\000\039\000";

val yydgoto = "\002\000\
\\004\000\005\000\010\000\019\000\020\000\048\000\049\000";

val yysindex = "\010\000\
\\003\255\000\000\017\255\000\000\008\255\000\000\000\000\000\000\
\\017\255\003\255\012\255\000\000\247\254\000\000\006\255\000\000\
\\000\255\021\255\035\255\022\255\147\000\052\255\051\255\000\000\
\\000\000\243\254\147\000\041\255\147\000\056\255\147\000\054\255\
\\147\000\147\000\000\000\060\255\062\255\000\000\000\000\063\255\
\\086\000\017\255\147\000\147\000\115\000\211\255\147\000\023\255\
\\046\255\080\255\152\255\030\255\171\000\171\000\017\255\049\255\
\\147\000\147\000\147\000\147\000\147\000\147\000\147\000\147\000\
\\147\000\000\000\086\000\214\255\000\000\068\255\147\000\248\255\
\\147\000\000\000\147\000\000\000\091\255\069\255\100\255\003\000\
\\171\000\234\255\241\254\234\255\000\000\096\000\000\000\241\254\
\\000\000\000\000\027\000\000\000\000\000\037\000\147\000\000\000\
\\147\000\000\000\147\000\147\000\047\000\072\000\086\000\086\000\
\\000\000\147\000\061\000\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\097\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\074\255\000\000\000\000\
\\000\000\058\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\037\255\000\000\000\000\000\000\000\000\000\000\000\000\024\255\
\\000\000\000\000\000\000\000\000\223\000\255\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\059\255\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\008\001\182\000\160\255\214\000\092\255\038\001\126\255\194\255\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\046\001\055\001\
\\000\000\000\000\000\000\000\000";

val yygindex = "\000\000\
\\000\000\099\000\000\000\254\255\068\000\235\255\215\255";

val YYTABLESIZE = 603;
val yytable = "\041\000\
\\011\000\006\000\007\000\070\000\044\000\046\000\013\000\045\000\
\\062\000\051\000\001\000\053\000\054\000\064\000\003\000\008\000\
\\012\000\009\000\006\000\007\000\016\000\067\000\068\000\058\000\
\\015\000\072\000\017\000\073\000\059\000\060\000\021\000\093\000\
\\008\000\018\000\009\000\080\000\081\000\082\000\083\000\084\000\
\\085\000\086\000\087\000\088\000\061\000\005\000\062\000\022\000\
\\005\000\091\000\063\000\064\000\078\000\094\000\041\000\023\000\
\\042\000\041\000\016\000\065\000\043\000\047\000\016\000\016\000\
\\016\000\016\000\016\000\004\000\050\000\016\000\004\000\077\000\
\\016\000\101\000\052\000\102\000\074\000\103\000\104\000\016\000\
\\055\000\016\000\056\000\057\000\107\000\016\000\016\000\016\000\
\\016\000\075\000\079\000\016\000\022\000\016\000\016\000\095\000\
\\022\000\022\000\022\000\022\000\022\000\090\000\096\000\022\000\
\\097\000\003\000\022\000\011\000\014\000\066\000\000\000\000\000\
\\000\000\022\000\000\000\022\000\000\000\000\000\000\000\022\000\
\\022\000\022\000\022\000\000\000\000\000\022\000\021\000\022\000\
\\022\000\000\000\021\000\021\000\021\000\021\000\021\000\000\000\
\\000\000\021\000\000\000\000\000\021\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\021\000\000\000\021\000\000\000\000\000\
\\058\000\021\000\021\000\021\000\021\000\059\000\060\000\021\000\
\\020\000\021\000\021\000\000\000\020\000\020\000\020\000\020\000\
\\020\000\000\000\000\000\020\000\000\000\061\000\020\000\062\000\
\\000\000\000\000\000\000\063\000\064\000\020\000\000\000\000\000\
\\000\000\076\000\000\000\020\000\065\000\020\000\020\000\000\000\
\\000\000\020\000\019\000\020\000\020\000\000\000\019\000\019\000\
\\019\000\019\000\019\000\000\000\000\000\019\000\000\000\000\000\
\\019\000\000\000\000\000\058\000\000\000\000\000\058\000\019\000\
\\059\000\060\000\000\000\059\000\060\000\019\000\000\000\019\000\
\\019\000\000\000\000\000\019\000\000\000\019\000\019\000\000\000\
\\061\000\000\000\062\000\061\000\000\000\062\000\063\000\064\000\
\\060\000\063\000\064\000\089\000\000\000\000\000\071\000\065\000\
\\058\000\000\000\065\000\000\000\000\000\059\000\060\000\000\000\
\\000\000\062\000\000\000\058\000\000\000\000\000\064\000\000\000\
\\059\000\060\000\000\000\000\000\000\000\061\000\065\000\062\000\
\\000\000\000\000\000\000\063\000\064\000\000\000\000\000\000\000\
\\061\000\092\000\062\000\058\000\065\000\000\000\063\000\064\000\
\\059\000\060\000\099\000\000\000\098\000\058\000\000\000\065\000\
\\000\000\000\000\059\000\060\000\000\000\000\000\000\000\058\000\
\\061\000\000\000\062\000\100\000\059\000\060\000\063\000\064\000\
\\000\000\000\000\061\000\000\000\062\000\058\000\000\000\065\000\
\\063\000\064\000\059\000\060\000\061\000\000\000\062\000\000\000\
\\058\000\065\000\063\000\064\000\106\000\059\000\060\000\000\000\
\\105\000\000\000\061\000\065\000\062\000\000\000\058\000\000\000\
\\063\000\064\000\000\000\059\000\060\000\061\000\108\000\062\000\
\\058\000\065\000\000\000\063\000\064\000\059\000\060\000\000\000\
\\000\000\000\000\000\000\061\000\065\000\062\000\000\000\000\000\
\\000\000\063\000\064\000\000\000\000\000\061\000\024\000\062\000\
\\000\000\000\000\065\000\000\000\064\000\025\000\000\000\026\000\
\\027\000\000\000\000\000\028\000\065\000\029\000\030\000\031\000\
\\000\000\032\000\000\000\033\000\034\000\035\000\000\000\000\000\
\\000\000\000\000\036\000\037\000\069\000\038\000\024\000\000\000\
\\039\000\040\000\000\000\000\000\000\000\025\000\000\000\026\000\
\\027\000\000\000\000\000\028\000\000\000\029\000\030\000\031\000\
\\000\000\032\000\000\000\033\000\034\000\035\000\000\000\000\000\
\\059\000\060\000\036\000\037\000\000\000\038\000\027\000\000\000\
\\039\000\040\000\027\000\027\000\000\000\027\000\027\000\000\000\
\\061\000\027\000\062\000\000\000\027\000\000\000\000\000\064\000\
\\000\000\000\000\000\000\027\000\000\000\000\000\000\000\065\000\
\\000\000\027\000\000\000\027\000\027\000\000\000\028\000\027\000\
\\000\000\027\000\028\000\028\000\000\000\028\000\028\000\026\000\
\\000\000\028\000\000\000\026\000\028\000\000\000\026\000\026\000\
\\000\000\000\000\026\000\028\000\000\000\026\000\000\000\000\000\
\\000\000\028\000\000\000\028\000\028\000\000\000\000\000\028\000\
\\000\000\028\000\026\000\000\000\026\000\026\000\000\000\025\000\
\\026\000\000\000\026\000\025\000\000\000\000\000\025\000\025\000\
\\023\000\000\000\025\000\000\000\023\000\025\000\000\000\023\000\
\\023\000\000\000\000\000\023\000\000\000\000\000\023\000\000\000\
\\000\000\000\000\025\000\000\000\025\000\025\000\000\000\000\000\
\\025\000\000\000\025\000\023\000\000\000\023\000\023\000\000\000\
\\000\000\023\000\024\000\023\000\000\000\024\000\024\000\000\000\
\\000\000\024\000\029\000\000\000\024\000\029\000\029\000\000\000\
\\000\000\029\000\000\000\035\000\029\000\000\000\035\000\035\000\
\\000\000\024\000\035\000\024\000\024\000\035\000\000\000\024\000\
\\000\000\024\000\000\000\029\000\029\000\000\000\000\000\029\000\
\\000\000\029\000\000\000\000\000\035\000\035\000\000\000\000\000\
\\035\000\000\000\035\000";

val yycheck = "\021\000\
\\003\000\002\001\003\001\045\000\018\001\027\000\009\000\021\001\
\\024\001\031\000\001\000\033\000\034\000\029\001\012\001\016\001\
\\009\001\018\001\002\001\003\001\030\001\043\000\044\000\001\001\
\\013\001\047\000\021\001\005\001\006\001\007\001\010\001\073\000\
\\016\001\034\001\018\001\057\000\058\000\059\000\060\000\061\000\
\\062\000\063\000\064\000\065\000\022\001\009\001\024\001\013\001\
\\012\001\071\000\028\001\029\001\055\000\075\000\031\001\034\001\
\\005\001\034\001\001\001\037\001\010\001\021\001\005\001\006\001\
\\007\001\008\001\009\001\009\001\013\001\012\001\012\001\042\001\
\\015\001\095\000\021\001\097\000\031\001\099\000\100\000\022\001\
\\021\001\024\001\021\001\021\001\106\000\028\001\029\001\030\001\
\\031\001\010\001\042\001\034\001\001\001\036\001\037\001\005\001\
\\005\001\006\001\007\001\008\001\009\001\034\001\034\001\012\001\
\\005\001\009\001\015\001\034\001\010\000\042\000\255\255\255\255\
\\255\255\022\001\255\255\024\001\255\255\255\255\255\255\028\001\
\\029\001\030\001\031\001\255\255\255\255\034\001\001\001\036\001\
\\037\001\255\255\005\001\006\001\007\001\008\001\009\001\255\255\
\\255\255\012\001\255\255\255\255\015\001\255\255\255\255\255\255\
\\255\255\255\255\255\255\022\001\255\255\024\001\255\255\255\255\
\\001\001\028\001\029\001\030\001\031\001\006\001\007\001\034\001\
\\001\001\036\001\037\001\255\255\005\001\006\001\007\001\008\001\
\\009\001\255\255\255\255\012\001\255\255\022\001\015\001\024\001\
\\255\255\255\255\255\255\028\001\029\001\022\001\255\255\255\255\
\\255\255\034\001\255\255\028\001\037\001\030\001\031\001\255\255\
\\255\255\034\001\001\001\036\001\037\001\255\255\005\001\006\001\
\\007\001\008\001\009\001\255\255\255\255\012\001\255\255\255\255\
\\015\001\255\255\255\255\001\001\255\255\255\255\001\001\022\001\
\\006\001\007\001\255\255\006\001\007\001\028\001\255\255\030\001\
\\031\001\255\255\255\255\034\001\255\255\036\001\037\001\255\255\
\\022\001\255\255\024\001\022\001\255\255\024\001\028\001\029\001\
\\007\001\028\001\029\001\030\001\255\255\255\255\036\001\037\001\
\\001\001\255\255\037\001\255\255\255\255\006\001\007\001\255\255\
\\255\255\024\001\255\255\001\001\255\255\255\255\029\001\255\255\
\\006\001\007\001\255\255\255\255\255\255\022\001\037\001\024\001\
\\255\255\255\255\255\255\028\001\029\001\255\255\255\255\255\255\
\\022\001\034\001\024\001\001\001\037\001\255\255\028\001\029\001\
\\006\001\007\001\008\001\255\255\034\001\001\001\255\255\037\001\
\\255\255\255\255\006\001\007\001\255\255\255\255\255\255\001\001\
\\022\001\255\255\024\001\015\001\006\001\007\001\028\001\029\001\
\\255\255\255\255\022\001\255\255\024\001\001\001\255\255\037\001\
\\028\001\029\001\006\001\007\001\022\001\255\255\024\001\255\255\
\\001\001\037\001\028\001\029\001\005\001\006\001\007\001\255\255\
\\034\001\255\255\022\001\037\001\024\001\255\255\001\001\255\255\
\\028\001\029\001\255\255\006\001\007\001\022\001\034\001\024\001\
\\001\001\037\001\255\255\028\001\029\001\006\001\007\001\255\255\
\\255\255\255\255\255\255\022\001\037\001\024\001\255\255\255\255\
\\255\255\028\001\029\001\255\255\255\255\022\001\004\001\024\001\
\\255\255\255\255\037\001\255\255\029\001\011\001\255\255\013\001\
\\014\001\255\255\255\255\017\001\037\001\019\001\020\001\021\001\
\\255\255\023\001\255\255\025\001\026\001\027\001\255\255\255\255\
\\255\255\255\255\032\001\033\001\034\001\035\001\004\001\255\255\
\\038\001\039\001\255\255\255\255\255\255\011\001\255\255\013\001\
\\014\001\255\255\255\255\017\001\255\255\019\001\020\001\021\001\
\\255\255\023\001\255\255\025\001\026\001\027\001\255\255\255\255\
\\006\001\007\001\032\001\033\001\255\255\035\001\001\001\255\255\
\\038\001\039\001\005\001\006\001\255\255\008\001\009\001\255\255\
\\022\001\012\001\024\001\255\255\015\001\255\255\255\255\029\001\
\\255\255\255\255\255\255\022\001\255\255\255\255\255\255\037\001\
\\255\255\028\001\255\255\030\001\031\001\255\255\001\001\034\001\
\\255\255\036\001\005\001\006\001\255\255\008\001\009\001\001\001\
\\255\255\012\001\255\255\005\001\015\001\255\255\008\001\009\001\
\\255\255\255\255\012\001\022\001\255\255\015\001\255\255\255\255\
\\255\255\028\001\255\255\030\001\031\001\255\255\255\255\034\001\
\\255\255\036\001\028\001\255\255\030\001\031\001\255\255\001\001\
\\034\001\255\255\036\001\005\001\255\255\255\255\008\001\009\001\
\\001\001\255\255\012\001\255\255\005\001\015\001\255\255\008\001\
\\009\001\255\255\255\255\012\001\255\255\255\255\015\001\255\255\
\\255\255\255\255\028\001\255\255\030\001\031\001\255\255\255\255\
\\034\001\255\255\036\001\028\001\255\255\030\001\031\001\255\255\
\\255\255\034\001\005\001\036\001\255\255\008\001\009\001\255\255\
\\255\255\012\001\005\001\255\255\015\001\008\001\009\001\255\255\
\\255\255\012\001\255\255\005\001\015\001\255\255\008\001\009\001\
\\255\255\028\001\012\001\030\001\031\001\015\001\255\255\034\001\
\\255\255\036\001\255\255\030\001\031\001\255\255\255\255\034\001\
\\255\255\036\001\255\255\255\255\030\001\031\001\255\255\255\255\
\\034\001\255\255\036\001";

val yyact = vector_ 43 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 46 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.UnknownTypes.FunDec list
val d__2__ = peekVal 0 : (int*int)
in
( (d__1__) ) end : Fasto.UnknownTypes.Prog))
;
(* Rule 2, file Parser.grm, line 49 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.FunDec
val d__3__ = peekVal 0 : Fasto.UnknownTypes.FunDec list
in
( (d__2__) :: (d__3__) ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 3, file Parser.grm, line 50 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.FunDec
in
( (d__2__) :: [] ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 4, file Parser.grm, line 54 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 6 : Fasto.Type
val d__2__ = peekVal 5 : string*(int*int)
val d__3__ = peekVal 4 : (int*int)
val d__4__ = peekVal 3 : Fasto.Param list
val d__5__ = peekVal 2 : (int*int)
val d__6__ = peekVal 1 : (int*int)
val d__7__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), (d__4__), (d__7__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 5, file Parser.grm, line 56 *)
val _ = update_ yyact 5
(fn () => repr(let
val d__1__ = peekVal 5 : Fasto.Type
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), [], (d__6__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 6, file Parser.grm, line 59 *)
val _ = update_ yyact 6
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Int ) end : Fasto.Type))
;
(* Rule 7, file Parser.grm, line 60 *)
val _ = update_ yyact 7
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Bool ) end : Fasto.Type))
;
(* Rule 8, file Parser.grm, line 61 *)
val _ = update_ yyact 8
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Char ) end : Fasto.Type))
;
(* Rule 9, file Parser.grm, line 62 *)
val _ = update_ yyact 9
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.Type
val d__3__ = peekVal 0 : (int*int)
in
( Array (d__2__) ) end : Fasto.Type))
;
(* Rule 10, file Parser.grm, line 66 *)
val _ = update_ yyact 10
(fn () => repr(let
val d__1__ = peekVal 3 : Fasto.Type
val d__2__ = peekVal 2 : string*(int*int)
val d__3__ = peekVal 1 : (int*int)
val d__4__ = peekVal 0 : Fasto.Param list
in
( Param (#1 (d__2__), (d__1__)) :: (d__4__) ) end : Fasto.Param list))
;
(* Rule 11, file Parser.grm, line 67 *)
val _ = update_ yyact 11
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.Type
val d__2__ = peekVal 0 : string*(int*int)
in
( Param (#1 (d__2__), (d__1__)) :: [] ) end : Fasto.Param list))
;
(* Rule 12, file Parser.grm, line 70 *)
val _ = update_ yyact 12
(fn () => repr(let
val d__1__ = peekVal 0 : int*(int*int)
in
( Constant (IntVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 13, file Parser.grm, line 71 *)
val _ = update_ yyact 13
(fn () => repr(let
val d__1__ = peekVal 0 : bool*(int*int)
in
( Constant (BoolVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 14, file Parser.grm, line 72 *)
val _ = update_ yyact 14
(fn () => repr(let
val d__1__ = peekVal 0 : bool*(int*int)
in
( Constant (BoolVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 15, file Parser.grm, line 73 *)
val _ = update_ yyact 15
(fn () => repr(let
val d__1__ = peekVal 0 : char*(int*int)
in
( Constant (CharVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 16, file Parser.grm, line 74 *)
val _ = update_ yyact 16
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( Var (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 17, file Parser.grm, line 75 *)
val _ = update_ yyact 17
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( StringLit (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 18, file Parser.grm, line 77 *)
val _ = update_ yyact 18
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__3__ = peekVal 0 : (int*int)
in
( ArrayLit ((d__2__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 19, file Parser.grm, line 78 *)
val _ = update_ yyact 19
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Times ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 20, file Parser.grm, line 79 *)
val _ = update_ yyact 20
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Divide ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 21, file Parser.grm, line 80 *)
val _ = update_ yyact 21
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Plus ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 22, file Parser.grm, line 81 *)
val _ = update_ yyact 22
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Minus((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 23, file Parser.grm, line 82 *)
val _ = update_ yyact 23
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( And ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 24, file Parser.grm, line 83 *)
val _ = update_ yyact 24
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Or ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 25, file Parser.grm, line 84 *)
val _ = update_ yyact 25
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Not ((d__2__), (d__1__))) end : Fasto.UnknownTypes.Exp))
;
(* Rule 26, file Parser.grm, line 85 *)
val _ = update_ yyact 26
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Negate ((d__2__), (d__1__))) end : Fasto.UnknownTypes.Exp))
;
(* Rule 27, file Parser.grm, line 86 *)
val _ = update_ yyact 27
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Equal((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 28, file Parser.grm, line 87 *)
val _ = update_ yyact 28
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Less ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 29, file Parser.grm, line 89 *)
val _ = update_ yyact 29
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( If ((d__2__), (d__4__), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 30, file Parser.grm, line 91 *)
val _ = update_ yyact 30
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__4__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 31, file Parser.grm, line 93 *)
val _ = update_ yyact 31
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), [], #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 32, file Parser.grm, line 96 *)
val _ = update_ yyact 32
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.Type
val d__4__ = peekVal 0 : (int*int)
in
( Read ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 33, file Parser.grm, line 98 *)
val _ = update_ yyact 33
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Write ((d__3__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 34, file Parser.grm, line 100 *)
val _ = update_ yyact 34
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 0 : (int*int)
in
( (d__2__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 35, file Parser.grm, line 102 *)
val _ = update_ yyact 35
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Let (Dec (#1 (d__2__), (d__4__), (d__3__)), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 36, file Parser.grm, line 104 *)
val _ = update_ yyact 36
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Index (#1 (d__1__), (d__3__), (), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 37, file Parser.grm, line 106 *)
val _ = update_ yyact 37
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Iota ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 38, file Parser.grm, line 108 *)
val _ = update_ yyact 38
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( MAP ((d__3__), (d__5__), (), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 39, file Parser.grm, line 110 *)
val _ = update_ yyact 39
(fn () => repr(let
val d__1__ = peekVal 7 : (int*int)
val d__2__ = peekVal 6 : (int*int)
val d__3__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 4 : (int*int)
val d__5__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 2 : (int*int)
val d__7__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__8__ = peekVal 0 : (int*int)
in
( REDUCE ((d__3__), (d__5__), (d__7__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 40, file Parser.grm, line 114 *)
val _ = update_ yyact 40
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp list
in
( (d__1__) :: (d__3__) ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 41, file Parser.grm, line 115 *)
val _ = update_ yyact 41
(fn () => repr(let
val d__1__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( (d__1__) :: [] ) end : Fasto.UnknownTypes.Exp list))
;
(* Entry Prog *)
val _ = update_ yyact 42 (fn () => raise yyexit (peekVal 0));
val yytables : parseTables =
  ( yyact,
    yytransl,
    yylhs,
    yylen,
    yydefred,
    yydgoto,
    yysindex,
    yyrindex,
    yygindex,
    YYTABLESIZE,
    yytable,
    yycheck );
fun Prog lexer lexbuf = yyparse yytables 1 lexer lexbuf;
