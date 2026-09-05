def get_material_database() -> dict:
  """ Return a dictionary of material properties (Yield Strength in MPa, Young's Modulus in GPa). """
  return {
      "Steel": {"yield_strength": 250, "youngs_modulus": 200},
      "Aluminum": {"yield_strength": 95, "youngs_modulus": 69},
      "Titanium": {"yield_strength": 880, "youngs_modulus": 114}
  }

def get_material_properties(material: str, materials_database: dict) -> dict:
  """ Retrieve material properties from the database by name. """
  if material not in materials_database:
    raise ValueError(f"Material '{material}' not found in the database.")
  return materials_database[material]

def create_calculation_method(material: str, inputs: dict, results: dict) -> dict:
  """ Construct a calculation record dictionary. """
  return {
    "material": material,
    "inputs": inputs,
    "results": results
  }

def add_to_history(calculation_method: dict, history: list) -> None:
  """ Append a calculation record to the session history. """
  history.append(calculation_method)
  print("Calculation added to history.")