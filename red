 while True:
        print("  ")
        print("Available materials in database: steel, aluminum, copper")

        material_inp = input("Enter material name (or 'quit' to exit): ").strip().lower()
        if material_inp == 'quit':
            break
        if material_inp not in materials_indx:
            print("Error: Material not found in database")
            continue
        try
            force = float(input(f"Enter force ({UNITS[0]}): "))
            area = float(input(f"Enter area ({UNITS[1]}): "))
            original_length = float(input(f"Enter original length ({UNITS[2]}): "))
            change_in_length = float(input(f"Enter change in length ({UNITS[2]}): "))
            if force <= 0 or area <= 0 or original_length <= 0 or change_in_length <= 0:
                print("Error: All dimensions and forces must be positive numbers!")
                continue

        # Key additions:
        stress = force / area
        strain = change_in_length / original_length

        mat_ = materials_indx[material_inp]
        yield_stren = mat_["yield_strength"]
        ym_ = mat_["youngs_modulus"]

        safety_factor = yield_stre