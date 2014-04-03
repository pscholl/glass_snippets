.class public final Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YouTubeVideo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    }
.end annotation


# static fields
.field public static final ALLOWED_COUNTRY_FIELD_NUMBER:I = 0x7

.field public static final BLOCKED_COUNTRY_FIELD_NUMBER:I = 0x6

.field public static final DURATION_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final THUMBNAIL_FIELD_NUMBER:I = 0x5

.field public static final TITLE_FIELD_NUMBER:I = 0x3

.field public static final WATCH_URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private allowedCountry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blockedCountry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private duration_:I

.field private hasDuration:Z

.field private hasId:Z

.field private hasTitle:Z

.field private hasWatchUrl:Z

.field private id_:Ljava/lang/String;

.field private thumbnail_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private watchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2750
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 2944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 2961
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 2977
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    .line 3010
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    .line 3043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    .line 3116
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    .line 2750
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3228
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3222
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    return-object v0
.end method


# virtual methods
.method public addAllowedCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 3060
    if-nez p1, :cond_0

    .line 3061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3063
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    .line 3066
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3067
    return-object p0
.end method

.method public addBlockedCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 3027
    if-nez p1, :cond_0

    .line 3028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3030
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    .line 3033
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3034
    return-object p0
.end method

.method public addThumbnail(Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2994
    if-nez p1, :cond_0

    .line 2995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2997
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    .line 3000
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3001
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearId()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3076
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearWatchUrl()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3077
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearTitle()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3078
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearDuration()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3079
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearThumbnail()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3080
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearBlockedCountry()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3081
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->clearAllowedCountry()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 3082
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    .line 3083
    return-object p0
.end method

.method public clearAllowedCountry()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 3070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    .line 3071
    return-object p0
.end method

.method public clearBlockedCountry()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 3037
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    .line 3038
    return-object p0
.end method

.method public clearDuration()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2970
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasDuration:Z

    .line 2971
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 2972
    return-object p0
.end method

.method public clearId()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasId:Z

    .line 2920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 2921
    return-object p0
.end method

.method public clearThumbnail()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 3004
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    .line 3005
    return-object p0
.end method

.method public clearTitle()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasTitle:Z

    .line 2954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 2955
    return-object p0
.end method

.method public clearWatchUrl()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1

    .prologue
    .line 2936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasWatchUrl:Z

    .line 2937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 2938
    return-object p0
.end method

.method public getAllowedCountry(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAllowedCountryCount()I
    .locals 1

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedCountryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    return-object v0
.end method

.method public getBlockedCountry(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBlockedCountryCount()I
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlockedCountryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3119
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    if-gez v0, :cond_0

    .line 3121
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getSerializedSize()I

    .line 3123
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 2962
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 3128
    const/4 v3, 0x0

    .line 3129
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3130
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3133
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasWatchUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3134
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getWatchUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3137
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3138
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3141
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasDuration()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3142
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getDuration()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 3145
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getThumbnailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 3146
    .local v1, element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 3150
    .end local v1           #element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    :cond_4
    const/4 v0, 0x0

    .line 3151
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getBlockedCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3152
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 3155
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 3156
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getBlockedCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3159
    const/4 v0, 0x0

    .line 3160
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getAllowedCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3161
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 3164
    .end local v1           #element:Ljava/lang/String;
    :cond_6
    add-int/2addr v3, v0

    .line 3165
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getAllowedCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3167
    iput v3, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->cachedSize:I

    .line 3168
    return v3
.end method

.method public getThumbnail(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .parameter "index"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    return-object v0
.end method

.method public getThumbnailCount()I
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getThumbnailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 2963
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasDuration:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2912
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasId:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 2946
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasTitle:Z

    return v0
.end method

.method public hasWatchUrl()Z
    .locals 1

    .prologue
    .line 2929
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasWatchUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3087
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3177
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3181
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3182
    :sswitch_0
    return-object p0

    .line 3187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->setId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3191
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->setWatchUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3195
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->setTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3199
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->setDuration(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3203
    :sswitch_5
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    .line 3204
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3205
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->addThumbnail(Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3209
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->addBlockedCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3213
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->addAllowedCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    goto :goto_0

    .line 3177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2747
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    move-result-object v0

    return-object v0
.end method

.method public setAllowedCountry(ILjava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3053
    if-nez p2, :cond_0

    .line 3054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->allowedCountry_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3057
    return-object p0
.end method

.method public setBlockedCountry(ILjava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3020
    if-nez p2, :cond_0

    .line 3021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3023
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->blockedCountry_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3024
    return-object p0
.end method

.method public setDuration(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasDuration:Z

    .line 2966
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->duration_:I

    .line 2967
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasId:Z

    .line 2915
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->id_:Ljava/lang/String;

    .line 2916
    return-object p0
.end method

.method public setThumbnail(ILcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2987
    if-nez p2, :cond_0

    .line 2988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2990
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->thumbnail_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2991
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasTitle:Z

    .line 2949
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->title_:Ljava/lang/String;

    .line 2950
    return-object p0
.end method

.method public setWatchUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasWatchUrl:Z

    .line 2932
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->watchUrl_:Ljava/lang/String;

    .line 2933
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3093
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3094
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3096
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasWatchUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3097
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getWatchUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3099
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3100
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3102
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->hasDuration()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3103
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getDuration()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3105
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getThumbnailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 3106
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3108
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getBlockedCountryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3109
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 3111
    .end local v0           #element:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;->getAllowedCountryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3112
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 3114
    .end local v0           #element:Ljava/lang/String;
    :cond_6
    return-void
.end method
