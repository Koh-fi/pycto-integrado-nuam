document.addEventListener("DOMContentLoaded", () => {
    
    const panelChat = document.getElementById("panel_chat");
    const tituloChat = document.getElementById("titulo_chat");
    const zonaMensajes = document.getElementById("zona_mensajes");
    const cerrarChat = document.getElementById("cerrar_chat");

    // abrir el panel chat con el correo
    function abrirChat(correo) {
        tituloChat.textContent = correo; 
        panelChat.style.display = "block";
        zonaMensajes.innerHTML = `<p class="text-muted">Chat con ${correo}</p>`;
    }
    // abrir el panel chat desde la lista de contactos
    document.getElementById("lista_contactos")
        .addEventListener("click", (e) => {
            if (e.target.classList.contains("selector-chat")) {
                abrirChat(e.target.dataset.correo);
            }
        });
    // abrir el panel chat desde conversaciones anteriores en el chat privado
    document.getElementById("lista_chat_privado")
        .addEventListener("click", (e) => {
            if (e.target.classList.contains("selector-chat")) {
                abrirChat(e.target.dataset.correo);
            }});
    // abrir el panel chat desde la busqueda por correo
    document.getElementById("lista_resultados")
        .addEventListener("click", (e) => {
            if (e.target.classList.contains("selector-chat")) {
                abrirChat(e.target.dataset.correo);
            }});
    // boton pra el cierre del panel chat
    cerrarChat.addEventListener("click", () => {
        panelChat.style.display = "none";});
});