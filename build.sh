cd hello-rust
cargo fmt
cargo fmt --check
cargo build --release
status=$?
if [ $status -eq 0 ]
then
  echo "Compilation succeeded."
else
  cargo clean
  echo "Error: Compilation Failed."
  exit $status
fi
cd ..

cd http-actix-ping
cargo fmt
cargo fmt --check
cargo build --release
status=$?
if [ $status -eq 0 ]
then
  echo "Compilation succeeded."
else
  cargo clean
  echo "Error: Compilation Failed."
  exit $status
fi
cd ..

cd http-rocket-ping
cargo fmt
cargo fmt --check
cargo build --release
status=$?
if [ $status -eq 0 ]
then
  echo "Compilation succeeded."
else
  cargo clean
  echo "Error: Compilation Failed."
  exit $status
fi
cd ..

