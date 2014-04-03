.class public final Lcom/google/common/base/al;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/common/base/c;

.field private final b:Z

.field private final c:Lcom/google/common/base/as;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/as;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/base/c;->m:Lcom/google/common/base/c;

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/base/al;-><init>(Lcom/google/common/base/as;ZLcom/google/common/base/c;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/as;ZLcom/google/common/base/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/al;->c:Lcom/google/common/base/as;

    iput-boolean p2, p0, Lcom/google/common/base/al;->b:Z

    iput-object p3, p0, Lcom/google/common/base/al;->a:Lcom/google/common/base/c;

    iput p4, p0, Lcom/google/common/base/al;->d:I

    return-void
.end method

.method public static a(C)Lcom/google/common/base/al;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/c;->a(C)Lcom/google/common/base/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/al;->a(Lcom/google/common/base/c;)Lcom/google/common/base/al;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/common/base/c;)Lcom/google/common/base/al;
    .locals 2

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/al;

    new-instance v1, Lcom/google/common/base/am;

    invoke-direct {v1, p0}, Lcom/google/common/base/am;-><init>(Lcom/google/common/base/c;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/al;-><init>(Lcom/google/common/base/as;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/common/base/al;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/common/base/al;

    new-instance v1, Lcom/google/common/base/ao;

    invoke-direct {v1, p0}, Lcom/google/common/base/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/al;-><init>(Lcom/google/common/base/as;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/base/al;)Lcom/google/common/base/c;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/al;->a:Lcom/google/common/base/c;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/base/al;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/base/al;->b(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/al;->c:Lcom/google/common/base/as;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/as;->a(Lcom/google/common/base/al;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/base/al;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/base/al;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/google/common/base/al;)I
    .locals 1

    iget v0, p0, Lcom/google/common/base/al;->d:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/common/base/al;
    .locals 5

    new-instance v0, Lcom/google/common/base/al;

    iget-object v1, p0, Lcom/google/common/base/al;->c:Lcom/google/common/base/as;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/base/al;->a:Lcom/google/common/base/c;

    iget v4, p0, Lcom/google/common/base/al;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/base/al;-><init>(Lcom/google/common/base/as;ZLcom/google/common/base/c;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/aq;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/aq;-><init>(Lcom/google/common/base/al;Ljava/lang/CharSequence;)V

    return-object v0
.end method
