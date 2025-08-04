<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión - Sistema Bibliotecario</title>
    <link rel="stylesheet" href="../styles.css">


    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
  />
</head>
<body>
    
    <div class="background-overlay"></div>
    <div class="contenido">
        <header>
            <a href="#" class="home-icon">
                <img src="../../img/list.png" alt="Inicio">
            </a>

                        <h1>Sistema de Gestión Bibliotecaria Institución Educativa X</h1>
        </header>
        <div id="sidebarMenu" class="sidebar-menu">
          <ul>
            <li><a href="inicio.html"><i class="fas fa-home"></i><span>Inicio</span></a></li>
            <li><a href="registrarLibro.html"><i class="fas fa-plus-circle"></i><span>Registrar Libros</span></a></li>
            <li><a href="mostrarLibros.html"><i class="fas fa-book-open"></i><span>Mostrar Libros</span></a></li>
            <li><a href="librosPrestados.html"><i class="fas fa-book-reader"></i><span>Libros Prestados</span></a></li>
            <li><a href="Solicitudes.html"><i class="fas fa-envelope-open-text"></i><span>Solicitudes</span></a></li>
            <li><a href="editardatos.html"><i class="fas fa-user-cog"></i><span>Datos Personales</span></a></li>
            <li><a href="../inicioSesion.html"><i class="fas fa-sign-out-alt"></i><span>Salir</span></a></li>
          </ul>
        </div>



        <main>
          <div class="contenedor-principal">
            <h1>Libros Registrados</h1>
            <div class="buscador">
              <input type="text" placeholder="Buscar...">
              <button><i class="fas fa-search"></i></button>
            </div>
          
            <div class="libros-grid">
              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                    <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>

              <div class="libro-card">
                <h3>Nombre Libro</h3>
                <img src="../../img/libro.png" alt="Libro">
                <div class="acciones">
                  <button class="btn-editar">Editar <i class="fas fa-pen"></i></button>
                  <button class="btn-eliminar">Eliminar <i class="fas fa-trash"></i></button>
                </div>
                <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
              </div>
            </div>
          
            <button class="btn-registrar"><a href="registrarLibro.html"><span>Registrar Nuevo Libro</span></a></button>
          </div>
          
        
        </main>

        <footer>
            <p>Leer es soñar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
        </footer>
    </div>

<div id="modalInfo" class="modal">
  <div class="modal-contenido">
    <h2>Información</h2>
    <label>ISBN</label>
    <input type="text" value="1234-12244" readonly>
    
    <label>TÍTULO</label>
    <input type="text" value="Nombre Libro" readonly>
    
    <label>AUTOR</label>
    <input type="text" value="Nombre del Autor" readonly>
    
    <label>EDITORIAL</label>
    <input type="text" value="Editorial del libro" readonly>
    
    <label>ESTADO</label>
    <select disabled>
      <option>Estado del Libro</option>
    </select>
    
    <button class="cerrar-modal">Cerrar</button>
  </div>
</div>


<div id="modalEditar" class="modal">
  <div class="modal-contenido">
    <h2>Editar Libro</h2>
    <label>ISBN</label>
    <input type="text" id="editarISBN" value="">
    
    <label>TÍTULO</label>
    <input type="text" id="editarTitulo" value="">
    
    <label>AUTOR</label>
    <input type="text" id="editarAutor" value="">
    
    <label>EDITORIAL</label>
    <input type="text" id="editarEditorial" value="">
    
    <label>ESTADO</label>
    <select id="editarEstado">
      <option value="Disponible">Disponible</option>
      <option value="Prestado">Prestado</option>
      <option value="Dañado">Dañado</option>
    </select>
    
    <div class="acciones">
      <button id="btnGuardarCambios" class="btn btn-verde">Editar</button>
      <button id="btnCancelarEdicion" class="btn">Cancelar</button>
    </div>
  </div>
</div>



<div id="modalEliminar" class="modal">
  <div class="modal-contenido">
    <h3>¿Estás seguro?</h3>
    <p>¿Deseas eliminar este libro?</p>
    <div class="acciones">
      <button id="btnConfirmarEliminar" class="btn btn-rojo">Sí, eliminar</button>
      <button id="btnCancelarEliminar" class="btn">Cancelar</button>
    </div>
  </div>
</div>

  <script src="../js/mostrarLibros.js"></script>
</body>
