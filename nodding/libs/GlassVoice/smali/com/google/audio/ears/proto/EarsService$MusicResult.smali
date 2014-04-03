.class public final Lcom/google/audio/ears/proto/EarsService$MusicResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicResult"
.end annotation


# static fields
.field public static final ALBUM_ART_FIELD_NUMBER:I = 0x7

.field public static final ALBUM_ART_URL_FIELD_NUMBER:I = 0x9

.field public static final ALBUM_FIELD_NUMBER:I = 0x3

.field public static final ARTIST_FIELD_NUMBER:I = 0x1

.field public static final ARTIST_ID_FIELD_NUMBER:I = 0xc

.field public static final ISRC_FIELD_NUMBER:I = 0x4

.field public static final IS_EXPLICIT_FIELD_NUMBER:I = 0xe

.field public static final LABEL_CODE_FIELD_NUMBER:I = 0x8

.field public static final OFFER_FIELD_NUMBER:I = 0x6

.field public static final POPULARITY_SCORE_FIELD_NUMBER:I = 0xa

.field public static final PRERELEASE_FIELD_NUMBER:I = 0xd

.field public static final SIGNED_IN_ALBUM_ART_URL_FIELD_NUMBER:I = 0xb

.field public static final TRACK_FIELD_NUMBER:I = 0x2

.field public static final VIDEO_FIELD_NUMBER:I = 0x5


# instance fields
.field private albumArtUrl_:Ljava/lang/String;

.field private albumArt_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private album_:Ljava/lang/String;

.field private artistId_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAlbum:Z

.field private hasAlbumArt:Z

.field private hasAlbumArtUrl:Z

.field private hasArtist:Z

.field private hasArtistId:Z

.field private hasIsExplicit:Z

.field private hasIsrc:Z

.field private hasLabelCode:Z

.field private hasPopularityScore:Z

.field private hasPrerelease:Z

.field private hasSignedInAlbumArtUrl:Z

.field private hasTrack:Z

.field private isExplicit_:Z

.field private isrc_:Ljava/lang/String;

.field private labelCode_:Ljava/lang/String;

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$ProductOffer;",
            ">;"
        }
    .end annotation
.end field

.field private popularityScore_:D

.field private prerelease_:Z

.field private signedInAlbumArtUrl_:Ljava/lang/String;

.field private track_:Ljava/lang/String;

.field private video_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1727
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 1749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 1766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 1783
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 1800
    iput-boolean v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 1817
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 1850
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    .line 1883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    .line 1917
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 1951
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 1968
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 1985
    iput-boolean v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 2069
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    .line 1727
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2229
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2223
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$MusicResult;

    return-object v0
.end method


# virtual methods
.method public addOffer(Lcom/google/audio/ears/proto/EarsService$ProductOffer;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1900
    if-nez p1, :cond_0

    .line 1901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1903
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    return-object p0
.end method

.method public addVideo(Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1867
    if-nez p1, :cond_0

    .line 1868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 2000
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearArtist()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2001
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearArtistId()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2002
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearTrack()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2003
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearAlbum()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2004
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearIsExplicit()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2005
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearIsrc()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2006
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearLabelCode()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2007
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearVideo()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2008
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearOffer()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2009
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearAlbumArt()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2010
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearAlbumArtUrl()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2011
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearSignedInAlbumArtUrl()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2012
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearPopularityScore()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2013
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->clearPrerelease()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    .line 2014
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    .line 2015
    return-object p0
.end method

.method public clearAlbum()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbum:Z

    .line 1793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 1794
    return-object p0
.end method

.method public clearAlbumArt()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArt:Z

    .line 1927
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1928
    return-object p0
.end method

.method public clearAlbumArtUrl()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArtUrl:Z

    .line 1944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 1945
    return-object p0
.end method

.method public clearArtist()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtist:Z

    .line 1742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 1743
    return-object p0
.end method

.method public clearArtistId()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtistId:Z

    .line 1759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 1760
    return-object p0
.end method

.method public clearIsExplicit()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1809
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsExplicit:Z

    .line 1810
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 1811
    return-object p0
.end method

.method public clearIsrc()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsrc:Z

    .line 1827
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 1828
    return-object p0
.end method

.method public clearLabelCode()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasLabelCode:Z

    .line 1844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 1845
    return-object p0
.end method

.method public clearOffer()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1910
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    .line 1911
    return-object p0
.end method

.method public clearPopularityScore()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 2

    .prologue
    .line 1977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPopularityScore:Z

    .line 1978
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 1979
    return-object p0
.end method

.method public clearPrerelease()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1994
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPrerelease:Z

    .line 1995
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 1996
    return-object p0
.end method

.method public clearSignedInAlbumArtUrl()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasSignedInAlbumArtUrl:Z

    .line 1961
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 1962
    return-object p0
.end method

.method public clearTrack()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasTrack:Z

    .line 1776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 1777
    return-object p0
.end method

.method public clearVideo()Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1

    .prologue
    .line 1877
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    .line 1878
    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2072
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getSerializedSize()I

    .line 2076
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    return v0
.end method

.method public getIsExplicit()Z
    .locals 1

    .prologue
    .line 1801
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    return v0
.end method

.method public getIsrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getOffer(I)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    return-object v0
.end method

.method public getOfferCount()I
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOfferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$ProductOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getPopularityScore()D
    .locals 2

    .prologue
    .line 1969
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    return-wide v0
.end method

.method public getPrerelease()Z
    .locals 1

    .prologue
    .line 1986
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2081
    const/4 v2, 0x0

    .line 2082
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2083
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2086
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasTrack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2087
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2090
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2091
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2094
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsrc()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2095
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getIsrc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2098
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 2099
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2102
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getOfferList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 2103
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 2106
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArt()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2107
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbumArt()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2110
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasLabelCode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2111
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getLabelCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2114
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArtUrl()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2115
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2118
    :cond_8
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPopularityScore()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2119
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getPopularityScore()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 2122
    :cond_9
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasSignedInAlbumArtUrl()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2123
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getSignedInAlbumArtUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2126
    :cond_a
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtistId()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2127
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getArtistId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2130
    :cond_b
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPrerelease()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2131
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getPrerelease()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2134
    :cond_c
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsExplicit()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2135
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getIsExplicit()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 2138
    :cond_d
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->cachedSize:I

    .line 2139
    return v2
.end method

.method public getSignedInAlbumArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    .locals 1
    .parameter "index"

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 1785
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbum:Z

    return v0
.end method

.method public hasAlbumArt()Z
    .locals 1

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArt:Z

    return v0
.end method

.method public hasAlbumArtUrl()Z
    .locals 1

    .prologue
    .line 1936
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArtUrl:Z

    return v0
.end method

.method public hasArtist()Z
    .locals 1

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtist:Z

    return v0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtistId:Z

    return v0
.end method

.method public hasIsExplicit()Z
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsExplicit:Z

    return v0
.end method

.method public hasIsrc()Z
    .locals 1

    .prologue
    .line 1819
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsrc:Z

    return v0
.end method

.method public hasLabelCode()Z
    .locals 1

    .prologue
    .line 1836
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasLabelCode:Z

    return v0
.end method

.method public hasPopularityScore()Z
    .locals 1

    .prologue
    .line 1970
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPopularityScore:Z

    return v0
.end method

.method public hasPrerelease()Z
    .locals 1

    .prologue
    .line 1987
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPrerelease:Z

    return v0
.end method

.method public hasSignedInAlbumArtUrl()Z
    .locals 1

    .prologue
    .line 1953
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasSignedInAlbumArtUrl:Z

    return v0
.end method

.method public hasTrack()Z
    .locals 1

    .prologue
    .line 1768
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasTrack:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2019
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2148
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2152
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2153
    :sswitch_0
    return-object p0

    .line 2158
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setArtist(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2162
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setTrack(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2166
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setAlbum(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2170
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setIsrc(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2174
    :sswitch_5
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;-><init>()V

    .line 2175
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2176
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->addVideo(Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2180
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    :sswitch_6
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    .line 2181
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2182
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->addOffer(Lcom/google/audio/ears/proto/EarsService$ProductOffer;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2186
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setAlbumArt(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2190
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setLabelCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2194
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setAlbumArtUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2198
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setPopularityScore(D)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2202
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setSignedInAlbumArtUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2206
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setArtistId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2210
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setPrerelease(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto :goto_0

    .line 2214
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->setIsExplicit(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    goto/16 :goto_0

    .line 2148
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x51 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
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
    .line 1724
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v0

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbum:Z

    .line 1788
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->album_:Ljava/lang/String;

    .line 1789
    return-object p0
.end method

.method public setAlbumArt(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArt:Z

    .line 1922
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArt_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1923
    return-object p0
.end method

.method public setAlbumArtUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArtUrl:Z

    .line 1939
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->albumArtUrl_:Ljava/lang/String;

    .line 1940
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtist:Z

    .line 1737
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artist_:Ljava/lang/String;

    .line 1738
    return-object p0
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtistId:Z

    .line 1754
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->artistId_:Ljava/lang/String;

    .line 1755
    return-object p0
.end method

.method public setIsExplicit(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsExplicit:Z

    .line 1805
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isExplicit_:Z

    .line 1806
    return-object p0
.end method

.method public setIsrc(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsrc:Z

    .line 1822
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->isrc_:Ljava/lang/String;

    .line 1823
    return-object p0
.end method

.method public setLabelCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasLabelCode:Z

    .line 1839
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->labelCode_:Ljava/lang/String;

    .line 1840
    return-object p0
.end method

.method public setOffer(ILcom/google/audio/ears/proto/EarsService$ProductOffer;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1893
    if-nez p2, :cond_0

    .line 1894
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->offer_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1897
    return-object p0
.end method

.method public setPopularityScore(D)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPopularityScore:Z

    .line 1973
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->popularityScore_:D

    .line 1974
    return-object p0
.end method

.method public setPrerelease(Z)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPrerelease:Z

    .line 1990
    iput-boolean p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->prerelease_:Z

    .line 1991
    return-object p0
.end method

.method public setSignedInAlbumArtUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasSignedInAlbumArtUrl:Z

    .line 1956
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->signedInAlbumArtUrl_:Ljava/lang/String;

    .line 1957
    return-object p0
.end method

.method public setTrack(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 1770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasTrack:Z

    .line 1771
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->track_:Ljava/lang/String;

    .line 1772
    return-object p0
.end method

.method public setVideo(ILcom/google/audio/ears/proto/EarsService$YouTubeVideo;)Lcom/google/audio/ears/proto/EarsService$MusicResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1860
    if-nez p2, :cond_0

    .line 1861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$MusicResult;->video_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1864
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2026
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2028
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasTrack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2029
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getTrack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbum()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2032
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2034
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsrc()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2035
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getIsrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2037
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getVideoList()Ljava/util/List;

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

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;

    .line 2038
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2040
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 2041
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 2043
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArt()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2044
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbumArt()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 2046
    :cond_6
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasLabelCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2047
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getLabelCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2049
    :cond_7
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArtUrl()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2050
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2052
    :cond_8
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPopularityScore()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2053
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getPopularityScore()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 2055
    :cond_9
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasSignedInAlbumArtUrl()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2056
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getSignedInAlbumArtUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2058
    :cond_a
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasArtistId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2059
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2061
    :cond_b
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasPrerelease()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2062
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getPrerelease()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2064
    :cond_c
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasIsExplicit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2065
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getIsExplicit()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2067
    :cond_d
    return-void
.end method
