import sys
from PyQt5.QtWidgets import QApplication, QMainWindow
from PyQt5.QtCore import QUrl
from PyQt5 import uic

class Navegador(QMainWindow):
 def __init__(self):
  QMainWindow.__init__(self)
  uic.loadUi("webkit.ui", self)
  #url por defecto
  default_url = "http://google.com"
  #Navegar a la url por defecto
  self.navegador.setUrl(QUrl(default_url))
  #Agregar al buscador la url por defecto
  self.url.setText(default_url)
  #Desactivar botón back hasta que no haya historial
  self.btn_back.setEnabled(False)
  
  #Retroceder a la página anterior
  self.btn_back.clicked.connect(self.navegador.back)
  self.url.returnPressed.connect(self.navegar)
  self.navegador.urlChanged.connect(self.url_changed)
  
 #Navegar a la url indicada en el buscador al pulsar la tecla enter
 def navegar(self):
  url = QUrl(self.url.text())
  self.navegador.setUrl(url)
  
 #Detectar el cambio de url de navegación
 def url_changed(self):
  #Crear un objeto de la página para acceder al historial
  page = self.navegador.page()
  history = page.history()
  #Si hay historial activar el botón back
  if history.canGoBack():
   self.btn_back.setEnabled(True)
  else:
   self.btn_back.setEnabled(False)
  #Agregar el cambio de url al campo de búsqueda
  url = self.navegador.url()
  self.url.setText(url.toString())
  
  
app = QApplication(sys.argv)
navegador = Navegador()
navegador.show()
app.exec_()
