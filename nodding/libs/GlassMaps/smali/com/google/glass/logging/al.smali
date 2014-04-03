.class public Lcom/google/glass/logging/al;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Set;


# instance fields
.field private final c:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/logging/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/al;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/logging/al;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/logging/al;->c:Landroid/app/Service;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/glass/logging/GlassError;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/google/glass/logging/al;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/logging/al;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" detected and already reported so doing nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/glass/logging/al;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/logging/al;->c:Landroid/app/Service;

    invoke-static {v0, p1}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/logging/al;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/glass/logging/al;->c:Landroid/app/Service;

    invoke-static {v0}, Lcom/google/glass/logging/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/glass/util/t;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/glass/logging/GlassError;->values()[Lcom/google/glass/logging/GlassError;

    move-result-object v7

    array-length v8, v7

    move v4, v3

    :goto_0
    if-ge v4, v8, :cond_3

    aget-object v9, v7, v4

    iget-object v0, v9, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, v9, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v9, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/google/glass/logging/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_0

    invoke-direct {p0, v9, v0}, Lcom/google/glass/logging/al;->a(Lcom/google/glass/logging/GlassError;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, v9, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v9, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/glass/logging/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_2
.end method
