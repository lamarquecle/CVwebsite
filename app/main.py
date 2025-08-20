from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse
import uvicorn

app = FastAPI(title="IA-Showcase")

# servir fichiers statiques
app.mount("/static", StaticFiles(directory="app/static"), name="static")

@app.get("/")
def root():
    return FileResponse("app/index.html")



if __name__ == "__main__":
    uvicorn.run("main:app", reload=True)
