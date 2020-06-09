--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        Package   ADDTYPE  some array types                        บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     1995, 1998,2020                บ
-- บ Copyright (C) 2002,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
with Interfaces.C;
package addtype  is

 type fvector is array(integer range <>  )                 of float;
 pragma convention(C,fvector);
 type pVector is access all fvector;
 
 type fmatrix is array(integer range <>,integer range <> ) of float;
 pragma convention(C,fmatrix);
 type pmatrix is access all fmatrix;

 type ivector is array(integer range <>  )                 of integer;
 pragma convention(C,ivector);
 type pIVector is access all ivector;

 type imatrix is array(integer range <> ,integer range <> ) of integer;
 pragma convention(C,imatrix);
 type pimatrix is access all imatrix;

 type bvector is array(integer range <>  )                  of boolean;
 pragma convention(C,bvector);
 type pBVector is access all bvector;

 type bmatrix is array(integer range <> ,integer range <> ) of boolean;
 pragma convention(C,bmatrix);
 type pbmatrix is access all bmatrix;

 type tenzor is array(integer range <> ,integer range <>,integer range <>) of float;
 pragma convention(C,tenzor);
 type ptenzor is access all tenzor;

 type itenzor is array(integer range <> ,integer range <>,integer range <>) of integer;
 pragma convention(C,itenzor);
 type pitenzor is access all itenzor;

 type btenzor is array(integer range <> ,integer range <>,integer range <>) of boolean;
 pragma convention(C,btenzor);
 type pbtenzor is access all btenzor;
 
 type dvector is array(integer range <>  )                  of Long_Long_float;
 pragma convention(C,dvector);
 type pdvector is access all dvector;

 type dmatrix is array(integer range <> ,integer range <> ) of Long_Long_float;
 pragma convention(C,dmatrix);
 type pdmatrix is access all dmatrix;
 
 type dtenzor is array(integer range <> ,integer range <>,integer range <>) of Long_Long_float;
 pragma convention(C,dtenzor);
 type pdtenzor is access all dtenzor;
 
 type uivector is array(integer range <>  )                 of Interfaces.C.unsigned;
 pragma convention(C,uivector);
 type pUIVector is access all uivector;

 type uimatrix is array(integer range <> ,integer range <> ) of Interfaces.C.unsigned; 
 pragma convention(C,uimatrix);
 type puimatrix is access all uimatrix;
 
 type uitenzor is array(integer range <> ,integer range <>,integer range <>) of Interfaces.C.unsigned;
 pragma convention(C,uitenzor);
 type puitenzor is access all uitenzor;
 
end addtype;
