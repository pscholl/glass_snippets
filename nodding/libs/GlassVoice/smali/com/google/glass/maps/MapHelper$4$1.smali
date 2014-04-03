.class Lcom/google/glass/maps/MapHelper$4$1;
.super Landroid/os/AsyncTask;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/maps/MapHelper$4;->apply([B)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/maps/MapHelper$4;

.field final synthetic val$input:[B

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper$4;[BLcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$4$1;->this$1:Lcom/google/glass/maps/MapHelper$4;

    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$4$1;->val$input:[B

    iput-object p3, p0, Lcom/google/glass/maps/MapHelper$4$1;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "params"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$4$1;->val$input:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper$4$1;->val$input:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper$4$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$4$1;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper$4$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
