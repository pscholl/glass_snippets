.class final Lcom/google/glass/util/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/util/CachedFilesManager;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/j;->a:Lcom/google/glass/util/CachedFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/j;->a:Lcom/google/glass/util/CachedFilesManager;

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->b(Lcom/google/glass/util/CachedFilesManager;)V

    return-void
.end method
