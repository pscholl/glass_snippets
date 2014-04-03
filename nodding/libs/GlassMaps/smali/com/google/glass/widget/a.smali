.class public abstract Lcom/google/glass/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/widget/j;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:I

.field private d:I

.field private e:Lcom/google/glass/widget/MosaicView$GroupCountType;


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/a;->a:Ljava/util/List;

    iput p2, p0, Lcom/google/glass/widget/a;->c:I

    iput p3, p0, Lcom/google/glass/widget/a;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/google/glass/widget/MosaicView$GroupCountType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/a;->e:Lcom/google/glass/widget/MosaicView$GroupCountType;

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/a;->b:Ljava/util/List;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/glass/widget/MosaicView$GroupCountType;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/widget/a;->e:Lcom/google/glass/widget/MosaicView$GroupCountType;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/a;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/glass/widget/a;->d:I

    return v0
.end method
