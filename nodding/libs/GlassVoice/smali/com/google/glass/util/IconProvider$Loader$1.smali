.class Lcom/google/glass/util/IconProvider$Loader$1;
.super Landroid/os/AsyncTask;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/IconProvider$Loader;->startLoad()V
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/util/IconProvider$Loader;


# direct methods
.method constructor <init>(Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "params"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    invoke-virtual {v0}, Lcom/google/glass/util/IconProvider$Loader;->load()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/IconProvider$Loader$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    iget-object v0, v0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    #getter for: Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;
    invoke-static {v0}, Lcom/google/glass/util/IconProvider;->access$000(Lcom/google/glass/util/IconProvider;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    iget-object v1, v1, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/IconProvider$Loader;->notifyListeners(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    iget-object v0, v0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$Loader$1;->this$1:Lcom/google/glass/util/IconProvider$Loader;

    #calls: Lcom/google/glass/util/IconProvider;->onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V
    invoke-static {v0, v1}, Lcom/google/glass/util/IconProvider;->access$100(Lcom/google/glass/util/IconProvider;Lcom/google/glass/util/IconProvider$Loader;)V

    .line 132
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/IconProvider$Loader$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
