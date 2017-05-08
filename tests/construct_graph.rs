// Copyright (c) 2017 Fabian Schuiki
extern crate llhd;

#[test]
fn simple_func() {
	let module = llhd::Module::new();
	let func_ty = module.func_ty(vec![module.int_ty(32), module.int_ty(32)], module.void_ty());
	let func = module.add_function("foo", func_ty);
}
