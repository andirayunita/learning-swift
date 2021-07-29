// -----------------------------------------
// SOAL-SOAL ALGORITMA 
// -----------------------------------------

// let phi: Double = 3.14
// var jari_jari, luas: Double
// jari_jari = 7.0

// luas = phi * jari_jari * jari_jari
// print("Luas lingkaran = \(luas)")

// -----------------------------------------

// let a = "Aa"
// let b = "Be"

// print("Nilai a = \(a) dan nilai b = \(b)")

// -----------------------------------------

// print("Masukkan nama: ")
// let nama = readLine()!
// print("Nama saya adalah \(nama)")

// -----------------------------------------

// let phi: Double = 3.14
// let jari_jari: Double = 7
// let tinggi: Double = 24
// var volume: Double

// volume = phi * jari_jari * jari_jari * tinggi
// print("Rumus luas volume tabung adalah \(volume)")

// -----------------------------------------

print("Alas = "); let alasInput = readLine()
print("Tinggi = "); let tinggiInput = readLine()

// ubah string ke int
if let alas = Int(alasInput ?? "0"), let tinggi = Int(tinggiInput ?? "0") {
    let keliling = 2 * (alas + tinggi)
    let luas = alas * tinggi
    
    print("Alas = \(alas)")
    print("Tinggi = \(tinggi)")
    print("Keliling = \(keliling)")
    print("Luas = \(luas)")
    
} else {
    print("Input tidak valid.")
}

// -----------------------------------------

// let colors = Set(["red", "green", "blue"])
// print(colors)

// let colors2 = Set(["red", "green", "blue", "red", "blue"])
// print(colors2)

// -----------------------------------------

// var score = 85
// var str = "Your score was \(score)"
// var result = "The test result are here: \(str)"
// print(result)