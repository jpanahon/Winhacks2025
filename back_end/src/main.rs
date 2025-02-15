use actix_web::{get, web, App, HttpServer, Responder};
use actix_cors::Cors;
use serde_json;

#[get("/api/hello")]
async fn hello() -> impl Responder {
    web::Json(serde_json::json!({"message": "It ok Erik, I'm Joy."}))
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().wrap(Cors::permissive()).service(hello))
        .bind("127.0.0.1:8080")?
        .run()
        .await
}
