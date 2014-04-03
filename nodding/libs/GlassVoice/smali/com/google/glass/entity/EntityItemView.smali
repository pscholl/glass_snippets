.class public abstract Lcom/google/glass/entity/EntityItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "EntityItemView.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private image:Lcom/google/glass/widget/MosaicView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private label:Landroid/widget/TextView;

.field private prependEntity:Z

.field private protobuf:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 46
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    .line 47
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    .line 48
    return-void
.end method

.method private getParentAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 107
    .local v0, viewParent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_0
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0           #viewParent:Landroid/view/ViewParent;
    return-object v0
.end method

.method private logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 173
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5
    .parameter "id"
    .parameter "displayName"
    .parameter "imageUrl"
    .parameter "protobuf"

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 144
    iput-object p4, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    .line 145
    iput-object p2, p0, Lcom/google/glass/entity/EntityItemView;->displayName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    iget v3, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    iget v4, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/widget/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MosaicView;->loadImages(Lcom/google/glass/widget/ImageLoader;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method protected getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 89
    invoke-direct {p0}, Lcom/google/glass/entity/EntityItemView;->getParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v1

    .line 90
    .local v1, parentAdapter:Landroid/widget/AdapterView;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 93
    .local v2, selectedPosition:I
    const-string v4, "pos"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "pre"

    aput-object v3, v6, v8

    const/4 v7, 0x1

    iget-boolean v3, p0, Lcom/google/glass/entity/EntityItemView;->prependEntity:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_0
    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    .local v0, eventTuple:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->onConfirmLogData(Ljava/lang/StringBuilder;)V

    .line 99
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/glass/entity/EntityItemView;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 101
    .end local v0           #eventTuple:Ljava/lang/StringBuilder;
    .end local v2           #selectedPosition:I
    :cond_0
    return v8

    .line 93
    .restart local v2       #selectedPosition:I
    :cond_1
    const-string v3, "0"

    goto :goto_0
.end method

.method protected onConfirmLogData(Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "eventTuple"

    .prologue
    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->onFinishInflate()V

    .line 54
    sget v0, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    .line 55
    sget v0, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setIsPrepend(Z)V
    .locals 0
    .parameter "prepended"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/google/glass/entity/EntityItemView;->prependEntity:Z

    .line 139
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
