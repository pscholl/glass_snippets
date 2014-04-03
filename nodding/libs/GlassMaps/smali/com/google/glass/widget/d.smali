.class final Lcom/google/glass/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field a:Ljava/lang/CharSequence;

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/glass/widget/d;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/widget/d;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/CharSequence;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/google/glass/widget/d;->b:I

    iput p3, p0, Lcom/google/glass/widget/d;->c:I

    return-void
.end method

.method public final charAt(I)C
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/d;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/glass/widget/d;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/d;->c:I

    iget v1, p0, Lcom/google/glass/widget/d;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Lcom/google/glass/widget/d;

    iget-object v1, p0, Lcom/google/glass/widget/d;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/glass/widget/d;->b:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/glass/widget/d;->b:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/d;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method
