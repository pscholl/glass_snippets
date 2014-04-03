.class public Lcom/google/android/speech/alternates/CorrectableString;
.super Landroid/text/SpannableString;
.source "CorrectableString.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/speech/alternates/CorrectableString;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CorrectableString"


# instance fields
.field private final mBytesUtf8:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/speech/alternates/CorrectableString$1;

    invoke-direct {v0}, Lcom/google/android/speech/alternates/CorrectableString$1;-><init>()V

    sput-object v0, Lcom/google/android/speech/alternates/CorrectableString;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/speech/alternates/CorrectableString;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 4
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$AlternateSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/speech/common/Alternates$AlternateSpan;>;"
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    .local v0, bytes:[B
    :goto_0
    iput-object v0, p0, Lcom/google/android/speech/alternates/CorrectableString;->mBytesUtf8:[B

    .line 69
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0, p2}, Lcom/google/android/speech/alternates/CorrectableString;->addAlternateSpans(Ljava/util/List;)V

    .line 72
    :cond_0
    return-void

    .line 64
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "CorrectableString"

    const-string v3, "Could not convert string to UTF-8 bytes."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v0, 0x0

    .restart local v0       #bytes:[B
    goto :goto_0
.end method

.method public static equals(Landroid/text/SpannableString;Landroid/text/SpannableString;)Z
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v5

    .line 136
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-virtual {p0, v5, v6, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 138
    .local v3, spansA:[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-virtual {p1, v5, v6, v7}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 139
    .local v4, spansB:[Ljava/lang/Object;
    array-length v6, v3

    array-length v7, v4

    if-ne v6, v7, :cond_0

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_2

    .line 143
    aget-object v1, v3, v0

    .line 144
    .local v1, objA:Ljava/lang/Object;
    aget-object v2, v4, v0

    .line 145
    .local v2, objB:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p1, v2}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p1, v2}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0           #i:I
    .end local v1           #objA:Ljava/lang/Object;
    .end local v2           #objB:Ljava/lang/Object;
    .end local v3           #spansA:[Ljava/lang/Object;
    .end local v4           #spansB:[Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method static fromParcel(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 8
    .parameter "in"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, source:Ljava/lang/String;
    new-instance v5, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-direct {v5, v4}, Lcom/google/android/speech/alternates/CorrectableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    .local v5, spannable:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, numAlternateSpans:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/speech/common/Alternates$AlternateSpan;->parseFrom([B)Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/speech/alternates/CorrectableString;->addAlternateSpan(Lcom/google/speech/common/Alternates$AlternateSpan;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v6, "CorrectableString"

    const-string v7, "Could not parse AlternateSpan from parcel."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 253
    .end local v0           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, numCorrectableStrings:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_1

    .line 255
    const-class v6, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/speech/alternates/CorrectableString;->addFullLengthSpan(Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 258
    :cond_1
    return-object v5
.end method

.method static getOffsetUtf16([BI)I
    .locals 5
    .parameter "bytesUtf8"
    .parameter "offsetUtf8"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, offsetUtf16:I
    const/4 v2, 0x0

    .line 180
    .local v2, pos:I
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 181
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 183
    .local v0, b:I
    ushr-int/lit8 v3, v0, 0x7

    if-nez v3, :cond_1

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    ushr-int/lit8 v3, v0, 0x5

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 191
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p1, :cond_3

    .line 217
    .end local v0           #b:I
    :cond_2
    return v1

    .line 194
    .restart local v0       #b:I
    :cond_3
    add-int/lit8 v2, v2, 0x2

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_4
    ushr-int/lit8 v3, v0, 0x4

    const/16 v4, 0xe

    if-ne v3, v4, :cond_5

    .line 200
    add-int/lit8 v3, v2, 0x2

    if-ge v3, p1, :cond_2

    .line 203
    add-int/lit8 v2, v2, 0x3

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_5
    ushr-int/lit8 v3, v0, 0x3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 210
    add-int/lit8 v3, v2, 0x3

    if-ge v3, p1, :cond_2

    .line 213
    add-int/lit8 v2, v2, 0x4

    .line 214
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private getSpanCount()I
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/speech/alternates/CorrectableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public addAlternateSpan(Lcom/google/speech/common/Alternates$AlternateSpan;)V
    .locals 5
    .parameter "alternateSpan"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/google/android/speech/alternates/CorrectableString;->mBytesUtf8:[B

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/alternates/CorrectableString;->mBytesUtf8:[B

    invoke-virtual {p1}, Lcom/google/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/speech/alternates/CorrectableString;->getOffsetUtf16([BI)I

    move-result v1

    .line 92
    .local v1, start:I
    iget-object v2, p0, Lcom/google/android/speech/alternates/CorrectableString;->mBytesUtf8:[B

    invoke-virtual {p1}, Lcom/google/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/google/android/speech/alternates/CorrectableString;->getOffsetUtf16([BI)I

    move-result v0

    .line 94
    .local v0, end:I
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/speech/alternates/CorrectableString;->setSpan(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public addAlternateSpans(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$AlternateSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, alternateSpans:Ljava/util/List;,"Ljava/util/List<Lcom/google/speech/common/Alternates$AlternateSpan;>;"
    iget-object v2, p0, Lcom/google/android/speech/alternates/CorrectableString;->mBytesUtf8:[B

    if-nez v2, :cond_1

    .line 85
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 83
    .local v0, alternateSpan:Lcom/google/speech/common/Alternates$AlternateSpan;
    invoke-virtual {p0, v0}, Lcom/google/android/speech/alternates/CorrectableString;->addAlternateSpan(Lcom/google/speech/common/Alternates$AlternateSpan;)V

    goto :goto_0
.end method

.method public addFullLengthSpan(Ljava/lang/Object;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/speech/alternates/CorrectableString;->setSpan(Ljava/lang/Object;II)V

    .line 105
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    .line 123
    check-cast p1, Landroid/text/SpannableString;

    .end local p1
    invoke-static {p0, p1}, Lcom/google/android/speech/alternates/CorrectableString;->equals(Landroid/text/SpannableString;Landroid/text/SpannableString;)Z

    move-result v0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 124
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 127
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/speech/alternates/CorrectableString;->getSpanCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAlternateSpans()[Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    const-class v2, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/speech/alternates/CorrectableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getCorrectableStringSpans()[Lcom/google/android/speech/alternates/CorrectableString;
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    const-class v2, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/speech/alternates/CorrectableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/alternates/CorrectableString;

    return-object v0
.end method

.method public setSpan(Ljava/lang/Object;II)V
    .locals 1
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 99
    const/16 v0, 0x21

    invoke-super {p0, p1, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->getAlternateSpans()[Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    .line 229
    .local v1, alternateSpans:[Lcom/google/speech/common/Alternates$AlternateSpan;
    array-length v7, v1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    move-object v2, v1

    .local v2, arr$:[Lcom/google/speech/common/Alternates$AlternateSpan;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 231
    .local v0, alternateSpan:Lcom/google/speech/common/Alternates$AlternateSpan;
    invoke-virtual {v0}, Lcom/google/speech/common/Alternates$AlternateSpan;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    .end local v0           #alternateSpan:Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->getCorrectableStringSpans()[Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v3

    .line 234
    .local v3, correctableStrings:[Lcom/google/android/speech/alternates/CorrectableString;
    array-length v7, v3

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    move-object v2, v3

    .local v2, arr$:[Lcom/google/android/speech/alternates/CorrectableString;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v4, v2, v5

    .line 236
    .local v4, cs:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 238
    .end local v4           #cs:Lcom/google/android/speech/alternates/CorrectableString;
    :cond_1
    return-void
.end method
