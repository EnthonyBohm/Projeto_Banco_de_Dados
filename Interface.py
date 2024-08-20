import tkinter as tk
from tkinter import ttk
from PIL import Image, ImageTk
import time


class Aplication (tk.Tk):
    
    def __init__ (self):
        tk.Tk.__init__(self)
        self.rowconfigure(3)
        self.columnconfigure(3)
        self.config(width=600, height=400)
        self.change_background_img('pre_validacao.png')
        self.user_validation()
        
        
        
        self.mainloop()
        
    def change_background_img (self, img_path):
        self.bg = ImageTk.PhotoImage (Image.open(img_path).resize((1000, 800)))
        self.background_img = tk.Label (self, image=self.bg)
        self.background_img.grid(row=1, column=1)
    
    def user_validation (self):
        self.login = tk.Frame (self)
        self.login.grid(row=1, column=1)
        self.login.lift()

        
        self.login_msg1 = tk.Label (self.login, text='User: ')
        self.login_msg1.grid(row=0, column=0)
        self.login_entry1 = tk.Entry (self.login)
        self.login_entry1.grid(row=0,column=1)
        
        self.login_msg2 = tk.Label (self.login, text='Password: ')
        self.login_msg2.grid(row=1, column=0)
        self.login_entry2 = tk.Entry (self.login, show='*')
        self.login_entry2.grid(row=1,column=1)
        
        self.login_button = tk.Button (
            master=self.login,
            text= 'Enter',
            command= self.log_in
        )
        self.login_button.grid(row=2, column=1)
    
    def log_in (self):
        self.login_button.destroy()
        pbar = ttk.Progressbar(self.login ,orient='horizontal', mode='determinate', length=100)
        pbar.grid(row=2,column=1)
        for i in range (20):        
            time.sleep(0.0566)
            pbar['value'] += 5
            self.update_idletasks()
        self.login.destroy()
        self.change_background_img('pos_validacao.png')



app = Aplication()