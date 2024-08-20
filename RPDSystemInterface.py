'''import tkinter as tk
from PIL import ImageTk, Image

root=tk.Tk()
root.title("My app")
root.geometry("1920x1080")

image_path = "Projeto de Banco de Dados/Trabalho/pre_validacao.png"
img = Image.open(image_path)
img = img.resize((1900, 1050))
img = ImageTk.PhotoImage(img)


panel = tk.Label(root, image=img)

panel.pack(side="top", fill="both", expand="yes")

root.mainloop()'''


from tkinter import *
from tkinter import ttk
from PIL import Image, ImageTk
import time
from typing import Literal
        

def log_in ():
    login.button.destroy()
    pbar = ttk.Progressbar(login ,orient='horizontal', mode='determinate', length=100)
    pbar.grid(row=2,column=1)
    for i in range (20):        
        time.sleep(0.0566)
        pbar['value'] += 5
        window.update_idletasks()
    login.destroy()
    bg = ImageTk.PhotoImage(Image.open('pos_validacao.png'))
    background = Label (window, image=bg)

    


window = Tk()
window.rowconfigure(3)
window.columnconfigure(3)
window.config(width=600, height=400)

#Setting Bg and Icon
bg = ImageTk.PhotoImage (Image.open('pre_validacao.png'))
icon = ImageTk.PhotoImage (Image.open('RPD_logo.png'))
window.wm_iconphoto(False, icon)
background = Label (window, image=bg)
background.grid(row=1, column=1)


#Adding the Initial Welcome
login = Frame (window)
login.grid(row=1, column=1)

login_label1 = Label (login, text= 'User: ')
login_label1.grid(row=0,column=0)
login_entry1 = Entry (login)
login_entry1.grid (row=0, column=1)

login_label2 = Label (login, text='password')
login_label2.grid(row=1, column=0)
login_entry2 = Entry (login, show='*')
login_entry2.grid(row=1, column=1)

login.button = Button (
    master=login,
    text='Entrar',
    command=log_in       
)
login.button.grid(row=2, column=1)

#





window.mainloop()
