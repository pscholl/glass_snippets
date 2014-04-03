.class public Lcom/google/glass/util/EntityImageDownloadTask;
.super Lcom/google/glass/util/PersonImageDownloadTask;
.source "EntityImageDownloadTask.java"


# instance fields
.field private final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 7
    .parameter "context"
    .parameter "entity"
    .parameter "pictureView"
    .parameter "nameView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 32
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/PersonImageDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 33
    if-nez p2, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 37
    return-void
.end method

.method private varargs setImageUrlByEmail(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 7
    .parameter "resolver"
    .parameter "emails"

    .prologue
    .line 81
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v6, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    aput-object v6, v0, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v6, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    aput-object v6, v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 82
    .local v1, email:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/google/glass/entity/EntityHelper;->queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, imageUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    invoke-virtual {p0, v3}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .end local v1           #email:Ljava/lang/String;
    .end local v3           #imageUrl:Ljava/lang/String;
    :cond_0
    return-void

    .line 81
    .restart local v1       #email:Ljava/lang/String;
    .restart local v3       #imageUrl:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getCacheId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "ei"

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->hasImageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityHelper;->queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->hasImageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityHelper;->queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrlByEmail(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method
