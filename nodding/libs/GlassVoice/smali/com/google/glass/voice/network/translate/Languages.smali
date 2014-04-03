.class public final Lcom/google/glass/voice/network/translate/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# static fields
.field private static final DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

.field private static final DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 14
    const/16 v4, 0x42

    new-array v4, v4, [[Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "af"

    aput-object v6, v5, v8

    const-string v6, "Afrikaans"

    aput-object v6, v5, v9

    aput-object v5, v4, v8

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "sq"

    aput-object v6, v5, v8

    const-string v6, "Albanian"

    aput-object v6, v5, v9

    aput-object v5, v4, v9

    new-array v5, v10, [Ljava/lang/String;

    const-string v6, "ar"

    aput-object v6, v5, v8

    const-string v6, "Arabic"

    aput-object v6, v5, v9

    aput-object v5, v4, v10

    const/4 v5, 0x3

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hy"

    aput-object v7, v6, v8

    const-string v7, "Armenian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "az"

    aput-object v7, v6, v8

    const-string v7, "Azerbaijani"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "eu"

    aput-object v7, v6, v8

    const-string v7, "Basque"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "be"

    aput-object v7, v6, v8

    const-string v7, "Belarusian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "bn"

    aput-object v7, v6, v8

    const-string v7, "Bengali"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "bg"

    aput-object v7, v6, v8

    const-string v7, "Bulgarian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ca"

    aput-object v7, v6, v8

    const-string v7, "Catalan"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "zh-CN"

    aput-object v7, v6, v8

    const-string v7, "Chinese (Simplified)"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "zh-TW"

    aput-object v7, v6, v8

    const-string v7, "Chinese (Traditional)"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hr"

    aput-object v7, v6, v8

    const-string v7, "Croatian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "cs"

    aput-object v7, v6, v8

    const-string v7, "Czech"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "da"

    aput-object v7, v6, v8

    const-string v7, "Danish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0xf

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "nl"

    aput-object v7, v6, v8

    const-string v7, "Dutch"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x10

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "en"

    aput-object v7, v6, v8

    const-string v7, "English"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x11

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "eo"

    aput-object v7, v6, v8

    const-string v7, "Esperanto"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x12

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "et"

    aput-object v7, v6, v8

    const-string v7, "Estonian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x13

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "tl"

    aput-object v7, v6, v8

    const-string v7, "Filipino"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x14

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fi"

    aput-object v7, v6, v8

    const-string v7, "Finnish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x15

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fr"

    aput-object v7, v6, v8

    const-string v7, "French"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x16

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "gl"

    aput-object v7, v6, v8

    const-string v7, "Galician"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x17

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ka"

    aput-object v7, v6, v8

    const-string v7, "Georgian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x18

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "de"

    aput-object v7, v6, v8

    const-string v7, "German"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x19

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "el"

    aput-object v7, v6, v8

    const-string v7, "Greek"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "gu"

    aput-object v7, v6, v8

    const-string v7, "Gujarati"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ht"

    aput-object v7, v6, v8

    const-string v7, "Haitian Creole"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "iw"

    aput-object v7, v6, v8

    const-string v7, "Hebrew"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hi"

    aput-object v7, v6, v8

    const-string v7, "Hindi"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "hu"

    aput-object v7, v6, v8

    const-string v7, "Hungarian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "is"

    aput-object v7, v6, v8

    const-string v7, "Icelandic"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x20

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "id"

    aput-object v7, v6, v8

    const-string v7, "Indonesian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x21

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ga"

    aput-object v7, v6, v8

    const-string v7, "Irish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x22

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "it"

    aput-object v7, v6, v8

    const-string v7, "Italian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x23

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ja"

    aput-object v7, v6, v8

    const-string v7, "Japanese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x24

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "kn"

    aput-object v7, v6, v8

    const-string v7, "Kannada"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x25

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ko"

    aput-object v7, v6, v8

    const-string v7, "Korean"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x26

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lo"

    aput-object v7, v6, v8

    const-string v7, "Lao"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x27

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "la"

    aput-object v7, v6, v8

    const-string v7, "Latin"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x28

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lv"

    aput-object v7, v6, v8

    const-string v7, "Latvian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x29

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "lt"

    aput-object v7, v6, v8

    const-string v7, "Lithuanian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "mk"

    aput-object v7, v6, v8

    const-string v7, "Macedonian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ms"

    aput-object v7, v6, v8

    const-string v7, "Malay"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "mt"

    aput-object v7, v6, v8

    const-string v7, "Maltese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "no"

    aput-object v7, v6, v8

    const-string v7, "Norwegian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "fa"

    aput-object v7, v6, v8

    const-string v7, "Persian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "pl"

    aput-object v7, v6, v8

    const-string v7, "Polish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x30

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "pt"

    aput-object v7, v6, v8

    const-string v7, "Portuguese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x31

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ro"

    aput-object v7, v6, v8

    const-string v7, "Romanian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x32

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ru"

    aput-object v7, v6, v8

    const-string v7, "Russian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x33

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sr"

    aput-object v7, v6, v8

    const-string v7, "Serbian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x34

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sk"

    aput-object v7, v6, v8

    const-string v7, "Slovak"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x35

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sl"

    aput-object v7, v6, v8

    const-string v7, "Slovenian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x36

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "es"

    aput-object v7, v6, v8

    const-string v7, "Spanish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x37

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sw"

    aput-object v7, v6, v8

    const-string v7, "Swahili"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x38

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "sv"

    aput-object v7, v6, v8

    const-string v7, "Swedish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x39

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ta"

    aput-object v7, v6, v8

    const-string v7, "Tamil"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3a

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "te"

    aput-object v7, v6, v8

    const-string v7, "Telugu"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3b

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "th"

    aput-object v7, v6, v8

    const-string v7, "Thai"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3c

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "tr"

    aput-object v7, v6, v8

    const-string v7, "Turkish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3d

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "uk"

    aput-object v7, v6, v8

    const-string v7, "Ukrainian"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3e

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "ur"

    aput-object v7, v6, v8

    const-string v7, "Urdu"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x3f

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "vi"

    aput-object v7, v6, v8

    const-string v7, "Vietnamese"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x40

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "cy"

    aput-object v7, v6, v8

    const-string v7, "Welsh"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    const/16 v5, 0x41

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "yi"

    aput-object v7, v6, v8

    const-string v7, "Yiddish"

    aput-object v7, v6, v9

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/glass/voice/network/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    .line 93
    sget-object v0, Lcom/google/glass/voice/network/translate/Languages;->DEFAULT_TO_LANGUAGES_SPEC:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 94
    .local v2, l:[Ljava/lang/String;
    sget-object v4, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    aget-object v5, v2, v9

    aget-object v6, v2, v8

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v2           #l:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "longName"

    .prologue
    .line 102
    sget-object v0, Lcom/google/glass/voice/network/translate/Languages;->DISPLAY_NAME_TO_SHORT_NAME_LANGUAGE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
