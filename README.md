## version 01

    agregando firebase

## firebase configuraciones

    nombre_proyecto en firebase -->flutter-controlGasto00
    -android
        nombre_proyecto nos dirigimos a
            <root>/android/app/src/main/AndroidManifest.xml
        package="com.example.control_gasto"
        ó tambien nos dirigimos a
            <root>/android/app/build.gradle
             defaultConfig {
                applicationId "com.example.control_gasto"

        con nombre proyecto nos registramos en firebase
        luego descargamos archivo json y pegamos en
            <root>/android/app/

        agregamos lo siguiente en la ruta de
            <root>/android/build.gradle
         dependencies {
              classpath 'com.android.tools.build:gradle:3.5.0'
              classpath 'com.google.gms:google-services:4.3.3'
        agregamos lo siguiente en la ruta de
             <root>/android/app/build.gradle
         apply plugin: 'com.android.application'
         apply plugin: 'com.google.gms.google-services'

# librerias

    font_awesome_flutter: ^8.8.1
    charts_flutter: ^0.9.0
    cloud_firestore: ^0.13.5

## splasScreem

    dirigirse a la ruta
    <root>/android/app/src/main/res/drawable/launch_background
    'control' es un archivo png
    y colocar
    <item android:drawable="@android:color/black" />
    <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/control" />
    </item>

    <root>/android/app/src/main/AndroidManifest.xml
    android:icon="@mipmap/control"

## Imagenes

    SplasScreen

![](img_git/controlGasto00.png)

    control gastos plantilla

![](img_git/controlGasto01.png)

## git comandos

    git init
    git status
    git add .
    git status
    git commit -m "primer commit"
    git remote add origin https://github.com/macc001/practica-flutter000-controlGasto.git
    git push -u origin master
    git checkout nombre_rama
    git merge nombre_rama
    git branch nombre_rama
    git branch -d nombre_rama
