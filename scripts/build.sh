cargo build --release --target wasm32-unknown-unknown --package icrc7
ic-wasm target/wasm32-unknown-unknown/release/icrc7.wasm -o target/wasm32-unknown-unknown/release/icrc7.wasm shrink
gzip -f target/wasm32-unknown-unknown/release/icrc7.wasm

cargo build --release --target wasm32-unknown-unknown --package factory
ic-wasm target/wasm32-unknown-unknown/release/factory.wasm -o target/wasm32-unknown-unknown/release/factory.wasm shrink
gzip -f target/wasm32-unknown-unknown/release/factory.wasm