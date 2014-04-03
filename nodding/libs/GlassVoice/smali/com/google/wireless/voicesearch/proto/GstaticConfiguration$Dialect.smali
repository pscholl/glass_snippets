.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dialect"
.end annotation


# static fields
.field public static final BCP47_LOCALE_FIELD_NUMBER:I = 0x2

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x1

.field public static final HELP_ACTIONS_CALL:I = 0x1

.field public static final HELP_ACTIONS_DIRECTIONS_TO:I = 0x3

.field public static final HELP_ACTIONS_FIELD_NUMBER:I = 0x5

.field public static final HELP_ACTIONS_MAP_OF:I = 0x4

.field public static final HELP_ACTIONS_NAVIGATE_TO:I = 0x2

.field public static final IME_SUPPORTED_FIELD_NUMBER:I = 0x7

.field public static final JAVA_LOCALES_FIELD_NUMBER:I = 0x4

.field public static final MAIN_JAVA_LOCALE_FIELD_NUMBER:I = 0x6


# instance fields
.field private bcp47Locale_:Ljava/lang/String;

.field private cachedSize:I

.field private displayName_:Ljava/lang/String;

.field private hasBcp47Locale:Z

.field private hasDisplayName:Z

.field private hasImeSupported:Z

.field private hasMainJavaLocale:Z

.field private helpActions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imeSupported_:Z

.field private javaLocales_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainJavaLocale_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3428
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    .line 3505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    .line 3533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3602
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    .line 3428
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3704
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3698
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    return-object v0
.end method


# virtual methods
.method public addHelpActions(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 2
    .parameter "value"

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    .line 3522
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3523
    return-object p0
.end method

.method public addJavaLocales(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "value"

    .prologue
    .line 3489
    if-nez p1, :cond_0

    .line 3490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3492
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    .line 3495
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3496
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3565
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clearDisplayName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3566
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clearBcp47Locale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3567
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clearJavaLocales()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3568
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clearHelpActions()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3569
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clearMainJavaLocale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3570
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->clearImeSupported()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3571
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    .line 3572
    return-object p0
.end method

.method public clearBcp47Locale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasBcp47Locale:Z

    .line 3466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3467
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasDisplayName:Z

    .line 3449
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3450
    return-object p0
.end method

.method public clearHelpActions()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    .line 3527
    return-object p0
.end method

.method public clearImeSupported()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3559
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasImeSupported:Z

    .line 3560
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3561
    return-object p0
.end method

.method public clearJavaLocales()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    .line 3500
    return-object p0
.end method

.method public clearMainJavaLocale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1

    .prologue
    .line 3542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasMainJavaLocale:Z

    .line 3543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3544
    return-object p0
.end method

.method public getBcp47Locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3457
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3605
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    if-gez v0, :cond_0

    .line 3607
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getSerializedSize()I

    .line 3609
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpActions(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHelpActionsCount()I
    .locals 1

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHelpActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    return-object v0
.end method

.method public getImeSupported()Z
    .locals 1

    .prologue
    .line 3551
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    return v0
.end method

.method public getJavaLocales(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJavaLocalesCount()I
    .locals 1

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getJavaLocalesList()Ljava/util/List;
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
    .line 3475
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    return-object v0
.end method

.method public getMainJavaLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 3614
    const/4 v3, 0x0

    .line 3615
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasDisplayName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3616
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3619
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasBcp47Locale()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3620
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3624
    :cond_1
    const/4 v0, 0x0

    .line 3625
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getJavaLocalesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3626
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 3629
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 3630
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getJavaLocalesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3633
    const/4 v0, 0x0

    .line 3634
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getHelpActionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3635
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 3638
    .end local v1           #element:Ljava/lang/Integer;
    :cond_3
    add-int/2addr v3, v0

    .line 3639
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getHelpActionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3641
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasMainJavaLocale()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3642
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getMainJavaLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3645
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasImeSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3646
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getImeSupported()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 3649
    :cond_5
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->cachedSize:I

    .line 3650
    return v3
.end method

.method public hasBcp47Locale()Z
    .locals 1

    .prologue
    .line 3458
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasBcp47Locale:Z

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 3441
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasDisplayName:Z

    return v0
.end method

.method public hasImeSupported()Z
    .locals 1

    .prologue
    .line 3552
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasImeSupported:Z

    return v0
.end method

.method public hasMainJavaLocale()Z
    .locals 1

    .prologue
    .line 3535
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasMainJavaLocale:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3576
    const/4 v0, 0x1

    return v0
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
    .line 3425
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3658
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3659
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3663
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3664
    :sswitch_0
    return-object p0

    .line 3669
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3673
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->setBcp47Locale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3677
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->addJavaLocales(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3681
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->addHelpActions(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3685
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->setMainJavaLocale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3689
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->setImeSupported(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    goto :goto_0

    .line 3659
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x38 -> :sswitch_6
    .end sparse-switch
.end method

.method public setBcp47Locale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "value"

    .prologue
    .line 3460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasBcp47Locale:Z

    .line 3461
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->bcp47Locale_:Ljava/lang/String;

    .line 3462
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "value"

    .prologue
    .line 3443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasDisplayName:Z

    .line 3444
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->displayName_:Ljava/lang/String;

    .line 3445
    return-object p0
.end method

.method public setHelpActions(II)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3515
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->helpActions_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3516
    return-object p0
.end method

.method public setImeSupported(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "value"

    .prologue
    .line 3554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasImeSupported:Z

    .line 3555
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->imeSupported_:Z

    .line 3556
    return-object p0
.end method

.method public setJavaLocales(ILjava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3482
    if-nez p2, :cond_0

    .line 3483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->javaLocales_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3486
    return-object p0
.end method

.method public setMainJavaLocale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "value"

    .prologue
    .line 3537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasMainJavaLocale:Z

    .line 3538
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->mainJavaLocale_:Ljava/lang/String;

    .line 3539
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
    .line 3582
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasDisplayName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3583
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3585
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasBcp47Locale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3586
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getBcp47Locale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3588
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getJavaLocalesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3589
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 3591
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getHelpActionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3592
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_1

    .line 3594
    .end local v0           #element:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasMainJavaLocale()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3595
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getMainJavaLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3597
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->hasImeSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3598
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;->getImeSupported()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 3600
    :cond_5
    return-void
.end method
