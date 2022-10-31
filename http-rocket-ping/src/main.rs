use rocket::{get,routes,launch};

#[get("/ping")]
fn ping() -> &'static str {
    "Pong!"
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![ping])
}
