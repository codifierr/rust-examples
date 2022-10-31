use actix_web::{web, App, HttpServer, Responder};

async fn ping() -> impl Responder {
    format!("Pong!")
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    println!("Server started on 0.0.0.0 port 8080");

    HttpServer::new(|| {
        App::new()
            .route("/ping", web::get().to(ping))
    })
    .bind(("0.0.0.0",8080))?
    .run()
    .await
}