.class public final Lcom/google/googlenav/common/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/common/c/c;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MAPS"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/c/b;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/common/c/b;->b:I

    iput v0, p0, Lcom/google/googlenav/common/c/b;->c:I

    return-void
.end method
