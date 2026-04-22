---
description: Translation Style Sheets
---

<!--
**Content status:** Auto-assembled from product documentation
**Source quality:** B (Moderate (single source type))
**Needs:** needs legacy verification, needs screenshots, needs examples, editorial review
-->

# Translation Style Sheets

### System variables

In addition to the actual keys, special system variables can be used in a dictionary to control the plain text translation and graphical conversion of keys. The system variables start with the prefix \$TR and can be edited or entered like any other key. The system variables are displayed at the end of the key list.

The following variables are defined:

**\$TRMINUS** - controls the translation of the minus character (default: \`to´)

**Example coding:** fS-mS is translated into: Fine sand to medium sand

In the above example, the character \` is used to identify subsequent spaces after the word \`to´. The character itself is not used during translation.

**\$TRCODE** - controls the translation of trailing digits

The definition of the digit and the type of digit is done by adding the desired digit and a letter A, B, C, D, E, F to the variable \$TRCODE.

**Example:** The variables \$TRCODE1A, \$TRCODE1B, \$TRCODE1C to \$TRCODE5A, \$TRCODE5B, \$TRCODE5C are defined for the dictionary \'(SSG) Petrography\'.

The definition of the variables with the digits 1 to 5 allows the digits 1 to 5 to be added to keys and at the same time controls the language translation.

fs1 - very slightly fine sandy

fs2 - slightly fine sandy

fs3 - fine sandy

fs4 - very fine sandy

fs5 - very fine sandy

The differentiation of the variables with the letters A, B, C, D, E, F controls the linguistic translation of quantities or proportions. Which translation is used depends on the labelling of the key in the option field. This is where the setting is made as to how the digit is to be evaluated:

Digit as quantity

\- the variables \$TRCODE(Nr)A control the translation

Digit as a proportion (variant 1)

\- the variables \$TRCODE(Nr)B control the translation

Digit as a proportion (variant 2)

\- the variables \$TRCODE(No)C control the translation

Digit as with quantity

\- the variables \$TRCODE(Nr)D control the translation

Digit as quality

\- the variables \$TRCODE(Nr)E control the translation

digit as quantity

\- the variables \$TRCODE(Nr)F control the translation

**\$TRNUMB** - controls the evaluation of secondary components for signature formation and the addition of special characters to keys in the standard translation. A variable is reserved for each digit (1 to 5 in the example above).

\$TRNUMB1 to \$TRNUMB5

The specification in the plain text of the variable controls the signature creation (see also chapter [Fill pattern system](fill-patterns-and-symbols.md))

The specification in the \'Standard text\' input field can contain characters that are to be output as standard text (e.g. DIN) for the extension of the keys with numerical data.

**Example coding:**

fs2 weak fine sandy

The variable \$TRNUMB2 contains the character \'

When translating the coding into DIN form (as one of the possible standards), the standard text for the key fs is first determined (in this case identical to the key =fs) and then extended with the character \'. The result of the translation is thus

fs\' <!-- src: help/10/3177 -->

### Standards

The GeoDin dictionaries can be managed **multilingually and for multiple standards**, i.e. for each key of a dictionary

1.  the plain text translation of the key - multilingual

2.  the signature intensity, signature type and standard text - multiple standards

can be stored.

Translations of the keys can be entered in the long texts via . These are then used in the interface and graphics depending on the set UI language.

Different signatures or similar can be managed in a dictionary using additional standards .

The display type and/or the translation type can be selected for the graphical display of the drilling columns, expansion plans, variable text elements, etc. This makes it possible, for example, to display a drilling column that has been entered with the DIN abbreviations, both with Dutch labelling and with the corresponding signatures of the NEN standard.

However, the multilingualism of the GeoDin dictionaries can also be used for different interpretations of one and the same key. For these purposes, for example, the \"languages\" USER1 to USER4 can be used to define different signatures or plain texts while retaining the originals.

Each dictionary initially has a **predefined standard** that cannot be changed. When a dictionary is opened, the standard is displayed as the first column in the grid, followed by all other existing standards.

To add a new standard, use the **language / standard** button  in the top toolbar. To add the standard, click on the icon  **Add language / standard** and select the desired standard in the dialogue that opens and close the dialogue by clicking on \<OK\>.

The back translations for the respective keys in the various languages can be entered directly in the plain text columns. The desired signature can also be set individually for each standard for the key. The signature table used for this is the signature table set for the standard.

The following signature tables are assigned to the standards:

**Standard Signature table**

DIN (german) DIN4023

FRE (french) INTFRE

NEN (nederlands) NENNORM

UIS (german) UISNORM

ÖNORM (austrian) OENORM

INT (english) INTENG

USER 1 USERSGN1

USER 2 USERSGN2

USER 3 USERSGN3

USER 4 USERSGN4

***Note:*** *The installation of the GeoDin system does not contain all of the signature tables listed above, as there are no defaults for tables USERSGN1 to USERSGN4, for example. If this is the case, the error message \"File \...GeoDin\\SYSLIB\\USERSGN1.SGN does not exist\" appears when the corresponding standard is selected. To create a signature table USERSGN1.SGN, for example, copy one of the files in the SOURCE folder, e.g. the file DIN4023.SGA, to the name USERSGN1.SGA. The signature table now appears in the Object Manager below the signatures and can be opened using the* ***\"Edit\"*** *method. Select the* ***Create*** *button. The file USERSGN1.SGN is created.*

**Example:**

For the key \*M (metamorphite) in the dictionary \"(SSG) Petrography\", the translation \"METAMORPHIC ROCK\" was entered for the language \"English\". In addition, the corresponding signature from the INTENG signature table was entered:

For example, the following options are available for the graphic and textual representation.

Fig. 1 - Display of the signature and text in accordance with DIN

Fig. 2 - Display of the signature in accordance with DIN, labelling in English

Fig. 3 - Representation of the signature in accordance with British Standards, labelling in English

 <!-- src: help/10/3180 -->
