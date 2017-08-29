// RUN: %boogie "%s" > "%t"
// RUN: %diff "%s.expect" "%t"

type Proc;

const unique ProcNull: Proc;
const unique P1: Proc;
const unique P2: Proc;
const unique P3: Proc;

function IsNormalProc(p: Proc): bool { p == P1 || p == P2 || p == P3 }

function ProcCaseSplit(p: Proc): bool { true }

const unique Acceptor: [Proc] bool;
const unique Q1: [Proc] bool;
const unique Q2: [Proc] bool;

function IsQuorum(s: [Proc] bool): bool { s == Q1 || s == Q2 }

function IsAcceptor(s: [Proc] bool): bool { s == Acceptor }

function ProcSetCaseSplit(pset: [Proc] bool): bool { true } 

axiom (forall p: Proc :: {ProcCaseSplit(p)} Acceptor[p] == true <==> (p == P1 || p == P2 || p == P3));

axiom (forall p: Proc :: {ProcCaseSplit(p)} Q1[p] == true <==> (p == P1 || p == P2 || p == P3));

axiom (forall p: Proc :: {ProcCaseSplit(p)} Q2[p] == true <==> (p == P2));

axiom (forall pset1, pset2: [Proc] bool :: {ProcSetCaseSplit(pset1), ProcSetCaseSplit(pset2)} pset1 == pset2 <==> (forall p: Proc :: pset1[p] == pset2[p]));

type Val;
const unique ValNull: Val;
const unique V1: Val;
const unique V2: Val;
const unique None: Val;

function ValCaseSplit(v: Val): bool { true }

function IsNormalVal(v: Val): bool { v == V1 || v == V2 }

type Str;
const unique s1a: Str;
const unique s1b: Str;
const unique s2a: Str;
const unique s2b: Str;

function StrCaseSplit(s: Str): bool { true }

function IsType(s: Str): bool { s == s1a || s == s1b || s == s2a || s == s2b }

type Msg;
const unique M1: Msg;
const unique M2: Msg;
const unique M3: Msg;
const unique M4: Msg;
const unique M5: Msg;
const unique M6: Msg;
const unique M7: Msg;
const unique M8: Msg;
const unique M9: Msg;
const unique M10: Msg;
const unique M11: Msg;
const unique M12: Msg;
const unique M13: Msg;
const unique M14: Msg;
const unique M15: Msg;
const unique M16: Msg;
const unique M17: Msg;
const unique M18: Msg;
const unique M19: Msg;
const unique M20: Msg;
const unique M21: Msg;
const unique M22: Msg;
const unique M23: Msg;
const unique M24: Msg;
const unique M25: Msg;
const unique M26: Msg;
const unique M27: Msg;
const unique M28: Msg;
const unique M29: Msg;
const unique M30: Msg;
const unique M31: Msg;
const unique M32: Msg;
const unique M33: Msg;
const unique M34: Msg;
const unique M35: Msg;
const unique M36: Msg;
const unique M37: Msg;
const unique M38: Msg;
const unique M39: Msg;
const unique M40: Msg;
const unique M41: Msg;
const unique M42: Msg;
const unique M43: Msg;
const unique M44: Msg;
const unique M45: Msg;
const unique M46: Msg;
const unique M47: Msg;
const unique M48: Msg;
const unique M49: Msg;
const unique M50: Msg;
const unique M51: Msg;
const unique M52: Msg;
const unique M53: Msg;
const unique M54: Msg;
const unique M55: Msg;
const unique M56: Msg;
const unique M57: Msg;
const unique M58: Msg;
const unique M59: Msg;
const unique M60: Msg;
const unique M61: Msg;
const unique M62: Msg;
const unique M63: Msg;
const unique M64: Msg;
const unique M65: Msg;
const unique M66: Msg;
const unique M67: Msg;
const unique M68: Msg;
const unique M69: Msg;
const unique M70: Msg;
const unique M71: Msg;
const unique M72: Msg;

function MsgCaseSplit(m: Msg): bool { true }
function MsgComp(m1, m2: Msg): bool { true }
function tID (Msg) returns (int);
function stype (Msg) returns (Str);
function bal (Msg) returns (int);
function acc (Msg) returns (Proc);
function mbal (Msg) returns (int);
function mval (Msg) returns (Val);
function val (Msg) returns (Val);

axiom (tID (M1) == 1);
axiom (stype (M1) == s1a);
axiom (bal (M1) == 1);
axiom (acc (M1) == ProcNull);
axiom (mbal (M1) == -2);
axiom (mval (M1) == ValNull);
axiom (val (M1) == ValNull);

axiom (tID (M2) == 1);
axiom (stype (M2) == s1a);
axiom (bal (M2) == 2);
axiom (acc (M2) == ProcNull);
axiom (mbal (M2) == -2);
axiom (mval (M2) == ValNull);
axiom (val (M2) == ValNull);

axiom (tID (M3) == 2);
axiom (stype (M3) == s1b);
axiom (bal (M3) == 1);
axiom (acc (M3) == P1);
axiom (mbal (M3) == -1);
axiom (mval (M3) == None);
axiom (val (M3) == ValNull);

axiom (tID (M4) == 2);
axiom (stype (M4) == s1b);
axiom (bal (M4) == 1);
axiom (acc (M4) == P1);
axiom (mbal (M4) == -1);
axiom (mval (M4) == V1);
axiom (val (M4) == ValNull);

axiom (tID (M5) == 2);
axiom (stype (M5) == s1b);
axiom (bal (M5) == 1);
axiom (acc (M5) == P1);
axiom (mbal (M5) == -1);
axiom (mval (M5) == V2);
axiom (val (M5) == ValNull);

axiom (tID (M6) == 2);
axiom (stype (M6) == s1b);
axiom (bal (M6) == 1);
axiom (acc (M6) == P1);
axiom (mbal (M6) == 1);
axiom (mval (M6) == None);
axiom (val (M6) == ValNull);

axiom (tID (M7) == 2);
axiom (stype (M7) == s1b);
axiom (bal (M7) == 1);
axiom (acc (M7) == P1);
axiom (mbal (M7) == 1);
axiom (mval (M7) == V1);
axiom (val (M7) == ValNull);

axiom (tID (M8) == 2);
axiom (stype (M8) == s1b);
axiom (bal (M8) == 1);
axiom (acc (M8) == P1);
axiom (mbal (M8) == 1);
axiom (mval (M8) == V2);
axiom (val (M8) == ValNull);

axiom (tID (M9) == 2);
axiom (stype (M9) == s1b);
axiom (bal (M9) == 1);
axiom (acc (M9) == P1);
axiom (mbal (M9) == 2);
axiom (mval (M9) == None);
axiom (val (M9) == ValNull);

axiom (tID (M10) == 2);
axiom (stype (M10) == s1b);
axiom (bal (M10) == 1);
axiom (acc (M10) == P1);
axiom (mbal (M10) == 2);
axiom (mval (M10) == V1);
axiom (val (M10) == ValNull);

axiom (tID (M11) == 2);
axiom (stype (M11) == s1b);
axiom (bal (M11) == 1);
axiom (acc (M11) == P1);
axiom (mbal (M11) == 2);
axiom (mval (M11) == V2);
axiom (val (M11) == ValNull);

axiom (tID (M12) == 2);
axiom (stype (M12) == s1b);
axiom (bal (M12) == 1);
axiom (acc (M12) == P2);
axiom (mbal (M12) == -1);
axiom (mval (M12) == None);
axiom (val (M12) == ValNull);

axiom (tID (M13) == 2);
axiom (stype (M13) == s1b);
axiom (bal (M13) == 1);
axiom (acc (M13) == P2);
axiom (mbal (M13) == -1);
axiom (mval (M13) == V1);
axiom (val (M13) == ValNull);

axiom (tID (M14) == 2);
axiom (stype (M14) == s1b);
axiom (bal (M14) == 1);
axiom (acc (M14) == P2);
axiom (mbal (M14) == -1);
axiom (mval (M14) == V2);
axiom (val (M14) == ValNull);

axiom (tID (M15) == 2);
axiom (stype (M15) == s1b);
axiom (bal (M15) == 1);
axiom (acc (M15) == P2);
axiom (mbal (M15) == 1);
axiom (mval (M15) == None);
axiom (val (M15) == ValNull);

axiom (tID (M16) == 2);
axiom (stype (M16) == s1b);
axiom (bal (M16) == 1);
axiom (acc (M16) == P2);
axiom (mbal (M16) == 1);
axiom (mval (M16) == V1);
axiom (val (M16) == ValNull);

axiom (tID (M17) == 2);
axiom (stype (M17) == s1b);
axiom (bal (M17) == 1);
axiom (acc (M17) == P2);
axiom (mbal (M17) == 1);
axiom (mval (M17) == V2);
axiom (val (M17) == ValNull);

axiom (tID (M18) == 2);
axiom (stype (M18) == s1b);
axiom (bal (M18) == 1);
axiom (acc (M18) == P2);
axiom (mbal (M18) == 2);
axiom (mval (M18) == None);
axiom (val (M18) == ValNull);

axiom (tID (M19) == 2);
axiom (stype (M19) == s1b);
axiom (bal (M19) == 1);
axiom (acc (M19) == P2);
axiom (mbal (M19) == 2);
axiom (mval (M19) == V1);
axiom (val (M19) == ValNull);

axiom (tID (M20) == 2);
axiom (stype (M20) == s1b);
axiom (bal (M20) == 1);
axiom (acc (M20) == P2);
axiom (mbal (M20) == 2);
axiom (mval (M20) == V2);
axiom (val (M20) == ValNull);

axiom (tID (M21) == 2);
axiom (stype (M21) == s1b);
axiom (bal (M21) == 1);
axiom (acc (M21) == P3);
axiom (mbal (M21) == -1);
axiom (mval (M21) == None);
axiom (val (M21) == ValNull);

axiom (tID (M22) == 2);
axiom (stype (M22) == s1b);
axiom (bal (M22) == 1);
axiom (acc (M22) == P3);
axiom (mbal (M22) == -1);
axiom (mval (M22) == V1);
axiom (val (M22) == ValNull);

axiom (tID (M23) == 2);
axiom (stype (M23) == s1b);
axiom (bal (M23) == 1);
axiom (acc (M23) == P3);
axiom (mbal (M23) == -1);
axiom (mval (M23) == V2);
axiom (val (M23) == ValNull);

axiom (tID (M24) == 2);
axiom (stype (M24) == s1b);
axiom (bal (M24) == 1);
axiom (acc (M24) == P3);
axiom (mbal (M24) == 1);
axiom (mval (M24) == None);
axiom (val (M24) == ValNull);

axiom (tID (M25) == 2);
axiom (stype (M25) == s1b);
axiom (bal (M25) == 1);
axiom (acc (M25) == P3);
axiom (mbal (M25) == 1);
axiom (mval (M25) == V1);
axiom (val (M25) == ValNull);

axiom (tID (M26) == 2);
axiom (stype (M26) == s1b);
axiom (bal (M26) == 1);
axiom (acc (M26) == P3);
axiom (mbal (M26) == 1);
axiom (mval (M26) == V2);
axiom (val (M26) == ValNull);

axiom (tID (M27) == 2);
axiom (stype (M27) == s1b);
axiom (bal (M27) == 1);
axiom (acc (M27) == P3);
axiom (mbal (M27) == 2);
axiom (mval (M27) == None);
axiom (val (M27) == ValNull);

axiom (tID (M28) == 2);
axiom (stype (M28) == s1b);
axiom (bal (M28) == 1);
axiom (acc (M28) == P3);
axiom (mbal (M28) == 2);
axiom (mval (M28) == V1);
axiom (val (M28) == ValNull);

axiom (tID (M29) == 2);
axiom (stype (M29) == s1b);
axiom (bal (M29) == 1);
axiom (acc (M29) == P3);
axiom (mbal (M29) == 2);
axiom (mval (M29) == V2);
axiom (val (M29) == ValNull);

axiom (tID (M30) == 2);
axiom (stype (M30) == s1b);
axiom (bal (M30) == 2);
axiom (acc (M30) == P1);
axiom (mbal (M30) == -1);
axiom (mval (M30) == None);
axiom (val (M30) == ValNull);

axiom (tID (M31) == 2);
axiom (stype (M31) == s1b);
axiom (bal (M31) == 2);
axiom (acc (M31) == P1);
axiom (mbal (M31) == -1);
axiom (mval (M31) == V1);
axiom (val (M31) == ValNull);

axiom (tID (M32) == 2);
axiom (stype (M32) == s1b);
axiom (bal (M32) == 2);
axiom (acc (M32) == P1);
axiom (mbal (M32) == -1);
axiom (mval (M32) == V2);
axiom (val (M32) == ValNull);

axiom (tID (M33) == 2);
axiom (stype (M33) == s1b);
axiom (bal (M33) == 2);
axiom (acc (M33) == P1);
axiom (mbal (M33) == 1);
axiom (mval (M33) == None);
axiom (val (M33) == ValNull);

axiom (tID (M34) == 2);
axiom (stype (M34) == s1b);
axiom (bal (M34) == 2);
axiom (acc (M34) == P1);
axiom (mbal (M34) == 1);
axiom (mval (M34) == V1);
axiom (val (M34) == ValNull);

axiom (tID (M35) == 2);
axiom (stype (M35) == s1b);
axiom (bal (M35) == 2);
axiom (acc (M35) == P1);
axiom (mbal (M35) == 1);
axiom (mval (M35) == V2);
axiom (val (M35) == ValNull);

axiom (tID (M36) == 2);
axiom (stype (M36) == s1b);
axiom (bal (M36) == 2);
axiom (acc (M36) == P1);
axiom (mbal (M36) == 2);
axiom (mval (M36) == None);
axiom (val (M36) == ValNull);

axiom (tID (M37) == 2);
axiom (stype (M37) == s1b);
axiom (bal (M37) == 2);
axiom (acc (M37) == P1);
axiom (mbal (M37) == 2);
axiom (mval (M37) == V1);
axiom (val (M37) == ValNull);

axiom (tID (M38) == 2);
axiom (stype (M38) == s1b);
axiom (bal (M38) == 2);
axiom (acc (M38) == P1);
axiom (mbal (M38) == 2);
axiom (mval (M38) == V2);
axiom (val (M38) == ValNull);

axiom (tID (M39) == 2);
axiom (stype (M39) == s1b);
axiom (bal (M39) == 2);
axiom (acc (M39) == P2);
axiom (mbal (M39) == -1);
axiom (mval (M39) == None);
axiom (val (M39) == ValNull);

axiom (tID (M40) == 2);
axiom (stype (M40) == s1b);
axiom (bal (M40) == 2);
axiom (acc (M40) == P2);
axiom (mbal (M40) == -1);
axiom (mval (M40) == V1);
axiom (val (M40) == ValNull);

axiom (tID (M41) == 2);
axiom (stype (M41) == s1b);
axiom (bal (M41) == 2);
axiom (acc (M41) == P2);
axiom (mbal (M41) == -1);
axiom (mval (M41) == V2);
axiom (val (M41) == ValNull);

axiom (tID (M42) == 2);
axiom (stype (M42) == s1b);
axiom (bal (M42) == 2);
axiom (acc (M42) == P2);
axiom (mbal (M42) == 1);
axiom (mval (M42) == None);
axiom (val (M42) == ValNull);

axiom (tID (M43) == 2);
axiom (stype (M43) == s1b);
axiom (bal (M43) == 2);
axiom (acc (M43) == P2);
axiom (mbal (M43) == 1);
axiom (mval (M43) == V1);
axiom (val (M43) == ValNull);

axiom (tID (M44) == 2);
axiom (stype (M44) == s1b);
axiom (bal (M44) == 2);
axiom (acc (M44) == P2);
axiom (mbal (M44) == 1);
axiom (mval (M44) == V2);
axiom (val (M44) == ValNull);

axiom (tID (M45) == 2);
axiom (stype (M45) == s1b);
axiom (bal (M45) == 2);
axiom (acc (M45) == P2);
axiom (mbal (M45) == 2);
axiom (mval (M45) == None);
axiom (val (M45) == ValNull);

axiom (tID (M46) == 2);
axiom (stype (M46) == s1b);
axiom (bal (M46) == 2);
axiom (acc (M46) == P2);
axiom (mbal (M46) == 2);
axiom (mval (M46) == V1);
axiom (val (M46) == ValNull);

axiom (tID (M47) == 2);
axiom (stype (M47) == s1b);
axiom (bal (M47) == 2);
axiom (acc (M47) == P2);
axiom (mbal (M47) == 2);
axiom (mval (M47) == V2);
axiom (val (M47) == ValNull);

axiom (tID (M48) == 2);
axiom (stype (M48) == s1b);
axiom (bal (M48) == 2);
axiom (acc (M48) == P3);
axiom (mbal (M48) == -1);
axiom (mval (M48) == None);
axiom (val (M48) == ValNull);

axiom (tID (M49) == 2);
axiom (stype (M49) == s1b);
axiom (bal (M49) == 2);
axiom (acc (M49) == P3);
axiom (mbal (M49) == -1);
axiom (mval (M49) == V1);
axiom (val (M49) == ValNull);

axiom (tID (M50) == 2);
axiom (stype (M50) == s1b);
axiom (bal (M50) == 2);
axiom (acc (M50) == P3);
axiom (mbal (M50) == -1);
axiom (mval (M50) == V2);
axiom (val (M50) == ValNull);

axiom (tID (M51) == 2);
axiom (stype (M51) == s1b);
axiom (bal (M51) == 2);
axiom (acc (M51) == P3);
axiom (mbal (M51) == 1);
axiom (mval (M51) == None);
axiom (val (M51) == ValNull);

axiom (tID (M52) == 2);
axiom (stype (M52) == s1b);
axiom (bal (M52) == 2);
axiom (acc (M52) == P3);
axiom (mbal (M52) == 1);
axiom (mval (M52) == V1);
axiom (val (M52) == ValNull);

axiom (tID (M53) == 2);
axiom (stype (M53) == s1b);
axiom (bal (M53) == 2);
axiom (acc (M53) == P3);
axiom (mbal (M53) == 1);
axiom (mval (M53) == V2);
axiom (val (M53) == ValNull);

axiom (tID (M54) == 2);
axiom (stype (M54) == s1b);
axiom (bal (M54) == 2);
axiom (acc (M54) == P3);
axiom (mbal (M54) == 2);
axiom (mval (M54) == None);
axiom (val (M54) == ValNull);

axiom (tID (M55) == 2);
axiom (stype (M55) == s1b);
axiom (bal (M55) == 2);
axiom (acc (M55) == P3);
axiom (mbal (M55) == 2);
axiom (mval (M55) == V1);
axiom (val (M55) == ValNull);

axiom (tID (M56) == 2);
axiom (stype (M56) == s1b);
axiom (bal (M56) == 2);
axiom (acc (M56) == P3);
axiom (mbal (M56) == 2);
axiom (mval (M56) == V2);
axiom (val (M56) == ValNull);

axiom (tID (M57) == 3);
axiom (stype (M57) == s2a);
axiom (bal (M57) == 1);
axiom (acc (M57) == ProcNull);
axiom (mbal (M57) == -2);
axiom (mval (M57) == ValNull);
axiom (val (M57) == ValNull);

axiom (tID (M58) == 3);
axiom (stype (M58) == s2a);
axiom (bal (M58) == 1);
axiom (acc (M58) == ProcNull);
axiom (mbal (M58) == -2);
axiom (mval (M58) == ValNull);
axiom (val (M58) == ValNull);

axiom (tID (M59) == 3);
axiom (stype (M59) == s2a);
axiom (bal (M59) == 2);
axiom (acc (M59) == ProcNull);
axiom (mbal (M59) == -2);
axiom (mval (M59) == ValNull);
axiom (val (M59) == ValNull);

axiom (tID (M60) == 3);
axiom (stype (M60) == s2a);
axiom (bal (M60) == 2);
axiom (acc (M60) == ProcNull);
axiom (mbal (M60) == -2);
axiom (mval (M60) == ValNull);
axiom (val (M60) == ValNull);

axiom (tID (M61) == 4);
axiom (stype (M61) == s2b);
axiom (bal (M61) == 1);
axiom (acc (M61) == P1);
axiom (mbal (M61) == -2);
axiom (mval (M61) == ValNull);
axiom (val (M61) == ValNull);

axiom (tID (M62) == 4);
axiom (stype (M62) == s2b);
axiom (bal (M62) == 1);
axiom (acc (M62) == P1);
axiom (mbal (M62) == -2);
axiom (mval (M62) == ValNull);
axiom (val (M62) == ValNull);

axiom (tID (M63) == 4);
axiom (stype (M63) == s2b);
axiom (bal (M63) == 1);
axiom (acc (M63) == P2);
axiom (mbal (M63) == -2);
axiom (mval (M63) == ValNull);
axiom (val (M63) == ValNull);

axiom (tID (M64) == 4);
axiom (stype (M64) == s2b);
axiom (bal (M64) == 1);
axiom (acc (M64) == P2);
axiom (mbal (M64) == -2);
axiom (mval (M64) == ValNull);
axiom (val (M64) == ValNull);

axiom (tID (M65) == 4);
axiom (stype (M65) == s2b);
axiom (bal (M65) == 1);
axiom (acc (M65) == P3);
axiom (mbal (M65) == -2);
axiom (mval (M65) == ValNull);
axiom (val (M65) == ValNull);

axiom (tID (M66) == 4);
axiom (stype (M66) == s2b);
axiom (bal (M66) == 1);
axiom (acc (M66) == P3);
axiom (mbal (M66) == -2);
axiom (mval (M66) == ValNull);
axiom (val (M66) == ValNull);

axiom (tID (M67) == 4);
axiom (stype (M67) == s2b);
axiom (bal (M67) == 2);
axiom (acc (M67) == P1);
axiom (mbal (M67) == -2);
axiom (mval (M67) == ValNull);
axiom (val (M67) == ValNull);

axiom (tID (M68) == 4);
axiom (stype (M68) == s2b);
axiom (bal (M68) == 2);
axiom (acc (M68) == P1);
axiom (mbal (M68) == -2);
axiom (mval (M68) == ValNull);
axiom (val (M68) == ValNull);

axiom (tID (M69) == 4);
axiom (stype (M69) == s2b);
axiom (bal (M69) == 2);
axiom (acc (M69) == P2);
axiom (mbal (M69) == -2);
axiom (mval (M69) == ValNull);
axiom (val (M69) == ValNull);

axiom (tID (M70) == 4);
axiom (stype (M70) == s2b);
axiom (bal (M70) == 2);
axiom (acc (M70) == P2);
axiom (mbal (M70) == -2);
axiom (mval (M70) == ValNull);
axiom (val (M70) == ValNull);

axiom (tID (M71) == 4);
axiom (stype (M71) == s2b);
axiom (bal (M71) == 2);
axiom (acc (M71) == P3);
axiom (mbal (M71) == -2);
axiom (mval (M71) == ValNull);
axiom (val (M71) == ValNull);

axiom (tID (M72) == 4);
axiom (stype (M72) == s2b);
axiom (bal (M72) == 2);
axiom (acc (M72) == P3);
axiom (mbal (M72) == -2);
axiom (mval (M72) == ValNull);
axiom (val (M72) == ValNull);

axiom (forall m1, m2: Msg :: {MsgComp(m1, m2)} m1 == m2 <==> (tID(m1) == tID(m2) && stype(m1) == stype(m2) && acc(m1) == acc(m2) && bal(m1) == bal(m2) && mbal(m1) == mbal(m2) && mval(m1) == mval(m2) && val(m1) == val(m2)));

function IsGeneratedMsg(m: Msg): bool { MsgComp(m, M1) && MsgComp(m, M2) && MsgComp(m, M3) && MsgComp(m, M4) && MsgComp(m, M5) && MsgComp(m, M6) && MsgComp(m, M7) && MsgComp(m, M8) && MsgComp(m, M9) && MsgComp(m, M10) && MsgComp(m, M11) && MsgComp(m, M12) && MsgComp(m, M13) && MsgComp(m, M14) && MsgComp(m, M15) && MsgComp(m, M16) && MsgComp(m, M17) && MsgComp(m, M18) && MsgComp(m, M19) && MsgComp(m, M20) && MsgComp(m, M21) && MsgComp(m, M22) && MsgComp(m, M23) && MsgComp(m, M24) && MsgComp(m, M25) && MsgComp(m, M26) && MsgComp(m, M27) && MsgComp(m, M28) && MsgComp(m, M29) && MsgComp(m, M30) && MsgComp(m, M31) && MsgComp(m, M32) && MsgComp(m, M33) && MsgComp(m, M34) && MsgComp(m, M35) && MsgComp(m, M36) && MsgComp(m, M37) && MsgComp(m, M38) && MsgComp(m, M39) && MsgComp(m, M40) && MsgComp(m, M41) && MsgComp(m, M42) && MsgComp(m, M43) && MsgComp(m, M44) && MsgComp(m, M45) && MsgComp(m, M46) && MsgComp(m, M47) && MsgComp(m, M48) && MsgComp(m, M49) && MsgComp(m, M50) && MsgComp(m, M51) && MsgComp(m, M52) && MsgComp(m, M53) && MsgComp(m, M54) && MsgComp(m, M55) && MsgComp(m, M56) && MsgComp(m, M57) && MsgComp(m, M58) && MsgComp(m, M59) && MsgComp(m, M60) && MsgComp(m, M61) && MsgComp(m, M62) && MsgComp(m, M63) && MsgComp(m, M64) && MsgComp(m, M65) && MsgComp(m, M66) && MsgComp(m, M67) && MsgComp(m, M68) && MsgComp(m, M69) && MsgComp(m, M70) && MsgComp(m, M71) && MsgComp(m, M72) && (m == M1 || m == M2 || m == M3 || m == M4 || m == M5 || m == M6 || m == M7 || m == M8 || m == M9 || m == M10 || m == M11 || m == M12 || m == M13 || m == M14 || m == M15 || m == M16 || m == M17 || m == M18 || m == M19 || m == M20 || m == M21 || m == M22 || m == M23 || m == M24 || m == M25 || m == M26 || m == M27 || m == M28 || m == M29 || m == M30 || m == M31 || m == M32 || m == M33 || m == M34 || m == M35 || m == M36 || m == M37 || m == M38 || m == M39 || m == M40 || m == M41 || m == M42 || m == M43 || m == M44 || m == M45 || m == M46 || m == M47 || m == M48 || m == M49 || m == M50 || m == M51 || m == M52 || m == M53 || m == M54 || m == M55 || m == M56 || m == M57 || m == M58 || m == M59 || m == M60 || m == M61 || m == M62 || m == M63 || m == M64 || m == M65 || m == M66 || m == M67 || m == M68 || m == M69 || m == M70 || m == M71 || m == M72)}

function IsBallot(i: int): bool {i == 1 || i == 2}

const unique BallotNull: int;
axiom (BallotNull == -2);

var maxBal: [Proc] int;
var maxVBal: [Proc] int;
var maxVal:	[Proc] Val;
var msgs: [Msg] bool;

function IsInDomainMaxBal(p: Proc): bool { Acceptor[p] }

function IsInDomainMaxVBal(p: Proc): bool { Acceptor[p] }

function IsInDomainVal(p: Proc): bool { Acceptor[p] }

function SafelyInMsgs(m: Msg): bool 
{ (tID(m) == 1 && stype(m) == s1a && IsBallot(bal(m)) && acc(m) == ProcNull && mbal(m) == BallotNull && mval(m) == ValNull && val(m) == ValNull) ||
	(tID(m) == 2 && stype(m) == s1b && IsBallot(bal(m)) && Acceptor[acc(m)] == true && (IsBallot(mbal(m)) == true || mbal(m) == -1) && (mval(m) == None || IsNormalVal(mval(m)) == true) && val(m) == ValNull) ||
	(tID(m) == 3 && stype(m) == s2a && IsBallot(bal(m)) && acc(m) == ProcNull && mbal(m) == BallotNull && mval(m) == ValNull && IsNormalVal(val(m))) ||
	(tID(m) == 4 && stype(m) == s2b && IsBallot(bal(m)) && Acceptor[acc(m)] == true && mbal(m) == BallotNull && mval(m) == ValNull && IsNormalVal(val(m)))
}

procedure Init()
modifies maxBal, maxVBal, maxVal, msgs;
ensures (forall a: Proc :: Acceptor[a] == true ==> (IsBallot(maxBal[a]) == true || maxBal[a] == -1));
ensures (forall a: Proc :: Acceptor[a] == true ==> (IsBallot(maxVBal[a]) == true || maxVBal[a] == -1));
ensures (forall a: Proc :: Acceptor[a] == true ==> (IsNormalVal(maxVal[a]) == true || maxVal[a] == None));
ensures (forall m: Msg :: msgs[m] == true ==> SafelyInMsgs(m) == true);
{	
	assume (forall a: Proc :: Acceptor[a] == true ==> maxBal[a] == -1);

	assume (forall a: Proc :: Acceptor[a] == true ==> maxVBal[a] == -1);

	assume (forall a: Proc :: Acceptor[a] == true ==> maxVal[a] == None);

	assume (forall m: Msg :: msgs[m] == false);
}

procedure Next()
free requires (forall a: Proc :: Acceptor[a] == true ==> (IsBallot(maxBal[a]) == true || maxBal[a] == -1));
free requires (forall a: Proc :: Acceptor[a] == true ==> (IsBallot(maxVBal[a]) == true || maxVBal[a] == -1));
free requires (forall a: Proc :: Acceptor[a] == true ==> (IsNormalVal(maxVal[a]) == true || maxVal[a] == None));
free requires (forall m: Msg :: msgs[m] == true ==> SafelyInMsgs(m) == true);
modifies maxBal, maxVBal, maxVal, msgs;
ensures (forall a: Proc :: Acceptor[a] == true ==> (IsBallot(maxBal[a]) == true || maxBal[a] == -1));
ensures (forall a: Proc :: Acceptor[a] == true ==> (IsBallot(maxVBal[a]) == true || maxVBal[a] == -1));
ensures (forall a: Proc :: Acceptor[a] == true ==> (IsNormalVal(maxVal[a]) == true || maxVal[a] == None));
ensures (forall m: Msg :: msgs[m] == true ==> SafelyInMsgs(m) == true);
{
	var b: int;
	var aT: Proc;
	var v: Val;
	var cMsg: Msg;
	var mT: Msg;
	var Q1b: [Msg] bool;
	var Q1bv: [Msg] bool;
	var Q: [Proc] bool;

	goto lbl1, lbl2;

	lbl1:	// exists b \in Ballot
		havoc b;
		assume (IsBallot(b));
		goto lbl3, lbl4;

		lbl3:	// Phase1a(b)
			havoc cMsg;			
			assume(tID(cMsg) == 1 && stype(cMsg) == s1a && bal(cMsg) == b && acc(cMsg) == ProcNull && mbal(cMsg) == BallotNull && mval(cMsg) == ValNull && val(cMsg) == ValNull);
			// assert(IsGeneratedMsg(cMsg));
			// assert (MsgCaseSplit(cMsg) && MsgCaseSplit(M1) && MsgCaseSplit(M2) && (cMsg == M1 || cMsg == M2));
			// assert ((MsgComp(cMsg, M1) && cMsg == M1) || (MsgComp(cMsg, M1) && cMsg == M2) || (MsgComp(cMsg, M1) &&cMsg == M3));
			// assert (MsgComp(cMsg, M1) && MsgComp(cMsg, M2) && MsgComp(cMsg, M3) && (cMsg == M1 || cMsg == M2 || cMsg == M3));
			assert (MsgComp(cMsg, M1) && MsgComp(cMsg, M2) && MsgComp(cMsg, M3) && MsgComp(cMsg, M4) && MsgComp(cMsg, M5) && MsgComp(cMsg, M6) && MsgComp(cMsg, M7) && MsgComp(cMsg, M8) && MsgComp(cMsg, M9) && MsgComp(cMsg, M10) && MsgComp(cMsg, M11) && MsgComp(cMsg, M12) && MsgComp(cMsg, M13) && MsgComp(cMsg, M14) && MsgComp(cMsg, M15) && MsgComp(cMsg, M16) && MsgComp(cMsg, M17) && MsgComp(cMsg, M18) && MsgComp(cMsg, M19) && MsgComp(cMsg, M20) && MsgComp(cMsg, M21) && MsgComp(cMsg, M22) && MsgComp(cMsg, M23) && MsgComp(cMsg, M24) && MsgComp(cMsg, M25) && MsgComp(cMsg, M26) && MsgComp(cMsg, M27) && MsgComp(cMsg, M28) && MsgComp(cMsg, M29) && MsgComp(cMsg, M30) && MsgComp(cMsg, M31) && MsgComp(cMsg, M32) && MsgComp(cMsg, M33) && MsgComp(cMsg, M34) && MsgComp(cMsg, M35) && MsgComp(cMsg, M36) && MsgComp(cMsg, M37) && MsgComp(cMsg, M38) && MsgComp(cMsg, M39) && MsgComp(cMsg, M40) && MsgComp(cMsg, M41) && MsgComp(cMsg, M42) && MsgComp(cMsg, M43) && MsgComp(cMsg, M44) && MsgComp(cMsg, M45) && MsgComp(cMsg, M46) && MsgComp(cMsg, M47) && MsgComp(cMsg, M48) && MsgComp(cMsg, M49) && MsgComp(cMsg, M50) && MsgComp(cMsg, M51) && MsgComp(cMsg, M52) && MsgComp(cMsg, M53) && MsgComp(cMsg, M54) && MsgComp(cMsg, M55) && MsgComp(cMsg, M56) && MsgComp(cMsg, M57) && MsgComp(cMsg, M58) && MsgComp(cMsg, M59) && MsgComp(cMsg, M60) && MsgComp(cMsg, M61) && MsgComp(cMsg, M62) && MsgComp(cMsg, M63) && MsgComp(cMsg, M64) && MsgComp(cMsg, M65) && MsgComp(cMsg, M66) && MsgComp(cMsg, M67) && MsgComp(cMsg, M68) && MsgComp(cMsg, M69) && MsgComp(cMsg, M70) && MsgComp(cMsg, M71) && MsgComp(cMsg, M72) && (cMsg ==  M1 || cMsg ==  M2 || cMsg ==  M3 || cMsg ==  M4 || cMsg ==  M5 || cMsg ==  M6 || cMsg ==  M7 || cMsg ==  M8 || cMsg ==  M9 || cMsg ==  M10 || cMsg ==  M11 || cMsg ==  M12 || cMsg ==  M13 || cMsg ==  M14 || cMsg ==  M15 || cMsg ==  M16 || cMsg ==  M17 || cMsg ==  M18 || cMsg ==  M19 || cMsg ==  M20 || cMsg ==  M21 || cMsg ==  M22 || cMsg ==  M23 || cMsg ==  M24 || cMsg ==  M25 || cMsg ==  M26 || cMsg ==  M27 || cMsg ==  M28 || cMsg ==  M29 || cMsg ==  M30 || cMsg ==  M31 || cMsg ==  M32 || cMsg ==  M33 || cMsg ==  M34 || cMsg ==  M35 || cMsg ==  M36 || cMsg ==  M37 || cMsg ==  M38 || cMsg ==  M39 || cMsg ==  M40 || cMsg ==  M41 || cMsg ==  M42 || cMsg ==  M43 || cMsg ==  M44 || cMsg ==  M45 || cMsg ==  M46 || cMsg ==  M47 || cMsg ==  M48 || cMsg ==  M49 || cMsg ==  M50 || cMsg ==  M51 || cMsg ==  M52 || cMsg ==  M53 || cMsg ==  M54 || cMsg ==  M55 || cMsg ==  M56 || cMsg ==  M57 || cMsg ==  M58 || cMsg ==  M59 || cMsg ==  M60 || cMsg ==  M61 || cMsg ==  M62 || cMsg ==  M63 || cMsg ==  M64 || cMsg ==  M65 || cMsg ==  M66 || cMsg ==  M67 || cMsg ==  M68 || cMsg ==  M69 || cMsg ==  M70 || cMsg ==  M71 || cMsg ==  M72));
			assert (SafelyInMsgs(cMsg));

 			msgs[cMsg] := true;
			goto Done;

		lbl4: // Phase2a(b, v)
			havoc v;
			assume (IsNormalVal(v));
			assume (!(exists m: Msg :: SafelyInMsgs(m) && msgs[m] == true && stype(m) == s2a && bal(m) == b));

			havoc Q;
			assume (IsQuorum(Q));

			havoc Q1b;
			assume(forall m: Msg :: ((SafelyInMsgs(m) && (msgs[m] == true && stype(m) == s1b && Q[acc(m)]== true && bal(m) == b)) ==> Q1b[m] == true) || (!(SafelyInMsgs(m) && (msgs[m] == true && stype(m) == s1b && Q[acc(m)] == true && bal(m) == b)) ==> Q1b[m] == false));

			havoc Q1bv;
			assume (forall m: Msg :: ((SafelyInMsgs(m) && Q1b[m] == true && (msgs[m] == true && stype(m) == s1b && Q[acc(m)] == true && bal(m) == b)) ==> Q1b[m] == true) || (!(SafelyInMsgs(m) && Q1b[m] == true && (msgs[m] == true && stype(m) == s1b && Q[acc(m)] == true && bal(m) == b)) ==> Q1bv[m] == false));

			assume (forall a: Proc :: ProcCaseSplit(a) && Q[a] == true && (exists m: Msg :: SafelyInMsgs(m) && Q1b[m] == true && acc(m) == a));

			assume ((forall m: Msg :: SafelyInMsgs(m) ==> Q1bv[m] == false) || (exists m: Msg :: SafelyInMsgs(m) && Q1bv[m] == true && mval(m) == v && (forall mm: Msg :: (SafelyInMsgs(m) && Q1bv[mm] == true) ==> mbal(m) >= mbal(mm))));

			havoc cMsg;
			assume (stype(cMsg) == s2a && tID(cMsg) == 3 && bal(cMsg) == b && val(cMsg) == v && acc(cMsg) == ProcNull && mbal(cMsg) == BallotNull && mval(cMsg) == ValNull);
			// assert(SafelyInMsgs(cMsg) && IsGeneratedMsg(cMsg));
			// assert(MsgCaseSplit(cMsg) && IsGeneratedMsg(cMsg));
			assert (SafelyInMsgs(cMsg));
			msgs[cMsg] := true;
			goto Done;

		goto Done;

	lbl2:	// exists a \in Acceptor
		havoc aT;
		assume(Acceptor[aT]);
		goto lbl5, lbl6;

		lbl5:	// Phase1b(a)			
			havoc mT;
			assume (SafelyInMsgs(mT) && msgs[mT] == true && stype(mT) == s1a && bal(mT) > maxBal[aT]);
			maxBal[aT] := bal(mT);

			havoc cMsg;
			assume(tID(cMsg) == 2 && stype(cMsg) == s1b && acc(cMsg) == aT && bal(cMsg) == bal(mT) && mbal(cMsg) == maxVBal[aT] && mval(cMsg) == maxVal[aT] && val(cMsg) == ValNull);
			// assert(SafelyInMsgs(cMsg) && IsGeneratedMsg(cMsg));
			// assert(IsGeneratedMsg(cMsg));
			assert (SafelyInMsgs(cMsg));
			msgs[cMsg] := true;
			goto Done;

		lbl6:	// Phase2b(a)
			havoc mT;
			assume (SafelyInMsgs(mT) && msgs[mT] == true && stype(mT) == s2a && bal(mT) >= maxBal[aT]);
			maxBal[aT] := bal(mT);
			maxVBal[aT] := bal(mT);
			maxVal[aT] := val(mT);

			havoc cMsg;
			assume (tID(cMsg) == 4 && stype(cMsg) == s2b && acc(cMsg) == aT && bal(cMsg) == bal(mT) && val(cMsg) == val(mT) && mbal(cMsg) == BallotNull && mval(cMsg) == ValNull);
			// assert(SafelyInMsgs(cMsg) && IsGeneratedMsg(cMsg));
			// assert(IsGeneratedMsg(cMsg));
			assert (SafelyInMsgs(cMsg));
			msgs[cMsg] := true;
 			goto Done;			

		goto Done;

	Done:	
}