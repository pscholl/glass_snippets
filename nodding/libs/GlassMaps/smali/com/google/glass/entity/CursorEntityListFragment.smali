.class public abstract Lcom/google/glass/entity/CursorEntityListFragment;
.super Lcom/google/glass/entity/s;

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Lcom/google/glass/entity/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->b:Lcom/google/glass/logging/i;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "protobuf_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract a(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/glass/entity/s;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/glass/entity/a;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/a;-><init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->d:Lcom/google/glass/entity/a;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/google/glass/entity/s;->onDestroy()V

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->d:Lcom/google/glass/entity/a;

    invoke-virtual {v0}, Lcom/google/glass/entity/a;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
