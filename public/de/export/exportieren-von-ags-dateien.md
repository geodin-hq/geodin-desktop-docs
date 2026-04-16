# Exportieren von AGS-Dateien

## Einführung

GeoDin ermöglicht Ihnen den Export von AGS-Dateien gemäß den Standards AGS 4.0.4 und AGS 4.1.1. Wir unterstützen AGS-Exporte aus der geotechnischen Objektart _G1 Location_.

### Unterstützte AGS-Gruppen

Wir unterstützen derzeit die folgenden AGS-Gruppen:

| **Gruppe** | **Beschreibung**                                           |
| ---------- | ---------------------------------------------------------- |
| ABBR       | Abbreviation Definitions                                   |
| CONG       | Consolidation Tests - General                              |
| CONS       | Consolidation Tests - Data                                 |
| CORE       | Coring Information                                         |
| DETL       | Stratum Detail Descriptions                                |
| DICT       | User Defined Groups and Headings                           |
| ESCG       | Effective Stress Consolidation Tests - General             |
| ESCT       | Effective Stress Consolidation Tests - Data                |
| GCHM       | Geotechnical Chemistry Testing                             |
| GEOL       | Field Geological Descriptions                              |
| GRAG       | Particle Size Distribution Analysis - General              |
| GRAT       | Particle Size Distribution Analysis - Data                 |
| ISPT       | Standard Penetration Test Results                          |
| IVAN       | In Situ Vane Tests                                         |
| LDEN       | Density Tests                                              |
| LLPL       | Liquid and Plastic Limit Tests                             |
| LNMC       | Water/Moisture Content Tests                               |
| LOCA       | Location Details                                           |
| LPDN       | Particle Density Tests                                     |
| LPEN       | Laboratory Hand Penetrometer Tests                         |
| LRES       | Laboratory Resistivity Tests                               |
| LSLT       | Shrinkage Limit Tests                                      |
| LVAN       | Laboratory Vane Tests                                      |
| PROJ       | Project Information                                        |
| PTST       | Laboratory Permeability Tests                              |
| RDEN       | Rock Porosity and Density Tests                            |
| RELD       | Relative Density Tests                                     |
| RPLT       | Point Load Testing                                         |
| RUCS       | Rock Uniaxial Compressive Strength and Deformability Tests |
| SAMP       | Sample Information                                         |
| SHBG       | Shear Box Testing - General                                |
| SHBT       | Shear Box Testing - Data                                   |
| TYPE       | Definition of Data Types                                   |
| TREG       | Triaxial Tests - Effective Stress - General                |
| TRET       | Triaxial Tests - Effective Stress - Data                   |
| TRIG       | Triaxial Tests - Total Stress - General                    |
| TRIT       | Triaxial Tests - Total Stress - Data                       |
| UNIT       | Definition of Units                                        |

## Schritt-für-Schritt-Anleitung

### 1. Auswahl der Bohrungen für den Export

Beginnen Sie mit der Auswahl der Bohrungen, die Sie exportieren möchten. Sie können aus folgenden Bereichen wählen:

* **Alle Objekte**
* **Location**
* **Eine Gruppe**
* **Eine Abfrage**

<figure><img src="../.gitbook/assets/image (15).png" alt=""><figcaption><p>Auswahl der Bohrungen</p></figcaption></figure>

### 2. Öffnen der Methode _Publizieren und Exportieren_

Nachdem Sie die Bohrlöcher ausgewählt haben, navigieren Sie zur Methode _Publizieren und Exportieren_.

<figure><img src="../.gitbook/assets/image (16).png" alt=""><figcaption><p>Publizieren und Exportieren</p></figcaption></figure>

### 3. Auswahl von _AGS-Daten exportieren_

Wählen Sie innerhalb der Methode _Publizieren und Exportieren_ die Option _AGS-Daten exportieren_.

<figure><img src="../.gitbook/assets/image (17).png" alt=""><figcaption><p>AGS-Daten exportieren</p></figcaption></figure>

### 4. Definition des AGS-Standards

Wählen Sie im Exportbereich den AGS-Standard aus, den Sie verwenden möchten, indem Sie die entsprechende AED-Datei auswählen.

<figure><img src="../.gitbook/assets/image (18).png" alt=""><figcaption><p>AGS Standard auswählen</p></figcaption></figure>

### 5. Angaben für die AGS-Gruppe _TRAN_

Geben Sie im Abschnitt _TRAN_ alle notwendigen Details für die AGS-Gruppe _TRAN_ ein.

<figure><img src="../.gitbook/assets/image (19).png" alt=""><figcaption><p>TRAN Gruppe</p></figcaption></figure>

### 6. Benutzerdefinierte Gruppen

Um bestimmte Gruppen vom AGS-Export auszuschließen, aktivieren Sie die Option _Benutzerdefinierte Gruppen_.

<figure><img src="../.gitbook/assets/image (20).png" alt=""><figcaption><p>Benutzerdefinierte Gruppen</p></figcaption></figure>

### 7. Ausführen des Exports

Nachdem Sie Ihre Auswahl getroffen haben, klicken Sie auf die Schaltfläche _Ausführen_, um den AGS-Export durchzuführen.

<figure><img src="../.gitbook/assets/image (21).png" alt=""><figcaption><p>Export</p></figcaption></figure>

## Zusätzliche Optionen

### Exportieren von Objekten in separate AGS-Dateien

Durch Aktivieren der Option _Objekte in einzelne AGS-Dateien exportieren_ wird für jede Bohrung (Objekt) eine AGS-Datei erstellt.

<figure><img src="../.gitbook/assets/image (22).png" alt=""><figcaption><p><em>Objekte in einzelne AGS-Dateien exportieren</em></p></figcaption></figure>

### Auswahl des Erfassungsstandards

Wenn Sie nach einem bestimmten Erfassungsstandard exportieren möchten, wählen Sie Ihren gewünschten Standard aus dem Dropdown-Menü. Stellen Sie sicher, dass eine lithologische Beschreibung gemäß dem ausgewählten Erfassungsstandard im Objekt verfügbar ist. Standardmäßig wird das zuerst gefundene Schichtenverzeichnis verwendet.

<figure><img src="../.gitbook/assets/image (23).png" alt=""><figcaption></figcaption></figure>
