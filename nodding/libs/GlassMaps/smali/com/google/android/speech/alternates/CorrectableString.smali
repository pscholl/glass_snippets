.class public Lcom/google/android/speech/alternates/CorrectableString;
.super Landroid/text/SpannableString;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/speech/alternates/a;

    invoke-direct {v0}, Lcom/google/android/speech/alternates/a;-><init>()V

    sput-object v0, Lcom/google/android/speech/alternates/CorrectableString;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/speech/alternates/CorrectableString;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/speech/alternates/CorrectableString;->a:[B

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/speech/alternates/CorrectableString;->a(Ljava/util/List;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CorrectableString"

    const-string v2, "Could not convert string to UTF-8 bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BI)I
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_2

    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v2, 0x7

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v3, v2, 0x5

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    add-int/lit8 v2, v0, 0x1

    if-lt v2, p1, :cond_3

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    ushr-int/lit8 v3, v2, 0x4

    const/16 v4, 0xe

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p1, :cond_2

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    ushr-int/lit8 v2, v2, 0x3

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x3

    if-ge v2, p1, :cond_2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method static a(Landroid/os/Parcel;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-direct {v3, v0}, Lcom/google/android/speech/alternates/CorrectableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/h/a/c;->a([B)Lcom/google/h/a/c;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/speech/alternates/CorrectableString;->a(Lcom/google/h/a/c;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "CorrectableString"

    const-string v6, "Could not parse AlternateSpan from parcel."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_1

    const-class v1, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/speech/alternates/CorrectableString;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-object v3
.end method

.method private a(Lcom/google/h/a/c;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/speech/alternates/CorrectableString;->a:[B

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/alternates/CorrectableString;->a:[B

    invoke-virtual {p1}, Lcom/google/h/a/c;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/speech/alternates/CorrectableString;->a([BI)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/speech/alternates/CorrectableString;->a:[B

    invoke-virtual {p1}, Lcom/google/h/a/c;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/h/a/c;->e()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/speech/alternates/CorrectableString;->a([BI)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/speech/alternates/CorrectableString;->a(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/speech/alternates/CorrectableString;->a(Ljava/lang/Object;II)V

    return-void
.end method

.method private a(Ljava/lang/Object;II)V
    .locals 1

    const/16 v0, 0x21

    invoke-super {p0, p1, p2, p3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/speech/alternates/CorrectableString;->a:[B

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/c;

    invoke-direct {p0, v0}, Lcom/google/android/speech/alternates/CorrectableString;->a(Lcom/google/h/a/c;)V

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableString;Landroid/text/SpannableString;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private a()[Lcom/google/h/a/c;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    const-class v2, Lcom/google/h/a/c;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/speech/alternates/CorrectableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/h/a/c;

    return-object v0
.end method

.method private b()[Lcom/google/android/speech/alternates/CorrectableString;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->length()I

    move-result v1

    const-class v2, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/speech/alternates/CorrectableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/alternates/CorrectableString;

    return-object v0
.end method

.method private c()I
    .locals 3

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
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/text/SpannableString;

    invoke-static {p0, p1}, Lcom/google/android/speech/alternates/CorrectableString;->a(Landroid/text/SpannableString;Landroid/text/SpannableString;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/speech/alternates/CorrectableString;->c()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/speech/alternates/CorrectableString;->a()[Lcom/google/h/a/c;

    move-result-object v2

    array-length v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/google/h/a/c;->c()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/alternates/CorrectableString;->b()[Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
