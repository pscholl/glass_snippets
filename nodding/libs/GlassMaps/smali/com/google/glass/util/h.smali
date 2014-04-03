.class final Lcom/google/glass/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/util/n;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/glass/util/u;

.field final synthetic d:Lcom/google/glass/util/g;


# direct methods
.method constructor <init>(Lcom/google/glass/util/g;IILcom/google/glass/util/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/h;->d:Lcom/google/glass/util/g;

    iput p2, p0, Lcom/google/glass/util/h;->a:I

    iput p3, p0, Lcom/google/glass/util/h;->b:I

    iput-object p4, p0, Lcom/google/glass/util/h;->c:Lcom/google/glass/util/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p0, Lcom/google/glass/util/h;->a:I

    iget v1, p0, Lcom/google/glass/util/h;->b:I

    iget-object v2, p0, Lcom/google/glass/util/h;->c:Lcom/google/glass/util/u;

    invoke-static {p1, v0, v1, v2}, Lcom/google/glass/util/g;->a(Ljava/lang/String;IILcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/util/h;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
