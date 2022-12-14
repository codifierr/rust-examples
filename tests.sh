cd hello-rust 
cargo test
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
cargo test
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
cargo test
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

