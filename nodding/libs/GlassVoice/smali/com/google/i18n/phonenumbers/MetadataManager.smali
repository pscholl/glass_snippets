.class Lcom/google/i18n/phonenumbers/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field private static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field private static final LOGGER:Ljava/util/logging/Logger; = null

.field private static final SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto"

.field private static final callingCodeToAlternateFormatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final countryCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final regionCodeToShortNumberMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/i18n/phonenumbers/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/google/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    .line 61
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAlternateFormatsForCountry(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .parameter "countryCallingCode"

    .prologue
    .line 95
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 98
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/MetadataManager;->loadAlternateFormatsMetadataFromFile(I)V

    .line 102
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2
    .parameter "regionCode"

    .prologue
    .line 130
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 133
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/MetadataManager;->loadShortNumberMetadataFromFile(Ljava/lang/String;)V

    .line 137
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getShortNumberMetadataSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeSet:Ljava/util/Set;

    return-object v0
.end method

.method private static loadAlternateFormatsMetadataFromFile(I)V
    .locals 10
    .parameter "countryCallingCode"

    .prologue
    .line 77
    const-class v7, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 79
    .local v6, source:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 81
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 83
    .local v0, alternateFormats:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v0, v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 84
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 85
    .local v5, metadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    .end local v0           #alternateFormats:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #metadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 88
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 92
    .end local v1           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 90
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v0       #alternateFormats:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :cond_0
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 91
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 90
    .end local v0           #alternateFormats:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    throw v7

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 87
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static loadShortNumberMetadataFromFile(Ljava/lang/String;)V
    .locals 10
    .parameter "regionCode"

    .prologue
    .line 107
    const-class v7, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 109
    .local v6, source:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 111
    .local v2, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v5, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 113
    .local v5, shortNumberMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v5, v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 114
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 115
    .local v4, metadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->regionCodeToShortNumberMetadataMap:Ljava/util/Map;

    invoke-interface {v7, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #metadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5           #shortNumberMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 118
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/google/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 122
    .end local v0           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 120
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    .restart local v5       #shortNumberMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :cond_0
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 121
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 120
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #shortNumberMetadata:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    throw v7

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 117
    :catch_1
    move-exception v0

    goto :goto_1
.end method
