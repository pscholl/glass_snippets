.class final Lcom/google/common/base/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/as;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/ao;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/common/base/al;Ljava/lang/CharSequence;)Lcom/google/common/base/ar;
    .locals 1

    new-instance v0, Lcom/google/common/base/ap;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/ap;-><init>(Lcom/google/common/base/ao;Lcom/google/common/base/al;Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/base/al;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/ao;->b(Lcom/google/common/base/al;Ljava/lang/CharSequence;)Lcom/google/common/base/ar;

    move-result-object v0

    return-object v0
.end method
