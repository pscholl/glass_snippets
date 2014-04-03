.class public Lcom/google/glass/util/ParcelableImageSpannable;
.super Ljava/lang/Object;
.source "ParcelableImageSpannable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/util/ParcelableImageSpannable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmaps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final imageSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/glass/util/ParcelableImageSpannable$1;

    invoke-direct {v0}, Lcom/google/glass/util/ParcelableImageSpannable$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/ParcelableImageSpannable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "in"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    .line 29
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    .line 97
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 99
    .local v1, cs:Ljava/lang/CharSequence;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .local v0, bitmapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 104
    iget-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/glass/util/ParcelUtils;->readBitmapFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .local v3, imageSpanCount:I
    iget-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v4, v3

    .line 110
    .end local v3           #imageSpanCount:I
    .local v4, imageSpanCount:I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4           #imageSpanCount:I
    .restart local v3       #imageSpanCount:I
    if-lez v4, :cond_1

    .line 111
    iget-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;

    invoke-direct {v6, p1}, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    .end local v3           #imageSpanCount:I
    .restart local v4       #imageSpanCount:I
    goto :goto_1

    .line 113
    .end local v4           #imageSpanCount:I
    .restart local v3       #imageSpanCount:I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/util/ParcelableImageSpannable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/util/ParcelableImageSpannable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lcom/google/glass/util/ParcelableImageSpannable;
    .locals 1
    .parameter "text"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setImageSpan(Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .parameter "bitmap"
    .parameter "start"
    .parameter "end"
    .parameter "verticalAlignment"
    .parameter "spanFlags"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 168
    .local v6, bitmapIndex:Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 170
    iget-object v0, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    iget-object v7, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public toSpanned(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 8
    .parameter "context"

    .prologue
    .line 138
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/Bitmap;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    .line 141
    .local v0, bitmapArray:[Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;

    .line 142
    .local v3, isd:Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;
    new-instance v4, Landroid/text/style/ImageSpan;

    iget v5, v3, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->bitmapIndex:I

    aget-object v5, v0, v5

    iget v6, v3, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->verticalAlignment:I

    invoke-direct {v4, p1, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    iget v5, v3, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->start:I

    iget v6, v3, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->end:I

    iget v7, v3, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->spanFlags:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 146
    .end local v3           #isd:Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;
    :cond_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 119
    iget-object v3, p0, Lcom/google/glass/util/ParcelableImageSpannable;->sb:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 122
    iget-object v3, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v3, p0, Lcom/google/glass/util/ParcelableImageSpannable;->bitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 124
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->writeBitmapToParcel(Landroid/os/Parcel;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 128
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v3, p0, Lcom/google/glass/util/ParcelableImageSpannable;->imageSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;

    .line 130
    .local v2, isd:Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;
    invoke-virtual {v2, p1}, Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 132
    .end local v2           #isd:Lcom/google/glass/util/ParcelableImageSpannable$ImageSpanData;
    :cond_1
    return-void
.end method
