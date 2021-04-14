sintoma(falta_aire).
sintoma(congestion_nasal).
sintoma(aumento_de_sed).
sintoma(fatiga).
sintoma(dolor_de_cabeza).
sintoma(dificultad_para_respirar).
sintoma(fiebre).
sintoma(moretones_grandes).
sintoma(orina_con_sangre).
sintoma(incomodidad_ocular).

causa(factores_ambientales).
causa(polen).
causa(genetica).
causa(virus).
causa(drogas_ilicitas).
causa(tabaco).
causa(inmunodeficiencias).
causa(hereditario).
causa(inproduccion_de_plaquetas).
causa(cornea_ovalada).

sufre_de(incomodidad_ocular, astigmatismo).
sufre_de(vista_borrosa, hipermetropia).
sufre_de(fiebre, leucemia).
sufre_de(dolor_de_cabeza, presion_alta).
sufre_de(dolor_de_cabeza, miopia).
sufre_de(falta_aire, asma).
sufre_de(polen, rinitis).
sufre_de(aumento_de_sed, diabetes_tipo_1).
sufre_de(fatiga, lupus).
sufre_de(dificultad_para_respirar, infarto_de_miocardio).
sufre_de(moretones_grandes, hemofilia).
sufre_de(inmunodeficiencias).

puede_sufrir_de(X, Y):- sufre_de(falta_aire, X), sufre_de(polen, Y).
puede_padecer(X, Y):- sufre_de(dolor_de_cabeza, X), sufre_de(dolor_de_cabeza, Y).
diagnosticado_con(X, Y):- sufre_de(aumento_de_sed, X), sufre_de(fatiga, Y).
padece_de(X):- sufre_de(moretones_grandes, X), sufre_de(inmunodeficiencias).
posee(X, Y):- sufre_de(incomodidad_ocular, X), sufre_de(vista_borrosa, Y).
