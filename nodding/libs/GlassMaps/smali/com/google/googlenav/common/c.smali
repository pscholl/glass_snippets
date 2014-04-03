.class final Lcom/google/googlenav/common/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/common/io/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/b;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/common/c;->a:Lcom/google/googlenav/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
