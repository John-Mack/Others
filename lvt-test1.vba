Sub LaverVoiture()
    Dim wsSource As Worksheet, wsDest As Worksheet, ws As Worksheet
    Dim btn As Object, ligne As Long
    Dim nextRowDest As Long
    Dim nextRow As Long
Dim newBtn As Button
   
    
    
    
    

    ' Définir les feuilles
    Set wsSource = ThisWorkbook.Sheets("Lave-Voiture")
    Set wsDest = ThisWorkbook.Sheets("Lave-Voiture")
''''' Set wsDest = ThisWorkbook.Sheets("Historique Lave-Voiture")


    ' Identifier le bouton qui a été cliqué
    Set btn = wsSource.Buttons(Application.Caller)
    ligne = btn.TopLeftCell.Row ' Ligne correspondante au bouton


    ' Trouver la prochaine ligne vide dans la première page
    nextRowDest = wsDest.Cells(wsDest.Rows.Count, 1).End(xlUp).Row + 1
    If nextRowDest = 1 And IsEmpty(wsDest.Cells(1, 1)) Then nextRowDest = 1

    ' Copier uniquement les valeurs et formats vers la feuille d'historique
    With wsSource
        wsDest.Rows(nextRowDest).Value = .Rows(ligne).Value ' Copie les valeurs
    End With






' Référence vers la première feuille
    Set ws = ThisWorkbook.Sheets("Lave-Voiture")

    ' Ajouter un bouton "Fermer l'Avis" dans la colonne H
    Set newBtn = ws.Buttons.Add(Cells(nextRow, 5).Left, Cells(nextRow, 5).Top, 121, 25)
    With newBtn
        .OnAction = "LaverVoiture" ' Associer la macro de fermeture à ce bouton
        .Caption = "Voiture lavé"  ' Texte du bouton
        .Name = "btnLavé_" & nextRow ' Nom unique pour chaque bouton
    End With
    







    ' Ajouter l'heure de fermeture dans la colonne H de l'historique
'''''  ' wsDest.Cells(nextRowDest, 8).Value = Format(Now, "dd/mm/yyyy hh:mm:ss")

'''' Supprimer le bouton et la ligne de l'avis original
   ' btn.Delete ' Supprime le bouton
     wsSource.Rows(ligne).Delete
    
    ' Corrige la taille des cellule excel
    Rows("2:100").RowHeight = 25
    Rows("2:100").Font.Size = 11

    MsgBox "Avis Lavage de Voiture mis-à-jour correctement.", vbInformation
End Sub

    ' Remplir la TextBox avec la date et l'heure actuelles
    ' Me.txtDateHeure.Value = Format(Now, "dd/mm/yyyy hh:mm:ss")
    
    ' Remplir la TextBox pour l'email
Rem include in func to call macro ObtenirEmailUtilisateur under   Me.txtEmail.Value = ObtenirEmailUtilisateur()
    
   ' Private Function ObtenirEmailUtilisateur() As String
   ' Dim email As String
   '  ' Exemple pour obtenir un email à partir du nom d'utilisateur Windows
   ' email = Environ("UserName")
   ' ObtenirEmailUtilisateur = email
   ' End Function
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
