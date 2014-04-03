.class Lcom/google/android/speech/embedded/Greco3DataManager$2;
.super Ljava/lang/Object;
.source "Greco3DataManager.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;->getModelsDirSupplier()Lcom/google/common/base/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3DataManager;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$2;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$2;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    #getter for: Lcom/google/android/speech/embedded/Greco3DataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->access$100(Lcom/google/android/speech/embedded/Greco3DataManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "g3_models"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager$2;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
