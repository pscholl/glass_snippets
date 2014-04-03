.class public Lcom/google/userfeedback/android/api/UserFeedbackSpec;
.super Ljava/lang/Object;
.source "UserFeedbackSpec.java"


# instance fields
.field private mAlternateScreenshot:Landroid/graphics/Bitmap;

.field private mBucket:Ljava/lang/String;

.field private final mCategoryTag:Ljava/lang/String;

.field private mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

.field private final mCurrentView:Landroid/view/View;

.field private final mLogFilter:Ljava/lang/String;

.field private mLogs:Ljava/lang/String;

.field private final mParentActivity:Landroid/app/Activity;

.field private mProductBinaryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotEnabled:Z

.field private mSelectedAccount:Ljava/lang/String;

.field private mShouldAutoScaleBitmap:Z

.field private mShouldShowPopupOnAnonymousSubmission:Z

.field private mShouldShowPopupOnEmptyDescription:Z

.field private mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"

    .prologue
    .line 86
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"
    .parameter "bucket"

    .prologue
    .line 119
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"
    .parameter "bucket"
    .parameter "screenshotEnabled"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    .line 140
    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 146
    :goto_0
    iput-object p3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    .line 151
    iput-boolean p6, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 152
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 153
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 154
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 155
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 156
    iput-object p5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mBucket:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .line 158
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    .line 159
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldAutoScaleBitmap:Z

    .line 160
    return-void

    .line 144
    :cond_0
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "parentActivity"
    .parameter "logFilter"
    .parameter "categoryTag"

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method protected static final defensiveCopyFrom(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 9
    .parameter "src"

    .prologue
    .line 395
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBucket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 398
    .local v0, newSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 399
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setUiConfigurationOptions(Lcom/google/userfeedback/android/api/UiConfigurationOptions;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 400
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForAnonymousSubmission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->showPopupOnAnonymousSubmission()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForEmptyDescription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->showPopupOnEmptyDescription()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setLogs(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 407
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 408
    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)V

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getSelectedAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setSelectedAccount(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 412
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getCurrentScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshot(Landroid/graphics/Bitmap;)V

    .line 414
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getProductSpecificBinaryData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    .line 419
    .local v8, psd:Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    goto :goto_0

    .line 421
    .end local v8           #psd:Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
    :cond_4
    return-object v0
.end method

.method private getBytes(Ljava/lang/Object;)[B
    .locals 4
    .parameter "obj"

    .prologue
    .line 235
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 238
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 240
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 241
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 242
    .local v1, data:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1           #data:[B
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 3
    .parameter "name"
    .parameter "mimeType"
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {p0, p3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBytes(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-object p0
.end method

.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 2
    .parameter "name"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    return-object v0
.end method

.method public getCurrentScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 192
    :cond_0
    :goto_0
    return-object v1

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldAutoScaleBitmap:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLogFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getLogs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    return-object v0
.end method

.method getProductSpecificBinaryData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    return-object v0
.end method

.method public isScreenshotEnabled()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    return v0
.end method

.method public setAutoScaleBitmap(Z)V
    .locals 0
    .parameter "autoScale"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldAutoScaleBitmap:Z

    .line 381
    return-void
.end method

.method public setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .parameter "crashData"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 350
    return-object p0
.end method

.method public setLogs(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .parameter "logs"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "screenshot"

    .prologue
    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 281
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 282
    return-void
.end method

.method public setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .parameter "enabled"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 263
    return-object p0
.end method

.method public setSelectedAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setUiConfigurationOptions(Lcom/google/userfeedback/android/api/UiConfigurationOptions;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 0
    .parameter "config"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .line 363
    return-object p0
.end method

.method shouldShowPopupForAnonymousSubmission()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    return v0
.end method

.method shouldShowPopupForEmptyDescription()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    return v0
.end method

.method public showPopupOnAnonymousSubmission()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 314
    return-object p0
.end method

.method public showPopupOnEmptyDescription()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 330
    return-object p0
.end method
