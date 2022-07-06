-- TABELLA CONFIGURAZIONE --
INSERT INTO `gs_configurazione` VALUES (  1,NOW(),NOW(),'SISTEMA','versione','Numero di versione dell\'applicazione<br>[testo]','1.4.5',1);
INSERT INTO `gs_configurazione` VALUES (  2,NOW(),NOW(),'SISTEMA','manutenzione_inizio','Inizio della modalit&agrave; manutenzione durante la quale il registro &egrave; offline<br>[formato: \'AAAA-MM-GG HH:MM\']','',1);
INSERT INTO `gs_configurazione` VALUES (  3,NOW(),NOW(),'SISTEMA','manutenzione_fine','Fine della modalit&agrave; manutenzione durante la quale il registro &egrave; offline<br>[formato: \'AAAA-MM-GG HH:MM\']','',1);
INSERT INTO `gs_configurazione` VALUES (  4,NOW(),NOW(),'SISTEMA','banner_login','Messaggio da visualizzare nella pagina pubblica di login<br>[testo HTML]','',1);
INSERT INTO `gs_configurazione` VALUES (  5,NOW(),NOW(),'SISTEMA','banner_home','Messaggio da visualizzare nella pagina home degli utenti autenticati<br>[testo HTML]','',1);
INSERT INTO `gs_configurazione` VALUES (  6,NOW(),NOW(),'SISTEMA','id_provider','Se presente, indica l\'uso di un identity provider esterno (es. SSO su Google)<br>[testo]','',0);
INSERT INTO `gs_configurazione` VALUES (  7,NOW(),NOW(),'SISTEMA','dominio_default','Indica il dominio di posta predefinito per le email degli utenti (usato nell\'importazione)<br>[testo]','noemail.local',0);
INSERT INTO `gs_configurazione` VALUES (  8,NOW(),NOW(),'SISTEMA','dominio_id_provider','Nel caso si utilizzi un identity provider esterno, indica il dominio di posta predefinito per le email degli utenti (usato nell\'importazione)<br>[testo]','',0);
INSERT INTO `gs_configurazione` VALUES (  9,NOW(),NOW(),'SISTEMA','spid','Indica la modalit&agrave; dell\'accesso SPID: \'no\' = non utilizzato, \'si\' = utilizzato, \'validazione\' = utilizzato in validazione.<br>[si|no|validazione]', 'no', 1);
INSERT INTO `gs_configurazione` VALUES (101,NOW(),NOW(),'SCUOLA','anno_scolastico','Anno scolastico corrente<br>[formato: \'AAAA/AAAA\']','2021/2022',0);
INSERT INTO `gs_configurazione` VALUES (102,NOW(),NOW(),'SCUOLA','anno_inizio','Data dell\'inizio dell\'anno scolastico<br>[formato: \'AAAA-MM-GG\']','2021-09-22',0);
INSERT INTO `gs_configurazione` VALUES (103,NOW(),NOW(),'SCUOLA','anno_fine','Data della fine dell\'anno scolastico<br>[formato: \'AAAA-MM-GG\']','2022-06-12',0);
INSERT INTO `gs_configurazione` VALUES (104,NOW(),NOW(),'SCUOLA','periodo1_nome','Nome del primo periodo dell\'anno scolastico (primo trimestre/quadrimestre)<br>[testo]','Primo Quadrimestre',0);
INSERT INTO `gs_configurazione` VALUES (105,NOW(),NOW(),'SCUOLA','periodo1_fine','Data della fine del primo periodo, da \'anno_inizio\' sino al giorno indicato incluso<br>[formato: \'AAAA-MM-GG\']','2022-01-31',0);
INSERT INTO `gs_configurazione` VALUES (106,NOW(),NOW(),'SCUOLA','periodo2_nome','Nome del secondo periodo dell\'anno scolastico (secondo trimestre/quadrimestre/pentamestre)<br>[testo]','Secondo Quadrimestre',0);
INSERT INTO `gs_configurazione` VALUES (107,NOW(),NOW(),'SCUOLA','periodo2_fine','Data della fine del secondo periodo, da \'periodo1_fine\'+1 sino al giorno indicato incluso (se non &egrave; usato un terzo periodo, la data dovr&agrave; essere uguale a \'anno_fine\')<br>[formato \'AAAA-MM-GG\']','2022-06-12',0);
INSERT INTO `gs_configurazione` VALUES (108,NOW(),NOW(),'SCUOLA','periodo3_nome','Nome del terzo periodo dell\'anno scolastico (terzo trimestre) o vuoto se non usato (se &egrave; usato un terzo periodo, inizia a \'periodo2_fine\'+1 e finisce a \'anno_fine\')<br>[testo]','',0);
INSERT INTO `gs_configurazione` VALUES (109,NOW(),NOW(),'SCUOLA','ritardo_breve','Numero di minuti per la definizione di ritardo breve (non richiede giustificazione)<br>[intero]','10',0);
INSERT INTO `gs_configurazione` VALUES (110,NOW(),NOW(),'SCUOLA','mesi_colloqui','Mesi con i colloqui generali, nei quali non si pu&ograve; prenotare il colloquio individuale<br>[lista separata da virgola dei numeri dei mesi]','12,3',0);
INSERT INTO `gs_configurazione` VALUES (111,NOW(),NOW(),'SCUOLA','notifica_circolari','Ore di notifica giornaliera delle nuove circolari<br>[lista separata da virgola delle ore in formato HH]','15,18,20',0);
INSERT INTO `gs_configurazione` VALUES (112,NOW(),NOW(),'SCUOLA','assenze_dichiarazione','Indica se le assenze online devono inglobare l\'autodichiarazione NO-COVID<br>[booleano, 0 o 1]','0',0);
INSERT INTO `gs_configurazione` VALUES (113,NOW(),NOW(),'SCUOLA','assenze_ore','Indica se le assenze devono essere gestite su base oraria e non giornaliera<br>[booleano, 0 o 1]','0',0);
INSERT INTO `gs_configurazione` VALUES (114,NOW(),NOW(),'SCUOLA','voti_finali_R','Lista dei voti finali per Religione<br>[lista serializzata]','a:8:{s:3:\"min\";i:20;s:3:\"max\";i:27;s:4:\"suff\";i:23;s:3:\"med\";i:23;s:6:\"valori\";s:23:\"20,21,22,23,24,25,26,27\";s:9:\"etichette\";s:36:\"\"NC\",\"\",\"\",\"Suff.\",\"\",\"\",\"\",\"Ottimo\"\";s:4:\"voti\";s:98:\"\"Non Classificato\",\"Insufficiente\",\"Mediocre\",\"Sufficiente\",\"Discreto\",\"Buono\",\"Distinto\",\"Ottimo\"\";s:8:\"votiAbbr\";s:84:\"\"NC\",\"Insufficiente\",\"Mediocre\",\"Sufficiente\",\"Discreto\",\"Buono\",\"Distinto\",\"Ottimo\"\";}',1);
INSERT INTO `gs_configurazione` VALUES (115,NOW(),NOW(),'SCUOLA','voti_finali_E','Lista dei voti finali per Educazione Civica<br>[lista serializzata]','a:8:{s:3:\"min\";i:2;s:3:\"max\";i:10;s:4:\"suff\";i:6;s:3:\"med\";i:5;s:6:\"valori\";s:18:\"2,3,4,5,6,7,8,9,10\";s:9:\"etichette\";s:21:\"\"NC\",3,4,5,6,7,8,9,10\";s:4:\"voti\";s:35:\"\"Non Classificato\",3,4,5,6,7,8,9,10\";s:8:\"votiAbbr\";s:21:\"\"NC\",3,4,5,6,7,8,9,10\";}',1);
INSERT INTO `gs_configurazione` VALUES (116,NOW(),NOW(),'SCUOLA','voti_finali_C','Lista dei voti finali per Condotta<br>[lista serializzata]','a:8:{s:3:\"min\";i:4;s:3:\"max\";i:10;s:4:\"suff\";i:6;s:3:\"med\";i:6;s:6:\"valori\";s:14:\"4,5,6,7,8,9,10\";s:9:\"etichette\";s:17:\"\"NC\",5,6,7,8,9,10\";s:4:\"voti\";s:31:\"\"Non Classificato\",5,6,7,8,9,10\";s:8:\"votiAbbr\";s:17:\"\"NC\",5,6,7,8,9,10\";}',1);
INSERT INTO `gs_configurazione` VALUES (117,NOW(),NOW(),'SCUOLA','voti_finali_N','Lista dei voti finali per le altre materie<br>[lista serializzata]','a:8:{s:3:\"min\";i:0;s:3:\"max\";i:10;s:4:\"suff\";i:6;s:3:\"med\";i:5;s:6:\"valori\";s:22:\"0,1,2,3,4,5,6,7,8,9,10\";s:9:\"etichette\";s:25:\"\"NC\",1,2,3,4,5,6,7,8,9,10\";s:4:\"voti\";s:39:\"\"Non Classificato\",1,2,3,4,5,6,7,8,9,10\";s:8:\"votiAbbr\";s:25:\"\"NC\",1,2,3,4,5,6,7,8,9,10\";}',1);
INSERT INTO `gs_configurazione` VALUES (201,NOW(),NOW(),'ACCESSO','blocco_inizio','Inizio orario del blocco di alcune modalit&agrave; di accesso per i docenti<br>[formato: \'HH:MM\', vuoto se nessun blocco]','',0);
INSERT INTO `gs_configurazione` VALUES (202,NOW(),NOW(),'ACCESSO','blocco_fine','Fine orario del blocco di alcune modalit&agrave; di accesso per i docenti<br>[formato \'HH:MM\', vuoto se nessun blocco]','',0);
INSERT INTO `gs_configurazione` VALUES (203,NOW(),NOW(),'ACCESSO','ip_scuola','Lista degli IP dei router di scuola (accerta che login provenga da dentro l\'istituto)<br>[lista separata da virgole degli IP]','127.0.0.1',0);
INSERT INTO `gs_configurazione` VALUES (204,NOW(),NOW(),'ACCESSO','giorni_festivi_istituto','Indica i giorni festivi settimanali per l\'intero istituto<br>[lista separata da virgole nel formato: 0=domenica, 1=luned&igrave;, ... 6=sabato]','0',0);
INSERT INTO `gs_configurazione` VALUES (205,NOW(),NOW(),'ACCESSO','giorni_festivi_classi','Indica i giorni festivi settimanali per singole classi (per gestire settimana corta anche per solo alcune classi)<br>[lista separata da virgole nel formato \'giorno:classe\'; giorno: 0=domenica, 1=luned&igrave;, ... 6=sabato; classe: 1A, 2A, ...]','',0);


-- TABELLA MENU --
INSERT INTO `gs_menu` VALUES (1,NOW(),NOW(),'help','Aiuto','Guide e supporto per l\'utente',0);
INSERT INTO `gs_menu` VALUES (2,NOW(),NOW(),'user','Utente','Gestione del profilo dell\'utente',0);
INSERT INTO `gs_menu` VALUES (3,NOW(),NOW(),'info','Informazioni','Informazioni sul sito web',0);
INSERT INTO `gs_menu` VALUES (4,NOW(),NOW(),'sistema',NULL,NULL,0);
INSERT INTO `gs_menu` VALUES (5,NOW(),NOW(),'scuola',NULL,NULL,0);
INSERT INTO `gs_menu` VALUES (6,NOW(),NOW(),'ata',NULL,NULL,0);
INSERT INTO `gs_menu` VALUES (7,NOW(),NOW(),'docenti',NULL,NULL,0);
INSERT INTO `gs_menu` VALUES (8,NOW(),NOW(),'alunni',NULL,NULL,0);
INSERT INTO `gs_menu` VALUES (9,NOW(),NOW(),'main','Menu Principale','Apri il menu principale',0);

-- TABELLA OPZIONI MENU --
INSERT INTO `gs_menu_opzione` VALUES (1,1,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (2,1,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (3,1,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (4,1,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (5,1,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (6,1,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (7,1,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Manuale','Scarica il manuale d\'uso dell\'applicazione','',1,1,NULL);
INSERT INTO `gs_menu_opzione` VALUES (8,2,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (9,2,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (10,2,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (11,2,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (12,2,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (13,2,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (14,2,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Profilo','Gestione del profilo dell\'utente','utenti_profilo',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (15,3,NULL,NOW(),NOW(),'NESSUNO','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (16,3,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (17,3,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (18,3,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (19,3,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (20,3,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (21,3,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (22,3,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Note&nbsp;legali','Mostra le note legali','info_noteLegali',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (23,3,NULL,NOW(),NOW(),'NESSUNO','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (24,3,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (25,3,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (26,3,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (27,3,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (28,3,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (29,3,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (30,3,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Privacy','Mostra l\'informativa sulla privacy','info_privacy',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (31,3,NULL,NOW(),NOW(),'NESSUNO','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (32,3,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (33,3,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (34,3,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (35,3,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (36,3,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (37,3,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (38,3,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Cookie','Mostra l\'informativa sui cookie','info_cookie',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (39,3,NULL,NOW(),NOW(),'NESSUNO','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (40,3,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (41,3,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (42,3,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (43,3,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (44,3,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (45,3,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (46,3,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Credits','Mostra i credits','info_credits',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (47,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Parametri','Configura i parametri dell\'applicazione','sistema_parametri',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (48,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Banner','Visualizza un banner sulle pagine principali','sistema_banner',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (49,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Manutenzione','Imposta la modalit&agrave; di manutenzione','sistema_manutenzione',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (50,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Importazione&nbsp;iniziale','Importa i dati dall\'A.S. precedente','sistema_importa',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (51,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Archiviazione','Archivia i registri e i documenti delle classi','sistema_archivia',5,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (52,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','__SEPARATORE__','__SEPARATORE__',NULL,6,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (53,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Alias','Assumi l\'identit&agrave; di un altro utente','sistema_alias',7,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (54,4,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Password','Cambia la password di un utente','sistema_password',8,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (55,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Amministratore','Configura i dati dell\'amministratore','scuola_amministratore',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (57,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Istituto','Configura i dati dell\'Istituto','scuola_istituto',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (56,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Dirigente&nbsp;scolastico','Configura i dati del dirigente scolastico','scuola_dirigente',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (58,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Sedi','Configura i dati delle sedi scolastiche','scuola_sedi',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (59,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Corsi','Configura i corsi di studio','scuola_corsi',5,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (60,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Materie','Configura le materie scolastiche','scuola_materie',6,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (61,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Classi','Configura le classi','scuola_classi',7,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (62,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Festivit&agrave;','Configura il calendario delle festivit&agrave;','scuola_festivita',8,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (63,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Orario','Configura la scansione oraria delle lezioni','scuola_orario',9,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (64,5,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Scrutini','Configura gli scrutini','scuola_scrutini',10,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (65,6,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Importa','Importa da file i dati del personale ATA','ata_importa',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (66,6,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Modifica','Modifica i dati del personale ATA','ata_modifica',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (67,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Importa','Importa da file i dati dei docenti','docenti_importa',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (68,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Modifica','Modifica i dati dei docenti','docenti_modifica',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (69,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Staff','Configura i componenti dello staff della dirigenza','docenti_staff',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (70,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Coordinatori','Configura i coordinatori del Consiglio di Classe','docenti_coordinatori',4,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (71,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Segretari','Configura i segretari del Consiglio di Classe','docenti_segretari',5,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (72,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Cattedre','Configura le cattedre dei docenti','docenti_cattedre',6,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (73,7,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Colloqui','Configura i colloqui dei docenti','docenti_colloqui',7,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (74,8,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Importa','Importa da file i dati degli alunni','alunni_importa',1,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (75,8,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Modifica','Modifica i dati degli alunni','alunni_modifica',2,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (76,8,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Cambio&nbsp;classe','Configura il cambio di classe degli alunni','alunni_classe',3,0,NULL);
INSERT INTO `gs_menu_opzione` VALUES (77,9,NULL,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (78,9,NULL,NOW(),NOW(),'ROLE_ATA','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (79,9,NULL,NOW(),NOW(),'ROLE_ALUNNO','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (80,9,NULL,NOW(),NOW(),'ROLE_GENITORE','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (81,9,NULL,NOW(),NOW(),'ROLE_DOCENTE','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (82,9,NULL,NOW(),NOW(),'ROLE_STAFF','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (83,9,NULL,NOW(),NOW(),'ROLE_PRESIDE','NESSUNA','Home','Pagina principale','login_home',1,0,'home');
INSERT INTO `gs_menu_opzione` VALUES (84,9,4,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Sistema','Gestione generale del sistema',NULL,2,0,'cog');
INSERT INTO `gs_menu_opzione` VALUES (85,9,5,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Scuola','Configurazione dei dati della scuola',NULL,3,0,'school');
INSERT INTO `gs_menu_opzione` VALUES (86,9,6,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','ATA','Gestione del personale ATA',NULL,4,0,'user-tie');
INSERT INTO `gs_menu_opzione` VALUES (87,9,7,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Docenti','Gestione dei docenti',NULL,5,0,'user-graduate');
INSERT INTO `gs_menu_opzione` VALUES (88,9,8,NOW(),NOW(),'ROLE_AMMINISTRATORE','NESSUNA','Alunni','Gestione degli alunni',NULL,6,0,'child');

-- TABELLA UTENTE --
INSERT INTO `gs_utente` (creato, modificato, username, password, email, abilitato, nome, cognome, sesso, numeri_telefono, notifica, ruolo, spid) VALUES (NOW(), NOW(), 'admin', 'NOPASSWORD', 'admin@noemail.local', 1, 'Amministratore', 'Registro', 'M', 'a:0:{}', 'a:0:{}', 'AMM', 0);

-- TABELLA MATERIA --
INSERT INTO `gs_materia` VALUES (1, NOW(), NOW(), 'Supplenza', 'Supplenza', 'U', 'A', 0, 0);
INSERT INTO `gs_materia` VALUES (2, NOW(), NOW(), 'Religione Cattolica o attivit&agrave; alternative', 'Religione / Att. alt.', 'R', 'G', 0, 10);
INSERT INTO `gs_materia` VALUES (3, NOW(), NOW(), 'Educazione civica', 'Ed. civica', 'E', 'N', 1, 800);
INSERT INTO `gs_materia` VALUES (4, NOW(), NOW(), 'Condotta', 'Condotta', 'C', 'N', 1, 900);
INSERT INTO `gs_materia` VALUES (5, NOW(), NOW(), 'Sostegno', 'Sostegno', 'S', 'A', 0, 999);
