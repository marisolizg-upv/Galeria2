package {
	import flash.events.Event;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import fl.transitions.easing.*;
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;

	public class Galeria2 extends MovieClip {

		public function Galeria2() {
			var sec: int;
			var seg: int;
			var cont: int;
			var time: Timer = new Timer(1000, cont++);
			time.addEventListener(TimerEvent.TIMER, tiempo);

			var hi: Tween = new Tween(hola, "y", Bounce.easeOut, -400, 268, 3, true);
			var wel: Tween = new Tween(wlcm, "y", Bounce.easeOut, 2200, 557, 3, true);
			var nm: Tween = new Tween(nombre, "x", Regular.easeOut, -1000, 277, 5, true);
			unobtn.visible = false;
			dosbtn.visible = false;
			tresbtn.visible = false;
			cuatrobtn.visible = false;
			cincobtn.visible = false;
			seisbtn.visible = false;
			sietebtn.visible = false;
			ochobtn.visible = false;
			nuevebtn.visible = false;
			diezbtn.visible = false;
			oncebtn.visible = false;
			docebtn.visible = false;
			trecebtn.visible = false;
			catorcebtn.visible = false;
			quincebtn.visible = false;
			unoseisbtn.visible = false;
			unosietebtn.visible = false;
			unoochobtn.visible = false;
			unonuevebtn.visible = false;
			veintebtn.visible = false;
			time.start();
			function tiempo(tiempoevent: TimerEvent) {
				sec++;
				if (sec > 5) {
					var bye: Tween = new Tween(hola, "x", Regular.easeOut, 578, -3000, 3, true);
					var gud: Tween = new Tween(wlcm, "x", Regular.easeOut, 349, 3000, 3, true);
					var bai: Tween = new Tween(nombre, "y", Regular.easeOut, 918, 3000, 3, true);
					seg++;
					if (sec > 4) {
						time.stop();
						unobtn.visible = true;
						dosbtn.visible = true;
						tresbtn.visible = true;
						cuatrobtn.visible = true;
						cincobtn.visible = true;
						seisbtn.visible = true;
						sietebtn.visible = true;
						ochobtn.visible = true;
						nuevebtn.visible = true;
						diezbtn.visible = true;
						oncebtn.visible = true;
						docebtn.visible = true;
						trecebtn.visible = true;
						catorcebtn.visible = true;
						quincebtn.visible = true;
						unoseisbtn.visible = true;
						unosietebtn.visible = true;
						unoochobtn.visible = true;
						unonuevebtn.visible = true;
						veintebtn.visible = true;
						//Tweens
						var uno: Tween = new Tween(unobtn, "x", Strong.easeOut, -400, 0, 3, true);
						var dos: Tween = new Tween(dosbtn, "y", Strong.easeOut, -400, 10, 3, true);
						var tres: Tween = new Tween(tresbtn, "y", Strong.easeOut, -400, 10, 3, true);
						var cuatro: Tween = new Tween(cuatrobtn, "y", Strong.easeOut, -400, 10, 3, true);
						var cinco: Tween = new Tween(cincobtn, "y", Strong.easeOut, -400, 10, 3, true);
						var seis: Tween = new Tween(seisbtn, "x", Strong.easeOut, 2200, 1550, 3, true);
						var siete: Tween = new Tween(sietebtn, "x", Strong.easeOut, 2200, 1550, 3, true);
						var ocho: Tween = new Tween(ochobtn, "x", Strong.easeOut, 2200, 1550, 3, true);
						var nueve: Tween = new Tween(nuevebtn, "x", Strong.easeOut, 2200, 1550, 3, true);
						var diez: Tween = new Tween(diezbtn, "x", Strong.easeOut, 2200, 1550, 3, true);
						var once: Tween = new Tween(oncebtn, "x", Strong.easeOut, 2200, 1550, 3, true);
						var doce: Tween = new Tween(docebtn, "y", Strong.easeOut, 1660, 1083, 3, true);
						var trece: Tween = new Tween(trecebtn, "y", Strong.easeOut, 1660, 1083, 3, true);
						var catorce: Tween = new Tween(catorcebtn, "y", Strong.easeOut, 1660, 1083, 3, true);
						var quince: Tween = new Tween(quincebtn, "y", Strong.easeOut, 1660, 1083, 3, true);
						var unoseis: Tween = new Tween(unoseisbtn, "x", Strong.easeOut, -400, 0, 3, true);
						var unosiete: Tween = new Tween(unosietebtn, "x", Strong.easeOut, -400, 0, 3, true);
						var unoocho: Tween = new Tween(unoochobtn, "x", Strong.easeOut, -400, 0, 3, true);
						var unonueve: Tween = new Tween(unonuevebtn, "x", Strong.easeOut, -400, 0, 3, true);
						var veinte: Tween = new Tween(veintebtn, "x", Strong.easeOut, -400, 0, 3, true);


						//==================================================================
						function Jirafa(event: MouseEvent): void {
							var datosXML: XML; //almacena el código xml de locación
							var numeroElementos: uint; //almacena cuantos son los elementos del xml (20)
							var cargador: URLLoader = new URLLoader(new URLRequest("1.xml")); //cargar archivo xml que se solicita con el Request que esta en la misma carpeta
							var jirafa: Sprite = new Sprite(); //crea contenedor virtual, se inserta la info de los elementos

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data); //pedir que traia los datos de tal lugar
								numeroElementos = datosXML.locacion.length(); //locacion es la que esta dentro del xml, length es para saber cuantos son
								setImagenes(); //traerse las imagenes (es función)
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista); //como si fuera instancia de botón

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen)); //descargar imagen
									imagen.y = posY;
									imagen.x = posX;
									jirafa.addChild(imagen);
								}
							}
							addChild(jirafa); //agrega el contenedor virtual
							function setPosition(event: Event) {
								jirafa.x = 304;
								jirafa.y = 225;
							}
						}
						unobtn.addEventListener(MouseEvent.CLICK, Jirafa);
						//=======================================================================
						function Frutas(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("2.xml"));
							var frutas: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									frutas.addChild(imagen);
								}
							}
							addChild(frutas);

							function setPosition(event: Event) {
								frutas.x = 304;
								frutas.y = 225;
							}
						}
						dosbtn.addEventListener(MouseEvent.CLICK, Frutas);
						//============================================================================
						function Kitchen(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("3.xml"));
							var kitchen: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									kitchen.addChild(imagen);
								}
							}
							addChild(kitchen);

							function setPosition(event: Event) {
								kitchen.x = 304;
								kitchen.y = 225;
							}
						}
						tresbtn.addEventListener(MouseEvent.CLICK, Kitchen);
						//=============================================================================
						function Flores(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("4.xml"));
							var flores: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									flores.addChild(imagen);
								}
							}
							addChild(flores);

							function setPosition(event: Event) {
								flores.x = 304;
								flores.y = 225;
							}
						}
						cuatrobtn.addEventListener(MouseEvent.CLICK, Flores);
						//===========================================================================
						function Perritos(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("5.xml"));
							var perritos: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									perritos.addChild(imagen);
								}
							}
							addChild(perritos);

							function setPosition(event: Event) {
								perritos.x = 304;
								perritos.y = 225;
							}
						}
						cincobtn.addEventListener(MouseEvent.CLICK, Perritos);
						//========================================================================
						function Sunset(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("6.xml"));
							var sunset: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									sunset.addChild(imagen);
								}
							}
							addChild(sunset);

							function setPosition(event: Event) {
								sunset.x = 304;
								sunset.y = 225;
							}
						}
						seisbtn.addEventListener(MouseEvent.CLICK, Sunset);
						//=========================================================================
						function Gatito(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("7.xml"));
							var gatito: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									gatito.addChild(imagen);
								}
							}
							addChild(gatito);

							function setPosition(event: Event) {
								gatito.x = 304;
								gatito.y = 225;
							}
						}
						sietebtn.addEventListener(MouseEvent.CLICK, Gatito);
						//================================================================================
						function Maleta(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("8.xml"));
							var maleta: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									maleta.addChild(imagen);
								}
							}
							addChild(maleta);

							function setPosition(event: Event) {
								maleta.x = 304;
								maleta.y = 225;
							}
						}
						ochobtn.addEventListener(MouseEvent.CLICK, Maleta);
						//=========================================================================
						function Paisaje(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("9.xml"));
							var paisaje: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									paisaje.addChild(imagen);
								}
							}
							addChild(paisaje);

							function setPosition(event: Event) {
								paisaje.x = 304;
								paisaje.y = 225;
							}
						}
						nuevebtn.addEventListener(MouseEvent.CLICK, Paisaje);
						//=======================================================================
						function Taxi(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("10.xml"));
							var taxi: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									taxi.addChild(imagen);
								}
							}
							addChild(taxi);

							function setPosition(event: Event) {
								taxi.x = 304;
								taxi.y = 225;
							}
						}
						diezbtn.addEventListener(MouseEvent.CLICK, Taxi);
						//======================================================================
						function Rosa(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("11.xml"));
							var rosa: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									rosa.addChild(imagen);
								}
							}
							addChild(rosa);

							function setPosition(event: Event) {
								rosa.x = 304;
								rosa.y = 225;
							}
						}
						oncebtn.addEventListener(MouseEvent.CLICK, Rosa);
						//======================================================================
						function Vintage(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("12.xml"));
							var vintage: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									vintage.addChild(imagen);
								}
							}
							addChild(vintage);

							function setPosition(event: Event) {
								vintage.x = 304;
								vintage.y = 225;
							}
						}
						docebtn.addEventListener(MouseEvent.CLICK, Vintage);
						//======================================================================
						function Muelle(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("13.xml"));
							var muelle: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									muelle.addChild(imagen);
								}
							}
							addChild(muelle);

							function setPosition(event: Event) {
								muelle.x = 304;
								muelle.y = 225;
							}
						}
						trecebtn.addEventListener(MouseEvent.CLICK, Muelle);
						//========================================================================
						function Art(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("14.xml"));
							var art: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									art.addChild(imagen);
								}
							}
							addChild(art);

							function setPosition(event: Event) {
								art.x = 304;
								art.y = 225;
							}
						}
						catorcebtn.addEventListener(MouseEvent.CLICK, Art);
						//==========================================================================
						function Globo(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("15.xml"));
							var globo: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									globo.addChild(imagen);
								}
							}
							addChild(globo);

							function setPosition(event: Event) {
								globo.x = 304;
								globo.y = 225;
							}
						}
						quincebtn.addEventListener(MouseEvent.CLICK, Globo);
						//===========================================================================
						function NYC(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("16.xml"));
							var nyc: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									nyc.addChild(imagen);
								}
							}
							addChild(nyc);

							function setPosition(event: Event) {
								nyc.x = 304;
								nyc.y = 225;
							}
						}
						unoseisbtn.addEventListener(MouseEvent.CLICK, NYC);
						//=======================================================================
						function Cielo(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("17.xml"));
							var cielo: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									cielo.addChild(imagen);
								}
							}
							addChild(cielo);

							function setPosition(event: Event) {
								cielo.x = 304;
								cielo.y = 225;
							}
						}
						unosietebtn.addEventListener(MouseEvent.CLICK, Cielo);
						//=========================================================================
						function Flamingo(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("18.xml"));
							var flamingo: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									flamingo.addChild(imagen);
								}
							}
							addChild(flamingo);

							function setPosition(event: Event) {
								flamingo.x = 304;
								flamingo.y = 225;
							}
						}
						unoochobtn.addEventListener(MouseEvent.CLICK, Flamingo);
						//=======================================================================
						function Orilla(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("19.xml"));
							var orilla: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									orilla.addChild(imagen);
								}
							}
							addChild(orilla);

							function setPosition(event: Event) {
								orilla.x = 304;
								orilla.y = 225;
							}
						}
						unonuevebtn.addEventListener(MouseEvent.CLICK, Orilla);
						//==========================================================================
						function Ventana(event: MouseEvent): void {
							var datosXML: XML;
							var numeroElementos: uint;
							var cargador: URLLoader = new URLLoader(new URLRequest("20.xml"));
							var ventana: Sprite = new Sprite();

							function cargarLista(e: Event) {
								datosXML = new XML(e.target.data);
								numeroElementos = datosXML.locacion.length();
								setImagenes();
							}
							cargador.addEventListener(Event.COMPLETE, cargarLista);

							function setImagenes() {
								var posY: uint = 225;
								var posX: uint = 304;
								for (var i: uint = 0; i < numeroElementos; i++) {
									var imagen: Loader = new Loader();
									imagen.load(new URLRequest(datosXML.locacion[i].imagen));
									imagen.y = posY;
									imagen.x = posX;
									ventana.addChild(imagen);
								}
							}
							addChild(ventana);

							function setPosition(event: Event) {
								ventana.x = 304;
								ventana.y = 225;
							}
						}
						veintebtn.addEventListener(MouseEvent.CLICK, Ventana);
					}
				}
			}

		}

	}

}