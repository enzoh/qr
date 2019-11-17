/**
 * Module      : util.mo
 * Copyright   : 2019 Enzo Haussecker
 * License     : Apache 2.0 with LLVM Exception
 * Maintainer  : Enzo Haussecker <enzo@dfinity.org>
 * Stability   : Experimental
 */

import List "mo:stdlib/list.mo";

type List<T> = List.List<T>;

module Util {

  public func bitPadLeft(n : Nat, bits : List<Bool>) : List<Bool> {
    List.append<Bool>(List.replicate<Bool>(n, false), bits)
  };

  public func bitPadRight(n : Nat, bits : List<Bool>) : List<Bool> {
    List.append<Bool>(bits, List.replicate<Bool>(n, false))
  };

  public func bitPadLeftTo(n : Nat, bits : List<Bool>) : List<Bool> {
    let m = List.len<Bool>(bits);
    if (m > n) bits else bitPadLeft(n - m, bits)
  };

  public func bitPadRightTo(n : Nat, bits : List<Bool>) : List<Bool> {
    let m = List.len<Bool>(bits);
    if (m > n) bits else bitPadRight(n - m, bits)
  };

}
