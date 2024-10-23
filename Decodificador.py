import tkinter as tk

# Función para decodificar la instrucción
def decode_instruction():
    instruction = entry.get().upper()
    parts = instruction.split()

    if len(parts) != 4:
        result_label.config(text="Instrucción inválida")
        return
    
    operation, reg1, reg2, reg3 = parts

    if operation == "SUMA":
        result_label.config(text=f"{reg3} = {reg1} + {reg2}")
    elif operation == "RESTA":
        result_label.config(text=f"{reg3} = {reg1} - {reg2}")
    elif operation == "AND":
        result_label.config(text=f"{reg3} = {reg1} & {reg2}")
    elif operation == "OR":
        result_label.config(text=f"{reg3} = {reg1} | {reg2}")
    elif operation == "MENORQ":
        result_label.config(text=f"{reg3} = 1 si {reg1} < {reg2}, sino 0")
    else:
        result_label.config(text="Operación no reconocida")

# Configuración de la GUI
root = tk.Tk()
root.title("Decodificador ASM")

# Campo de entrada
entry_label = tk.Label(root, text="Ingrese la instrucción ASM:")
entry_label.pack()

entry = tk.Entry(root, width=50)
entry.pack()

# Botón para decodificar
decode_button = tk.Button(root, text="Decodificar", command=decode_instruction)
decode_button.pack()

# Mostrar resultado
result_label = tk.Label(root, text="Resultado:")
result_label.pack()

# Ejecutar la GUI
root.mainloop()
