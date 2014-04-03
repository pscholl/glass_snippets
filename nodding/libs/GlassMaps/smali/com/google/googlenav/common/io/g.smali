.class public final Lcom/google/googlenav/common/io/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/googlenav/common/io/g;


# instance fields
.field private b:Lcom/google/googlenav/common/io/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/common/io/g;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/g;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/io/g;->a:Lcom/google/googlenav/common/io/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "Can\'t call gunzip without setting a GunzipInteface implementation"

    sget-object v1, Lcom/google/googlenav/common/io/g;->a:Lcom/google/googlenav/common/io/g;

    iget-object v1, v1, Lcom/google/googlenav/common/io/g;->b:Lcom/google/googlenav/common/io/h;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Can\'t call gunzip with a null InputStream"

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/googlenav/common/io/g;->a:Lcom/google/googlenav/common/io/g;

    iget-object v0, v0, Lcom/google/googlenav/common/io/g;->b:Lcom/google/googlenav/common/io/h;

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/h;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/h;)V
    .locals 1

    const-string v0, "Can\'t have a null GunzipInterface implementation"

    invoke-static {v0, p0}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/googlenav/common/io/g;->a:Lcom/google/googlenav/common/io/g;

    iput-object p0, v0, Lcom/google/googlenav/common/io/g;->b:Lcom/google/googlenav/common/io/h;

    return-void
.end method
