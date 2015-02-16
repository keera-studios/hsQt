{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLocale.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QLocale (
 Language, eC, eAbkhazian, eAfan, eAfar, eAfrikaans, eAlbanian, eAmharic, eAssamese, eAymara, eAzerbaijani, eBashkir, eBasque, eBhutani, eBihari, eBislama, eBreton, eBulgarian, eBurmese, eByelorussian, eCambodian, eCatalan, eChinese, eCorsican, eCroatian, eCzech, eDanish, eDutch, eEnglish, eEsperanto, eEstonian, eFaroese, eFijiLanguage, eFinnish, eFrench, eFrisian, eGaelic, eGalician, eGerman, eGreenlandic, eGuarani, eHausa, eHindi, eHungarian, eIcelandic, eIndonesian, eInterlingua, eInterlingue, eInuktitut, eInupiak, eIrish, eItalian, eJavanese, eKashmiri, eKazakh, eKinyarwanda, eKirghiz, eKurdish, eKurundi, eLaothian, eLatvian, eLingala, eLithuanian, eMacedonian, eMalagasy, eMalay, eMaltese, eMaori, eMarathi, eMoldavian, eMongolian, eNauruLanguage, eNepali, eNorwegian, eNorwegianBokmal, eOccitan, ePashto, ePersian, ePortuguese, ePunjabi, eQuechua, eRhaetoRomance, eRomanian, eRussian, eSamoan, eSangho, eSanskrit, eSerbian, eSerboCroatian, eSesotho, eSetswana, eShona, eSindhi, eSinghalese, eSiswati, eSlovak, eSlovenian, eSomali, eSpanish, eSundanese, eSwahili, eSwedish, eTagalog, eTajik, eTatar, eTigrinya, eTongaLanguage, eTsonga, eTurkish, eTurkmen, eTwi, eUigur, eUkrainian, eUrdu, eUzbek, eVolapuk, eWelsh, eWolof, eXhosa, eYiddish, eYoruba, eZhuang, eZulu, eNorwegianNynorsk, eNynorsk, eBosnian, eDivehi, eManx, eCornish, eAkan, eKonkani, eGa, eIgbo, eKamba, eBlin, eGeez, eKoro, eSidamo, eAtsam, eTigre, eJju, eFriulian, eVenda, eEwe, eWalamo, eHawaiian, eTyap, eChewa, eLastLanguage
 , Country, eAnyCountry, eAfghanistan, eAlbania, eAlgeria, eAmericanSamoa, eAndorra, eAngola, eAnguilla, eAntarctica, eAntiguaAndBarbuda, eArgentina, eArmenia, eAruba, eAustralia, eAustria, eAzerbaijan, eBahamas, eBahrain, eBangladesh, eBarbados, eBelarus, eBelgium, eBelize, eBenin, eBermuda, eBhutan, eBolivia, eBosniaAndHerzegowina, eBotswana, eBouvetIsland, eBrazil, eBritishIndianOceanTerritory, eBruneiDarussalam, eBulgaria, eBurkinaFaso, eBurundi, eCambodia, eCameroon, eCanada, eCapeVerde, eCaymanIslands, eCentralAfricanRepublic, eChad, eChile, eChina, eChristmasIsland, eCocosIslands, eColombia, eComoros, eDemocraticRepublicOfCongo, ePeoplesRepublicOfCongo, eCookIslands, eCostaRica, eIvoryCoast, eCroatia, eCuba, eCyprus, eCzechRepublic, eDenmark, eDjibouti, eDominica, eDominicanRepublic, eEastTimor, eEcuador, eEgypt, eElSalvador, eEquatorialGuinea, eEritrea, eEstonia, eEthiopia, eFalklandIslands, eFaroeIslands, eFijiCountry, eFinland, eFrance, eMetropolitanFrance, eFrenchGuiana, eFrenchPolynesia, eFrenchSouthernTerritories, eGabon, eGambia, eGeorgia, eGermany, eGhana, eGibraltar, eGreece, eGreenland, eGrenada, eGuadeloupe, eGuam, eGuatemala, eGuinea, eGuineaBissau, eGuyana, eHaiti, eHeardAndMcDonaldIslands, eHonduras, eHongKong, eHungary, eIceland, eIndia, eIndonesia, eIran, eIraq, eIreland, eIsrael, eItaly, eJamaica, eJapan, eJordan, eKazakhstan, eKenya, eKiribati, eDemocraticRepublicOfKorea, eRepublicOfKorea, eKuwait, eKyrgyzstan, eLatvia, eLebanon, eLesotho, eLiberia, eLibyanArabJamahiriya, eLiechtenstein, eLithuania, eLuxembourg, eMacau, eMacedonia, eMadagascar, eMalawi, eMalaysia, eMaldives, eMali, eMalta, eMarshallIslands, eMartinique, eMauritania, eMauritius, eMayotte, eMexico, eMicronesia, eMoldova, eMonaco, eMongolia, eMontserrat, eMorocco, eMozambique, eNamibia, eNauruCountry, eNepal, eNetherlands, eNetherlandsAntilles, eNewCaledonia, eNewZealand, eNicaragua, eNiger, eNigeria, eNiue, eNorfolkIsland, eNorthernMarianaIslands, eNorway, eOman, ePakistan, ePalau, ePalestinianTerritory, ePanama, ePapuaNewGuinea, eParaguay, ePeru, ePhilippines, ePitcairn, ePoland, ePortugal, ePuertoRico, eQatar, eReunion, eRomania, eRussianFederation, eRwanda, eSaintKittsAndNevis, eStLucia, eStVincentAndTheGrenadines, eSamoa, eSanMarino, eSaoTomeAndPrincipe, eSaudiArabia, eSenegal, eSeychelles, eSierraLeone, eSingapore, eSlovakia, eSlovenia, eSolomonIslands, eSomalia, eSouthAfrica, eSouthGeorgiaAndTheSouthSandwichIslands, eSpain, eSriLanka, eStHelena, eStPierreAndMiquelon, eSudan, eSuriname, eSvalbardAndJanMayenIslands, eSwaziland, eSweden, eSwitzerland, eSyrianArabRepublic, eTaiwan, eTajikistan, eTanzania, eThailand, eTogo, eTokelau, eTongaCountry, eTrinidadAndTobago, eTunisia, eTurkey, eTurkmenistan, eTurksAndCaicosIslands, eTuvalu, eUganda, eUkraine, eUnitedArabEmirates, eUnitedKingdom, eUnitedStates, eUnitedStatesMinorOutlyingIslands, eUruguay, eUzbekistan, eVanuatu, eVaticanCityState, eVenezuela, eVietNam, eBritishVirginIslands, eUSVirginIslands, eWallisAndFutunaIslands, eWesternSahara, eYemen, eYugoslavia, eZambia, eZimbabwe, eSerbiaAndMontenegro, eLastCountry
 , QLocaleFormatType, eLongFormat, eShortFormat
 , NumberOption, NumberOptions, eOmitGroupSeparator, fOmitGroupSeparator, eRejectGroupSeparator, fRejectGroupSeparator
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CLanguage a = CLanguage a
type Language = QEnum(CLanguage Int)

ieLanguage :: Int -> Language
ieLanguage x = QEnum (CLanguage x)

instance QEnumC (CLanguage Int) where
 qEnum_toInt (QEnum (CLanguage x)) = x
 qEnum_fromInt x = QEnum (CLanguage x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Language -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eC :: Language
eC
  = ieLanguage $ 1
eAbkhazian :: Language
eAbkhazian
  = ieLanguage $ 2
eAfan :: Language
eAfan
  = ieLanguage $ 3
eAfar :: Language
eAfar
  = ieLanguage $ 4
eAfrikaans :: Language
eAfrikaans
  = ieLanguage $ 5
eAlbanian :: Language
eAlbanian
  = ieLanguage $ 6
eAmharic :: Language
eAmharic
  = ieLanguage $ 7
instance QeArabic Language where
 eArabic
  = ieLanguage $ 8
instance QeArmenian Language where
 eArmenian
  = ieLanguage $ 9
eAssamese :: Language
eAssamese
  = ieLanguage $ 10
eAymara :: Language
eAymara
  = ieLanguage $ 11
eAzerbaijani :: Language
eAzerbaijani
  = ieLanguage $ 12
eBashkir :: Language
eBashkir
  = ieLanguage $ 13
eBasque :: Language
eBasque
  = ieLanguage $ 14
instance QeBengali Language where
 eBengali
  = ieLanguage $ 15
eBhutani :: Language
eBhutani
  = ieLanguage $ 16
eBihari :: Language
eBihari
  = ieLanguage $ 17
eBislama :: Language
eBislama
  = ieLanguage $ 18
eBreton :: Language
eBreton
  = ieLanguage $ 19
eBulgarian :: Language
eBulgarian
  = ieLanguage $ 20
eBurmese :: Language
eBurmese
  = ieLanguage $ 21
eByelorussian :: Language
eByelorussian
  = ieLanguage $ 22
eCambodian :: Language
eCambodian
  = ieLanguage $ 23
eCatalan :: Language
eCatalan
  = ieLanguage $ 24
eChinese :: Language
eChinese
  = ieLanguage $ 25
eCorsican :: Language
eCorsican
  = ieLanguage $ 26
eCroatian :: Language
eCroatian
  = ieLanguage $ 27
eCzech :: Language
eCzech
  = ieLanguage $ 28
eDanish :: Language
eDanish
  = ieLanguage $ 29
eDutch :: Language
eDutch
  = ieLanguage $ 30
eEnglish :: Language
eEnglish
  = ieLanguage $ 31
eEsperanto :: Language
eEsperanto
  = ieLanguage $ 32
eEstonian :: Language
eEstonian
  = ieLanguage $ 33
eFaroese :: Language
eFaroese
  = ieLanguage $ 34
eFijiLanguage :: Language
eFijiLanguage
  = ieLanguage $ 35
eFinnish :: Language
eFinnish
  = ieLanguage $ 36
eFrench :: Language
eFrench
  = ieLanguage $ 37
eFrisian :: Language
eFrisian
  = ieLanguage $ 38
eGaelic :: Language
eGaelic
  = ieLanguage $ 39
eGalician :: Language
eGalician
  = ieLanguage $ 40
instance QeGeorgian Language where
 eGeorgian
  = ieLanguage $ 41
eGerman :: Language
eGerman
  = ieLanguage $ 42
instance QeGreek Language where
 eGreek
  = ieLanguage $ 43
eGreenlandic :: Language
eGreenlandic
  = ieLanguage $ 44
eGuarani :: Language
eGuarani
  = ieLanguage $ 45
instance QeGujarati Language where
 eGujarati
  = ieLanguage $ 46
eHausa :: Language
eHausa
  = ieLanguage $ 47
instance QeHebrew Language where
 eHebrew
  = ieLanguage $ 48
eHindi :: Language
eHindi
  = ieLanguage $ 49
eHungarian :: Language
eHungarian
  = ieLanguage $ 50
eIcelandic :: Language
eIcelandic
  = ieLanguage $ 51
eIndonesian :: Language
eIndonesian
  = ieLanguage $ 52
eInterlingua :: Language
eInterlingua
  = ieLanguage $ 53
eInterlingue :: Language
eInterlingue
  = ieLanguage $ 54
eInuktitut :: Language
eInuktitut
  = ieLanguage $ 55
eInupiak :: Language
eInupiak
  = ieLanguage $ 56
eIrish :: Language
eIrish
  = ieLanguage $ 57
eItalian :: Language
eItalian
  = ieLanguage $ 58
instance QeJapanese Language where
 eJapanese
  = ieLanguage $ 59
eJavanese :: Language
eJavanese
  = ieLanguage $ 60
instance QeKannada Language where
 eKannada
  = ieLanguage $ 61
eKashmiri :: Language
eKashmiri
  = ieLanguage $ 62
eKazakh :: Language
eKazakh
  = ieLanguage $ 63
eKinyarwanda :: Language
eKinyarwanda
  = ieLanguage $ 64
eKirghiz :: Language
eKirghiz
  = ieLanguage $ 65
instance QeKorean Language where
 eKorean
  = ieLanguage $ 66
eKurdish :: Language
eKurdish
  = ieLanguage $ 67
eKurundi :: Language
eKurundi
  = ieLanguage $ 68
eLaothian :: Language
eLaothian
  = ieLanguage $ 69
instance QeLatin Language where
 eLatin
  = ieLanguage $ 70
eLatvian :: Language
eLatvian
  = ieLanguage $ 71
eLingala :: Language
eLingala
  = ieLanguage $ 72
eLithuanian :: Language
eLithuanian
  = ieLanguage $ 73
eMacedonian :: Language
eMacedonian
  = ieLanguage $ 74
eMalagasy :: Language
eMalagasy
  = ieLanguage $ 75
eMalay :: Language
eMalay
  = ieLanguage $ 76
instance QeMalayalam Language where
 eMalayalam
  = ieLanguage $ 77
eMaltese :: Language
eMaltese
  = ieLanguage $ 78
eMaori :: Language
eMaori
  = ieLanguage $ 79
eMarathi :: Language
eMarathi
  = ieLanguage $ 80
eMoldavian :: Language
eMoldavian
  = ieLanguage $ 81
eMongolian :: Language
eMongolian
  = ieLanguage $ 82
eNauruLanguage :: Language
eNauruLanguage
  = ieLanguage $ 83
eNepali :: Language
eNepali
  = ieLanguage $ 84
eNorwegian :: Language
eNorwegian
  = ieLanguage $ 85
eNorwegianBokmal :: Language
eNorwegianBokmal
  = ieLanguage $ 85
eOccitan :: Language
eOccitan
  = ieLanguage $ 86
instance QeOriya Language where
 eOriya
  = ieLanguage $ 87
ePashto :: Language
ePashto
  = ieLanguage $ 88
ePersian :: Language
ePersian
  = ieLanguage $ 89
instance QePolish Language where
 ePolish
  = ieLanguage $ 90
ePortuguese :: Language
ePortuguese
  = ieLanguage $ 91
ePunjabi :: Language
ePunjabi
  = ieLanguage $ 92
eQuechua :: Language
eQuechua
  = ieLanguage $ 93
eRhaetoRomance :: Language
eRhaetoRomance
  = ieLanguage $ 94
eRomanian :: Language
eRomanian
  = ieLanguage $ 95
eRussian :: Language
eRussian
  = ieLanguage $ 96
eSamoan :: Language
eSamoan
  = ieLanguage $ 97
eSangho :: Language
eSangho
  = ieLanguage $ 98
eSanskrit :: Language
eSanskrit
  = ieLanguage $ 99
eSerbian :: Language
eSerbian
  = ieLanguage $ 100
eSerboCroatian :: Language
eSerboCroatian
  = ieLanguage $ 101
eSesotho :: Language
eSesotho
  = ieLanguage $ 102
eSetswana :: Language
eSetswana
  = ieLanguage $ 103
eShona :: Language
eShona
  = ieLanguage $ 104
eSindhi :: Language
eSindhi
  = ieLanguage $ 105
eSinghalese :: Language
eSinghalese
  = ieLanguage $ 106
eSiswati :: Language
eSiswati
  = ieLanguage $ 107
eSlovak :: Language
eSlovak
  = ieLanguage $ 108
eSlovenian :: Language
eSlovenian
  = ieLanguage $ 109
eSomali :: Language
eSomali
  = ieLanguage $ 110
eSpanish :: Language
eSpanish
  = ieLanguage $ 111
eSundanese :: Language
eSundanese
  = ieLanguage $ 112
eSwahili :: Language
eSwahili
  = ieLanguage $ 113
eSwedish :: Language
eSwedish
  = ieLanguage $ 114
eTagalog :: Language
eTagalog
  = ieLanguage $ 115
eTajik :: Language
eTajik
  = ieLanguage $ 116
instance QeTamil Language where
 eTamil
  = ieLanguage $ 117
eTatar :: Language
eTatar
  = ieLanguage $ 118
instance QeTelugu Language where
 eTelugu
  = ieLanguage $ 119
instance QeThai Language where
 eThai
  = ieLanguage $ 120
instance QeTibetan Language where
 eTibetan
  = ieLanguage $ 121
eTigrinya :: Language
eTigrinya
  = ieLanguage $ 122
eTongaLanguage :: Language
eTongaLanguage
  = ieLanguage $ 123
eTsonga :: Language
eTsonga
  = ieLanguage $ 124
eTurkish :: Language
eTurkish
  = ieLanguage $ 125
eTurkmen :: Language
eTurkmen
  = ieLanguage $ 126
eTwi :: Language
eTwi
  = ieLanguage $ 127
eUigur :: Language
eUigur
  = ieLanguage $ 128
eUkrainian :: Language
eUkrainian
  = ieLanguage $ 129
eUrdu :: Language
eUrdu
  = ieLanguage $ 130
eUzbek :: Language
eUzbek
  = ieLanguage $ 131
instance QeVietnamese Language where
 eVietnamese
  = ieLanguage $ 132
eVolapuk :: Language
eVolapuk
  = ieLanguage $ 133
eWelsh :: Language
eWelsh
  = ieLanguage $ 134
eWolof :: Language
eWolof
  = ieLanguage $ 135
eXhosa :: Language
eXhosa
  = ieLanguage $ 136
eYiddish :: Language
eYiddish
  = ieLanguage $ 137
eYoruba :: Language
eYoruba
  = ieLanguage $ 138
eZhuang :: Language
eZhuang
  = ieLanguage $ 139
eZulu :: Language
eZulu
  = ieLanguage $ 140
eNorwegianNynorsk :: Language
eNorwegianNynorsk
  = ieLanguage $ 141
eNynorsk :: Language
eNynorsk
  = ieLanguage $ 141
eBosnian :: Language
eBosnian
  = ieLanguage $ 142
eDivehi :: Language
eDivehi
  = ieLanguage $ 143
eManx :: Language
eManx
  = ieLanguage $ 144
eCornish :: Language
eCornish
  = ieLanguage $ 145
eAkan :: Language
eAkan
  = ieLanguage $ 146
eKonkani :: Language
eKonkani
  = ieLanguage $ 147
eGa :: Language
eGa
  = ieLanguage $ 148
eIgbo :: Language
eIgbo
  = ieLanguage $ 149
eKamba :: Language
eKamba
  = ieLanguage $ 150
instance QeSyriac Language where
 eSyriac
  = ieLanguage $ 151
eBlin :: Language
eBlin
  = ieLanguage $ 152
eGeez :: Language
eGeez
  = ieLanguage $ 153
eKoro :: Language
eKoro
  = ieLanguage $ 154
eSidamo :: Language
eSidamo
  = ieLanguage $ 155
eAtsam :: Language
eAtsam
  = ieLanguage $ 156
eTigre :: Language
eTigre
  = ieLanguage $ 157
eJju :: Language
eJju
  = ieLanguage $ 158
eFriulian :: Language
eFriulian
  = ieLanguage $ 159
eVenda :: Language
eVenda
  = ieLanguage $ 160
eEwe :: Language
eEwe
  = ieLanguage $ 161
eWalamo :: Language
eWalamo
  = ieLanguage $ 162
eHawaiian :: Language
eHawaiian
  = ieLanguage $ 163
eTyap :: Language
eTyap
  = ieLanguage $ 164
eChewa :: Language
eChewa
  = ieLanguage $ 165
eLastLanguage :: Language
eLastLanguage
  = ieLanguage $ 165

data CCountry a = CCountry a
type Country = QEnum(CCountry Int)

ieCountry :: Int -> Country
ieCountry x = QEnum (CCountry x)

instance QEnumC (CCountry Int) where
 qEnum_toInt (QEnum (CCountry x)) = x
 qEnum_fromInt x = QEnum (CCountry x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Country -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eAnyCountry :: Country
eAnyCountry
  = ieCountry $ 0
eAfghanistan :: Country
eAfghanistan
  = ieCountry $ 1
eAlbania :: Country
eAlbania
  = ieCountry $ 2
eAlgeria :: Country
eAlgeria
  = ieCountry $ 3
eAmericanSamoa :: Country
eAmericanSamoa
  = ieCountry $ 4
eAndorra :: Country
eAndorra
  = ieCountry $ 5
eAngola :: Country
eAngola
  = ieCountry $ 6
eAnguilla :: Country
eAnguilla
  = ieCountry $ 7
eAntarctica :: Country
eAntarctica
  = ieCountry $ 8
eAntiguaAndBarbuda :: Country
eAntiguaAndBarbuda
  = ieCountry $ 9
eArgentina :: Country
eArgentina
  = ieCountry $ 10
eArmenia :: Country
eArmenia
  = ieCountry $ 11
eAruba :: Country
eAruba
  = ieCountry $ 12
eAustralia :: Country
eAustralia
  = ieCountry $ 13
eAustria :: Country
eAustria
  = ieCountry $ 14
eAzerbaijan :: Country
eAzerbaijan
  = ieCountry $ 15
eBahamas :: Country
eBahamas
  = ieCountry $ 16
eBahrain :: Country
eBahrain
  = ieCountry $ 17
eBangladesh :: Country
eBangladesh
  = ieCountry $ 18
eBarbados :: Country
eBarbados
  = ieCountry $ 19
eBelarus :: Country
eBelarus
  = ieCountry $ 20
eBelgium :: Country
eBelgium
  = ieCountry $ 21
eBelize :: Country
eBelize
  = ieCountry $ 22
eBenin :: Country
eBenin
  = ieCountry $ 23
eBermuda :: Country
eBermuda
  = ieCountry $ 24
eBhutan :: Country
eBhutan
  = ieCountry $ 25
eBolivia :: Country
eBolivia
  = ieCountry $ 26
eBosniaAndHerzegowina :: Country
eBosniaAndHerzegowina
  = ieCountry $ 27
eBotswana :: Country
eBotswana
  = ieCountry $ 28
eBouvetIsland :: Country
eBouvetIsland
  = ieCountry $ 29
eBrazil :: Country
eBrazil
  = ieCountry $ 30
eBritishIndianOceanTerritory :: Country
eBritishIndianOceanTerritory
  = ieCountry $ 31
eBruneiDarussalam :: Country
eBruneiDarussalam
  = ieCountry $ 32
eBulgaria :: Country
eBulgaria
  = ieCountry $ 33
eBurkinaFaso :: Country
eBurkinaFaso
  = ieCountry $ 34
eBurundi :: Country
eBurundi
  = ieCountry $ 35
eCambodia :: Country
eCambodia
  = ieCountry $ 36
eCameroon :: Country
eCameroon
  = ieCountry $ 37
eCanada :: Country
eCanada
  = ieCountry $ 38
eCapeVerde :: Country
eCapeVerde
  = ieCountry $ 39
eCaymanIslands :: Country
eCaymanIslands
  = ieCountry $ 40
eCentralAfricanRepublic :: Country
eCentralAfricanRepublic
  = ieCountry $ 41
eChad :: Country
eChad
  = ieCountry $ 42
eChile :: Country
eChile
  = ieCountry $ 43
eChina :: Country
eChina
  = ieCountry $ 44
eChristmasIsland :: Country
eChristmasIsland
  = ieCountry $ 45
eCocosIslands :: Country
eCocosIslands
  = ieCountry $ 46
eColombia :: Country
eColombia
  = ieCountry $ 47
eComoros :: Country
eComoros
  = ieCountry $ 48
eDemocraticRepublicOfCongo :: Country
eDemocraticRepublicOfCongo
  = ieCountry $ 49
ePeoplesRepublicOfCongo :: Country
ePeoplesRepublicOfCongo
  = ieCountry $ 50
eCookIslands :: Country
eCookIslands
  = ieCountry $ 51
eCostaRica :: Country
eCostaRica
  = ieCountry $ 52
eIvoryCoast :: Country
eIvoryCoast
  = ieCountry $ 53
eCroatia :: Country
eCroatia
  = ieCountry $ 54
eCuba :: Country
eCuba
  = ieCountry $ 55
eCyprus :: Country
eCyprus
  = ieCountry $ 56
eCzechRepublic :: Country
eCzechRepublic
  = ieCountry $ 57
eDenmark :: Country
eDenmark
  = ieCountry $ 58
eDjibouti :: Country
eDjibouti
  = ieCountry $ 59
eDominica :: Country
eDominica
  = ieCountry $ 60
eDominicanRepublic :: Country
eDominicanRepublic
  = ieCountry $ 61
eEastTimor :: Country
eEastTimor
  = ieCountry $ 62
eEcuador :: Country
eEcuador
  = ieCountry $ 63
eEgypt :: Country
eEgypt
  = ieCountry $ 64
eElSalvador :: Country
eElSalvador
  = ieCountry $ 65
eEquatorialGuinea :: Country
eEquatorialGuinea
  = ieCountry $ 66
eEritrea :: Country
eEritrea
  = ieCountry $ 67
eEstonia :: Country
eEstonia
  = ieCountry $ 68
eEthiopia :: Country
eEthiopia
  = ieCountry $ 69
eFalklandIslands :: Country
eFalklandIslands
  = ieCountry $ 70
eFaroeIslands :: Country
eFaroeIslands
  = ieCountry $ 71
eFijiCountry :: Country
eFijiCountry
  = ieCountry $ 72
eFinland :: Country
eFinland
  = ieCountry $ 73
eFrance :: Country
eFrance
  = ieCountry $ 74
eMetropolitanFrance :: Country
eMetropolitanFrance
  = ieCountry $ 75
eFrenchGuiana :: Country
eFrenchGuiana
  = ieCountry $ 76
eFrenchPolynesia :: Country
eFrenchPolynesia
  = ieCountry $ 77
eFrenchSouthernTerritories :: Country
eFrenchSouthernTerritories
  = ieCountry $ 78
eGabon :: Country
eGabon
  = ieCountry $ 79
eGambia :: Country
eGambia
  = ieCountry $ 80
eGeorgia :: Country
eGeorgia
  = ieCountry $ 81
eGermany :: Country
eGermany
  = ieCountry $ 82
eGhana :: Country
eGhana
  = ieCountry $ 83
eGibraltar :: Country
eGibraltar
  = ieCountry $ 84
eGreece :: Country
eGreece
  = ieCountry $ 85
eGreenland :: Country
eGreenland
  = ieCountry $ 86
eGrenada :: Country
eGrenada
  = ieCountry $ 87
eGuadeloupe :: Country
eGuadeloupe
  = ieCountry $ 88
eGuam :: Country
eGuam
  = ieCountry $ 89
eGuatemala :: Country
eGuatemala
  = ieCountry $ 90
eGuinea :: Country
eGuinea
  = ieCountry $ 91
eGuineaBissau :: Country
eGuineaBissau
  = ieCountry $ 92
eGuyana :: Country
eGuyana
  = ieCountry $ 93
eHaiti :: Country
eHaiti
  = ieCountry $ 94
eHeardAndMcDonaldIslands :: Country
eHeardAndMcDonaldIslands
  = ieCountry $ 95
eHonduras :: Country
eHonduras
  = ieCountry $ 96
eHongKong :: Country
eHongKong
  = ieCountry $ 97
eHungary :: Country
eHungary
  = ieCountry $ 98
eIceland :: Country
eIceland
  = ieCountry $ 99
eIndia :: Country
eIndia
  = ieCountry $ 100
eIndonesia :: Country
eIndonesia
  = ieCountry $ 101
eIran :: Country
eIran
  = ieCountry $ 102
eIraq :: Country
eIraq
  = ieCountry $ 103
eIreland :: Country
eIreland
  = ieCountry $ 104
eIsrael :: Country
eIsrael
  = ieCountry $ 105
eItaly :: Country
eItaly
  = ieCountry $ 106
eJamaica :: Country
eJamaica
  = ieCountry $ 107
eJapan :: Country
eJapan
  = ieCountry $ 108
eJordan :: Country
eJordan
  = ieCountry $ 109
eKazakhstan :: Country
eKazakhstan
  = ieCountry $ 110
eKenya :: Country
eKenya
  = ieCountry $ 111
eKiribati :: Country
eKiribati
  = ieCountry $ 112
eDemocraticRepublicOfKorea :: Country
eDemocraticRepublicOfKorea
  = ieCountry $ 113
eRepublicOfKorea :: Country
eRepublicOfKorea
  = ieCountry $ 114
eKuwait :: Country
eKuwait
  = ieCountry $ 115
eKyrgyzstan :: Country
eKyrgyzstan
  = ieCountry $ 116
instance QeLao Country where
 eLao
  = ieCountry $ 117
eLatvia :: Country
eLatvia
  = ieCountry $ 118
eLebanon :: Country
eLebanon
  = ieCountry $ 119
eLesotho :: Country
eLesotho
  = ieCountry $ 120
eLiberia :: Country
eLiberia
  = ieCountry $ 121
eLibyanArabJamahiriya :: Country
eLibyanArabJamahiriya
  = ieCountry $ 122
eLiechtenstein :: Country
eLiechtenstein
  = ieCountry $ 123
eLithuania :: Country
eLithuania
  = ieCountry $ 124
eLuxembourg :: Country
eLuxembourg
  = ieCountry $ 125
eMacau :: Country
eMacau
  = ieCountry $ 126
eMacedonia :: Country
eMacedonia
  = ieCountry $ 127
eMadagascar :: Country
eMadagascar
  = ieCountry $ 128
eMalawi :: Country
eMalawi
  = ieCountry $ 129
eMalaysia :: Country
eMalaysia
  = ieCountry $ 130
eMaldives :: Country
eMaldives
  = ieCountry $ 131
eMali :: Country
eMali
  = ieCountry $ 132
eMalta :: Country
eMalta
  = ieCountry $ 133
eMarshallIslands :: Country
eMarshallIslands
  = ieCountry $ 134
eMartinique :: Country
eMartinique
  = ieCountry $ 135
eMauritania :: Country
eMauritania
  = ieCountry $ 136
eMauritius :: Country
eMauritius
  = ieCountry $ 137
eMayotte :: Country
eMayotte
  = ieCountry $ 138
eMexico :: Country
eMexico
  = ieCountry $ 139
eMicronesia :: Country
eMicronesia
  = ieCountry $ 140
eMoldova :: Country
eMoldova
  = ieCountry $ 141
eMonaco :: Country
eMonaco
  = ieCountry $ 142
eMongolia :: Country
eMongolia
  = ieCountry $ 143
eMontserrat :: Country
eMontserrat
  = ieCountry $ 144
eMorocco :: Country
eMorocco
  = ieCountry $ 145
eMozambique :: Country
eMozambique
  = ieCountry $ 146
instance QeMyanmar Country where
 eMyanmar
  = ieCountry $ 147
eNamibia :: Country
eNamibia
  = ieCountry $ 148
eNauruCountry :: Country
eNauruCountry
  = ieCountry $ 149
eNepal :: Country
eNepal
  = ieCountry $ 150
eNetherlands :: Country
eNetherlands
  = ieCountry $ 151
eNetherlandsAntilles :: Country
eNetherlandsAntilles
  = ieCountry $ 152
eNewCaledonia :: Country
eNewCaledonia
  = ieCountry $ 153
eNewZealand :: Country
eNewZealand
  = ieCountry $ 154
eNicaragua :: Country
eNicaragua
  = ieCountry $ 155
eNiger :: Country
eNiger
  = ieCountry $ 156
eNigeria :: Country
eNigeria
  = ieCountry $ 157
eNiue :: Country
eNiue
  = ieCountry $ 158
eNorfolkIsland :: Country
eNorfolkIsland
  = ieCountry $ 159
eNorthernMarianaIslands :: Country
eNorthernMarianaIslands
  = ieCountry $ 160
eNorway :: Country
eNorway
  = ieCountry $ 161
eOman :: Country
eOman
  = ieCountry $ 162
ePakistan :: Country
ePakistan
  = ieCountry $ 163
ePalau :: Country
ePalau
  = ieCountry $ 164
ePalestinianTerritory :: Country
ePalestinianTerritory
  = ieCountry $ 165
ePanama :: Country
ePanama
  = ieCountry $ 166
ePapuaNewGuinea :: Country
ePapuaNewGuinea
  = ieCountry $ 167
eParaguay :: Country
eParaguay
  = ieCountry $ 168
ePeru :: Country
ePeru
  = ieCountry $ 169
ePhilippines :: Country
ePhilippines
  = ieCountry $ 170
ePitcairn :: Country
ePitcairn
  = ieCountry $ 171
ePoland :: Country
ePoland
  = ieCountry $ 172
ePortugal :: Country
ePortugal
  = ieCountry $ 173
ePuertoRico :: Country
ePuertoRico
  = ieCountry $ 174
eQatar :: Country
eQatar
  = ieCountry $ 175
eReunion :: Country
eReunion
  = ieCountry $ 176
eRomania :: Country
eRomania
  = ieCountry $ 177
eRussianFederation :: Country
eRussianFederation
  = ieCountry $ 178
eRwanda :: Country
eRwanda
  = ieCountry $ 179
eSaintKittsAndNevis :: Country
eSaintKittsAndNevis
  = ieCountry $ 180
eStLucia :: Country
eStLucia
  = ieCountry $ 181
eStVincentAndTheGrenadines :: Country
eStVincentAndTheGrenadines
  = ieCountry $ 182
eSamoa :: Country
eSamoa
  = ieCountry $ 183
eSanMarino :: Country
eSanMarino
  = ieCountry $ 184
eSaoTomeAndPrincipe :: Country
eSaoTomeAndPrincipe
  = ieCountry $ 185
eSaudiArabia :: Country
eSaudiArabia
  = ieCountry $ 186
eSenegal :: Country
eSenegal
  = ieCountry $ 187
eSeychelles :: Country
eSeychelles
  = ieCountry $ 188
eSierraLeone :: Country
eSierraLeone
  = ieCountry $ 189
eSingapore :: Country
eSingapore
  = ieCountry $ 190
eSlovakia :: Country
eSlovakia
  = ieCountry $ 191
eSlovenia :: Country
eSlovenia
  = ieCountry $ 192
eSolomonIslands :: Country
eSolomonIslands
  = ieCountry $ 193
eSomalia :: Country
eSomalia
  = ieCountry $ 194
eSouthAfrica :: Country
eSouthAfrica
  = ieCountry $ 195
eSouthGeorgiaAndTheSouthSandwichIslands :: Country
eSouthGeorgiaAndTheSouthSandwichIslands
  = ieCountry $ 196
eSpain :: Country
eSpain
  = ieCountry $ 197
eSriLanka :: Country
eSriLanka
  = ieCountry $ 198
eStHelena :: Country
eStHelena
  = ieCountry $ 199
eStPierreAndMiquelon :: Country
eStPierreAndMiquelon
  = ieCountry $ 200
eSudan :: Country
eSudan
  = ieCountry $ 201
eSuriname :: Country
eSuriname
  = ieCountry $ 202
eSvalbardAndJanMayenIslands :: Country
eSvalbardAndJanMayenIslands
  = ieCountry $ 203
eSwaziland :: Country
eSwaziland
  = ieCountry $ 204
eSweden :: Country
eSweden
  = ieCountry $ 205
eSwitzerland :: Country
eSwitzerland
  = ieCountry $ 206
eSyrianArabRepublic :: Country
eSyrianArabRepublic
  = ieCountry $ 207
eTaiwan :: Country
eTaiwan
  = ieCountry $ 208
eTajikistan :: Country
eTajikistan
  = ieCountry $ 209
eTanzania :: Country
eTanzania
  = ieCountry $ 210
eThailand :: Country
eThailand
  = ieCountry $ 211
eTogo :: Country
eTogo
  = ieCountry $ 212
eTokelau :: Country
eTokelau
  = ieCountry $ 213
eTongaCountry :: Country
eTongaCountry
  = ieCountry $ 214
eTrinidadAndTobago :: Country
eTrinidadAndTobago
  = ieCountry $ 215
eTunisia :: Country
eTunisia
  = ieCountry $ 216
eTurkey :: Country
eTurkey
  = ieCountry $ 217
eTurkmenistan :: Country
eTurkmenistan
  = ieCountry $ 218
eTurksAndCaicosIslands :: Country
eTurksAndCaicosIslands
  = ieCountry $ 219
eTuvalu :: Country
eTuvalu
  = ieCountry $ 220
eUganda :: Country
eUganda
  = ieCountry $ 221
eUkraine :: Country
eUkraine
  = ieCountry $ 222
eUnitedArabEmirates :: Country
eUnitedArabEmirates
  = ieCountry $ 223
eUnitedKingdom :: Country
eUnitedKingdom
  = ieCountry $ 224
eUnitedStates :: Country
eUnitedStates
  = ieCountry $ 225
eUnitedStatesMinorOutlyingIslands :: Country
eUnitedStatesMinorOutlyingIslands
  = ieCountry $ 226
eUruguay :: Country
eUruguay
  = ieCountry $ 227
eUzbekistan :: Country
eUzbekistan
  = ieCountry $ 228
eVanuatu :: Country
eVanuatu
  = ieCountry $ 229
eVaticanCityState :: Country
eVaticanCityState
  = ieCountry $ 230
eVenezuela :: Country
eVenezuela
  = ieCountry $ 231
eVietNam :: Country
eVietNam
  = ieCountry $ 232
eBritishVirginIslands :: Country
eBritishVirginIslands
  = ieCountry $ 233
eUSVirginIslands :: Country
eUSVirginIslands
  = ieCountry $ 234
eWallisAndFutunaIslands :: Country
eWallisAndFutunaIslands
  = ieCountry $ 235
eWesternSahara :: Country
eWesternSahara
  = ieCountry $ 236
eYemen :: Country
eYemen
  = ieCountry $ 237
eYugoslavia :: Country
eYugoslavia
  = ieCountry $ 238
eZambia :: Country
eZambia
  = ieCountry $ 239
eZimbabwe :: Country
eZimbabwe
  = ieCountry $ 240
eSerbiaAndMontenegro :: Country
eSerbiaAndMontenegro
  = ieCountry $ 241
eLastCountry :: Country
eLastCountry
  = ieCountry $ 241

data CQLocaleFormatType a = CQLocaleFormatType a
type QLocaleFormatType = QEnum(CQLocaleFormatType Int)

ieQLocaleFormatType :: Int -> QLocaleFormatType
ieQLocaleFormatType x = QEnum (CQLocaleFormatType x)

instance QEnumC (CQLocaleFormatType Int) where
 qEnum_toInt (QEnum (CQLocaleFormatType x)) = x
 qEnum_fromInt x = QEnum (CQLocaleFormatType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QLocaleFormatType -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eLongFormat :: QLocaleFormatType
eLongFormat
  = ieQLocaleFormatType $ 0
eShortFormat :: QLocaleFormatType
eShortFormat
  = ieQLocaleFormatType $ 1

data CNumberOption a = CNumberOption a
type NumberOption = QEnum(CNumberOption Int)

ieNumberOption :: Int -> NumberOption
ieNumberOption x = QEnum (CNumberOption x)

instance QEnumC (CNumberOption Int) where
 qEnum_toInt (QEnum (CNumberOption x)) = x
 qEnum_fromInt x = QEnum (CNumberOption x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> NumberOption -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

data CNumberOptions a = CNumberOptions a
type NumberOptions = QFlags(CNumberOptions Int)

ifNumberOptions :: Int -> NumberOptions
ifNumberOptions x = QFlags (CNumberOptions x)

instance QFlagsC (CNumberOptions Int) where
 qFlags_toInt (QFlags (CNumberOptions x)) = x
 qFlags_fromInt x = QFlags (CNumberOptions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> NumberOptions -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qFlags_fromInt hint)
           return ()

eOmitGroupSeparator :: NumberOption
eOmitGroupSeparator
  = ieNumberOption $ 1
eRejectGroupSeparator :: NumberOption
eRejectGroupSeparator
  = ieNumberOption $ 2

fOmitGroupSeparator :: NumberOptions
fOmitGroupSeparator
  = ifNumberOptions $ 1
fRejectGroupSeparator :: NumberOptions
fRejectGroupSeparator
  = ifNumberOptions $ 2

