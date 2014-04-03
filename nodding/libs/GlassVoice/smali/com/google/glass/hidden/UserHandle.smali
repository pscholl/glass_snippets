.class public final Lcom/google/glass/hidden/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"


# static fields
.field private static final CURRENT_ID:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createUserHandleWithId(I)Landroid/os/UserHandle;
    .locals 2
    .parameter "id"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 39
    .local v0, parcel:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-static {v0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method


# virtual methods
.method public getCurrent()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 27
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/google/glass/hidden/UserHandle;->createUserHandleWithId(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method
