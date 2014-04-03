.class final Lcom/google/glass/voice/VoiceConfig$1;
.super Ljava/lang/Object;
.source "VoiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/voice/VoiceConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;
    .locals 18
    .parameter "in"

    .prologue
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, name:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig$Type;->values()[Lcom/google/glass/voice/VoiceConfig$Type;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    aget-object v3, v1, v17

    .line 444
    .local v3, type:Lcom/google/glass/voice/VoiceConfig$Type;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v1, v0, :cond_0

    const/4 v4, 0x1

    .line 445
    .local v4, shouldSaveAudio:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, customPhrases:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, customTags:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    .local v8, disambiguationCommandType:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 451
    .local v15, systemConfigNames:[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v16, systemConfigs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/VoiceConfig;>;"
    move-object v10, v15

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_1

    aget-object v14, v10, v12

    .line 453
    .local v14, n:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/voice/VoiceConfig;

    .line 454
    .local v11, config:Lcom/google/glass/voice/VoiceConfig;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 444
    .end local v4           #shouldSaveAudio:Z
    .end local v6           #customPhrases:[Ljava/lang/String;
    .end local v7           #customTags:[Ljava/lang/String;
    .end local v8           #disambiguationCommandType:I
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v11           #config:Lcom/google/glass/voice/VoiceConfig;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #n:Ljava/lang/String;
    .end local v15           #systemConfigNames:[Ljava/lang/String;
    .end local v16           #systemConfigs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/VoiceConfig;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 456
    .restart local v4       #shouldSaveAudio:Z
    .restart local v6       #customPhrases:[Ljava/lang/String;
    .restart local v7       #customTags:[Ljava/lang/String;
    .restart local v8       #disambiguationCommandType:I
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    .restart local v15       #systemConfigNames:[Ljava/lang/String;
    .restart local v16       #systemConfigs:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/VoiceConfig;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, literal:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v1, v0, :cond_2

    array-length v1, v6

    if-nez v1, :cond_2

    array-length v1, v7

    if-nez v1, :cond_2

    const/high16 v1, -0x8000

    if-ne v8, v1, :cond_2

    .line 461
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 465
    :goto_2
    return-object v1

    .line 464
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/glass/voice/VoiceConfig;

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/glass/voice/VoiceConfig;

    .line 465
    .local v5, systemConfigArray:[Lcom/google/glass/voice/VoiceConfig;
    new-instance v1, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 477
    new-array v0, p1, [Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->newArray(I)[Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method
